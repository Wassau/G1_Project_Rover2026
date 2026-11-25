#include "motorcontroller.h"


MotorController::MotorController(QObject *parent)
    : QObject{parent}
{
}

bool MotorController::Init(const QString &portName, int baud)
{
    port.setPortName(portName);
    port.setBaudRate(baud);
    port.setDataBits(QSerialPort::Data8);
    port.setParity(QSerialPort::NoParity);
    port.setStopBits(QSerialPort::OneStop);
    port.setFlowControl(QSerialPort::NoFlowControl);
    if (port.open(QIODevice::ReadWrite)) {
        QObject::connect(&port, SIGNAL(readyRead()), this, SLOT(OnReadyRead()));
        return true;
    }
    return false;
}

bool MotorController::IsOpen()
{
    return port.isOpen();
}

// envía un mensaje y espera la respuesta de 9 bytes
void MotorController::SendMessage(const QByteArray &msg)
{
    if (port.isOpen()) {
        port.write(msg);
    }
}

// Este slot se ejecuta solo cuando hay datos nuevos en el cable
void MotorController::OnReadyRead()
{
    AccumBytes.append(port.readAll());

    // Una trama TMCL de respuesta siempre tiene 9 bytes
    while (AccumBytes.size() >= 9) {
        QByteArray datos = AccumBytes.left(9);
        AccumBytes.remove(0, 9);

        // Emitimos la señal para que el motor correspondiente la procese
        emit MessageReceived(datos);
    }
}