function MD = mom4(R32, R21, R10, R34, rDC, FC, rDE, FE, rDcru, Fcru, rDGe4, me4, rDGp5, mp5, rDGe5, me5, g)
R30=R32*R21*R10;
MD=cross(rDC,R32*-FC) +cross(R34*rDE,R34*FE) +cross(R34*rDcru,R34*Fcru) +cross(rDGe4,R30*[0;0;-me4*g]) +cross(R34*rDGp5,R30*[0;0;-mp5*g]) +cross(R34*rDGe5,R30*[0;0;-me5*g]);
end

