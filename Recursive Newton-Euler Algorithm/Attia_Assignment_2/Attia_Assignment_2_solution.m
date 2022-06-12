%{
%Auther: Youssef Mohsen Mahmoud Attia
%ID: 5171925
%Description: This script is the main assigemnt solution and the user interface for using the fucntion Newton_Euler.
%}
clear;
clc;
choice = input ('Please choose the exercise (1~3):');

if choice == 1
    Fext=0;
    Mext=0;
    robotlink=[0,0,0]; %link type: 0:revlout 1:prsimatic
    m=[22,19];
    len=[1, 0.8];
    I1=[0,0,0;0,0,0;0,0,0.4];
    I2=[0,0,0;0,0,0;0,0,0.3];
    I=[I1, I2];
    p0=[0;0;0];
    p1=[1*cosd(20); 1*sind(20); 0];
    p2=[1*cosd(20)+0.8*cosd(60); 1*sind(20)+0.8*sind(60); 0];
    pi=[p0,p1,p2];

    p0com=[0;0;0];
    p1com=[0.5*cosd(20); 0.5*sind(20); 0];
    p2com=[0.5*cosd(20)+0.5*0.8*cosd(60); 0.5*sind(20)+0.5*0.8*sind(60); 0];
    picom=[p0com,p1com,p2com];

    choice2 = input ('Please choose which inputs (1~2):');
    if choice2 == 1
        q=[20*pi/180,40*pi/180];
        qdot=[0.2,0.15];
        qdotdot=[0.1,0.085];

        disp('without gravity');
        g=[0;0;0];
        [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,3,robotlink);
        disp('with gravity');
        g=[0;-9.81;0];
        [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,3,robotlink);
    elseif choice2 ==2
        q=[90*pi/180,45*pi/180];
        qdot=[-0.8,0.35];
        qdotdot=[-0.4,0.1];

        disp('without gravity');
        g=[0;0;0];
        [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,3,robotlink);
        disp('with gravity');
        g=[0;-9.81;0];
        [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,3,robotlink);
    end

elseif choice == 2
     Fext=0;
     Mext=0;
     robotlink=[0,0,1]; %link type: 0:revlout 1:prsimatic
     m=[10,6];
     len=[1];
     I1=[0,0,0;0,0,0;0,0,0.4];
     I2=[0,0,0;0,0,0;0,0,0.3];
     I=[I1, I2];
     p0=[0;0;0];
     p1=[1*cosd(20); 1*sind(20); 0];
     p2=[1.2*cosd(20); 1.2*sind(20); 0];
     pi=[p0,p1,p2];
     p0com=[0;0;0];
     p1com=[0.5*cosd(20); 0.5*sind(20); 0];
     p2com=[0.5*1.2*cosd(20); 0.5*1.2*sind(20); 0];
     picom=[p0com,p1com,p2com];
     choice2 = input ('Please choose which input (1~2):')
     if choice2==1
         q=[0.35,0.2];
         qdot=[0.08,0.03];
         qdotdot=[0.1,0.01];

         disp('without gravity');
         g=[0;0;0];
         [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,3,robotlink);
         disp('with gravity');
         g=[0;-9.81;0];
         [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,3,robotlink);
     elseif choice2 ==2
         q=[2.094,0.6];
         qdot=[-0.4,-0.08];
         qdotdot=[-0.1,-0.01];

         disp('without gravity');
         g=[0;0;0];
         [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,3,robotlink);
         disp('with gravity');
         g=[0;-9.81;0];
         [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,3,robotlink);
     end

elseif choice == 3
    Fext=0;
    Mext=0;
    robotlink=[0,0,0,0]; %link type: 0:revlout 1:prsimatic
    m=[20,20,6];
    len=[1,0.8,0.35];
    I1=[0.2,0,0;0,0.2,0;0,0,0.8];
    I2=[0.2,0,0;0,0.2,0;0,0,0.8];
    I3=[0.08,0,0;0,0.08,0;0,0,0.1];
    I=[I1, I2, I3];
    q=[20*pi/180,40*pi/180,10*pi/180];
    qdot=[0.2,0.15,-0.2];
    qdotdot=[0.1,0.085,0];

    p0=[0;0;0];
    p1=[1*cosd(20); 1*sind(20); 0];
    p2=[1*cosd(20)+0.8*cosd(60); 1*sind(20)+0.8*sind(60); 0];
    p3=[cosd(20)+0.8*cosd(20)*cosd(40)+0.35*cosd(20)*cosd(40)*cosd(10)-0.35*cosd(20)*sind(40)*sind(10); sind(20)+0.8*sind(20)*cosd(40)+0.35*sind(20)*cosd(40)*cosd(10)-0.35*sind(20)*sind(40)*sind(10); 0.8*sind(40)+0.35*cosd(40)*sind(10)+0.35*sind(40)*cosd(10)];
    pi=[p0,p1,p2,p3];

    p0com=[0;0;0];
    p1com=[0.5*cosd(20); 0.5*sind(20); 0];
    p2com=[cosd(20)+0.5*0.8*cosd(60); sind(20)+0.5*0.8*sind(60); 0];
    p3com=[cosd(20)+0.8*cosd(20)*cosd(40)+0.175*cosd(20)*cosd(40)*cosd(10)-0.175*cosd(20)*sind(40)*sind(10); sind(20)+0.8*sind(20)*cosd(40)+0.175*sind(20)*cosd(40)*cosd(10)-0.175*sind(20)*sind(40)*sind(10); 0.8*sind(40)+0.175*cosd(40)*sind(10)+0.175*sind(40)*cosd(10)];
    picom=[p0com,p1com,p2com,p3com];
    disp('without gravity');
    g=[0;0;0];
    [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,4,robotlink);
    disp('with gravity');
    g=[0;-9.81;0];
    [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,4,robotlink);

end

