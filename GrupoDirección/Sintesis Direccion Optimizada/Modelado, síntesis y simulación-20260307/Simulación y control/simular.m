%Simulación dinámica directa con integrador RK2 y formulación de matriz R

%Versión 1.0

clc
clear
clear global
clf

%Definir las constantes globales
    global nq nz nr pvar pz mass mech nconst c Kctc
    
%Cargar datos de restricciones cinemáticas
    load kinematic_def_3D
    
%Cargar datos de masas
    load mass_def_3D

%Definir la ganancia proporcional del CTC
    Kctc=1000;

%Determinar el número de bloques de ecuaciones de restricción
    nconst=size(mech,1);

%Definir constantes dimensionales
    p=[0.2 0.2 0.2 -0.1 -0.2];
    za2p=p(1);
    xb3p=p(2);
    xc4p=p(3);
    zd5p=p(4);
    yo=p(5);
    
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
      
%Calcular condiciones iniciales para la simulación (posición y velocidad)
    %Determinar el número de coordenadas
        nq=length(qini);
        
    %Definir la posición de las coordenadas independientes
        pz=[49 50 51];
        nz=length(pz);
        
    %Determinar las posiciones de las variables dependientes
        pvar=def_pvar(nq,pz);
        nvar=length(pvar);
        
    %Cálcular el valor de las coordenadas independientes y su velocidad en
    %el instante inicial
        z0=[0; %xd0
            0; %yd0
            0]; %zd0
        
        dz0=[0.05;
             0;
             0.05];
            
    %Calcular la posición para el instante inicial
        [q0,phi0]=calc_pos_z_3D(0,qini,c,z0,pz);
        nr=length(phi0);
        
    %Construir el vector s0
        s0=[z0;
            dz0];
        
%Crear el vector de instantes de tiempo
    tfin=10;
    it=0.001;
    vt=(0:it:tfin)';
    
%Integrar y medir el tiempo de simulación
    tic
    [vt,result,addres]=RK2('f_mR',vt,s0,q0);
    tiempo=toc;
    
%Plotear los resultados
    if true
        
        pos=addres(:,1:nq);
        vel=addres(:,nq+1:2*nq);
        acel=addres(:,2*nq+1:3*nq);
        U=addres(:,3*nq+1:3*nq+3);

        posdes=inverse_kinematics(vt,qini,c,pz,false);
        
        figure(1) %Posición, velocidad y error de posicion en TCP
        
        subplot(3,3,1) %xd
            plot(vt,pos(:,49),'b')
            grid on
            xlabel('Tiempo [s]');
            ylabel('x_D [m]');

        subplot(3,3,2) %yd
            plot(vt,pos(:,50),'g')
            grid on
            xlabel('Tiempo [s]');
            ylabel('y_D [m]');

        subplot(3,3,3) %zd
            plot(vt,pos(:,51),'r')
            grid on
            xlabel('Tiempo [s]');
            ylabel('z_D [m]');

        subplot(3,3,4) %dxd
            plot(vt,vel(:,49),'b')
            grid on
            xlabel('Tiempo [s]');
            ylabel('dx_D [m/s]');

        subplot(3,3,5) %dyd
            plot(vt,vel(:,50),'g')
            grid on
            xlabel('Tiempo [s]');
            ylabel('dy_D [m/s]');

        subplot(3,3,6) %dzd
            plot(vt,vel(:,51),'r')
            grid on
            xlabel('Tiempo [s]');
            ylabel('dz_D [m/s]');

        subplot(3,3,7) %xd-xddes
            plot(vt,pos(:,49)-posdes(:,49),'b')
            grid on
            xlabel('Tiempo [s]');
            ylabel('x_D-x_D_d_e_s [m]');

        subplot(3,3,8) %yd-yddes
            plot(vt,pos(:,50)-posdes(:,50),'g')
            grid on
            xlabel('Tiempo [s]');
            ylabel('y_D-y_D_d_e_s [m]');

        subplot(3,3,9) %dzd-zddes
            plot(vt,pos(:,51)-posdes(:,51),'r')
            grid on
            xlabel('Tiempo [s]');
            ylabel('z_D-z_D_d_e_s [m]');
            
        figure(2) %Posición, velocidad y par en actuadores
        
        subplot(3,3,1) %alpha
            plot(vt,pos(:,67)*180/pi,'b')
            grid on
            xlabel('Tiempo [s]');
            ylabel('alpha [º]');

        subplot(3,3,2) %beta
            plot(vt,pos(:,68)*180/pi,'g')
            grid on
            xlabel('Tiempo [s]');
            ylabel('beta [º]');

        subplot(3,3,3) %Chi
            plot(vt,pos(:,69)*180/pi,'r')
            grid on
            xlabel('Tiempo [s]');
            ylabel('Chi [º]');
            
        subplot(3,3,4) %dalpha
            plot(vt,vel(:,67)*30/pi,'b')
            grid on
            xlabel('Tiempo [s]');
            ylabel('alpha [rpm]');

        subplot(3,3,5) %dbeta
            plot(vt,vel(:,68)*30/pi,'g')
            grid on
            xlabel('Tiempo [s]');
            ylabel('beta [rpm]');

        subplot(3,3,6) %dchi
            plot(vt,vel(:,69)*30/pi,'r')
            grid on
            xlabel('Tiempo [s]');
            ylabel('Chi [rpm]');

        subplot(3,3,7) %Talpha
            plot(vt,U(:,1),'b')
            grid on
            xlabel('Tiempo [s]');
            ylabel('Talpha [N·m]');

        subplot(3,3,8) %Tbeta
            plot(vt,U(:,2),'g')
            grid on
            xlabel('Tiempo [s]');
            ylabel('Tbeta [N·m]');

        subplot(3,3,9) %Tchi
            plot(vt,U(:,3),'r')
            grid on
            xlabel('Tiempo [s]');
            ylabel('Tchi [N·m]');

    end