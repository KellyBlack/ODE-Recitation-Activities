%
% Author: Kelly Black
%         Dept. of Math. and Comp. Sci.
%         Clarkson University
%
% Program to generate the slope field for an O.D.E. that you
% specify within the code below.
%
% ######################################################################
% Copyright (c) 2010-2013, Kelly Black
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
bounds   = [ [0 5.25] ; [-5.25 5.3]];


% Specify the number of slope indicators to plot.
% Numbers specified in the form:
%    number = [numberOfX numberOfY]
number   = [ 22 22];

% Specify the percentage of the available length to make the slope indicators.
fraction = 0.70;


% #####################################################################
% Start plotting stuff.
% Clear the window, set the bounds, labels, title, and tell the
% system to keep each plot mark.

clf;
axis([bounds(1,1) bounds(1,2) bounds(2,1) bounds(2,2)]);
set(gca,'LineWidth',2.0);
set(gca,'FontSize',14);
set(gca,'YTick',bounds(2,1):bounds(2,2));
xlabel('Time','FontSize',16);
ylabel('y(t)','FontSize',16);
title('Slope Field');
hold on;

% Plot the axes.
plot([bounds(1,1) bounds(1,2)],[0 0],'k-');
plot([0 0],[bounds(1,1) bounds(1,2)],'k-');

% Loop through each slope indicator, calc the slope and plot the
% tick mark.
theSlope = @(x,t) x*x + t*t;
for numt = 0:1:number(1),
    for numy = 0:1:number(2),

        % Find the value of t and y at the center of each tick mark.
        t = bounds(1,1) + numt/number(1)*(bounds(1,2)-bounds(1,1));
        y = bounds(2,1) + numy/number(2)*(bounds(2,2)-bounds(2,1));

        % Calc. the slope of the indicator. This is from the ODE
        % YOU NEED TO CHANGE THIS!!!! (It is a scalar)
        slope = theSlope(y,t);
        
        
        if((abs(slope) > 1.0e6) || (abs(slope) == Inf) || (slope == NaN)),
            % The slope is undefined. Just make a vertical line.
            
            yLow  = y - fraction*0.5/number(2)*(bounds(2,2)-bounds(2,1));
            yHigh = y + fraction*0.5/number(2)*(bounds(2,2)-bounds(2,1));
            tLow  = t;
            tHigh = t;
            
        else
            % The slope is defined. Calc. the end points based on a
            % uniform length of the tick marks specified by the
            % parameters set above.
            
            dt    = fraction*0.5/sqrt(1+slope*slope)*(bounds(1,2)-bounds(1,1))/number(1);
            yLow  = y + slope*(-dt);
            yHigh = y + slope*(dt);
            tLow  = t-dt;
            tHigh = t + dt;
            
        end

        % Plot this slope indicator
        p = plot([tLow tHigh],[yLow yHigh],'k','lineWidth',2.0);

    end
    
end
print -dpng 'week3-D3SlopeExample.png' '-r 1200'

% Add an approximation
starting = [1.2,-0.2,-3.0,-5.0];
for initial=starting,
    y    = [initial];
    t    = 0.0;
    time = [t];
    dt = 0.05;
    N = 1;
    while((y(N) < 5.5) && (y(N) > -5.5))
        k1 = theSlope(y(N),t);
        k2 = theSlope(y(N)+dt*0.5*k1,t+dt*0.5);
        k3 = theSlope(y(N)+dt*0.5*k2,t+dt*0.5);
        k4 = theSlope(y(N)+dt*k3,t+dt);
        N = N + 1;
        y(N) = y(N-1) + dt/6.0*(k1+2*k2+2*k3+k4);
        t = t + dt;
        time(N) = t;
    end
    plot(time,y,'r','lineWidth',2.0);
end
print -dpng 'week3-D3SlopeExampleSolutions' '-r 1200'
