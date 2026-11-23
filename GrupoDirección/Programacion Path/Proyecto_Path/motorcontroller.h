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
    QByteArray AccumBytes; // Acumulador de bytes

public:
    explicit MotorController(QObject *parent = nullptr);
    bool Init(const QString &portName, int baud);
    bool IsOpen();
    void SendMessage(const QByteArray &msg);

signals:
    // Se emite cada vez que llega una trama TMCL completa (9 bytes)
    void MessageReceived(QByteArray reply);
private slots:
    void OnReadyRead(); // Slot que se ejecuta cuando llegan datos
};

#endif // MOTORCONTROLLER_H
