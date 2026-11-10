#ifndef TRAJECTORY_H
#define TRAJECTORY_H

#include <QObject>
#include <QPointF>
#include <cmath>
#include <iostream>
#include <QVector2D>
#include <QTimer>

class Trajectory : public QObject
{
    Q_OBJECT
private:
    // Parámetros físicos
    float L_ejes;
    float W_ancho;
    float R_rueda;
    float max_steering_deg;
    float max_speed_mm_s = 500.0; // Velocidad máxima del rover
    float Tm_sec;
    // Parámetros de los encoders ---
    int encoder_cpr;   // Pulsos por vuelta del motor
    float gear_ratio;  // Relación de transmisión (reducción)
    // Constantes de la geometría (Sacadas de la optimización)
    const float Larm = 30.0;      // LAB y LDC
    const float L_BC_opt = 216.0; // Bieleta larga
    const float gamma_opt_deg = 23.17; // Ángulo optimizado
    // Estado actual (Odometría)
    float current_x;
    float current_y;
    float current_theta; // En radianes
    // Salidas de control (Cinemática inversa)
    float req_speed_L_mm_s;
    float req_speed_R_mm_s;
    float req_steering_deg;

public:
    explicit Trajectory(QObject *parent = nullptr);
    void InitializeTrajectory(float L, float W, float r, float i, float max_steer, int cpr, int Tm_ms);
    void CalculateMotorSpeedsAndSteering(QVector2D dir);
    float CalculateDeltaR(float dL_rad);
    QPointF CalculateTraj(float speedLeft, float speedRight);
    // Getters del estado actual (Para enviarlos a CORE/VISU)
    float GetCurrentX();
    float GetCurrentY();
    float GetCurrentTheta();
    float GetReqSpeedLeft_mm_s();
    float GetReqSpeedRight_mm_s();
    float GetReqSteering_deg();
    // Para actualizar el tiempo sobre la marcha
    void SetTm_ms(int Tm_ms);

signals:
};

#endif // TRAJECTORY_H
