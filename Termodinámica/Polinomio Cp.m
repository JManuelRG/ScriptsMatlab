%% Integración
%% Integral del polinomio de Cp

%Variables: Metano
A = 1.702;
B = 9.081e-3;
C = -2.164e-6;
D = 0;

%%Valores de Temperatura
T1=260+273.15;
T2=600+273.15;

%% Declaración de la función:
syms T

% Polinomio (función de T)
CpR=A+B*T+C*T^2+D*T^-2;

%% Obtener el valor de la integral
integral=int(CpR,T,T1,T2);
R=8.314;
Q = R*integral;

%% Salida de resultados
fprintf("El valor calculado para el calor es: ")
fprintf("Q= %4.2f J/mol",Q)
