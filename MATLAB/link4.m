function [FD3, FD4] = link4(me4, mp4, R43, R32, R21, R10, FC, g)
%Note: for forces to be alined with proper link rotation matrix is
%sometimes needed see methodology 5.4 for full calculation descriptions
FD3 = R32*FC-R32*R21*R10*[0; 0; -(me4+mp4)*g]; %Force D on link 4
FD4 = R43*FD3; %Force D on link 5
end
