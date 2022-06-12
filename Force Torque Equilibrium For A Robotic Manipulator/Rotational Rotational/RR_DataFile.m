% Simscape(TM) Multibody(TM) version: 7.5

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(9).translation = [0.0 0.0 0.0];
smiData.RigidTransform(9).angle = 0.0;
smiData.RigidTransform(9).axis = [0.0 0.0 0.0];
smiData.RigidTransform(9).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [200 500 -350];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [-0.57735026918962584 0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(1).ID = "B[Base v3:1:-:Middle v2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-150 150 0];  % mm
smiData.RigidTransform(2).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(2).axis = [1 0 0];
smiData.RigidTransform(2).ID = "F[Base v3:1:-:Middle v2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [200 150 1000];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(3).ID = "B[End v2:1:-:Motor v2:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [230 0 0];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(4).axis = [0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(4).ID = "F[End v2:1:-:Motor v2:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [-150 150 0];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(5).ID = "B[Middle v2:1:-:Motor v2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [230 0 0];  % mm
smiData.RigidTransform(6).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(6).axis = [-0 -1 -0];
smiData.RigidTransform(6).ID = "F[Middle v2:1:-:Motor v2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-150 150 -1000];  % mm
smiData.RigidTransform(7).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(7).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(7).ID = "B[Middle v2:1:-:Motor v2:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [230 0 0];  % mm
smiData.RigidTransform(8).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(8).axis = [-0 -1 -0];
smiData.RigidTransform(8).ID = "F[Middle v2:1:-:Motor v2:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 0];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = "RootGround[Base v3:1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(4).mass = 0.0;
smiData.Solid(4).CoM = [0.0 0.0 0.0];
smiData.Solid(4).MoI = [0.0 0.0 0.0];
smiData.Solid(4).PoI = [0.0 0.0 0.0];
smiData.Solid(4).color = [0.0 0.0 0.0];
smiData.Solid(4).opacity = 0.0;
smiData.Solid(4).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 1543.1025100685933;  % lbm
smiData.Solid(1).CoM = [200 499.99999999984459 -120.64804267202803];  % mm
smiData.Solid(1).MoI = [128561386.59106819 33761199.425473668 139160774.56540346];  % lbm*mm^2
smiData.Solid(1).PoI = [-5.5006446212881655e-05 0 0];  % lbm*mm^2
smiData.Solid(1).color = [0.70196078431372544 0 0];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Base v3.ipt_{30157DD4-45B2-A190-4B2A-17AF3B2964B0}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 195.78387064311082;  % lbm
smiData.Solid(2).CoM = [230.06525965009723 -0.011108014767606877 0.016662038322685962];  % mm
smiData.Solid(2).MoI = [1170074.8820089905 5617526.5283230096 5617417.9716168614];  % lbm*mm^2
smiData.Solid(2).PoI = [130.45009811815862 -766.39432625796371 510.92955096156231];  % lbm*mm^2
smiData.Solid(2).color = [0 0.49019607843137253 0.6588235294117647];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Motor v2.ipt_{9500E784-41EC-A804-289F-B3AC676CC6FD}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 1923.8408368618771;  % lbm
smiData.Solid(3).CoM = [200 149.99999999987534 468.35435839080054];  % mm
smiData.Solid(3).MoI = [162596914.31203672 175009178.71391425 42101345.04575219];  % lbm*mm^2
smiData.Solid(3).PoI = [0.00012748985694156182 -2.6281149647817323e-08 6.5702874119543307e-09];  % lbm*mm^2
smiData.Solid(3).color = [0.7803921568627451 0.5607843137254902 0.10980392156862745];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "End v2.ipt_{44B94EF0-4667-A0F7-B605-3C90D068A70A}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 789.73257036604809;  % kg
smiData.Solid(4).CoM = [-149.99999999834688 149.99999999999997 -500];  % mm
smiData.Solid(4).MoI = [97022957.476240054 97218033.835709661 12041064.914960325];  % kg*mm^2
smiData.Solid(4).PoI = [-3.5762786865234374e-08 2.3841857910156251e-08 -5.9604644775390628e-09];  % kg*mm^2
smiData.Solid(4).color = [0.50196078431372548 0 0.50196078431372548];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Middle v2.ipt_{C2612A30-42A4-AD4D-9DD7-1A89FCFEBD2A}";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = -160;  % deg
smiData.RevoluteJoint(1).ID = "[Base v3:1:-:Middle v2:1]";

smiData.RevoluteJoint(2).Rz.Pos = 150.00000000000003;  % deg
smiData.RevoluteJoint(2).ID = "[Middle v2:1:-:Motor v2:2]";

