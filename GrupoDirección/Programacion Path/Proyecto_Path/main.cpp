#include <QCoreApplication>
#include <QDebug>
#include <QThread>
#include <QSerialPortInfo>
#include "motorcontroller.h"
#include "motornanotec.h"

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);

    qInfo() << "=== PRUEBA DE 2 MOTORES ===";

    // 1. Listar puertos
    for (const QSerialPortInfo &info : QSerialPortInfo::availablePorts()) {
        qInfo() << " ->" << info.portName() << "|" << info.description();
    }

    // 2. Configurar el puerto
    MotorController controller;
    if (!controller.Init("COM3", 9600)) {
        qInfo() << "ERROR: No se pudo abrir el puerto.";
        return 1;
    }

    // 3. Inicializar ambos motores (Izquierdo = 1, Derecho = 2)
    MotorNanotec motorLeft, motorRight;
    motorLeft.Initialize(56.0, 20.0, 1, &controller);
    motorRight.Initialize(56.0, 20.0, 2, &controller);

    qInfo() << "Activando drivers...";
    motorLeft.EnableDriver();
    motorRight.EnableDriver();
    QThread::msleep(100);
    QCoreApplication::processEvents();

    // 4. Comprobar conexión de ambos
    qInfo() << "Comprobando conexion...";
    motorLeft.RequestSpeedUpdate();
    motorRight.RequestSpeedUpdate();
    QThread::msleep(200);
    QCoreApplication::processEvents();

    qInfo() << "  Motor 1 (Izq):" << (motorLeft.EstaConectado() ? "ONLINE" : "OFFLINE");
    qInfo() << "  Motor 2 (Der):" << (motorRight.EstaConectado() ? "ONLINE" : "OFFLINE");

    if (!motorLeft.EstaConectado() || !motorRight.EstaConectado()) {
        qInfo() << "ERROR: Falla la comunicacion con uno o ambos motores.";
        return 1;
    }

    // 5. Mover ambos hacia adelante (Mismo sentido de giro en el bus)
    // Nota: Como no están montados en el chasis, les enviamos el mismo comando.
    qInfo() << "Moviendo ambos motores (30 mm/s)...";
    motorLeft.SetSpeed(30.0f);
    motorRight.SetSpeed(30.0f);

    for (int i = 0; i < 4; i++) {
        QThread::msleep(500);
        QCoreApplication::processEvents();

        motorLeft.RequestSpeedUpdate();
        motorRight.RequestSpeedUpdate();
        QThread::msleep(50);
        QCoreApplication::processEvents();

        qInfo() << "  V_Real_Izq:" << motorLeft.GetCurrentSpeed()
                << "| V_Real_Der:" << motorRight.GetCurrentSpeed();
    }

    // 6. Parar ambos
    qInfo() << "Parando ambos...";
    motorLeft.Stop();
    motorRight.Stop();
    QThread::msleep(1000);
    QCoreApplication::processEvents();

    // 7. Mover hacia atrás (Opcional, para probar valores negativos)
    qInfo() << "Moviendo ambos hacia atras (20 mm/s)...";
    motorLeft.SetSpeed(-20.0f);
    motorRight.SetSpeed(-20.0f);
    QThread::msleep(2000);
    QCoreApplication::processEvents();

    motorLeft.Stop();
    motorRight.Stop();

    qInfo() << "=== FIN DE LA PRUEBA ===";
    return 0;
}
