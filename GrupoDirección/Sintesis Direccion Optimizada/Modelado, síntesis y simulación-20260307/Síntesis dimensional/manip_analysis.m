%Análisis de manipulabilidad de robot antropomorfico

clc
clear
clear global
clf

%Definir las constantes globales
    global mech nconst c nq pz pvar 
    
%Cargar datos de restricciones cinemáticas
    load kinematic_def_3D

%Determinar el número de bloques de ecuaciones de restricción
    nconst=size(mech,1);

%Definir constantes dimensionales
    za2p=0.2;
    xb3p=0.2;
    xc4p=0.2;
    zd5p=-0.1;
    yo=-0.2;

    %Constantes optimizadas
    % za2p=0.3259;
    % xb3p=0.2280;
    % xc4p=0.1030;
    % zd5p=-0.0939;
    % yo=-0.0443;

    c=[0; %xa2p
       0; %ya2p
       za2p; %za2p
       0; %xe2p
       0; %ye2p
       za2p+0.1; %ze2p;
       xb3p; %xb3p
       0; %yb3p
       0; %zb3p
       xc4p; %xc4p
       0; %yc4p
       0; %zc4p
       0; %xd5p
       0; %yd5p
       zd5p; %zd5p
       0; %xg5p
       0; %yg5p
       0.1; %zg5p
       0; %xf8p
       0; %yf8p
       0.1; %zf8p
       xb3p; %Lef
       xc4p; %Lfg
       0.075; %xo
       yo; %yo
       0; %zo
       1; %uxx
       0; %uxy
       0; %uxz
       0; %uyx
       1; %uyy
       0; %uyz
       0; %uzx
       0; %uzy
       1]; %uzz
    
%Definir posición inicial
    qini=[-1; %u21x
          1; %u21y
          0; %u21z
          -1; %u22x
          -1; %u22y
          0; %u22z
          0; %u23x
          0; %u23y
          1; %u23z
          0; %xa
          0; %ya
          0.2; %za
          0; %xe
          0; %ye
          0.3; %ze
          -1; %u31x
          1; %u31y
          1; %u31z
          -1; %u32x
          -1; %u32y
          0; %u32z
          1; %u33x
          -1; %u33y
          1; %u33z
          -0.1; %xb
          -0.1; %yb
          0.3; %zb
          -1; %u41x
          1; %u41y
          -1; %u41z
          -1; %u42x
          -1; %u42y
          0; %u42z
          -1; %u43x
          1; %u43y
          1; %u43z
          0; %xc
          0; %yc
          0.2; %zc
          -1; %u51x
          1; %u51y
          0; %u51z
          -1; %u52x
          -1; %u52y
          0; %u52z
          0; %u53x
          0; %u53y
          1; %u53z
          0; %xd
          0; %yd
          0; %zd
          -0.1; %xg
          0.1; %yg
          0.4; %zg
          -1; %u81x
          1; %u81y
          0; %u81z
          -1; %u82x
          -1; %u82y
          0; %u82z
          0; %u83x
          0; %u83y
          1; %u83z
          -0.1; %xf
          -0.1; %yf
          0.4; %zf
          2; %alpha
          0.5; %beta
          -0.5]; %chi
      
%Determinar el número de coordenadas totales
    nq=length(qini);
        
%Definir los punteros a las coordenadas de interes 
    pz=[49 50 51]; %[xd yd zd]
    
    pvar=def_pvar(nq,pz);

    nvar=length(pvar);
    
%Realizar la simulación del movimiento
    vt=0:0.1:9;
    [pos,errpos,vIM1,vIM2,vIM3]=inverse_kinematics(vt,qini);

%Calcular el rango de los ángulos de los actuadores
    valfa=pos(:,67);
    vbeta=pos(:,68);
    vchi=pos(:,69);

    %Plotear norma de phi (sirve para ver si el robot se monta en todas las
    %posiciones)
    figure(1)
    plot(vt,errpos)
    grid on
    xlabel('t [s]')
    ylabel('norm(phi)')

    %Plotear ICC
    figure(2)
    subplot(1,3,1)
    plot(vt,vIM1)
    grid on
    axis([0 9 0 1])
    xlabel('t [s]')
    ylabel('Manipulability index 1-->Smin/Smax')
    subplot(1,3,2)
    plot(vt,vIM2)
    grid on
    axis([0 9 0 1])
    xlabel('t [s]')
    ylabel('Manipulability index 2--> Smin')
    subplot(1,3,3)
    plot(vt,vIM3)
    grid on
    axis([0 9 0 1])
    xlabel('t [s]')
    ylabel('Manipulability index 3--> nthroot(S)')

    %Plotear ángulos actuadores
    figure(3)
    subplot(1,3,1)
    plot(vt,valfa*180/pi)
    grid on
    xlabel('t [s]')
    ylabel('Alpha [º]')
    subplot(1,3,2)
    plot(vt,vbeta*180/pi)
    grid on
    xlabel('t [s]')
    ylabel('Beta [º]')
    subplot(1,3,3)
    plot(vt,vchi*180/pi)
    grid on
    xlabel('t [s]')
    ylabel('Chi [º]')