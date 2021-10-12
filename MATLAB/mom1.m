function MA = mom1(rAO, F0, rAB, R01, FB, rAGe1, me1, rAGp1, mp1, rAGe2, me2, rAGp2, mp2, g)
MA=cross(rAO,F0) +cross(R01*rAB,R01*FB) +cross(rAGe1,[0;0;-me1*g]) +cross(rAGp1,[0;0;-mp1*g]) +cross(R01*rAGe2,[0;0;-me2*g]) +cross(R01*rAGp2,[0;0;-mp2*g]);
end

