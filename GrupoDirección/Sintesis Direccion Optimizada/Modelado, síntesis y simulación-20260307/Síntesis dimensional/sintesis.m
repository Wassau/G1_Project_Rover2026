%Síntesis dimensional de suspensión trasera prototipo MS7

clc
clear
clear global
clf

%addpath('C:\Álvaro Noriega\Investigacion\Tesis doctoral\Algoritmos de optimizacion\Algoritmos propios\Discrete Directions Mutation Evolution Strategy\Single Objective\Bounded Version\Versión 3.2\')

%Definir las constantes globales
    global mech nconst nout pint pout
    
%Cargar datos de restricciones cinemáticas
    load kinematic_def_3D

%Determinar el número de bloques de ecuaciones de restricción
    nconst=size(mech,1);
    
%Definir los punteros a las coordenadas de entrada y salida del robot 
    pint=[67 68 69]; %[alpha beta chi]
    pout=[49 50 51]; %[xd yd zd]
    
    nint=length(pint);
    nout=length(pout);
    
%Definir las opciones del algoritmo DDM-ES
    opcion=ddmesopt('Delta',10,'Popsize',150,'Popini',[],'K_sigma',1,...
    'iii',0,'Delta_nii',1,'Num_discr_dir',3,...
    'Type_opt','Puntual','Stop_crit',1,'Stop_value',30,...
    'Save_pop','No','Type_prob','Min','Display','Yes');

%Definir las opciones del fmincon
    options=optimset('Algorithm','active-set','Display','off');

%Generar la matriz de límites
    esp=[ 0 0.4; %za2p
          0.1 0.3; %xb3p
          0.1 0.3; %xc4p
          -0.1 -0.05; %zd5p
          -0.3 0]'; %yo

%%%%%%%%%%%%%%%%%%%%%%%%%RESOLVER PROBLEMA SINTESIS%%%%%%%%%%%%%%%%%%%%%%%%
    disp('Corriendo algoritmo de síntesis')
    tic
    disp('DDM-ES')
    [prough,f]=ddmes('fobj',esp,opcion);
    %disp('fmincon')
    %[popt,fopt]=fmincon(@fobj,prough,[],[],[],[],esp(1,:),esp(2,:),[],options);
    t=toc;
    disp(['Tiempo total utilizado para la síntesis: ' num2str(t) ' s']);
    clf
