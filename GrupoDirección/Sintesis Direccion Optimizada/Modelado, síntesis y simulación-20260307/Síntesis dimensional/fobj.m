function [y,vsigma1,verror]=fobj(p)
%Función objetivo para la síntesis

%Entradas
%p (Vector fila con los parámetros dimensionales del robot)

%Salidas
%y (Valor de la función objetivo a minimizar)


%Definir las variables globales
    global nout pint pout
    
%Extraer los parámetros dimensionales
    za2p=p(1);
    xb3p=p(2);
    xc4p=p(3);
    zd5p=p(4);
    yo=p(5);
    
%Definir constantes dimensionales
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
    q0=[-1; %u21x
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
          0; %xg
          0; %yg
          0.3; %zg
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
    nq=length(q0);
    
%Definir los punteros a las variables
    pvar=def_pvar(nq,pint);

%Definir el vector de instantes temporales
    vt=0:0.1:9;
    
%Determinar el número de instantes temporales
    nt=length(vt);
   
%Crear las salidas
    pos=zeros(nt,nq);
    errpos=zeros(nt,1);
    singval=zeros(nt,nout);

%Bucle de calculo en instantes temporales
    for c1=1:nt
        %Cálcular el valor de las coordenadas independientes
            zout=calc_z(vt(c1),c);
            
        %Calcular la posición
            [q,phi]=calc_pos_z_3D(vt(c1),q0,c,zout,pout);
                    
        %Calcular el jacobiano de las ecuaciones de restricción en la posición calculada
            jac=calc_jac_3D(vt(c1),q,c);
                    
        %Calcular la velocidad
            dphit=calc_dphit(vt(c1),q,c);
            
        %Calcular la matriz R
            R=calc_R(jac,dphit,pint);
    
        %Construir la matriz H de filtrado de salidas
            Hout=zeros(nout,nq);
            for c2=1:nout
                Hout(c2,pout(c2))=1;
            end

        %Calcular la matriz jacobiano del robot qout=J*z=H*R*z
            J=Hout*R;

        %Hacer la descomposición SVD y obtener valores singulares
            vsigma=svd(J); %Ordenados de mayor a menor
        
        %Guardar los resultados
            pos(c1,:)=q';
            errpos(c1)=norm(phi);
            singval(c1,:)=vsigma';
            
        %Actualizar aproximación de la posición para el siguiente instante
            q0=q;
            
    end
    
%Construir la función objetivo
    vsigma1=singval(:,nout)./singval(:,1); %Vector de ICC sigma_m1
    
    verror=equal2min(errpos);

    valpha=pos(:,67);
    vbeta=pos(:,68);
    vchi=pos(:,69);

    vg1=valpha;
    vg2=pi-valpha;
    vg3=vbeta;
    vg4=pi/2-vbeta;
    vg5=vchi+pi/4;
    vg6=pi/4-vchi;

    vg1mod=unequal2min(vg1);
    vg2mod=unequal2min(vg2);
    vg3mod=unequal2min(vg3);
    vg4mod=unequal2min(vg4);
    vg5mod=unequal2min(vg5);
    vg6mod=unequal2min(vg6);
    
    w1=100000;
    w2=1000;
    
    y=-min(vsigma1)+(w1/nt)*sum(verror)+(w2/nt)*(sum(vg1mod)+sum(vg2mod)+sum(vg3mod)+sum(vg4mod)+sum(vg5mod)+sum(vg6mod));