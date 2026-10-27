function [t,s,add_data]=RK2(nombre,t,si,qi)
%Integrador Runge-Kutta de segundo orden, explícito y de paso simple
%constante
%
%Datos de entrada
%nombre (Cadena de texto entre '' indicando la función [ds,q,addat]=f(t,s,qprev)
%Las salidas de f son dos matrices con los datos para cada instante temporal por filas
%   ds (Matriz ntx2*nz) --> datos de integración
%   q (Matriz ntxnq) --> posición
%   addat (Matriz ntxnad) --> datos adicionales
%t (Vector columna con los nt instantes temporales de cálculo)
%si (Vector columna con los valores iniciales de las variables a integrar [z0;dz0])
%qi (Vector columna con una aproximación de la posición inicial)
%
%Datos de salida
%t (Vector columna de instantes temporales)
%s (Matriz con los valores de las variables integradas en cada instante temporal, por
%filas)
%add_data (Matriz con los valores de los datos adicionales calculados en cada instante temporal, por
%filas)
%
%                                   CODIGO
%Determinar el número de instantes temporales, el paso temporal y el número
%de variables
    nt=length(t);
    it=t(2)-t(1);
    nv=length(si);
    
%Calcular los datos adicionales en el instante inicial e inicializar matriz
%de datos adicionales
    s1=si;
    if 2<nargout
        [s1d,qprev,addat]=feval(nombre,t(1),s1,qi);
        nad=length(addat);
    else
        [s1d,qprev]=feval(nombre,t(1),s1,qi);
    end
    
%Inicializar salidas
    s=zeros(nt,nv);
    s(1,:)=s1';
    
    if 2<nargout
        add_data=zeros(nt,nad);
        add_data(1,:)=addat';
    end
    
%Repetir para cada instante temporal
    for c1=2:nt
        %Definir s2
            s2=s1+it*s1d;
            
        %Calcular las derivadas en s2
            s2d=feval(nombre,t(c1),s2,qprev);
            
        %Calcular solución en el siguiente instante temporal (n+1)
            new_s1=s1+(it/2)*(s1d+s2d);
            
        %Evaluar la función sobre la solución en el siguiente instante
        %temporal (n+1)
            if 2<nargout
                [new_s1d,new_qprev,new_addat]=feval(nombre,t(c1),new_s1,qprev);
            else
                [new_s1d,new_qprev]=feval(nombre,t(c1),new_s1,qprev);
            end
            
        %Guardar la solución y los datos adicionales
            s(c1,:)=new_s1';
            if 2<nargout
                add_data(c1,:)=new_addat';
            end
            
        %Actualizar valores
            s1=new_s1;
            s1d=new_s1d;
            qprev=new_qprev;
            
    end
