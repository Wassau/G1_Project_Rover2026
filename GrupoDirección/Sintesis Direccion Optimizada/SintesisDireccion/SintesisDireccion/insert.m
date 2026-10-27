function nq=insert(q,qvar,posvar)
%Función para insertar las variables desconocidas en el vector q

%Entradas
%q (Vector columna q nx1)
%qvar (Vector columna qvar nvarx1)
%posvar (Vector fila con las posiciones de las variables desconocidas)

%Salidas
%nq (Nuevo vector columna q nx1)

%Determinar el número de variables desconocidas
    nvar=length(posvar);
    
%Crear la salida
    nq=q;
    
%Recorrer todas las posiciones
    for c1=1:nvar
        nq(posvar(c1),1)=qvar(c1,1);
    end