function MF = mom6(R21, R10, R32, R43, R54, R56, rFE, FE, rFG, FG, rFGe6, me6, rFGe7, me7, mp7, rFGp7, g)
R50=R54*R43*R32*R21*R10;
MF=cross(rFE,R54*FE) +cross(R56*rFG,R56*FG) +cross(rFGe6,R50*[0;0;-me6*g]) +cross(R56*rFGe7,R50*[0;0;-me7*g]) +cross(R56*rFGp7,R50*[0;0;-mp7*g]);
end

