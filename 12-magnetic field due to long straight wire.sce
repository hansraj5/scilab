//magnetic field due to long straight wire
clc;
clf;
clear;
k=10^(-7)
i=input("enter value of current=");
a=input("enter perpendicular distance of observation point from the wire=")
r=linspace(1,10*a,1000)
phi1=input("enter the value of phi1 in degree =");
phi2=input("enter the value of phi2 in degree =");
function mag=B(r)
    mag=k*i*(sind(phi1)+sind(phi2))/r;
endfunction
disp(B(a))
plot(r,B)


