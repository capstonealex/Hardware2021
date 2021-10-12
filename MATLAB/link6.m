function FE = link6(me6, mp6, R45, R54, R43, R32, R21, R10, FF, g)
FE=R45*(FF-R54*R43*R32*R21*R10*[0; 0; -(me6+mp6)*g]);
end

