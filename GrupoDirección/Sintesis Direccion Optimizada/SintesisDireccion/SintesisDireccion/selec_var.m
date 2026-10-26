function [jacvar,jacgdl]=selec_var(jac,posvar)
%Función para separar las columnas de las variables desconocidas y los gdl de un
%jacobiano

%Entradas
%jac (Matriz jacobiano mxn)
%posvar (Vector fila con las posiciones de las variables desconocidas)

%Salidas
%jacvar (Jacobiano de las variables desconocidas)
%jacgdl (Jacobiano de los gdl)

%Determinar el número de columnas del jacobiano (variables totales)
    [m,n]=size(jac);
    
%Determinar el número de variables desconocidas
    nvar=length(posvar);
    
%Crear las salidas
    jacvar=zeros(m,nvar);
    jacgdl=zeros(m,n-nvar);
    n1=1;
    n2=1;
    
%Recorrer todas las columnas
    for c1=1:n
        if max(posvar==c1.*ones(1,nvar))
            jacvar(:,n1)=jac(:,c1);
            n1=n1+1;
        else
            jacgdl(:,n2)=jac(:,c1);
            n2=n2+1;
        end
    end