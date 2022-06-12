clc
clear
syms th0 th1 th2 th3 th4 th5 th6
A1 = [cos(th0) 0 -sin(th0) 0; sin(th0) 0 cos(th0) 0; 0 -1 0 108; 0 0 0 1];
A2 = [cos(th1) 0 -sin(th1) 0; sin(th1) 0 cos(th1) 0; 0 -1 0 0; 0 0 0 1];
A3 = [cos(th2) 0 sin(th2) 145.5*cos(th2); sin(th2) 0 -cos(th2) 145.5*sin(th2); 0 1 0 431.5; 0 0 0 1];
A4 = [cos(th3) 0 -sin(th3) 0; sin(th3) 0 cos(th3) 0; 0 -1 0 0; 0 0 0 1];
A5 = [cos(th4) 0 -sin(th4) 0; sin(th4) 0 cos(th4) 0; 0 -1 0 455; 0 0 0 1];
A6 = [cos(th5) 0 -sin(th5) 0; sin(th5) 0 -cos(th5) 0; 0 1 0 0; 0 0 0 1];
A7 = [cos(th6) -sin(th6) 0 0; sin(th6) cos(th6) 0 0; 0 0 1 153; 0 0 0 1];
T=A1*A2*A3*A4*A5*A6*A7