#include "motornanotec.h"

MotorNanotec::MotorNanotec(QObject *parent)
    : QObject{parent}
{
    current_Speed = 0.0;
}

float MotorNanotec::GetCurrentSpeed()
{
 return current_Speed; }
