clear
clc
%startup_rvc
syms l1 l2 l3
L(1)=Link([0 0 l1 90*pi/180]);
L(2)=Link([0 0 l2 0]);
L(3)=Link([0 0 l3 0]);
Rob=SerialLink(L)
syms th1 th2 th3
A1=L(1).A(th1);
A2=L(2).A(th2);
A3=L(3).A(th3);
trnasformation=A1*A2*A3;

disp('Transtion matrix 1 is:');
vpa(A1)
disp('Transtion matrix 2 is:');
vpa(A2)
disp('Transtion matrix 3 is:');
vpa(A3)
disp('Robot Transtion matrix is:');
vpa(trnasformation)

%Forward kinematics
%the varibales can be substituted with the input of the user
%T=vpa(Rob.fkine([th0 th1 th2 th3 th4 th5 th6]))
%T=simplify(T)

%Inverse kinematics, not working due to complexity of robot
%Rob.ikine(T,'mask',[1 1 1 1 1 0 0])

%Jacobean  matrix, after inputing speeds randomly
%j = Rob.jacobn([1 0 1 0 1 1 1])