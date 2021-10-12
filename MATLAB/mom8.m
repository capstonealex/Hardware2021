function MH = mom8(R87, R76, R65, R54, R43, R32, R21, R10, rHfloor, Ffloor, rHG, FG, rHGe8, me8, rHGp8, me9, rHGe9, rHGp9, mp8, mp9, g)
R80=R87*R76*R65*R54*R43*R32*R21*R10;
MH=cross(R87*rHfloor,R80*Ffloor) +cross(rHG,R76*FG) +cross(rHGe8,R80*[0;0;-me8*g]) +cross(rHGp8,R80*[0;0;-mp8*g]) +cross(R87*rHGe9,R80*[0;0;-me9*g]) +cross(R87*rHGp9,R80*[0;0;-mp9*g]);
end

