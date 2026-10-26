function phi=phi_2D_coord(p,q,pref,ref)
%Función para calcular las componentes del vector fi relativas a la
%ecuacion de restricción que define el valor de referencia de una
%coordenada: x-xref=0

%Entradas
%p (Vector fila 2x1 con las posiciones de las coordenadas utilizadas en las ecuaciones en el
%vector q global: [nx])
%q (Vector columna con las coordenadas globales)
%pref (Vector fila con las posiciones de las coordenadas en la referencia
%global: [nxref]
%ref (Vector fila con las referencias a lograr en la coordenada)

%Salidas
%phi (Vector columna 1x1 con los valores de las ecuaciones de restricción)
    
%%Extraer las coordenadas globales que se van a utilizar en las ecuaciones de
%restricción
    x=q(p(1));
    xref=ref(pref(1));
    
%Calcular el valor del miembro izquierdo de las ecuaciones de restricción
    phi=zeros(1,1);
    phi(1)=x-xref;
