function [pos,errpos,vIM1,vIM2,vIM3]=inverse_kinematics(vt,qini)
%Función para resolver la cinemática inversa del robot

%Entradas
%vt (Vector columna ntx1 con los instantes temporales en los que se resuelve la
%cinemática)
%qini (Vector nx1 con la aproximación de la posición inicial del mecanismo)

%Salidas
%pos (Matriz ntxn con la posición de todas las coordenadas del mecanismo)
%errpos (Vector ntx1) con la norma euclidea del vector phi en cada instante)
%vIM1 (Vector ntx1 con el valor del ICC IM1)
%vIM2 (Vector ntx1 con el valor del ICC IM2)
%vIM3 (Vector ntx1 con el valor del ICC IM3)

%Definir las variables globales
    global c nq pz pvar
    
%Definir aproximación inicial
    q0=qini;

%Determinar el número de instantes temporales
    nt=length(vt);
   
%Crear las salidas
    pos=zeros(nt,nq);
    errpos=zeros(nt,1);
    vIM1=zeros(nt,1);
    vIM2=vIM1;
    vIM3=vIM1;

%Bucle de calculo en instantes temporales
    for c1=1:nt
        %Cálcular el valor de las coordenadas independientes
            z=calc_z(vt(c1),c);
            
        %Calcular la posición
            [q,phi]=calc_pos_z_3D(vt(c1),q0,c,z,pz);
            
        %Calcular el índice de manipulabilidad
            [IM1,IM2,IM3]=calc_IM(vt(c1),q);
                    
        %Guardar los resultados
            pos(c1,:)=q';
            errpos(c1)=norm(phi);
            vIM1(c1,:)=IM1;
            vIM2(c1,:)=IM2;
            vIM3(c1,:)=IM3;
            
        %Actualizar aproximación de la posición para el siguiente instante
            q0=q;
            
    end