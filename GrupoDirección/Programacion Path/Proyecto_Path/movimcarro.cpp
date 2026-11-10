#include "movimcarro.h"

MovimCarro::MovimCarro(QObject *parent)
    : QObject{parent}
{
    connect(&timer, &QTimer::timeout, this, &MovimCarro::OnTimer);
    timer.setInterval(100);

}

bool MovimCarro::InitializeFromXml(const QString &xmlText)
{

    float L = 330.0f;
    float W = 240.0f;
    float r = 56.0f;
    float i = 30.0f;       // Relación de reducción (20 * 1.5)
    float max_steer = 40.0f;
    int cpr = 1024;        // Ajustar según el encoder
    int Tm_ms = 100;
    // leeríamos los datos del XML.
    // Supongamos que ya los hemos extraído:
    traj.InitializeTrajectory(L, W, r, i, max_steer, cpr, Tm_ms);

    timer.start();
    return true;
}

void MovimCarro::OnMovementRequired(QVector2D dir)
{   
    // Calcular la cinemática inversa
    traj.CalculateMotorSpeedsAndSteering(dir);

    // Enviamos al hardware
    // motorLeft.SetSpeed(traj.GetReqSpeedLeft_mm_s());
    // motorRight.SetSpeed(traj.GetReqSpeedRight_mm_s());
    // steering.SetPosition(traj.GetReqSteering_deg());
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
    float speedLeft = motorLeft.GetCurrentSpeed();
    float speedRight = motorRight.GetCurrentSpeed();

    // Calculamos la nueva posición
    newPos = traj.CalculateTraj(speedLeft, speedRight);

    // Emitimos la posición para CORE
    emit PositionAvailable(newPos);
}