function MC = mom3(R21, R10, R23, rCB, FB, rCD, FD, rCGe3, me3, rCGe4, me4, rCGp3, mp3, g)
R20=R21*R10;
MC=cross(rCB,R21*-FB) +cross(R23*rCD,R23*FD) +cross(rCGe3,R20*[0;0;-me3*g]) +cross(R23*rCGe4,R20*[0;0;-me4*g]) +cross(rCGp3,R20*[0;0;-mp3*g]);
end

