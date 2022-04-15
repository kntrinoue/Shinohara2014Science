%Dose response
close all
clear all

tspan=[0 12];

tagY(1) = cellstr('TAK');
tagY(2) = cellstr('IKK2');
tagY(3) = cellstr('IKK3');
tagY(4) = cellstr('IKK2+IKK3');


[X, Y15, Y6] = getSimulation_dose(tspan);
Y15f(:,1)=114.6315.*Y15(:,1);Y6f(:,1)=114.6315.*Y6(:,1);
Y15f(:,2)=102.4261.*Y15(:,2);Y6f(:,2)=102.4261.*Y6(:,2);
Y15f(:,3)=305.*Y15(:,3);Y6f(:,3)=305.*Y6(:,3);
Y15f(:,4)=Y15f(:,2)+Y15f(:,3);Y6f(:,4)=Y6f(:,2)+Y6f(:,3);


plotFunc_dose(X(:,3), Y15f, Y6f, 1, tagY);
plotFunc_dose(X(:,3), Y15f, Y6f, 4, tagY);
