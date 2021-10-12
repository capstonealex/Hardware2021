gr=9.81; %Gravitional constant
%Masses
[me1, mp1, me2, mp2, me3, mp3, me4, mp4, me5, mp5, me6, mp6, me7, mp7, me8, mp8, me9, mp9] = Masses;
%Lengths
[rAO, rAB, rBC, rAGe1, rAGp1, rAGe2, rAGp2, rBA, rBGe2, rBGp2, rBGe3, rBGp3, rCB, rCD, rCGe3, rCGe4, rCGp3, rDC, rDE, rDcru, rDGe4, rDGp5, rDGe5, rEF, rED, rEcru, rEGe6, rEGp5, rEGe5, rFE, rFG, rFGe6, rFGe7, rFGp7, rGH, rGF, rGGe7, rGGp7, rGGe8, rGGp8, rHfloor, rHG, rHGe8, rHGp8, rHGe9, rHGp9] = Lengths;

M=127.64; %Exoskeleton Mass
Ang=45; %Crutch Angle in degrees
MM2M=1/1000; % Milimeters to Meters
middle=[-125/2;80;135]; %middle of footplate
back=[-125/2;-70;135]; %back of footplate
imp=0.765; %ratio of the impact force and the reaction force

%   Case 1
[a, b, c, d, e, f, g, h] = Angles1; %Angles in position 1 
%Rotations
[R01, R12, R23, R34, R45, R56, R67, R78, R10, R21, R32, R43, R54, R65, R76, R87] = Rotations(a, b, c, d, e, f, g, h);
%Intial conditions
F01=[0;0;M/2*gr];
FR1=[0;0;M/2*gr];
%Calculated
FA1 = link1(me1, mp1, F01, gr);
FB1 = link2(me2, mp2, R10, FA1, gr);
FC1 = link3(me3, mp3, R21, R10, FB1, gr);
FD1 = link4(me4, mp4, R32, R21, R10, FC1, gr);
FH1 = link9(me9, mp9, R78, R87, R76, R65, R54, R43, R32, R21, R10, FR1, gr);
FG1 = link8(me8, mp8, R67, R76, R65, R54, R43, R32, R21, R10, FH1, gr);
FF1 = link7(me7, mp7, R56, R65, R54, R43, R32, R21, R10, FG1, gr);
FE1 = link6(me6, mp6, R45, R54, R43, R32, R21, R10, FF1, gr);
Fcru3 = link5(me5, mp5, R43, R32, R21, R10, FE1, FD1, gr);
%Momentum
MA1 = mom1(rAO, F01, rAB, R01, FB1, rAGe1, me1, rAGp1, mp1, rAGe2, me2, rAGp2, mp2, gr);
MB1 = mom2(rBA, FA1, rBC, FC1, rBGe2, me2, rBGp2, mp2, rBGe3, me3, rBGp3, mp3, gr, R10, R12);
MC1 = mom3(R21, R10, R23, rCB, FB1, rCD, FD1, rCGe3, me3, rCGe4, me4, rCGp3, mp3, gr);
MD1 = mom4(R32, R21, R10, R34, rDC, FC1, rDE, FE1, rDcru, Fcru3, rDGe4, me4, rDGp5, mp5, rDGe5, me5, gr);
ME1 = mom5(R32, R21, R10, R43, R45, rEF, FF1, rED, FD1, rEcru, Fcru3, rEGe6, me6, rEGp5, mp5, rEGe5, me5, gr);
MF1 = mom6(R21, R10, R32, R43, R54, R56, rFE, FE1, rFG, FG1, rFGe6, me6, rFGe7, me7, mp7, rFGp7, gr);
MG1 = mom7(R67, R65, R54, R43, R32, R21, R10, rGH, FH1, rGF, FF1, rGGe7, me7, rGGp7, mp7, rGGe8, me8, rGGp8, mp8, gr);
MH1 = mom8(R87, R76, R65, R54, R43, R32, R21, R10, rHfloor, FR1, rHG, FG1, rHGe8, me8, rHGp8, me9, rHGe9, rHGp9, mp8, mp9, gr);

