function [rAO, rAB, rBC, rAGe1, rAGp1, rAGe2, rAGp2, rBA, rBGe2, rBGp2, rBGe3, rBGp3, rCB, rCD, rCGe3, rCGe4, rCGp3, rDC, rDE, rDcru, rDGe4, rDGp5, rDGe5, rEF, rED, rEcru, rEGe6, rEGp5, rEGe5, rFE, rFG, rFGe6, rFGe7, rFGp7, rGH, rGF, rGGe7, rGGp7, rGGe8, rGGp8, rHfloor, rHG, rHGe8, rHGp8, rHGe9, rHGp9] = Lengths
%Naming convention explained
%rAB states the distance from A->B
%Gp# is representative of centre of gravity of the pilot's limb at # link
%Ge# is representative of centre of gravity of the exoskeleton's limb at # link
%MM2M is infront of every distance to change from mm -> m
%A
MM2M=1/1000; % Milimeters to Meters
TR=92.8; %Thigh radius used for CoG
L1z=135; %Length of Link 1 in z direction
L2z=400; %Length of Link 2 in z direction
L3z=410; %Length of Link 3 in z direction
L4x=95; %Length of Link 4 in x direction
L4y=330; %Length of Link 4 in y direction
L5x=155; %Length of Link 5 in x direction
LG5z=590/2; %Length to Link 5 CoG in z direction

mxfoot=125/2; %length from joint middle of the foot in x
myfoot=80; %length from joint to middle of foot in y
tfoot= 15; %thickness of footplate in z
lenstr=140; %Length where force of straps acts (joint of plate to middle of straps) in y
jo2bac=45; %Length of Joints to backplate
bacCoG= -30; % Distance of CoG from backplate in x

CoG1=0.5; %percentage of foot length where CoG is
CoG2=0.434; %percentage of shank length where CoG is
CoG3=0.433; %percentage of thigh length where CoG is
CoG5=0.46; %percentage of chest length where CoG is
height=1860; % height in mm
Chelen=.30; %percentage chest is of total height
CoGchest=height*Chelen*(1-CoG5);

rAO=MM2M*[-mxfoot;myfoot;L1z]; %Middle of the foot
rAB=MM2M*[0;0;L2z];
rAGe1=MM2M*[-mxfoot;myfoot;(L1z-(tfoot/2))];
rAGp1=MM2M*[-TR;myfoot;L1z-tfoot];
rAGe2=MM2M*[0;0;L2z/2];
rAGp2=MM2M*[-TR;0;(1-CoG2)*L2z];
%B
rBA=MM2M*[0;0;-L2z];
rBC=MM2M*[0;0;L3z];
rBGe2=MM2M*[0;0;-L2z/2];
rBGp2=MM2M*[-TR;0;-(CoG2*L2z)];
rBGe3=MM2M*[0;0;L3z/2];
rBGp3=MM2M*[-TR;0;(1-CoG3)*L3z];
%C
rCB=MM2M*[0;0;-L3z];
rCD=MM2M*[-L4x;-L4y;0];
rCGe3=MM2M*[0;0;-L3z/2];
rCGe4=MM2M*[-L4x/2;-L4y/2;0];
rCGp3=MM2M*[-TR;0;-(CoG3*L3z)];
%D
rDC=MM2M*[L4x;L4y;0];
rDE=MM2M*[-L5x;0;0];
rDcru=MM2M*[-L5x;jo2bac;lenstr];
rDGe4=MM2M*[L4x/2;L4y/2;0];
rDGp5=MM2M*[-L5x/2;jo2bac+TR;CoGchest];
rDGe5=MM2M*[-L5x/2;jo2bac+bacCoG;LG5z];
%E
rEF=MM2M*[-L4x;L4y;0];
rED=MM2M*[L5x;0;0];
rEcru=MM2M*[L5x;jo2bac;lenstr];
rEGe6=MM2M*[-L4x/2;L4y/2;0];
rEGp5=MM2M*[L5x/2;jo2bac+TR;CoGchest];
rEGe5=MM2M*[L5x/2;jo2bac+bacCoG;LG5z];
%F
rFE=MM2M*[L4x;-L4y;0];
rFG=MM2M*[0;0;-L3z];
rFGe6=MM2M*[L4x/2;-L4y/2;0];
rFGe7=MM2M*[0;0;-L3z/2];
rFGp7=MM2M*[TR;0;-(CoG3*L3z)];
%G
rGH=MM2M*[0;0;-L2z];
rGF=MM2M*[0;0;L3z];
rGGe7=MM2M*[0;0;L3z/2];
rGGp7=MM2M*[TR;0;(1-CoG3)*L3z];
rGGe8=MM2M*[0;0;-L2z/2];
rGGp8=MM2M*[TR;0;-(CoG2*L2z)];
%H
rHfloor=MM2M*[mxfoot;myfoot;L1z]; %Middle of the foot
rHG=MM2M*[0;0;L2z];
rHGe8=MM2M*[0;0;L2z/2];
rHGp8=MM2M*[TR;0;(1-CoG2)*L2z];
rHGe9=MM2M*[mxfoot;myfoot;(L1z-(tfoot/2))];
rHGp9=MM2M*[TR;myfoot;L1z-tfoot];
end

