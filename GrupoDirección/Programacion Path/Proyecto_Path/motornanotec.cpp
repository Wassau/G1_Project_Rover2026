#include "motornanotec.h"
#include <cmath>

MotorNanotec::MotorNanotec(QObject *parent)
    : QObject{parent}
{
    R_rueda = 56.0;
    reduccion = 20.0;
    current_Speed = 0.0;
    target_Rpm = 0.0;

    moduleAddress = 1;
    controller = nullptr;

    conectado = false;
    comandoEnviado = 0;
}

void MotorNanotec::Initialize(float r, float gear, int address, MotorController *ctrl)
{
    R_rueda = r;
    reduccion = gear;
    moduleAddress = address;
    controller = ctrl;

    QObject::connect(controller, SIGNAL(MessageReceived(QByteArray)), this, SLOT(OnReplyReceived(QByteArray)));
}

// Construye un mensaje de 9 bytes: [módulo][orden][tipo][motor][valor x4][suma]
QByteArray MotorNanotec::BuildMessage(quint8 command, quint8 type, qint32 value)
{
    QByteArray m(9, 0);
    m[0] = static_cast<char>(moduleAddress);     // a quién va
    m[1] = static_cast<char>(command);           // qué orden es (1 = ROR, 3 = MST)
    m[2] = static_cast<char>(type);              // tipo (0 en estas órdenes)
    m[3] = 0;                                    // motor 0

    quint32 v = static_cast<quint32>(value);     // así los negativos también caben
    m[4] = static_cast<char>((v >> 24) & 0xFF);  // valor: el byte grande primero
    m[5] = static_cast<char>((v >> 16) & 0xFF);
    m[6] = static_cast<char>((v >> 8) & 0xFF);
    m[7] = static_cast<char>(v & 0xFF);

    quint8 sum = 0;                              // comprobación: suma de los 8 anteriores
    for (int i = 0; i < 8; i++)
        sum += static_cast<quint8>(m[i]);
    m[8] = static_cast<char>(sum);

    return m;
}

void MotorNanotec::Stop()
{
    target_Rpm = 0.0;
    current_Speed = 0.0;
    last_Message = BuildMessage(3, 0, 0);        // 3 = MST (parar)
    controller->SendMessage(last_Message);
}


bool MotorNanotec::ProcessReply(const QByteArray &reply, qint32 &value)
{
    if (reply.size() != 9)
        return false;

    quint8 sum = 0;                                    // la suma de los 8 primeros...
    for (int i = 0; i < 8; i++)
        sum += static_cast<quint8>(reply[i]);
    if (sum != static_cast<quint8>(reply[8]))          // ...debe coincidir con el byte 9
        return false;

    if (static_cast<quint8>(reply[2]) != 100)          // estado 100 = todo bien
        return false;

    quint32 v = (static_cast<quint32>(static_cast<quint8>(reply[4])) << 24)
                | (static_cast<quint32>(static_cast<quint8>(reply[5])) << 16)
                | (static_cast<quint32>(static_cast<quint8>(reply[6])) << 8)
                |  static_cast<quint32>(static_cast<quint8>(reply[7]));
    value = static_cast<qint32>(v);
    return true;
}

void MotorNanotec::RequestSpeedUpdate()
{

    comandoEnviado = 6;
    // Pregunta la velocidad real al módulo y actualiza current_Speed
    last_Message = BuildMessage(6, 3, 0);              // 6 = GAP, tipo 3 = velocidad actual
    controller->SendMessage(last_Message); // Solo envía, NO espera

    emit NewInfoAvailable(current_Speed);
}


void MotorNanotec::OnReplyReceived(QByteArray reply)
{
    // Si no es para mi dirección (el byte 0 es la dirección), lo ignoro
    if (static_cast<quint8>(reply[0]) != moduleAddress) return;

    qint32 valor = 0;
    if (ProcessReply(reply, valor)) {
        conectado = true;

        // Si estábamos esperando una respuesta a un GAP (6)
        if (comandoEnviado == 6) {
            current_Speed = valor * 2.0 * M_PI * R_rueda / (60.0 * reduccion);
        }
    } else {
        conectado = false;
    }
}





void MotorNanotec::EnableDriver()
{
    last_Message = BuildMessage(5, 255, 1);              // 5 = SAP, tipo 255 = "enable driver"
    controller->SendMessage(last_Message);
}

void MotorNanotec::SetSpeed(float v_mm_s)
{
    // mm/s en la rueda -> rpm del motor
    target_Rpm = v_mm_s / (2.0* M_PI * R_rueda) * 60.0 * reduccion;
    comandoEnviado = 1;
    if (controller == nullptr || !controller->IsOpen())
        current_Speed = v_mm_s;      // sin motor: simulado. Con motor: lo pone RequestSpeedUpdate

    last_Message = BuildMessage(1, 0, qRound(target_Rpm));   // 1 = ROR (girar)
    controller->SendMessage(last_Message);
}

float MotorNanotec::GetCurrentSpeed()
{
    return current_Speed;
}

float MotorNanotec::GetTargetRpm()
{
    return target_Rpm;
}
QByteArray MotorNanotec::GetLastMessage() {
    return last_Message; }
QByteArray MotorNanotec::GetLastReply()   {
    return last_Reply; }
bool MotorNanotec::EstaConectado() {
    return conectado; }