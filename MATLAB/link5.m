function [Fcru4, Fcru5] = link5(me5, mp5, R54, R43, R32, R21, R10, FE, FD, g)
%Note: for forces to be alined with proper link rotation matrix is
%sometimes needed see methodology 5.4 for full calculation descriptions
Fcru4=FE+R43*FD-R43*R32*R21*R10*[0; 0; -(me5+mp5)*g]; %Force cru on link 5
Fcru5=R54*-Fcru4; %Force cru on link 6
end

