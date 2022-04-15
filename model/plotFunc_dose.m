function plotFunc_dose(X, Y15, Y6, select, tag)

figure;
hold on
plot(X,Y15(:,select),'g-','LineWidth',5);
plot(X,Y6(:,select),'b-','LineWidth',5);
set(gca,'LineWidth',2,'FontSize',14,'FontName','Arial');
xlabel('Stimulus Dose','FontName','Arial','FontSize',19);
ylabel(tag(select),'FontName','Arial','FontSize',19);
xlim([min(X) max(X)]);
ylim([0 125]);
t(1)=cellstr('1.5 min');t(2)=cellstr('6 min');
legend(t,'Location','Best');
hold off
