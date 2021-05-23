m1=0.031; m2=0.019; m3=0.02;
r1=0.19; r2=0.16; r3=0.11;
p2=-0.0036; p1=0.052; p0=0;
I=m1*r1^2+m2*r2^2+m3*r3^2;
a2=-0.000055; a0=0.001505;
g=9.81;

%Punto de funcionamiento
vo=3.855095346;
alfa_o=0; %rad
%Función de transferencia
s= tf('s');
Gs = ((2*r1*p2*vo+r1*p1)/I)/(s^2+(a0/I)*s+(m3*r3*g)/I);