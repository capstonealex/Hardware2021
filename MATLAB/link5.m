function Fcru = link5(me5, mp5, R43, R32, R21, R10, FE, FD, g)
Fcru=FE+R43*FD-R43*R32*R21*R10*[0; 0; -(me5+mp5)*g];
end

