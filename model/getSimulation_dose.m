function [X, Y15, Y6] = getSimulation_dose(tspan)


global param totalTAK totalIKK;

load('param.mat');

totalTAK=1;
totalIKK=1;


%********** INITIAL VALUES
y0(1) = 0;      % pTAK
y0(2) = 0;      % pIKK
y0(3) = 0;     % ppIKK
y0(4) = 0;     % pppIKK
%%

global term;

global sinput tpulse traise tdecay sbase tdelay slate;
sinput2 =  1.0;  sinput=sinput2;
sbase2 = 0.1;    sbase=sbase2;
tpulse2 = 0.075; tpulse=tpulse2;
traise2 = 1.0;   traise=traise2;
tdecay2 = 1.5;   tdecay=tdecay2;
tdelay2 = 2;     tdelay=tdelay2;
slate2 = 0.27;   slate=slate2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Dose response

options = odeset('RelTol',1e-8,'AbsTol',1e-8);
%pre-process for steady-state value
term=0;
[T1, Y1] = ode15s(@diffeq,[0 5000],y0,options);
y1=Y1(end,:);%steady-state value
clear T1 Y1

term=1;
imax=32;%Number of data for signal dose
for i=1:imax
    
    fold=1.5*(i-10)/(imax);
    sinput=sinput2-(sinput2-sbase2)*fold;
    slate=slate2-(slate2-sbase2)*fold;
      
    %simulation   
    [T,Y] = ode15s(@diffeq,tspan,y1,options);
    
    %Dose responses on 1.5 min and 6 min
    X(i,1)=sinput;
    X(i,2)=slate;
    X(i,3)=-fold;
    
    for j=1:length(y0)
        Y15(i,j)=interp1(T,Y(:,j),1.5+tdelay);
        Y6(i,j)=interp1(T,Y(:,j),6+tdelay);
    end
    
    clear Y T
end

