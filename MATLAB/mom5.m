function ME = mom5(R32, R21, R10, R43, R45, rEF, FF, rED, FD, rEcru, Fcru, rEGe6, me6, rEGp5, mp5, rEGe5, me5, g)
R40=R43*R32*R21*R10;
ME=cross(R45*rEF,R45*FF) +cross(rED,R43*-FD) +cross(rEcru,Fcru) +cross(R45*rEGe6,R40*[0;0;-me6*g]) +cross(rEGp5,R40*[0;0;-mp5*g]) +cross(rEGe5,R40*[0;0;-me5*g]);
end

