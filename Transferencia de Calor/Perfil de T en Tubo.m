%% Perfil de Temperaturas 
%% Tubo de Vapor
%% José Manuel

%% Definir valores de radio en coordenadas cartesianas
r1 = 6; %cm
r2 = 8; %cm

T1=150; %°C Temperatura del Vapor
T2=60; %°C Temperatura Exterior

n=100; %Numero de puntos
r=r1:(r2-r1)/n:r2; % Rango de radio en cm

% Ecuacion de conduccion
% Estado estacionario (ver video)
T=T1+log(r/r1)/log(r2/r1)*(T2-T1);

% Conversion de coordenadas
% Cilindricas a rectangulares
ang=linspace(0,2*pi,length (r));
% Definir circunferencia
% Y temperatura para cada radio

x=[];
y=[];
for i=1:length (r)
    for j=1: length (ang)
        x(i,j)=r(i)*cos(ang(j));
        y(i,j)=r(i)*sin(ang(j));
    end
end

% Construir superficie de datos
% r,phi ,T => x,y,T 
Temp=meshgrid(T);

% Crear Gráfico
figure;
pbaspect([1 1 1]);
pcolor(x,y,Temp');
title('Perfil de temperatura en el tubo')
xlabel('radio (cm)');
ylabel('radio (cm)');
xticks([-r2:0.25*r2:r2])
yticks([-r2:0.25*r2:r2])
grid on

% Agregar Temperatura 
c=colorbar; % Barra de Color
title(c,'T(°C)') % Leyenda T°C
shading interp; % Difuminado
%https://la.mathworks.com/help/matlab/ref/shading.html
pbaspect([1,1,1]) % Cuadrado
