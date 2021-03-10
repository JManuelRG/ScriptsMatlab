% Diagrama de Equilibrio L-V Pxy
% Autor: Jose Manuel RG
% Video explicación: https://www.youtube.com/watch?v=G_0oelrOLeM

% CONSTRUCCIÓN DE DIAGRAMA BINARIO Pxy

% Temperatura del sistema
T=75; % °C

%Constantes de Antoine
%1	carbon-tetrachloride	CCL4	6.8941	1219.58	227.17
%26	nitromethane	CH3NO2	7.044	1291	209.07

% CCl4	(1)	
A1 = 6.8941;
B1 = 1219.58;
C1 = 227.17;		

% nitromethane (2)
A2 =7.044;
B2 =1291;
C2 = 209.01;

% Presión de saturación cada componente

P1=10^(A1-B1/(T+C1));
P2=10^(A2-B2/(T+C2));

% valores de x1
x1=0:0.05:1;
x2=1-x1;

%Presión Total
P = x1.*P1+x2.*P2;

%Composición en fase Vapor
y1=x1.*P1./P;
y2=1-y1;

%Creación del gráfico
figure; hold on
a1 = plot(x1,P); M1 = "Línea P-x_1";
a2 = plot(y1,P); M2 = "línea P-y_1";
legend([a1,a2], [M1, M2]);
grid on
hold off