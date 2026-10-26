function [z,dz,d2z]=calc_z(t,c)
%Función para definir el movimiento deseado en cada instante
%
%Entradas
%t (Instante temporal)
%c (Vector de constantes)
%
%Salidas
%z (Vector columna [xd yd zd]
%dz (Vector columna [dxd dyd dzd]
%d2z (Vector columna [d2xd d2yd d2zd]
%

%Extraer constantes de interes
   
%Definir las salidas
    if t<=3
        xd=0.05*t;
        yd=0;
        zd=0.05*t;
        
        dxd=0.05;
        dyd=0;
        dzd=0.05;
        dtheta=0;
        
        d2xd=0;
        d2yd=0;
        d2zd=0;
        
        
    elseif 3<t && t<=5
        xd=0.15;
        yd=0.05*(t-3);
        zd=0.15;
        
        dxd=0;
        dyd=0.05;
        dzd=0;
        
        d2xd=0;
        d2yd=0;
        d2zd=0;
        
    elseif 5<t && t<=8
        xd=0.15-0.05*(t-5);
        yd=0.1;
        zd=0.15;
        
        dxd=-0.05;
        dyd=0;
        dzd=0;
        
        d2xd=0;
        d2yd=0;
        d2zd=0;
        
    elseif 8<t && t<=10
        xd=0;
        yd=0.1-0.05*(t-8);
        zd=0.15-0.075*(t-8);
        
        dxd=0;
        dyd=-0.05;
        dzd=-0.075;
        
        d2xd=0;
        d2yd=0;
        d2zd=0;
        
    end
    
%Construir las salidas
    z=[xd yd zd]';
    dz=[dxd dyd dzd]';
    d2z=[d2xd d2yd d2zd]';