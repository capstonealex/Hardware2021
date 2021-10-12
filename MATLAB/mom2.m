function MB = mom2(rBA, FA, rBC, FC, rBGe2, me2, rBGp2, mp2, rBGe3, me3, rBGp3, mp3, g, R10, R12)
MB=cross(rBA,R10*FA) +cross(R12*rBC,R12*FC) +cross(rBGe2,R10*[0;0;-me2*g]) +cross(rBGp2,R10*[0;0;-mp2*g]) +cross(R12*rBGe3,R10*[0;0;-me3*g]) +cross(R12*rBGp3,R10*[0;0;-mp3*g]);
end

