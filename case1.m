clc; clear all; close all;

Kc = 0.5;
f = @(x) 27*x.^4 - 4*Kc*x.^2 + 4*Kc*x - Kc;
a = 0;
b = 0.4;   
for i = 1:60
    c = (a + b)/2;
    
    if f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end
end

x_eq = (a + b)/2;

NH3 = 1 - 2*x_eq;
N2  = x_eq;
H2  = 3*x_eq;

fprintf('Extent of reaction x = %.6f\n', x_eq);
fprintf('Equilibrium NH3 = %.6f\n', NH3);
fprintf('Equilibrium N2  = %.6f\n', N2);
fprintf('Equilibrium H2  = %.6f\n', H2);