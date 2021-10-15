function [FB1, FB2] = link2(me2, mp2, R21, R10, FA, g)
%Note: for forces to be alined with proper link rotation matrix is
%sometimes needed see methodology 5.4 for full calculation descriptions
FB1=R10*FA-R10*[0; 0; -(me2+mp2)*g]; %Force B on link 2
FB2=R21*FB1; %Force B on link 3
end

