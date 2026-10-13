function jacphi=jacphi_2D_2p(p,q)
%Función para calcular el jacobiano relativas a las 2
%ecuaciones de restricción que definen la distancia (d) y el angulo (theta)
%entre dos puntos (1 y 2)

%Entradas
%p (Vector fila 6x1 con las posiciones de las coordenadas utilizadas en las ecuaciones en el
%vector q global: [nx1 ny1 nx2 ny2 nd ntheta]
%q (Vector columna con las coordenadas globales)

%Salidas
%jacphi (Matriz 2xn con el jacobiano de las ecuaciones de restricción)

%Determinar el número de coordenadas globales
    n=length(q);
    
%Extraer las coordenadas globales que se van a utilizar en el jacobiano de las ecuaciones de
%restricción
    d=q(p(5));
    theta=q(p(6));
    
%Calcular el jacobiano de las ecuaciones de restricción
    jacphi=zeros(2,n);
    %Derivadas respecto de x1
        jacphi(1,p(1))=-1;
    %Derivadas respecto de y1
        jacphi(2,p(2))=-1;
    %Derivadas respecto de x2
        jacphi(1,p(3))=1;
    %Derivadas respecto de y2
        jacphi(2,p(4))=1;
    %Derivadas respecto de d
        jacphi(1,p(5))=-cos(theta);
        jacphi(2,p(5))=-sin(theta);
    %Derivadas respecto de theta
        jacphi(1,p(6))=d*sin(theta);
        jacphi(2,p(6))=-d*cos(theta);
