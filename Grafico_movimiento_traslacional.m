%--Funcion ODE45 que resuelve numericamente el sistema MST--%
[t,x]=ode45(@MST,[0 10], [0 0 0 0]); %[x1 x2 x'1 x'2]

%----Graficamos las figuras----%
%----Figura 1----%
figure(1)
plot(t,x(:,1),'g'); % x y t son parametros que retorna la función
grid on
title("Posición de X1");
xlabel("Tiempo");
ylabel("Posición");

%----Figura 2----%
figure(2)
plot(t,x(:,2),'c');
grid on
title("Posición de  X2");
xlabel("Tiempo");
ylabel("Posición");
