m1=0.031; m2=0.019; m3=0.02;
r1=0.19; r2=0.16; r3=0.11;
p2=-0.0036; p1=0.052; p0=0;
I=m1*r1^2+m2*r2^2+m3*r3^2;
a2=-0.000055; a0=0.001505;
g=9.81;
kf=a2*-1.4249^2+a0;
alfa_v = 2.5;
alfa_g = -81.93*alfa_v+178.42;
alfa_r = (alfa_g*pi)/180;
Fpv = p2*alfa_v^2+p1*alfa_v+p0;
%Función de transferencia
s= tf('s');
G=r1/(I*s^2+kf*s+m1*g*r1*cos(alfa_r));