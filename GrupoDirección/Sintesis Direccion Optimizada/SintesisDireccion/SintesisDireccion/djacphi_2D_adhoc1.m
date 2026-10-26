function djacphi=djacphi_2D_adhoc1(q)
%Función para calcular la derivada temporal del jacobiano relativo a la
%ecuacion ad-hoc 1 theta1-theta2+beta=0

%Entradas
%q (Vector columna con las coordenadas globales)

%Salidas
%djacphi (Matriz 1xn con la derivada temporal del jacobiano de las ecuaciones de restricción)

%Determinar el número de coordenadas globales
    n=length(q);
    
%Calcular la derivada temporal del jacobiano de las ecuaciones de restricción
    djacphi=zeros(1,n);