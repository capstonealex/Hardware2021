function [FA0, FA1] = link1(me1, mp1, R10, F0, g)
%Note: for forces to be alined with proper link rotation matrix is
%sometimes needed see methodology 5.4 for full calculation descriptions
FG1=[0; 0; -(me1+mp1)*g];
FA0=-FG1-F0; %Force at A on link 1
FA1=R10*FA0; %Force at A on link 2
end

