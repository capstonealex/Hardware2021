function [R01, R12, R23, R34, R45, R56, R67, R78, R10, R21, R32, R43, R54, R65, R76, R87] = Rotations(a, b, c, d, e, f, g, h)
R01=[1 0 0; 0 cosd(a) sind(a); 0 -sind(a) cosd(a)];
R12=[1 0 0; 0 cosd(b) sind(b); 0 -sind(b) cosd(b)];
R23=[1 0 0; 0 cosd(c) sind(c); 0 -sind(c) cosd(c)];
R34=[cosd(d) 0 sind(d); 0 1 0; -sind(d) 0 cosd(d)];
R45=[cosd(e) 0 sind(e); 0 1 0; -sind(e) 0 cosd(e)];
R56=[1 0 0; 0 cosd(f) sind(f); 0 -sind(f) cosd(f)];
R67=[1 0 0; 0 cosd(g) sind(g); 0 -sind(g) cosd(g)];
R78=[1 0 0; 0 cosd(h) sind(h); 0 -sind(h) cosd(h)];
R10=transpose(R01);
R21=transpose(R12);
R32=transpose(R23);
R43=transpose(R34);
R54=transpose(R45);
R65=transpose(R56);
R76=transpose(R67);
R87=transpose(R78);
end