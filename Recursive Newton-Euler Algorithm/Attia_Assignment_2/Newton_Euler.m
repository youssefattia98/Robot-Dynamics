%{
%Auther: Youssef Mohsen Mahmoud Attia
%ID: 5171925
%Description: This function is to compoute the inverse dynamics joint torques a specifc motion snapshot using the recursive Newton-Euler algorithm for inverse dynamics.
%}
function [Torque] = Newton_Euler(m,len, I, q,qdot, qdotdot,Fext,Mext,pi,picom,g,n,robotlink)
%varibles declaration
k=[0;0;1];
w=[0;0;0];
v=[0;0;0];
vcom=[0;0;0];
wdot=[0;0;0];
vdot=[0;0;0];
vdotcom=[0;0;0];
F(:,n)=[0;0;0];
M(:,n)=[0;0;0];
rcom=[0;0;0];
%Forward
for i=2:n
    %Step 1 (postion):
    if robotlink(:,i-1)==0
        r(:,i-1)=pi(:,i)-pi(:,i-1);
    else
        r(:,i-1)=pi(:,i)-pi(:,i-1)+k*q(i-1);
    end

    %Step 2 (veloctiy):
    %Angular:
    if robotlink(:,i-1)==0
        w(:,i)=w(:,i-1)+k*qdot(i-1);
    else
        w(:,i)=w(:,i-1);
    end
    %liner:
    if robotlink(:,i-1)==0
        v(:,i)=v(:,i-1)+cross(w(:,i-1),r(:,i-1));
    else
        v(:,i)=v(:,i-1)+cross(w(:,i-1),r(:,i-1))+k*qdot(i-1);
    end
    %Linear wrt com:
    rcom(:,i-1)=picom(:,i)-picom(:,i-1);
    vcom(:,i)=v(:,i)+cross(w(:,i), rcom(:,i-1));

    %Step 3 (Accleration):
    %Angular:
    if robotlink(:,i-1)==0
        wdot(:,i)=wdot(:,i-1)+cross(w(:,i-1),k)+k*qdotdot(i-1);
    else
        wdot(:,i)=wdot(:,i-1);
    end
    %Linear:
    if robotlink(:,i-1)==0
        vdot(:,i)=vdot(:,i-1)+cross(wdot(:,i-1),r(:,i-1))+cross(w(:,i-1),cross(w(:,i-1),r(:,i-1)));
    else
        vdot(:,i)=vdot(:,i-1)+cross(wdot(:,i-1),r(:,i-1))+cross(w(:,i-1),cross(w(:,i-1),r(:,i-1)))+2*cross(w(:,i-1),k)*qdot(i-1)+k*qdotdot(i-1);
    end
    %Linear wrt com:
    vdotcom(:,i)=vdot(:,i)+cross( wdot(:,i), rcom(:,i-1))+cross(w(:,i),cross(w(:,i),rcom(:,i-1)));

end
rcomnew=[[0;0;0] rcom];
%Backward
for i=n-1:-1:1
    D=m(i)*vdotcom(:,i+1);
    deltai=I(:,(i*3)-2:i*3)*wdot(:,i+1)+cross(w(:,i+1),I(:,(i*3)-2:i*3)*w(:,i+1));
    F(:,i)=F(:,i+1)-Fext+D-m(i)*g;
    M(:,i)=M(:,i+1)-Mext-cross(-rcomnew(:,i+1),F(:,i))+cross(-rcomnew(:,i),F(:,i+1))+deltai;
    if robotlink(i)==0
        Torque=M(:,i).*k
    else
        Torque=F(:,i).*k
    end
end
