function dx=MST(t,x) %---Archivo que soluciona el ODE45---%

%----Se definen los valores de los parámetros de la tabla de la ecuación diferencial----%
m1=290; % Masa 1
b1=1000; % Amortiguador 
m2=59; % Masa 2
k1=16182; % Coeficiente del resorte 1
f=0; % Fuerza
k2=19000; % Coeficiente del resorte 2
z1=0.05*sin(0.5*pi*t);
z2= 0.05*sin(20*pi*t); 
z=z1;  %Entrada 1


%----Se define el tamaño de la matriz de variables de estado----%
dx=zeros(4,1); %----En este caso es una matriz de 4x1----%


%----Representacion de espacio de estado----%
dx(1)=x(3);
dx(2)=x(4);
dx(3)=(1/m1)*(-(b1*x(3))+(b1*x(4))-(k1*x(1))+(k1*x(2))+f);
dx(4)=(1/m2)*((b1*x(3))-(b1*x(4))+(k1*x(1))-((k1+k2)*x(2))+(k2*z)+f);