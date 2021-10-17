function [FH7, FH8] = link9(me9, mp9, R78, R87, R76, R65, R54, R43, R32, R21, R10, FR, g)
%Note: for forces to be alined with proper link rotation matrix is
%sometimes needed see methodology 5.4 for full calculation descriptions
FH7=R78*(FR+R87*R76*R65*R54*R43*R32*R21*R10*[0; 0; -(me9+mp9)*g]); %Force H on link 8
FH8=R87*-FH7; %Force H on link 9
end

