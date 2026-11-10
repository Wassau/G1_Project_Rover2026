#ifndef MOVIMCARRO_H
#define MOVIMCARRO_H


#include "trajectory.h"
#include "motornanotec.h"

class MovimCarro : public QObject
{
    Q_OBJECT
private:
    Trajectory traj;
    MotorNanotec motorLeft, motorRight;
    QTimer timer;
public:
    explicit MovimCarro(QObject *parent = nullptr);
    bool InitializeFromXml(const QString &xmlText);

public slots:
    void OnMovementRequired(QVector2D dir);
    void OnSetTimerInterval(int t_ms);
    void OnTimer();
signals:
    void PositionAvailable(QPointF position);

};

#endif // MOVIMCARRO_H
