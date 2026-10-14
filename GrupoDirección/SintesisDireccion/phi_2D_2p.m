function phi=phi_2D_2p(p,q)
%Función para calcular las componentes del vector fi relativas a las 2
%ecuaciones de restricción que definen la distancia (d) y el angulo (theta)
%entre dos puntos (1 y 2)

%Entradas
%p (Vector fila 6x1 con las posiciones de las coordenadas utilizadas en las ecuaciones en el
%vector q global: [nx1 ny1 nx2 ny2 nd ntheta]
%q (Vector columna con las coordenadas globales)

%Salidas
%phi (Vector columna 2x1 con los valores de las ecuaciones de restricción)
    
%%Extraer las coordenadas globales que se van a utilizar en las ecuaciones de
%restricción
    x1=q(p(1));
    y1=q(p(2));
    x2=q(p(3));
    y2=q(p(4));
    d=q(p(5));
    theta=q(p(6));
    
%Calcular el valor del miembro izquierdo de las ecuaciones de restricción
    phi=zeros(2,1);
    phi(1)=x2-x1-d*cos(theta);
    phi(2)=y2-y1-d*sin(theta);
