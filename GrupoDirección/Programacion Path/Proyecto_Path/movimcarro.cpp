#include "movimcarro.h"

MovimCarro::MovimCarro(QObject *parent)
    : QObject{parent}
{
    connect(&timer, &QTimer::timeout, this, &MovimCarro::OnTimer);
    timer.setInterval(100);
    timer.setTimerType(Qt::PreciseTimer);
}
MovimCarro::~MovimCarro()            // al cerrar el programa, los motores se paran
{
    motorLeft.Stop();
    motorRight.Stop();
}
bool MovimCarro::InitializeFromXml(const QString &xmlText)
{
    QString portName="COM3"; // Linux/Raspberry: "/dev/ttyUSB0" o "/dev/ttyS0"
     int baudRate= 9600;

    float L = 330.0;
    float W = 240.0;
    float r = 56.0;
    float i = 20.0; // Relación de reducción
    float max_steer = 40.0;
    int cpr = 1024; // Pulsos Por Revolución (PPR), Ajustar según el encoder
    int Tm_ms = 100;
    // leeríamos los datos del XML.
    // Supongamos que ya los hemos extraído:
    traj.InitializeTrajectory(L, W, r, i, max_steer, cpr, Tm_ms);

    // abrir el puerto serie
    controller.Init(portName, baudRate);

    motorLeft.Initialize(r, i, 1, &controller);           // módulo 1
    motorRight.Initialize(r, i, 2, &controller);          // módulo 2

    motorLeft.EnableDriver();
    motorRight.EnableDriver();

    timer.start();
    return true;
}

void MovimCarro::OnMovementRequired(QVector2D dir)
{   
    // Calcular la cinemática inversa
    traj.CalculateMotorSpeedsAndSteering(dir);
    // Enviamos al hardware
    float vLeft = traj.GetReqSpeedLeft_mm_s();
    float vRight = -traj.GetReqSpeedRight_mm_s();
    motorLeft.SetSpeed(vLeft);
    motorRight.SetSpeed(vRight);
    //steering.SetPosition(traj.GetReqSteering_deg());
}

void MovimCarro::OnSetTimerInterval(int t_ms)
{
  timer.setInterval(t_ms);
  traj.SetTm_ms(t_ms);
}

void MovimCarro::OnTimer()
{
    QPointF newPos;
    // Obtenemos las velocidades reales
    motorLeft.RequestSpeedUpdate();      // preguntar velocidad real a los dos motores
    motorRight.RequestSpeedUpdate();
    float speedLeft = motorLeft.GetCurrentSpeed();
    float speedRight = -motorRight.GetCurrentSpeed();

    // Calculamos la nueva posición
    newPos = traj.CalculateTraj(speedLeft, speedRight);

    // Emitimos la posición para CORE
    emit PositionAvailable(newPos);
}