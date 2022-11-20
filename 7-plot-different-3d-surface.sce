Program 07
Electromagnetics



Aim:To design a program toplot different 3D Surfaces.
(1)Sphere
(2) hemisphere
(3)torus
(4)any random surface of your choice.


1. Sphere:


//3D plotting of sphere

clc;
clear;
clf;
r=5;
theta=linspace(0,2*%pi,60);
phi=linspace(-%pi/2,%pi/2,60);

x=r*sin(theta)'*cos(phi);
y=r*sin(theta)'*sin(phi);
z=r*cos(theta)'*ones(phi);
subplot(2,2,1)
plot3d2(x,y,z,theta=360,alpha=120);
xtitle('theta=360,alpha=120')
subplot(2,2,2)
plot3d2(x,y,z,theta=30,alpha=90);
xtitle('theta=30,alpha=90')
subplot(2,2,3)
plot3d2(x,y,z,theta=45,alpha=60);
xtitle('theta=45,alpha=60')
subplot(2,2,4)
plot3d2(x,y,z,theta=135,alpha=120);
xtitle('theta=135,alpha=120')




(2) HEMISPHERE:







//3D plotting of hemisphere

clc;
clear;
clf;
r=5;
theta=linspace(0,%pi,60);
phi=linspace(-%pi/2,%pi/2,60);

x=r*sin(theta)'*cos(phi);
y=r*sin(theta)'*sin(phi);
z=r*cos(theta)'*ones(phi);
subplot(2,2,1)
plot3d2(x,y,z,theta=-120,alpha=145);
xtitle('theta=-120,alpha=145')
subplot(2,2,2)
plot3d2(x,y,z,theta=-180,alpha=-190);
xtitle('theta=-180,alpha=-190')
subplot(2,2,3)
plot3d2(x,y,z,theta=100,alpha=45);
xtitle('theta=100,alpha=45')
subplot(2,2,4)
plot3d2(x,y,z,theta=-180,alpha=15);
xtitle('theta=-180,alpha=15');


Output (Graph):





(3) TORUS:
THEORY:

//3D plotting of torus

clc;
clear;
clf;
r1=5;
r2=10;
theta=linspace(0,2*%pi,60);
phi=linspace(-%pi,%pi,60);

x=(r2+r1*cos(theta))'*cos(phi);
y=(r2+r1*cos(theta))'*sin(phi);
z=(r1*sin(theta))'*ones(phi);
subplot(2,2,1)
plot3d2(x,y,z,theta=30,alpha=95);
xtitle('theta=30,alpha=95')
subplot(2,2,2)
plot3d2(x,y,z,theta=-180,alpha=-190);
xtitle('theta=-180,alpha=-190')
subplot(2,2,3)
plot3d2(x,y,z,theta=100,alpha=55);
xtitle('theta=100,alpha=55')
subplot(2,2,4)
plot3d2(x,y,z,theta=-125,alpha=-235);
xtitle('theta=-125,alpha=-235');


OUTPUT (GRAPH):









(4)Any random surface:

//3D plotting of random shape

clc;
clear;
clf;
r=5;
theta=linspace(0,2*%pi,60);
phi=linspace(-%pi/2,%pi/2,60);

x=(r*sin(theta))'*cos(phi);
y=(r*sin(theta))'*sin(phi);
z=(r*cos(phi))'*ones(theta);
subplot(2,2,1)
plot3d2(x,y,z,theta=30,alpha=95);
xtitle('theta=30,alpha=95')
subplot(2,2,2)
plot3d2(x,y,z,theta=-145,alpha=-90);
xtitle('theta=-145,alpha=-90')
subplot(2,2,3)
plot3d2(x,y,z,theta=270,alpha=135);
xtitle('theta=270,alpha=135')
subplot(2,2,4)
plot3d2(x,y,z,theta=-75,alpha=-115);
xtitle('theta=-75,alpha=-115');





