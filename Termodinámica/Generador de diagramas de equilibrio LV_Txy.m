%Gererador de Diagramas de Equilibrio L-V T-x-y Binarios ideales
% Autor: Jose Manuel RG
% Video explicación: https://www.youtube.com/watch?v=YMis0-pOtCY

% CONSTRUCCIÓN DE DIAGRAMA BINARIO Txy

% Presión del sistema
P=760; %mmHg

%Constantes de Antoine
%id SUSTANCIA	             Fórmula	A     	B	      C 
%1	carbon-tetrachloride	 CCL4	  6.8941	1219.58	 227.17
%26	nitromethane	         CH3NO2	 7.044	   1291	    209.01


% CCl4 (1)		
A1 = 6.8941;
B1 = 1219.58;
C1 = 227.17;		

% nitromethane (2)
A2 =7.044;
B2 =1291;
C2 = 209.01;

Tsat1=B1 /(A1 -log10(P))-C1;
Tsat2=B2 /(A2 -log10(P))-C2;

% valores de T
n=50; %Número de puntos
dT = (Tsat2-Tsat1)/n;
T=Tsat1:dT:Tsat2;

%Presión de saturación a cada T
Psat1 = 10.^(A1-B1./(T+C1));
Psat2 = 10.^(A2-B2./(T+C2));

% Composiciones Fase líquida
x1=(P-Psat2)./(Psat1-Psat2);
x2=1-x1;

% Composiciones Fase Vapor
y1=x1.*Psat1./P;
y2=1-y1;

%Creación del gráfico
figure; hold on
a1 = plot(x1,T); M1 = "Línea T-x_1";
a2 = plot(y1,T); M2 = "línea T-y_1";
legend([a1,a2], [M1, M2]);
grid on
hold off
