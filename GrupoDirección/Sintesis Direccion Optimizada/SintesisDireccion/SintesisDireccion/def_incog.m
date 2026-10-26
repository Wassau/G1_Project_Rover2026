function pincog=def_incog(n,pconst)
%Función para definir el vector de posiciones de las incognitas
%Entradas
%n (Número de variables total)
%pconst (Vector fila 1xnconst con las posiciones de las constantes en el
%vector total)

%Salidas
%pincog (Vector fila 1xnincog con las posiciones de las incognitas)

%Crear la salida
    pincog=[];
    
%Determinar cuantas constantes hay
    nconst=length(pconst);
    
%Bucle que recorre los indices de las varibles
    for c1=1:n
        if 0==sum(c1*ones(1,nconst)==pconst) %Es una variable
            pincog=[pincog c1];
        end
    end