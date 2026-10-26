function z=calc_z(t,c)
%Función para definir el movimiento deseado en cada instante
%
%Entradas
%t (Instante temporal)
%c (Vector de constantes)
%
%Salidas
%z (Vector columna [xd yd zd]
%

%Extraer constantes de interes
    x0=c(24);
    y0=c(25);
   
%Definir las salidas
    if t<=1
        xd=0.16*t;
        yd=0;
        zd=0;
        
    elseif 1<t && t<=2
        xd=0.16;
        yd=0.16*(t-1);
        zd=0;
        
    elseif 2<t && t<=3
        xd=0.16-0.16*(t-2);
        yd=0.16;
        zd=0;
        
    elseif 3<t && t<=4
        xd=0;
        yd=0.16-0.16*(t-3);
        zd=0;
        
    elseif 4<t && t<=5
        xd=0;
        yd=0;
        zd=0.1*(t-4);
        
    elseif 5<t && t<=6
        xd=0.16*(t-5);
        yd=0;
        zd=0.1;
        
    elseif 6<t && t<=7
        xd=0.16;
        yd=0.16*(t-6);
        zd=0.1;
        
    elseif 7<t && t<=8
        xd=0.16-0.16*(t-7);
        yd=0.16;
        zd=0.1;
        
    elseif 8<t && t<=9
        xd=0;
        yd=0.16-0.16*(t-8);
        zd=0.1;
        
    end
    
%Construir las salidas
    z=[xd yd zd]';