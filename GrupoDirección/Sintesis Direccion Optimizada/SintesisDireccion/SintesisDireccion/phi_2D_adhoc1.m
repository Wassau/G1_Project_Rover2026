function phi=phi_2D_adhoc1(p,q)
%Función para calcular las componentes del vector fi relativas a la
%ecuacion ad-hoc 1 theta1-theta2+beta=0

%Entradas
%p (Vector fila 2x1 con las posiciones de las coordenadas utilizadas en las ecuaciones en el
%vector q global: [ntheta1 ntheta2 nbeta])
%q (Vector columna con las coordenadas globales)

%Salidas
%phi (Vector columna 1x1 con los valores de las ecuaciones de restricción)
    
%%Extraer las coordenadas globales que se van a utilizar en las ecuaciones de
%restricción
    theta1=q(p(1));
    theta2=q(p(2));
    beta=q(p(3));
    
%Calcular el valor del miembro izquierdo de las ecuaciones de restricción
    phi=zeros(1,1);
    phi(1)=theta1-theta2+beta;