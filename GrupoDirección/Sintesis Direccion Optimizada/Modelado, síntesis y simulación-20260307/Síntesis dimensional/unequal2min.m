function ymod=unequal2min(y)
%Función para construir la función a minimizar a partir de la una
%desigualdad 0<g(x)
%
%Entradas
%y (Vector con g(x))
%
%Salidas
%ymod (Vector con la g(x) modificada para minimizar)
%
%                               CODIGO
%Determinar el tamaño del vector
    n=length(y);
    
%Bucle para construir la función modificada
    ymod=zeros(size(y));
    
    for c1=1:n
        if 0<y(c1)
            ymod(c1)=0;
        else
            ymod(c1)=-y(c1);
        end
    end