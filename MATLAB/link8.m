function [FG6, FG7] = link8(me8, mp8, R67, R76, R65, R54, R43, R32, R21, R10, FH, g)
%Note: for forces to be alined with proper link rotation matrix is
%sometimes needed see methodology 5.4 for full calculation descriptions
FG6=R67*(FH+R76*R65*R54*R43*R32*R21*R10*[0; 0; -(me8+mp8)*g]); %Force G on link 7
FG7=R76*-FG6; %Force G on link 8
end

