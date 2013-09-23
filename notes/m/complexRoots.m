
t = 0:0.01:15.0;
plot(t, exp(-t/4)*1,'r', ...
     t,-exp(-t/4)*1,'c',...
     t, exp(-t/4).*(0*cos(sqrt(23)/4*t)+sin(sqrt(23/4*t))),'k','LineWidth',2.0);
title('Solution When Roots = -1/4 +- i sqrt(23)/4')
xlabel('time');
ylabel('y')
grid on
legend('A*exp(-t/4)','-A*exp(-t/4)','Solution')
print -dpng 'decayOfConstantCoeffI.png'


plot(t, exp(-3*t)*1,'r', ...
     t,-exp(-3*t)*1,'c',...
     t, exp(-3*t).*(0*cos(2*t)+sin(2*t)),'k','LineWidth',2.0);
title('Solution When Roots = -3 +- i 2')
xlabel('time');
ylabel('y')
grid on
legend('A*exp(-3t)','-A*exp(-3t)','Solution')
print -dpng 'decayOfConstantCoeffII.png'
