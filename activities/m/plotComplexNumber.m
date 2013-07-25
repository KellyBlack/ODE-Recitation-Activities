
z = 3 + 7*i;
z = -3 + 7*i;
z = -4 + 2*i;
z = 3 - i;
z = 1+i;
z = 1 - i;
z = -1 + 2*i;
z = -3 - i;

realPart = real(z);
imagPart = imag(z);
theta = atan2(imagPart,realPart);
radius = sqrt(realPart*realPart + imagPart*imagPart);
fprintf('The complex number %f has radius %f and angle %f\n',...
        z,radius,theta);

clf;
hold on;
factor = 1.85;
p = plot(realPart,imagPart,'marker','.','markersize',30,'color',[0 0 0]);
p = plot([0 realPart],[0 imagPart],'k--');
plot([-radius*cos(theta)*factor  radius*cos(theta)*factor],[0 0],'k-')
plot([0 0],[-radius*sin(theta)*factor  radius*sin(theta)*factor],'k-')
axis([-radius*abs(cos(theta))*factor  radius*abs(cos(theta))*factor ...
      -radius*abs(sin(theta))*factor  radius*abs(sin(theta))*factor ]);
