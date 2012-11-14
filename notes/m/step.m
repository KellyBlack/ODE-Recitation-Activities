

clf
axis([-0.1 2,0 1])
set(gca,'LineWidth',3.0);
set(gca,'FontSize',14);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);
title('Step Function');

hold on
plot([-.1 0.8],[0 0],'r','LineWidth',4.0);
plot([0.8 2.0],[0.7 0.7],'r','LineWidth',4.0);
a = plot(0.8,0.0,'ro','markersize',10,'LineWidth',4.0);
a = plot(0.8,0.7,'r*','markersize',10,'LineWidth',4.0);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 0.8])
set(gca,'XTickLabel',{'0';'a'})

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0 0.7])
set(gca,'YTickLabel',{'0';'1'})

print -dpng 'unitStepAta.png' '-r 600'


clf
axis([-3 5 0 1.2])
set(gca,'LineWidth',3.0);
set(gca,'FontSize',14);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);
title('Unshifted Function');

hold on
x = -3:0.01:5;
y = exp(-x.*x*0.5);
plot(x,y,'r','LineWidth',4.0);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 1])
set(gca,'XTickLabel',{'0';'a'})

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0])
set(gca,'YTickLabel',{' '})

print -dpng 'unshifted.png' '-r 600'



clf
axis([-3 5 0 1.2])
set(gca,'LineWidth',3.0);
set(gca,'FontSize',14);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);
title('Unshifted Function');

hold on
x = -3:0.01:5;
y = exp(-(x-1).*(x-1)*0.5);
plot(x,y,'r','LineWidth',4.0);
plot([1 1],[0 2],'k--')

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 1])
set(gca,'XTickLabel',{'0';'a'})

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0])
set(gca,'YTickLabel',{' '})

print -dpng 'shifted.png' '-r 600'


clf
axis([-1 1,0 1.5])
set(gca,'LineWidth',3.0);
set(gca,'FontSize',20);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);
title('Unit Step Function');

hold on
plot([-1 0],[0 0],'r','LineWidth',4.0);
plot([0 1],[1 1],'r','LineWidth',4.0);
a = plot(0.0,0.0,'ro','markersize',10,'LineWidth',4.0);
a = plot(0.0,1.0,'r*','markersize',10,'LineWidth',4.0);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0])
set(gca,'XTickLabel',{'0'},'FontSize',20)

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0 1])
set(gca,'YTickLabel',{'0';'1'})

print -dpng 'unitStepFunction.png' '-r 600'


clf
axis([0 5 0 2.5])
set(gca,'LineWidth',3.0);
set(gca,'FontSize',20);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);

hold on
plot([0 3],[0 0],'r','LineWidth',4.0);
plot([3 5],[2 2],'r','LineWidth',4.0);
a = plot(3.0,0.0,'ro','markersize',10,'LineWidth',4.0);
a = plot(3.0,2.0,'r*','markersize',10,'LineWidth',4.0);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 3])
set(gca,'XTickLabel',{'0','3'},'FontSize',20)

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0 2])
set(gca,'YTickLabel',{'0';'2'})

print -dpng 'stepEx1.png' '-r 600'


clf
axis([0 5 0 2.5])
set(gca,'LineWidth',3.0);
set(gca,'FontSize',20);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);

hold on
plot([0 1],[0 0],'r','LineWidth',4.0);
plot([1 3],[2 2],'r','LineWidth',4.0);
plot([3 5],[0 0],'r','LineWidth',4.0);
a = plot(1.0,0.0,'ro','markersize',10,'LineWidth',4.0);
a = plot(1.0,2.0,'r*','markersize',10,'LineWidth',4.0);
a = plot(3.0,2.0,'ro','markersize',10,'LineWidth',4.0);
a = plot(3.0,0.0,'r*','markersize',10,'LineWidth',4.0);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 1 3])
set(gca,'XTickLabel',{'0','1','3'},'FontSize',20)

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0 2])
set(gca,'YTickLabel',{'0';'2'})

print -dpng 'stepEx2.png' '-r 600'


clf
axis([0 5 -1.5 1.5])
set(gca,'LineWidth',3.0);
set(gca,'FontSize',20);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);

hold on
plot([0 1],[0 0],'r','LineWidth',4.0);
plot([1 3],[-1 1],'r','LineWidth',4.0);
plot([3 5],[0 0],'r','LineWidth',4.0);
a = plot(1.0,0.0,'ro','markersize',10,'LineWidth',4.0);
a = plot(1.0,-1.0,'r*','markersize',10,'LineWidth',4.0);
a = plot(3.0,1.0,'ro','markersize',10,'LineWidth',4.0);
a = plot(3.0,0.0,'r*','markersize',10,'LineWidth',4.0);


set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 1 3])
set(gca,'XTickLabel',{'0';'1';'3'},'FontSize',20)

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[-1 0 1])
set(gca,'YTickLabel',{'-1';'0';'1'})

print -dpng 'stepEx3.png' '-r 600'


clf
axis([0 7 0 5])
set(gca,'LineWidth',3.0);
set(gca,'FontSize',20);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);

hold on
plot([0 3],[0 0],'r','LineWidth',4.0);
plot([3 5],[0 4],'r','LineWidth',4.0);
plot([5 7],[4 4],'r','LineWidth',4.0);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 3 5])
set(gca,'XTickLabel',{'0','3','5'},'FontSize',20)

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0 4])
set(gca,'YTickLabel',{'0';'4'})

print -dpng 'stepEx4.png' '-r 600'


clf
axis([0 3*pi -1.4 1.4])
set(gca,'LineWidth',3.0);
set(gca,'FontSize',20);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);

hold on
x = 0:pi/50:2*pi;
plot(x,sin(x),'r','LineWidth',4.0);
plot([2*pi 3*pi],[0 0],'r','LineWidth',4.0);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 2*pi])
set(gca,'XTickLabel',{'0','2\pi'},'FontSize',20)

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[-1 0 1])
set(gca,'YTickLabel',{'-1';'0';'1'})

print -dpng 'stepEx5.png' '-r 600'



clf
axis([0 9 0 7])
set(gca,'LineWidth',3.0);
set(gca,'FontSize',20);
xlabel('Time','FontSize',16);
ylabel('f(t)','FontSize',16);

hold on
x = 6:0.01:9;
plot([0 5],[4 4],'r','LineWidth',4.0);
plot([5 6],[0 0],'r','LineWidth',4.0);
plot(x,7-7*exp(-(x-6)),'r','LineWidth',4.0);
a = plot(5.0,4.0,'ro','markersize',10,'LineWidth',4.0);
a = plot(5.0,0.0,'r*','markersize',10,'LineWidth',4.0);


set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 5 6])
set(gca,'XTickLabel',{'0';'5';'6'},'FontSize',20)

set(gca,'YTickLabelMode','manual')
set(gca,'YTick',[0 7])
set(gca,'YTickLabel',{'0';'7'})

print -dpng 'stepEx6.png' '-r 600'
