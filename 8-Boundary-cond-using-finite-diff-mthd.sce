Program 08
Electromagnetics



Aim :- Simplify boundary value problem using finite difference method.
Theory:-
The boundary condition is defined as y(at x1)=a and y(at xn)=a 
here, n is nodes between [a, b] 
Step size between successive nodes, h= (b-a)/(n-1)




Program code
//boundary value problem using finite difference method

clc
clear
clf
i=1
n=70
A=zeros(n,n)
A(1,1)=1
A(n,n)=1
function a=fa(x)
a=0 ...........//alpha
endfunction
function b=fb(x)
b=1..........//beta
endfunction
function c=fc(x)
c=0............//gaama
endfunction
a=0
b=%pi/2
h=(b-a)/(n-1)
x0=a
x=a
for i=2:n-1
x=x+h
x0=[x0,x]
A(i,i)=fb(x)-(2/h.^2)
A(i,i+1)=(1+0.5*h.*fa(x))/h^2
A(i,i-1)=(1-0.5*h.*fa(x))/h^2
B(i,1)= fc(x)
end
B(1,1)=0
B(n,1)=3
Y=A\B
x=[x0 b]
plot(x,Y,'o')
plot(x,3*sin(x),'r+')
legend("Solution of FDE","3sinx")
xlabel("x-axis--->")
ylabel("y-axis--->")
title("Boundary value problem using Finite Difference method")



