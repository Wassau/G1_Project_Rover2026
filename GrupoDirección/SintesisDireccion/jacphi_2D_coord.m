function jacphi=jacphi_2D_coord(p,q)
%Función para calcular el jacobiano relativo a la
%ecuacion de restricción que define el valor de referencia de una
%coordenada

%Entradas
%p (Vector fila 2x1 con las posiciones de las coordenadas utilizadas en las ecuaciones en el
%vector q global: [nx])
%q (Vector columna con las coordenadas globales)

%Salidas
%jacphi (Matriz 1xn con el jacobiano de las ecuaciones de restricción)

%Determinar el número de coordenadas globales
    n=length(q);
    
%Calcular el jacobiano de las ecuaciones de restricción
    jacphi=zeros(1,n);
    %Derivadas respecto de x
        jacphi(1,p(1))=1;