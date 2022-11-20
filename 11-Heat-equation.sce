Program 10
Electromagnetics



Aim:- To plot the radial profile of H of an infinitely long transmission line consisting of two concentre cylinders having their axis along z-axis .The inner conductor his radius ‘a’ carries a current ‘I’ .The outer conductor has inner radius ‘b’ with thickness (t) carries current ‘-I’.
Formula used:-


// Code
//plotting of radial profile of coaxial transmission cable

clc;
clf;
clear;
I=2;
a=2;
b=4;
t=1.5;
j=1
for r=0:0.1:6
distance(j)=r
if r<=a then
H = I*r./(2*%pi*a.^2)
elseif r>a & r<=b then
H = I/(2*%pi*r)
elseif r>b & r<=b+t then
H = (I/(2*%pi*r))*(1-(r.^2-b^2)/(t^2+2*b*t));
else
H=0;
end
magfield(j) = H
j = j+1
end
disp(I/(2*%pi*a),'H at a is');
disp(I/(2*%pi*b),'H at b is');
xgrid;
plot(distance,magfield)
xlabel('distance(r)');
ylabel('magnetic field (H)');
xtitle('plotting of magnetic field vs distance(r) of coaxial cable')





