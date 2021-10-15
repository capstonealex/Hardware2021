function [FE4, FE5] = link6(me6, mp6, R45, R54, R43, R32, R21, R10, FF, g)
%Note: for forces to be alined with proper link rotation matrix is
%sometimes needed see methodology 5.4 for full calculation descriptions
FE4=R45*(FF-R54*R43*R32*R21*R10*[0; 0; -(me6+mp6)*g]); %Force E on link 6
FE5=R54*FE4; %Force E on link 7
end

