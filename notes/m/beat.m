
clf

t = 0:0.01:110;
plot(t,-3*sin((2-sqrt(5))/2*t).*sin((2+sqrt(5))/2*t))
title('Example One - Spring Mass System, M=2 kg, k=10 N/m')
xlabel('Time (sec.)')
ylabel('Position (m)')
axis([0 120 -5 5])
print -dpng beats.png
pause

hold on
T0 = 2*pi/(sqrt(5)-2);
PERIOD = 4*pi/(-2+sqrt(5));
T = [T0:0.01:T0+PERIOD];
plot(T,3*sin((2-sqrt(5))/2*T),'r')
plot([T0 T0],[0 4],'k');
plot([T0+PERIOD T0+PERIOD],[0 4],'k');
plot([T0 T0+PERIOD*0.3],[3.8 3.8],'k');
plot([T0+PERIOD T0+PERIOD*0.7],[3.8 3.8],'k');
text(T0+PERIOD*0.42,3.8,'Period')
text(T0+PERIOD*0.42,4.2,'Long')
pause
print -dpng beatsLong.png

smallPeriod = 4.0*pi/(2.0+sqrt(5.0));
smallStart = 20.0*smallPeriod;
smallEnd   = 21.0*smallPeriod;
plot([smallStart smallStart],[0 -4.0],'k')
plot([smallEnd smallEnd],[0 -4.0],'k')
plot([smallEnd smallEnd+2],[-3.8 -3.8],'k')
plot([smallStart smallStart-2],[-3.8 -3.8],'k')
text(smallEnd+3,-3.8,'Short Period')

t = [smallStart:0.01:smallEnd];
plot(t,3*sin((2-sqrt(5))/2*t).*sin((2+sqrt(5))/2*t),'g')
pause
print -dpng beatsShort.png
