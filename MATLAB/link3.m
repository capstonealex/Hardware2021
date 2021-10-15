function [FC2, FC3] = link3(me3, mp3, R32, R21, R10, FB, g)
%Note: for forces to be alined with proper link rotation matrix is
%sometimes needed see methodology 5.4 for full calculation descriptions
FC2=R21*FB-R21*R10*[0; 0; -(me3+mp3)*g]; %Force C on link 3
FC3=R32*FC2; %Force C on link 4
end

