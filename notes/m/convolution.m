clf
set(gca,'LineWidth',3.0);
set(gca,'FontSize',14);
xlabel('Time','FontSize',16);
ylabel('f(t)=t','FontSize',16);
title('Average Over Time');
axis([0.0 3.0 0.0 3.1])

hold on
plot([0 3],[0 3],'r','LineWidth',4.0);
a = plot(2.1,2.1,'ro','markersize',10,'LineWidth',4.0);
a = plot(2.1,2.1/2,'bo','markersize',10,'LineWidth',4.0);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 2.1])
set(gca,'XTickLabel',{'0';'T'})

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0 1.0])
set(gca,'YTickLabel',{'0';'1'})

%print -dpng 'linearAverage.png' '-r 600'


clf
set(gca,'LineWidth',3.0);
set(gca,'FontSize',14);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);
title('Weight Over Time');
axis([0.0 3.0 0.0 1.1])

hold on
t = 0.0:0.02:3.0;
plot(t,exp(-t),'r','LineWidth',4.0);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 2.1])
set(gca,'XTickLabel',{'0';'T'})

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0 1.0])
set(gca,'YTickLabel',{'0';'1'})

%print -dpng 'exponentialDecay.png' '-r 600'

clf
set(gca,'LineWidth',3.0);
set(gca,'FontSize',14);
xlabel('Time','FontSize',16);
ylabel('f(T-t)','FontSize',16);
title('Translated Weight Over Time');
axis([0.0 3.0 0.0 1.1])

hold on
t = 0.0:0.02:3.0;
plot(t,exp(-2.1+t),'r','LineWidth',4.0);
plot([0 3],[1 1],'b--','LineWidth',3.0);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 2.1])
set(gca,'XTickLabel',{'0';'T'})

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0 1.0])
set(gca,'YTickLabel',{'0';'1'})

%print -dpng 'backwardsExponentialDecay.png' '-r 600'

clf
set(gca,'LineWidth',3.0);
set(gca,'FontSize',14);
xlabel('Time','FontSize',16);
ylabel('f(t)=t','FontSize',16);
title('Average Over Time');
axis([0.0 3.0 0.0 3.1])

hold on
plot([0 3],[0 3],'r','LineWidth',4.0);
plot([0 3],[0 3/2],'b','LineWidth',2.0);
plot(t,t-1+exp(-t),'g','LineWidth',2.0);
a = plot(2.1,2.1,'ro','markersize',10,'LineWidth',4.0);
a = plot(2.1,2.1/2,'bo','markersize',10,'LineWidth',4.0);
a = plot(2.1,2.1-1+exp(-2.1),'go','markersize',10,'LineWidth',4.0);
plot([2.1 2.1],[0 3],'k--','LineWidth',1.0);
legend('f(t)=t','Average','Weighted Avg.','Location','NorthWest')

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 2.1])
set(gca,'XTickLabel',{'0';'T'})

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0 1.0])
set(gca,'YTickLabel',{'0';'1'})

print -dpng 'weightedLinearAverage.png' '-r 600'
