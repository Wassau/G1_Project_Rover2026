#include "trajectory.h"

Trajectory::Trajectory(QObject *parent)
    : QObject{parent}
{}

void Trajectory::InitializeTrajectory(float L, float W, float r, float i, float max_steer, int cpr, int Tm_ms)
{
    L_ejes= L;
    W_ancho = W;
    R_rueda = r;
    gear_ratio = i;
    max_steering_deg = max_steer;
    encoder_cpr = cpr;
    Tm_sec = Tm_ms / 1000.0;
}

void Trajectory::CalculateMotorSpeedsAndSteering(QVector2D dir)
{
    // EXTRAER Y ESCALAR LOS DATOS DEL VECTOR (Joystick)
    // Asumimos que el joystick va de -1.0 a 1.0
    // Eje Y -> Velocidad (Adelante/Atrás)
    // Eje X -> Dirección (Izquierda/Derecha)
    float target_speed_mm_s = dir.y() * max_speed_mm_s;
    float target_steering_deg = - dir.x() * max_steering_deg;

    // LIMITAR EL ÁNGULO AL MÁXIMO FÍSICO DEL SERVO
    if (target_steering_deg > max_steering_deg) target_steering_deg = max_steering_deg;
    if (target_steering_deg < -max_steering_deg) target_steering_deg = -max_steering_deg;

    req_steering_deg = target_steering_deg;

    // CALCULAR EL ÁNGULO REAL DE LA RUEDA DERECHA
    // Convertimos el ángulo de la rueda izquierda a radianes
    float dL_rad = req_steering_deg * M_PI / 180.0;

    // Llamamos a la función que traduce tu mecanismo de 4 barras
    float dR_rad = CalculateDeltaR(dL_rad);

    // CALCULAR LAS VELOCIDADES DE LOS MOTORES (Ackermann diferencial)
    // Si el ángulo es prácticamente cero, vamos rectos
    if (std::abs(dL_rad) < 0.001 && std::abs(dR_rad) < 0.001) {
        req_speed_L_mm_s = target_speed_mm_s;
        req_speed_R_mm_s = target_speed_mm_s;
    }
    else {
        // Usamos el promedio de los ángulos reales de ambas ruedas
        float delta_promedio = (std::abs(dL_rad) + std::abs(dR_rad)) / 2.0;

        // Calcular el radio de giro (R)
        float R = L_ejes / std::tan(delta_promedio);

        // Si giramos a la derecha (ángulo negativo), el radio es negativo
        if (target_steering_deg < 0) R = -R;

        // Calcular velocidad angular (omega)
        float omega = target_speed_mm_s / R;

        // Velocidades diferenciales para las ruedas traseras (ML y MR)
        req_speed_L_mm_s = target_speed_mm_s - (omega * (W_ancho / 2.0));
        req_speed_R_mm_s = target_speed_mm_s + (omega * (W_ancho / 2.0));
    }

}

float Trajectory::CalculateDeltaR(float dL_rad)
{
    float xA = 0.0;
    float yA = 0.0;
    float xD = W_ancho;
    float yD = 0.0f;
    float LAB = Larm;
    float LBC = L_BC_opt;
    float LDC = Larm;
    float gam = gamma_opt_deg * M_PI / 180.0; // Convertir a radianes

    // Ecuaciones del punto B
    float t = -M_PI / 2.0 + gam + dL_rad;
    float xB = xA + LAB * std::cos(t);
    float yB = yA + LAB * std::sin(t);

    // Vector v (de B a D)
    float vx = xD - xB;
    float vy = yD - yB;
    float d = std::sqrt(vx * vx + vy * vy);

    // Protección si la geometría colapsa
    if (d < 0.001) return dL_rad;

    float ux = vx / d;
    float uy = vy / d;

    // Cálculo de 'a' y 'h2'
    float a = (LBC * LBC - LDC * LDC + d * d) / (2.0f * d);
    float h2 = LBC * LBC - a * a;

    if (h2 < 0.0) {
        return dL_rad;
    }

    // Vector normal n
    float nx = -uy;
    float ny = ux;
    // Punto C
    float xC = xB + a * ux - std::sqrt(h2) * nx;
    float yC = yB + a * uy - std::sqrt(h2) * ny;
    // Ángulo tDC
    float tDC = std::atan2(yC - yD, xC - xD);
    // Cálculo final de dR
    float dR_rad = std::atan2(std::sin(tDC + M_PI / 2.0f + gam), std::cos(tDC + M_PI / 2.0f + gam));

    return dR_rad;
}

QPointF Trajectory::CalculateTraj(float speedLeft, float speedRight)
{

    // Velocidad del centro del rover y velocidad angular
    float v_center = (speedLeft + speedRight) / 2.0;
    float omega = (speedRight - speedLeft) / W_ancho;

    // Integración de Euler para actualizar la posicion
    current_x += v_center * std::cos(current_theta) * Tm_sec;
    current_y += v_center * std::sin(current_theta) * Tm_sec;
    current_theta += omega * Tm_sec;

    // Normalizar theta para que esté entre -PI y PI
    while (current_theta > M_PI) current_theta -= 2.0 * M_PI;
    while (current_theta < -M_PI) current_theta += 2.0 * M_PI;

    return QPointF(current_x, current_y);
}

float Trajectory::GetReqSpeedLeft_mm_s() {
    return req_speed_L_mm_s; }

float Trajectory::GetReqSpeedRight_mm_s() {
    return req_speed_R_mm_s; }

float Trajectory::GetReqSteering_deg() {
    return req_steering_deg; }

float Trajectory::GetCurrentX() {
    return current_x; }

float Trajectory::GetCurrentY() {
    return current_y; }

float Trajectory::GetCurrentTheta() {
    return current_theta; }

void Trajectory::SetTm_ms(int Tm_ms)
{
    if (Tm_ms > 0) {
        Tm_sec = Tm_ms / 1000.0; // Convertir a segundos
    }
}