%   Case 2
[a, b, c, d, e, f, g, h] = Angles2; %Angles in position 2
%Rotations
[R01, R12, R23, R34, R45, R56, R67, R78, R10, R21, R32, R43, R54, R65, R76, R87] = Rotations(a, b, c, d, e, f, g, h);
%Initial conditions
F02=[0;imp*(M/2*gr)/tand(Ang);imp*M/2*gr];
FR2=[0;(M/2*gr)/tand(Ang);M/2*gr];
rAO=MM2M*back;
%Calculated forces
FA2 = link1(me1, mp1, F02, gr);
FB2 = link2(me2, mp2, R10, FA2, gr);
FC2 = link3(me3, mp3, R21, R10, FB2, gr);
FD2 = link4(me4, mp4, R32, R21, R10, FC2, gr);
FH2 = link9(me9, mp9, R78, R87, R76, R65, R54, R43, R32, R21, R10, FR2, gr);
FG2 = link8(me8, mp8, R67, R76, R65, R54, R43, R32, R21, R10, FH2, gr);
FF2 = link7(me7, mp7, R56, R65, R54, R43, R32, R21, R10, FG2, gr);
FE2 = link6(me6, mp6, R45, R54, R43, R32, R21, R10, FF2, gr);
Fcru3 = link5(me5, mp5, R43, R32, R21, R10, FE2, FD2, gr);
%Momentum
MA2 = mom1(rAO, F02, rAB, R01, FB2, rAGe1, me1, rAGp1, mp1, rAGe2, me2, rAGp2, mp2, gr);
MB2 = mom2(rBA, FA2, rBC, FC2, rBGe2, me2, rBGp2, mp2, rBGe3, me3, rBGp3, mp3, gr, R10, R12);
MC2 = mom3(R21, R10, R23, rCB, FB2, rCD, FD2, rCGe3, me3, rCGe4, me4, rCGp3, mp3, gr);
MD2 = mom4(R32, R21, R10, R34, rDC, FC2, rDE, FE2, rDcru, Fcru3, rDGe4, me4, rDGp5, mp5, rDGe5, me5, gr);
ME2 = mom5(R32, R21, R10, R43, R45, rEF, FF2, rED, FD2, rEcru, Fcru3, rEGe6, me6, rEGp5, mp5, rEGe5, me5, gr);
MF2 = mom6(R21, R10, R32, R43, R54, R56, rFE, FE2, rFG, FG2, rFGe6, me6, rFGe7, me7, mp7, rFGp7, gr);
MG2 = mom7(R67, R65, R54, R43, R32, R21, R10, rGH, FH2, rGF, FF2, rGGe7, me7, rGGp7, mp7, rGGe8, me8, rGGp8, mp8, gr);
MH2 = mom8(R87, R76, R65, R54, R43, R32, R21, R10, rHfloor, FR2, rHG, FG2, rHGe8, me8, rHGp8, me9, rHGe9, rHGp9, mp8, mp9, gr);

%   Case 3
[a, b, c, d, e, f, g, h] = Angles3; %Angles in position 3
%Rotations
[R01, R12, R23, R34, R45, R56, R67, R78, R10, R21, R32, R43, R54, R65, R76, R87] = Rotations(a, b, c, d, e, f, g, h);
%Initial conditions
F03=[0;(M/2*gr)/tand(Ang);M/2*gr];
FR3=[0;0;0];
rAO=MM2M*middle;
%Calculated forces
FA3 = link1(me1, mp1, F03, gr);
FB3 = link2(me2, mp2, R10, FA3, gr);
FC3 = link3(me3, mp3, R21, R10, FB3, gr);
FD3 = link4(me4, mp4, R32, R21, R10, FC3, gr);
FH3 = link9(me9, mp9, R78, R87, R76, R65, R54, R43, R32, R21, R10, FR3, gr);
FG3 = link8(me8, mp8, R67, R76, R65, R54, R43, R32, R21, R10, FH3, gr);
FF3 = link7(me7, mp7, R56, R65, R54, R43, R32, R21, R10, FG3, gr);
FE3 = link6(me6, mp6, R45, R54, R43, R32, R21, R10, FF3, gr);
Fcru3 = link5(me5, mp5, R43, R32, R21, R10, FE3, FD3, gr);
%Momentum
MA3 = mom1(rAO, F03, rAB, R01, FB3, rAGe1, me1, rAGp1, mp1, rAGe2, me2, rAGp2, mp2, gr);
MB3 = mom2(rBA, FA3, rBC, FC3, rBGe2, me2, rBGp2, mp2, rBGe3, me3, rBGp3, mp3, gr, R10, R12);
MC3 = mom3(R21, R10, R23, rCB, FB3, rCD, FD3, rCGe3, me3, rCGe4, me4, rCGp3, mp3, gr);
MD3 = mom4(R32, R21, R10, R34, rDC, FC3, rDE, FE3, rDcru, Fcru3, rDGe4, me4, rDGp5, mp5, rDGe5, me5, gr);
ME3 = mom5(R32, R21, R10, R43, R45, rEF, FF3, rED, FD3, rEcru, Fcru3, rEGe6, me6, rEGp5, mp5, rEGe5, me5, gr);
MF3 = mom6(R21, R10, R32, R43, R54, R56, rFE, FE3, rFG, FG3, rFGe6, me6, rFGe7, me7, mp7, rFGp7, gr);
MG3 = mom7(R67, R65, R54, R43, R32, R21, R10, rGH, FH3, rGF, FF3, rGGe7, me7, rGGp7, mp7, rGGe8, me8, rGGp8, mp8, gr);
MH3 = mom8(R87, R76, R65, R54, R43, R32, R21, R10, rHfloor, FR3, rHG, FG3, rHGe8, me8, rHGp8, me9, rHGe9, rHGp9, mp8, mp9, gr);


