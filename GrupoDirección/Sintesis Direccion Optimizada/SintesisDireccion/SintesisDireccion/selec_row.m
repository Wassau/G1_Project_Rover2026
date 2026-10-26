function [qvar,qgdl]=selec_row(q,posvar)
%Función para separar las filas de las variables desconocidas y los gdl de
%un vector columna q

%Entradas
%q (Vector posición nx1)
%posvar (Vector fila con las posiciones de las variables desconocidas)

%Salidas
%qvar (q de las variables desconocidas)
%qgdl (q de los gdl)

%Determinar el número de filas del vector q (variables totales)
    n=length(q);
    
%Determinar el número de variables desconocidas
    nvar=length(posvar);
    
%Crear las salidas
    qvar=zeros(nvar,1);
    qgdl=zeros(n-nvar,1);
    n1=1;
    n2=1;
    
%Recorrer todas las filas
    for c1=1:n
        if max(posvar==c1.*ones(1,nvar))
            qvar(n1)=q(c1);
            n1=n1+1;
        else
            qgdl(n2)=q(c1);
            n2=n2+1;
        end
    end