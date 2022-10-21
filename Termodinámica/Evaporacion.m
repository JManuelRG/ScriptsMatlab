% Video explicación
% https://www.youtube.com/watch?v=1RdNNYMjCCE

% Gráfico de la función

% 𝑓(𝑇)=0=3.47𝑇+7.25𝑥〖10〗^(−4) 𝑇^2−(0.121𝑥〖10〗^5)/𝑇−2969.3

% Definir rango de T
Tsat = 100+273.15;

%Valores Temperatura
T = Tsat:1:1000;
F = 3.47.*T+7.25e-4.*T.^2-(0.121e5)./T-2969.3;

plot(T,F)

xlabel('Temperatura K')
ylabel('f(T)')
title('Representación de la función')
