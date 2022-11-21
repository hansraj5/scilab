Program 11
Electromagnetics



Aim:- To solve heat equation using  finite difference method . Given equation is 
u(t)= k*u(xx) + f(x,t) 
Use given heat equation by finite difference method such that 1. u(0,t)=0 
2. u(1,t)=0 
The rod is of unit length. It starts at 0 and ends at 1.
Theory:-
The finite difference method is one way to solve the governing partial differential equations into numerical solutions in a heat transfer system. This is done through approximation, which replaces the partial derivatives with finite differences. This provides the value at each grid point in the domain.

Code
//Heat Equation

clc
clear
clf
a=0
b=1
ua=0
ub=0
k1=1
N=99
Tmax=0.2
L=0.5
h=(b-a)/(N+1)
x=[a+h:h:b-h]'
xplot=[a;x;b]
T=(L*(h^2))/k1
function f=g(x)
f=sin(%pi*x)
endfunction
plot(x,g(x),'x')
nmax=int(Tmax/T)+1
step_num=5
step=max(int(nmax/step_num),1)
u=g(x)
uplot=[ua;u;ub]
A=2*eye(N,N)-diag(ones(N-1,1),-1)-diag(ones(N-1,1),1)
k=eye(N,N)-L*A
for n =1:nmax
u=k*u
if modulo(n,step)==0
uplot=[ua;u;ub]
plot(xplot,uplot)
end
end
xlabel('X axis');
ylabel('Y axis');
xtitle('Heat Equation');



