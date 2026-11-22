#include <QCoreApplication>
#include <QDebug>
#include <QThread>
#include "motorcontroller.h"
#include "motornanotec.h"

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);
    QString nombre = (argc > 1) ? QString(argv[1]) : QString("COM5");

    MotorController controller;
    if (!controller.Init(nombre, 9600))
        return 1;

    MotorNanotec motor;
    motor.Initialize(56.0f, 20.0f, 1, &controller);       // módulo 1

    qInfo() << "--- 1. Comunicacion con el motor parado ---";
    motor.RequestSpeedUpdate();
    qInfo() << "respuesta:" << motor.GetLastReply().toHex(' ') << "| online:" << motor.IsOnline();
    if (!motor.IsOnline()) {
        qInfo() << "El modulo no contesta bien. No sigo.";
        return 1;
    }

    qInfo() << "--- 2. Girando a 20 mm/s durante 3 s ---";
    motor.SetSpeed(20.0f);
    qInfo() << "enviado:" << motor.GetLastMessage().toHex(' ')
            << "| respuesta:" << motor.GetLastReply().toHex(' ');
    for (int i = 0; i < 15; i++) {
        QThread::msleep(200);
        motor.RequestSpeedUpdate();
        qInfo() << "velocidad:" << motor.GetCurrentSpeed() << "mm/s | online:" << motor.IsOnline();
    }

    qInfo() << "--- 3. Parada ---";
    motor.Stop();
    qInfo() << "respuesta al Stop:" << motor.GetLastReply().toHex(' ');
    for (int i = 0; i < 5; i++) {
        QThread::msleep(200);
        motor.RequestSpeedUpdate();
        qInfo() << "velocidad:" << motor.GetCurrentSpeed() << "mm/s";
    }
    return 0;
}
