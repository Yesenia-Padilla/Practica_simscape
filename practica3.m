%---ARCHIVO QUE ENVIA PARAMETROS PARA SIMULINK---%
%----Se definen los valores de los parámetros de la tabla necesarios en la ecuación diferencial----%
m1=290; % Masa 1
b1=1000; % Amortiguador 
m2=59; % Masa 2
k1=16182; % Coeficiente del resorte 1
f=0; % Fuerza
k2=19000; % Coeficiente del resorte 2
z1=0.05*sin(0.5*pi*t);
z2= 0.05*sin(20*pi*t); 
z=z1;  %Entrada 1

%--Llama al archivo de simulink para enviar los valores de los parámetros--%
sim("Practica3")