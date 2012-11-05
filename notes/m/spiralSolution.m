%
% Author: Kelly Black
%         Dept. of Math. and Comp. Sci.
%         Clarkson University
%
% Program to generate the pase plane for a spiral solution to a 2x2
% system of DEs
%
% ######################################################################
% Copyright (c) 2012, Kelly Black
% All rights reserved.
%
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions
% are met:
%
%    * Redistributions of source code must retain the above copyright
%      notice, this list of conditions and the following disclaimer.
%
%    * Redistributions in binary form must reproduce the above
%      copyright notice, this list of conditions and the following
%      disclaimer in the documentation and/or other materials provided
%      with the distribution.
%
%    * Neither the name of Kelly Black nor the names of its
%      contributors may be used to endorse or promote products derived
%      from this software without specific prior written permission.
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
% "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
% LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
% FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
% COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
% INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
% BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
% CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
% LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
% ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.
%
% (This copyright notice was copied from the BSD license found at
%  http://www.opensource.org/licenses/bsd-license.php.)
%
%######################################################################


% ####################################################################
% Specify the parameters used for plotting.

% Specify the bounds on the values of t and y.
% Bounds specified in the form:
%    bounds   = [ [lowx highx] ; [lowy highy]];
bounds   = [ [-900 900] ; [-400 400]];


% #####################################################################
% Start plotting stuff.
% Clear the window, set the bounds, labels, title, and tell the
% system to keep each plot mark.

clf;
axis([bounds(1,1) bounds(1,2) bounds(2,1) bounds(2,2)]);
set(gca,'LineWidth',3.0);
set(gca,'FontSize',14);
%set(gca,'YTick',bounds(2,1):bounds(2,2));
xlabel('x','FontSize',16);
ylabel('y','FontSize',16);
title('Phase Plane');
hold on;

% Plot the axes.
plot([bounds(1,1) bounds(1,2)],[0 0],'k-','LineWidth',2.0);
plot([0 0],[bounds(1,1) bounds(1,2)],'k-','LineWidth',2.0);


% Plot a solution
p = [1 .3]';
q = [0 .1]';
x = 0.1*p + 0.099*q;
for t=0:0.1:10,

   xn = exp(1*t)*(0.1*(cos(3*t)*p-sin(3*t)*q) + 0.099*(cos(3*t)*q+sin(3*t)*p));
   plot([x(1) xn(1)],[x(2) xn(2)],'k-','LineWidth',3.0);
   x = xn;
   
end

print -dpng 'complexPhaseOne.png' '-r 600'

% Plot another solution
p = [1 .3]';
q = [0 .1]';
x = -0.1*p + 0.099*q;
for t=0:0.1:10,

   xn = exp(1*t)*(-0.1*(cos(3*t)*p-sin(3*t)*q) + 0.099*(cos(3*t)*q+sin(3*t)*p));
   plot([x(1) xn(1)],[x(2) xn(2)],'b-','LineWidth',3.0);
   x = xn;
   
end

print -dpng 'complexPhaseTwo.png' '-r 600'

% Plot another solution
p = [1 .3]';
q = [0 .1]';
x = -0.15*p + 0.099*q;
for t=0:0.1:10,

   xn = exp(1*t)*(-0.15*(cos(3*t)*p-sin(3*t)*q) + 0.099*(cos(3*t)*q+sin(3*t)*p));
   plot([x(1) xn(1)],[x(2) xn(2)],'g-','LineWidth',3.0);
   x = xn;
   
end

print -dpng 'complexPhaseThree.png' '-r 600'



% Plot a solution
p = [1 .3]';
q = [0 .1]';
x = 0.1*p + 0.099*q;
for t=0:0.1:10,

   xn = exp(1*t)*(0.1*(cos(3*t)*p-sin(3*t)*q) + 0.099*(cos(3*t)*q+sin(3*t)*p));
   plot([x(1) xn(1)],[x(2) xn(2)],'k-','LineWidth',3.0);
   x = xn;
   
end


clf;
axis([bounds(1,1) bounds(1,2) bounds(2,1) bounds(2,2)]);
set(gca,'LineWidth',3.0);
set(gca,'FontSize',14);
%set(gca,'YTick',bounds(2,1):bounds(2,2));
xlabel('x','FontSize',16);
ylabel('y','FontSize',16);
title('Phase Plane');
hold on;

% Plot the axes.
plot([bounds(1,1) bounds(1,2)],[0 0],'k-','LineWidth',2.0);
plot([0 0],[bounds(1,1) bounds(1,2)],'k-','LineWidth',2.0);




clf;
set(gcf,'PaperUnits','inches','PaperPosition',[0 0 9 18])
axis([bounds(1,1) bounds(1,2) bounds(2,1) bounds(2,2)]);
set(gca,'LineWidth',3.0);
set(gca,'FontSize',14);
%set(gca,'YTick',bounds(2,1):bounds(2,2));
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
title('Phase Plane');
hold on;

% Plot the axes.
plot([bounds(1,1) bounds(1,2)],[0 0],'k-','LineWidth',4.0);
plot([0 0],[bounds(1,1) bounds(1,2)],'k-','LineWidth',4.0);


% Plot a solution
p = [1 .3]';
q = [0 .1]';
x = 0.1*p + 0.099*q;
for t=0:0.03:10,

   xn = exp(1*t)*(0.1*(cos(3*t)*p-sin(3*t)*q) + 0.099*(cos(3*t)*q+sin(3*t)*p));
   plot([x(1) xn(1)],[x(2) xn(2)],'k-','LineWidth',5.0);
   x = xn;
   
end

t = text(-850,-120,'v-null cline','fontsize',20,'color',[1 0 0]);
plot([bounds(1,1) bounds(1,2)],4/15*[bounds(1,1) bounds(1,2)],'r-','LineWidth',4.0);

t = text(-600,-200,'h-null cline','fontsize',20,'color',[0 0 1]);
plot([bounds(1,1) bounds(1,2)],3/10*[bounds(1,1) bounds(1,2)],'b-','LineWidth',4.0);


print -dpng 'complexPhaseNullClines.png' '-r 600'

