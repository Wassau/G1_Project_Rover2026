function draw_ref_sys_3D(vp,ux,uy,uz,l)
%Función para dibujar un sistema de referencia 3D

%Entradas
%vp (Vector columna 3x1 con el origen del sistema de referencia)
%ux (Vector columna 3x1 con el vector unitario del eje X)
%ux (Vector columna 3x1 con el vector unitario del eje Y)
%ux (Vector columna 3x1 con el vector unitario del eje Z)
%l (Longitud de las flechas)

%Salidas
%Gráfico del sistema de referencia 3D en el color definido

%                                CODIGO
%Calcular los extremos de las flechas
    auxx=vp+l.*ux;
    auxy=vp+l.*uy;
    auxz=vp+l.*uz;
    
%Dibujar las tres flechas
    plot3([vp(1) auxx(1)],[vp(2) auxx(2)],[vp(3) auxx(3)],'-k','LineWidth',2);
    hold on
    plot3([vp(1) auxy(1)],[vp(2) auxy(2)],[vp(3) auxy(3)],'-k','LineWidth',2);
    plot3([vp(1) auxz(1)],[vp(2) auxz(2)],[vp(3) auxz(3)],'-k','LineWidth',2);
