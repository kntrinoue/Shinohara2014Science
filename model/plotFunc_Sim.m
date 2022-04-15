function plotFunc_Sim(T, Y, tag)

figure;
hold on
plot(T,Y(:,1),'g-','LineWidth',5);
plot(T,Y(:,2),'r--','LineWidth',5);
plot(T,Y(:,3),'b--','LineWidth',5);
plot(T,Y(:,4),'m-','LineWidth',5);
set(gca,'LineWidth',2,'FontSize',14,'FontName','Arial');
xlabel('Time','FontName','Arial','FontSize',19);
ylabel('Activity','FontName','Arial','FontSize',19);
xlim([-0.5 9.5]);
ylim([0 125]);
legend(tag,'Location','Best');
hold off


