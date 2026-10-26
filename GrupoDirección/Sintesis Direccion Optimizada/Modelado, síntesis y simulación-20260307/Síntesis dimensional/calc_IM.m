function [IM1,IM2,IM3]=calc_IM(t,q)
%Función para calcular el índice de manipulabilidad
%
%Entradas
%t (Instante de tiempo)
%q (Vector columna con las coordenadas dependientes del robot)
%
%Salidas
%IM1, IM2 e IM3 (Índices de manipulabilidad)

%Definir las constantes globales a utilizar
    global c
      
%Definir los punteros a las coordenadas de entrada y salida del robot
    pint=[67 68 69]; %[alfa beta chi]
    pout=[49 50 51]; %[xd yd zd]
    
    nq=length(q);
    %nint=length(pint);
    nout=length(pout);
    pvar=def_pvar(nq,pint);
    
%Calcular el jacobiano de las ecuaciones de restricción
    jac=calc_jac_3D(t,q,c);
                    
%Calcular derivada temporal de las ecuaciones de restricción
    dphit=calc_dphit_3D(t,q,c);
            
%Calcular la matriz R
    R=calc_R(jac,dphit,pint);
    
%Construir la matriz H de filtrado de salidas
    Hout=zeros(nout,nq);
    for c1=1:nout
        Hout(c1,pout(c1))=1;
    end
    
%Calcular la matriz jacobiano del robot
    J=Hout*R;
    
%Hacer la descomposición SVD y obtener valores singulares
    vsigma=svd(J); %Ordenados de mayor a menor
    
%Calcular el IM
    IM1=vsigma(nout)/vsigma(1);
    IM2=vsigma(nout);
    IM3=nthroot(prod(vsigma),nout);