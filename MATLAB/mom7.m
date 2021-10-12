function MG = mom7(R67, R65, R54, R43, R32, R21, R10, rGH, FH, rGF, FF, rGGe7, me7, rGGp7, mp7, rGGe8, me8, rGGp8, mp8, g)
R60=R65*R54*R43*R32*R21*R10;
MG=cross(R67*rGH,R67*FH) +cross(rGF,R65*FF) +cross(rGGe7,R60*[0;0;-me7*g]) +cross(rGGp7,R60*[0;0;-mp7*g]) +cross(R67*rGGe8,R60*[0;0;-me8*g]) +cross(R67*rGGp8,R60*[0;0;-mp8*g]);
end

