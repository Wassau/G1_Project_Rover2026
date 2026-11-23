#ifndef MOTORNANOTEC_H
#define MOTORNANOTEC_H

#include <QObject>
#include <QByteArray>
#include <QDebug>
#include "motorcontroller.h"

class MotorNanotec : public QObject
{
    Q_OBJECT
private:
    float R_rueda;   // radio de la rueda
    float reduccion;
    float current_Speed;    // velocidad actual en mm/s
    float target_Rpm;       // rpm que habría que pedirle al motor
    int   moduleAddress;      // número del módulo en el bus (1 o 2)
    QByteArray last_Message;  // último mensaje construido
    QByteArray last_Reply;                               // última respuesta
    MotorController *controller;
    bool conectado;
    quint8 comandoEnviado; // Para saber qué respuesta estamos esperando
public:
    explicit MotorNanotec(QObject *parent = nullptr);
    void Initialize(float wheelRadius_mm, float gearRatio,  int address, MotorController *ctrl);
    void SetSpeed(float v_mm_s);
    float GetCurrentSpeed();
    float GetTargetRpm();

    QByteArray GetLastMessage();
    QByteArray GetLastReply();
    void Stop();
    QByteArray BuildMessage(quint8 command, quint8 type, qint32 value);
    void EnableDriver();
    void RequestSpeedUpdate();
    bool ProcessReply(const QByteArray &reply, qint32 &value);
    bool EstaConectado();
signals:
    void NewInfoAvailable(float speed_mm_s);

private slots:
    void OnReplyReceived(QByteArray reply);
};

#endif // MOTORNANOTEC_H
