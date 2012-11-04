
clf
t = 0:0.01:50.0;
plot(t,3/4/sqrt(5)*t.*sin(sqrt(5)*t),'LineWidth',3.0)
title('Example Two - Spring Mass System, M=2 kg, k=10 N/m')
xlabel('Time (sec.)','FontSize',14,'fontweight','normal')
ylabel('Position (m)','FontSize',14,'fontweight','normal')
axis([0 50 -15 15])
print -dpng resonance.png

hold on
plot(t,3/4/sqrt(5)*t,':r','LineWidth',2.0)
plot(t,-3/4/sqrt(5)*t,':r','LineWidth',2.0)
print -dpng resonanceBounds.png
