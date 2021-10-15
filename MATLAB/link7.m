function [FF5, FF6] = link7(me7, mp7, R56, R65, R54, R43, R32, R21, R10, FG, g)
%Note: for forces to be alined with proper link rotation matrix is
%sometimes needed see methodology 5.4 for full calculation descriptions
FF5=R56*(FG-R65*R54*R43*R32*R21*R10*[0; 0; -(me7+mp7)*g]); %Force F on link 6
FF6=R65*FF5; %Force F on link 7
end
