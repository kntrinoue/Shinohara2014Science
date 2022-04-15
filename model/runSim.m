%Dynamic simulation
close all
clear all

tspan=[0 12];
tagY(1) = cellstr('TAK');
tagY(2) = cellstr('IKK2');
tagY(3) = cellstr('IKK3');
tagY(4) = cellstr('IKK2+IKK3');

[T, Y] = getSimulation(tspan);
%parameter scaling
Yf(:,1)=114.6315.*Y(:,1);
Yf(:,2)=102.4261.*Y(:,2);
Yf(:,3)=305.*Y(:,3);
Yf(:,4)=Yf(:,2)+Yf(:,3);

plotFunc_Sim(T-2, Yf, tagY);
