function djacphi=djacphi_2D_2p(p,q,dq)
%Función para calcular la derivada respecto del tiempo del jacobiano relativas a las 2
%ecuaciones de restricción que definen la distancia (d) y el angulo (theta)
%entre dos puntos (1 y 2)

%Entradas
%p (Vector fila 10x1 con las posiciones de las coordenadas utilizadas en las ecuaciones en el
%vector q global: [nx1 ny1 nx2 ny2 nd theta]
%q (Vector columna con las coordenadas globales)
%dq (Vector columna con las velocidades de las coordenadas globales)

%Salidas
%djacphi (Matriz 2xn con la derivada temporal del jacobiano de las ecuaciones de restricción)

%Determinar el número de coordenadas globales
    n=length(q);
    
%Extraer las coordenadas globales que se van a utilizar en el jacobiano de las ecuaciones de
%restricción
    d=q(p(5));
    theta=q(p(6));

    dd=dq(p(5));
    dtheta=dq(p(6));
    
%Calcular la derivada temporal del jacobiano de las ecuaciones de restricción
    djacphi=zeros(2,n);
    %Derivadas respecto de d
        djacphi(1,p(5))=sin(theta)*dtheta;
        djacphi(2,p(5))=-cos(theta)*dtheta;
    %Derivadas respecto de theta
        djacphi(1,p(6))=dd*sin(theta)+d*cos(theta)*dtheta;
        djacphi(2,p(6))=-dd*cos(theta)+d*sin(theta)*dtheta;
