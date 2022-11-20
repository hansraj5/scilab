Program 06
Electromagnetics

Program 01
Aim:-Three point charges are -1nC, 4nC and 3nC located at (0,0,0),(0,0,1) and (1,0,0).Find total energy in the system.
Theory:- 
Electric potential energy of a system of charges is equal to the amount of work done in forming the system of charges by bringing them at their particular positions from infinity without any acceleration and against the electrostatic force. It is denoted by U.U=W=qV(r) 
If three charges q1, q2 and q3 are situated at the vertices of a triangle, the potential energy of the system is,
U =U12 + U23 + U31 = (1/4πεo) × [q1q2/d1 + q2q3/d2 + q3q1/d3]
Code



//program01

clc;
clear;
k=9e9;
E=0;
n=input("ENTER THE NUMBER OF CHARGES ");
for i=1:n
q(i)=input("Enter the value of charge ")
x(i)=input("Enter the x cordinate ")
y(i)=input("Enter the y cordinate ")
z(i)=input("Enter the z cordinate ")
end
for i=1:n-1
for j=i+1:n
r=sqrt((x(i)-x(j)).^2+(y(i)-y(j)).^2+(z(i)-z(j)).^2)
E=E+q(i).*q(j)/r
end
end
E=k.*E;
disp(E)



// Program 02


Aim:- A linear rod is 5 m long. The charge density is lo +x/2. Determine the total charge within 1 m. 
Theory- 
The quantity of charge per unit length, measured in coulombs per meter (cm^-1), at any point on a line charge distribution, is called linear charge density (λ). Suppose q is the charge and l is the length over which it flows, then the formula of linear charge density is λ= q/l, and the S.I. unit of linear charge density is coulombs per meter (cm^-1).

// Code 

clc;
clear;
l2=5
function f=f(x)
f=l2+x/2
endfunction
disp(integrate("f","x",0,1), ' is the total charge within 1 m ')







//  Program 03
Aim:- Surface charge density is 4xy² for a sheet for which x and y varies from -2 to 3. Determine the total charge contain in the sheet. 
Theory:-
Surface Charge Density is the amount of charge per unit of a two dimensional surface area. It is a measure of how much quantity of electric charge is accumulated over a surface. It is expressed by the symbol σ and the unit in the SI system is Coulombs per square meter i.e Cm^-2 . 
If q is the charge and A is the area of the surface, then the Surface Charge Density is given by; σ=qA, In electromagnetism, it is expressed as the quantity of electric charge per unit volume of one, two, or even three-dimensional space.

// Code


clc;
clear;
function f1=f(x)
f1=x
endfunction
function f2=g(y)
f2=y.^2
endfunction
disp(4*integrate("f(x)","x",-2,3)*integrate("g(y)","y",-2,3),'is the total charge on the sheet')






