function djacphi=djacphi_2D_coord(q)
%Función para calcular la derivada respecto del tiempo del jacobiano relativo a la
%ecuacion de restricción que define el valor de referencia de una coordenada

%Entradas
%q (Vector columna con las coordenadas globales)

%Salidas
%djacphi (Matriz 1xn con la derivada temporal del jacobiano de las ecuaciones de restricción)

%Determinar el número de coordenadas globales
    n=length(q);
    
%Calcular la derivada temporal del jacobiano de las ecuaciones de restricción
    djacphi=zeros(1,n);

