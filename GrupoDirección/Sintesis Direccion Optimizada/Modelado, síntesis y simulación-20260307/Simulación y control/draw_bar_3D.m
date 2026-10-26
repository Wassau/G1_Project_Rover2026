function draw_bar_3D(vxa,vxb,style,color)
%Función para dibujar un sistema de referencia 3D

%Entradas
%vxa (Vector columna 3x1 con las coordenadas de un extremo)
%vxb (Vector columna 3x1 con las coordenadas del otro extremo)
%style
%color

%Salidas
%Gráfico del sistema de referencia 3D en el color definido

%                                CODIGO
%Dibujar la barra
    plot3([vxa(1) vxb(1)],[vxa(2) vxb(2)],[vxa(3) vxb(3)],'LineStyle',style,'LineWidth',3,'Color',color,'Marker','o','MarkerSize',7);