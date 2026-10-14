function [x,phi,dat_iter,dat_error,dat_phi]=synthesis(xini,nq,nc,const,mref)
%Función para resolver el problema de síntesis dimensional

%Entradas
%xini (Vector columna con la aproximación inicial de la solución)
%nq (Número de coordenadas generalizadas en cada posición)
%nc (Número total de dimensiones)
%const (Matriz 2xnconst con las dimensiones fijas)
%mref (Matriz con las coordenadas de referencia por filas: [xref yref;...])

%Salidas
%x (Vector solución final)
%phi (Vector phi con el valor de las restriciónes para la solución final)
%dat_iter (Matriz con las sucesivas iteraciones por filas)
%dat_error (Vector columna con el error en el cumplimiento de las
%restricciones en cada iteración)
%dat_phi (Matriz con las evaluaciones de phi para las iteraciones por filas)

%Tolerancia al error
    tol=1e-8;
    
%Método de Newton modificado (solo calcular la matriz jacobiano en la
%iteración inicial)
    modif=false; %false --> método original y true --> método modificado
    
%Máximo número de iteraciones (para evitar bucles infinitos si no hay
%solución)
    nmax=100;

%Definir las posiciones de las incógnitas
    [np, nd] = size(mref);
    
    if 0<size(const,2)
        pconst=nq*np+const(1,:);
        pincog=def_incog(nq*np+nc,pconst);
    else
        pincog=1:nq*np+nc;
    end
    nincog=length(pincog);
    
%Iniciar x e insertar las constantes dimensionales
    x=insert(zeros(nq*np+nc,1),xini,pincog);
    if 0<size(const,2)
        x=insert(x,const(2,:)',pconst);
    end

%Evaluar las ecuaciones de restriccion
    phi=calc_phi(x,nq,mref);
           
%Evaluar el error
    error=norm(phi);
    
%Iniciar matriz con datos de iteración y vector de errores
    dat_iter=x';
    dat_error=error;
    dat_phi=phi';
    
%Inicializar contador de iteraciones
    iter=1;
            
%Siguiente iteración del método N-R
    while tol<error && iter<=nmax
        %Evaluar el jacobiano de las ecuaciones de restriccion
            if not(modif&&(1<iter))
                jac=calc_jac(x,nq,mref);
            end
            
        %Extraer el vector de incógnitas
            xincog=selec_row(x,pincog);
        
        %Extraer columnas de las incógnitas del jacobiano
            jacincog=selec_var(jac,pincog);
                
        %Calcular el incremento de xincog
            incx=-pinv(jacincog'*jacincog)*jacincog'*phi;
                    
        %Construir el nuevo vector xincog
            xincog=xincog+incx;
            
        %Construir un nuevo vector x
            x=insert(x,xincog,pincog);
                    
        %Evaluar las ecuaciones de restriccion
            phi=calc_phi(x,nq,mref);

        %Evaluar el error
            error=norm(phi);
            
        %Actualizar matriz con datos de iteracion y error
            dat_iter=[dat_iter;x'];
            dat_error=[dat_error;error];
            dat_phi=[dat_phi;phi'];
            
        %Actualizar el contador de iteraciones
            iter=iter+1;
            
        %Warning
            if nmax<iter
                disp('Iteraciones máximas alcanzadas')
            end
            
    end
