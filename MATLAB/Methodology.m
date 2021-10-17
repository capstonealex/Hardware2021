clear all
clc
gr=9.81; %Gravitional force
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
%Calculated values
[F1, M1] = formomcalc(F01, FR1, gr, R01, R12, R23, R34, R45, R56, R67, R78, R10, R21, R32, R43, R54, R65, R76, R87, me1, mp1, me2, mp2, me3, mp3, me4, mp4, me5, mp5, me6, mp6, me7, mp7, me8, mp8, me9, mp9, rAO, rAB, rBC, rAGe1, rAGp1, rAGe2, rAGp2, rBA, rBGe2, rBGp2, rBGe3, rBGp3, rCB, rCD, rCGe3, rCGe4, rCGp3, rDC, rDE, rDcru, rDGe4, rDGp5, rDGe5, rEF, rED, rEcru, rEGe6, rEGp5, rEGe5, rFE, rFG, rFGe6, rFGe7, rFGp7, rGH, rGF, rGGe7, rGGp7, rGGe8, rGGp8, rHfloor, rHG, rHGe8, rHGp8, rHGe9, rHGp9);

%   Case 2
[a, b, c, d, e, f, g, h] = Angles2; %Angles in position 2
%Rotations
[R01, R12, R23, R34, R45, R56, R67, R78, R10, R21, R32, R43, R54, R65, R76, R87] = Rotations(a, b, c, d, e, f, g, h);
%Initial conditions
F02=[0;imp*(M/2*gr)/tand(Ang);imp*M/2*gr];
FR2=[0;(M/2*gr)/tand(Ang);M/2*gr];
rAO=MM2M*back; %Force is at the back of the footblack in this case
%Calculated values
[F2, M2] = formomcalc(F01, FR1, gr, R01, R12, R23, R34, R45, R56, R67, R78, R10, R21, R32, R43, R54, R65, R76, R87, me1, mp1, me2, mp2, me3, mp3, me4, mp4, me5, mp5, me6, mp6, me7, mp7, me8, mp8, me9, mp9, rAO, rAB, rBC, rAGe1, rAGp1, rAGe2, rAGp2, rBA, rBGe2, rBGp2, rBGe3, rBGp3, rCB, rCD, rCGe3, rCGe4, rCGp3, rDC, rDE, rDcru, rDGe4, rDGp5, rDGe5, rEF, rED, rEcru, rEGe6, rEGp5, rEGe5, rFE, rFG, rFGe6, rFGe7, rFGp7, rGH, rGF, rGGe7, rGGp7, rGGe8, rGGp8, rHfloor, rHG, rHGe8, rHGp8, rHGe9, rHGp9);

%   Case 3
[a, b, c, d, e, f, g, h] = Angles3; %Angles in position 3
%Rotations
[R01, R12, R23, R34, R45, R56, R67, R78, R10, R21, R32, R43, R54, R65, R76, R87] = Rotations(a, b, c, d, e, f, g, h);
%Initial conditions
F03=[0;(M/2*gr)/tand(Ang);M/2*gr];
FR3=[0;0;0];
rAO=MM2M*middle;
%Calculated forces
[F3, M3] = formomcalc(F03, FR3, gr, R01, R12, R23, R34, R45, R56, R67, R78, R10, R21, R32, R43, R54, R65, R76, R87, me1, mp1, me2, mp2, me3, mp3, me4, mp4, me5, mp5, me6, mp6, me7, mp7, me8, mp8, me9, mp9, rAO, rAB, rBC, rAGe1, rAGp1, rAGe2, rAGp2, rBA, rBGe2, rBGp2, rBGe3, rBGp3, rCB, rCD, rCGe3, rCGe4, rCGp3, rDC, rDE, rDcru, rDGe4, rDGp5, rDGe5, rEF, rED, rEcru, rEGe6, rEGp5, rEGe5, rFE, rFG, rFGe6, rFGe7, rFGp7, rGH, rGF, rGGe7, rGGp7, rGGe8, rGGp8, rHfloor, rHG, rHGe8, rHGp8, rHGe9, rHGp9);

toplabels=[0 "Case A" "Case B" "Case C"];
At=[F1 F2(:,2) F3(:,2)];
Forces=[toplabels;At]
Moment=[M1 M2(:,2) M3(:,2)]

