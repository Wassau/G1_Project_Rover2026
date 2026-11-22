#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H

#include <QObject>
#include <QSerialPort>
#include <QByteArray>
#include <QDebug>

class MotorController : public QObject
{
    Q_OBJECT
private:
    QSerialPort port;
public:
    explicit MotorController(QObject *parent = nullptr);
    bool Init(const QString &portName, int baud);
    bool IsOpen();
    bool SendAndReceive(const QByteArray &msg, QByteArray &reply);
};

#endif // MOTORCONTROLLER_H
