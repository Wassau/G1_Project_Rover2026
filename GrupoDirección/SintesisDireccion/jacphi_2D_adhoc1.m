function jacphi=jacphi_2D_adhoc1(p,q)
%Función para calcular el jacobiano relativo a la
%ecuacion ad-hoc 1 theta1-theta2+beta=0

%Entradas
%p (Vector fila 2x1 con las posiciones de las coordenadas utilizadas en las ecuaciones en el
%vector q global: [ntheta1 ntheta2 nbeta])
%q (Vector columna con las coordenadas globales)

%Salidas
%jacphi (Matriz 1xn con el jacobiano de las ecuaciones de restricción)

%Determinar el número de coordenadas globales
    n=length(q);
    
%Calcular el jacobiano de las ecuaciones de restricción
    jacphi=zeros(1,n);
    %Derivadas respecto de theta1
        jacphi(1,p(1))=1;
    %Derivadas respecto de theta2
        jacphi(1,p(2))=-1;
    %Derivadas respecto de beta
        jacphi(1,p(3))=1;

