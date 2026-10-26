function dib_mec(q,c)
%Función para representar gráficamente la posición del mecanismo
                
%Dibujar todas las barras
    %Barra O-A (eslabón 2)
        draw_bar_3D(c(24:26),q(10:12),'-','g')
    %Mantener la barra en el grafico
        hold on;
    %Sistema de referencia - eslabón 2
        draw_ref_sys_3D(c(24:26),q(1:3),q(4:6),q(7:9),0.07)
    %Barra A-E (eslabón 2)
        draw_bar_3D(q(10:12),q(13:15),'-','g')
    %Barra A-B (eslabón 3)
        draw_bar_3D(q(10:12),q(25:27),'-','b')
    %Sistema de referencia - eslabón 3
        draw_ref_sys_3D(q(10:12),q(16:18),q(19:21),q(22:24),0.07)
    %Barra B-C (eslabón 4)
        draw_bar_3D(q(25:27),q(37:39),'-','c')
    %Sistema de referencia - eslabón 4
        draw_ref_sys_3D(q(25:27),q(28:30),q(31:33),q(34:36),0.07)
    %Barra D-G (eslabón 5)
        draw_bar_3D(q(49:51),q(52:54),'-','y')
    %Sistema de referencia - eslabón 5
        draw_ref_sys_3D(q(37:39),q(40:42),q(43:45),q(46:48),0.07)
    %Barra B-F (eslabón 8)
        draw_bar_3D(q(25:27),q(64:66),'-','m')
    %Sistema de referencia - eslabón 8
        draw_ref_sys_3D(q(25:27),q(55:57),q(58:60),q(61:63),0.07)
    %Barra E-F (eslabón 6)
        draw_bar_3D(q(13:15),q(64:66),'-','k')
    %Barra F-G (eslabón 7)
        draw_bar_3D(q(64:66),q(52:54),'-','k')
    %TCP
        plot3(q(49),q(50),q(51),'MarkerSize',0.1,'MarkerFaceColor','r')
    %No mantener más barras
        hold off
    %Definir los limites de visualización
        daspect([1 1 1]) %Relación de aspecto
        axis([-0.4 0.4 -0.3 0.5 -0.2 0.6]) %Rango de visualización
        grid on %Rejilla
    %Etiquetar el gráfico
        xlabel('X')
        ylabel('Y')
        zlabel('Z')

