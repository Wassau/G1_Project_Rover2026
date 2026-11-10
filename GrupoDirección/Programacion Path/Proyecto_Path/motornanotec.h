#ifndef MOTORNANOTEC_H
#define MOTORNANOTEC_H

#include <QObject>

class MotorNanotec : public QObject
{
    Q_OBJECT
private:
   float current_Speed;
public:
    explicit MotorNanotec(QObject *parent = nullptr);
   float GetCurrentSpeed();
signals:
};

#endif // MOTORNANOTEC_H
