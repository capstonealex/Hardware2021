function FD = link4(me4, mp4, R32, R21, R10, FC, g)
FD = R32*FC-R32*R21*R10*[0; 0; -(me4+mp4)*g];
end
