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
    if (!port.open(QIODevice::ReadWrite)) {
        qDebug() << "Sin puerto/motor:" << port.errorString() << "-> modo simulación";
        return false;
    }
    return true;
}

bool MotorController::IsOpen()
{
    return port.isOpen();
}

// envía un mensaje y espera la respuesta de 9 bytes
bool MotorController::SendAndReceive(const QByteArray &msg, QByteArray &reply)
{
    if (!port.isOpen())
        return false;

    port.readAll();                          // tirar bytes viejos
    port.write(msg);
    port.waitForBytesWritten(100);

    reply.clear();
    while (reply.size() < 9 && port.waitForReadyRead(100))
        reply.append(port.readAll());

    return reply.size() == 9;
}