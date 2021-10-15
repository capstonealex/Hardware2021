function [F, M] = formomcalc(F0, FR, gr, R01, R12, R23, R34, R45, R56, R67, R78, R10, R21, R32, R43, R54, R65, R76, R87, me1, mp1, me2, mp2, me3, mp3, me4, mp4, me5, mp5, me6, mp6, me7, mp7, me8, mp8, me9, mp9, rAO, rAB, rBC, rAGe1, rAGp1, rAGe2, rAGp2, rBA, rBGe2, rBGp2, rBGe3, rBGp3, rCB, rCD, rCGe3, rCGe4, rCGp3, rDC, rDE, rDcru, rDGe4, rDGp5, rDGe5, rEF, rED, rEcru, rEGe6, rEGp5, rEGe5, rFE, rFG, rFGe6, rFGe7, rFGp7, rGH, rGF, rGGe7, rGGp7, rGGe8, rGGp8, rHfloor, rHG, rHGe8, rHGp8, rHGe9, rHGp9)
%Function that will calculate the force and moment given the proper inputs
[FA0, FA1] = link1(me1, mp1, R10, F0, gr);
[FB1, FB2] = link2(me2, mp2, R21, R10, FA0, gr);
[FC2, FC3] = link3(me3, mp3, R32, R21, R10, FB1, gr);
[FD3, FD4] = link4(me4, mp4, R43, R32, R21, R10, FC2, gr);
[FH7, FH8] = link9(me9, mp9, R78, R87, R76, R65, R54, R43, R32, R21, R10, FR, gr);
[FG6, FG7] = link8(me8, mp8, R67, R76, R65, R54, R43, R32, R21, R10, FH7, gr);
[FF5, FF6] = link7(me7, mp7, R56, R65, R54, R43, R32, R21, R10, FG6, gr);
[FE4, FE5] = link6(me6, mp6, R45, R54, R43, R32, R21, R10, FF5, gr);
[Fcru4, Fcru5] = link5(me5, mp5, R54, R43, R32, R21, R10, FE4, FD3, gr);

flabels=["Link 1 FA";0;0;"Link 2 FA";0;0;"Link 2 FB";0;0;"Link 3 FB";0;0;"Link 3 FC";0;0;"Link 4 FC";0;0;"Link 4 FD";0;0;"Link 5 FD";0;0;"Link 5 FE";0;0;"Link 6 FE";0;0;"Link 6 FF";0;0;"Link 7 FF";0;0;"Link 7 FG";0;0;"Link 8 FG";0;0;"Link 8 FH";0;0;"Link 9 FH";0;0];
Ft=[FA0; FA1; FB1; FB2; FC2; FC3; FD3; FD4; FE4; FE5; FF5; FF6; FG6; FG7; FH7; FH8];
F=[flabels, Ft];
%Momentum
MA = mom1(rAO, F0, rAB, R01, FB1, rAGe1, me1, rAGp1, mp1, rAGe2, me2, rAGp2, mp2, gr);
MB = mom2(rBA, FA0, rBC, FC2, rBGe2, me2, rBGp2, mp2, rBGe3, me3, rBGp3, mp3, gr, R10, R12);
MC = mom3(R21, R10, R23, rCB, FB1, rCD, FD3, rCGe3, me3, rCGe4, me4, rCGp3, mp3, gr);
MD = mom4(R32, R21, R10, R34, rDC, FC2, rDE, FE4, rDcru, Fcru4, rDGe4, me4, rDGp5, mp5, rDGe5, me5, gr);
ME = mom5(R32, R21, R10, R43, R45, rEF, FF5, rED, FD3, rEcru, Fcru4, rEGe6, me6, rEGp5, mp5, rEGe5, me5, gr);
MF = mom6(R21, R10, R32, R43, R54, R56, rFE, FE4, rFG, FG6, rFGe6, me6, rFGe7, me7, mp7, rFGp7, gr);
MG = mom7(R67, R65, R54, R43, R32, R21, R10, rGH, FH7, rGF, FF5, rGGe7, me7, rGGp7, mp7, rGGe8, me8, rGGp8, mp8, gr);
MH = mom8(R87, R76, R65, R54, R43, R32, R21, R10, rHfloor, FR, rHG, FG6, rHGe8, me8, rHGp8, me9, rHGe9, rHGp9, mp8, mp9, gr);

mlabels=["moment A";0;0;"moment B";0;0;"moment C";0;0;"moment D";0;0;"moment E";0;0;"moment F";0;0;"moment G";0;0;"moment H";0;0;];
Mt=[MA; MB; MC; MD; ME; MF; MG; MH];
M=[mlabels, Mt];
end

