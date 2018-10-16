% Designed by Rohit Paudel and Ananta Raj Bhattarai

clear all
close all
clf
handle_axes= axes('XLim', [-0.4,0.4], 'YLim', [-0.25,0.4], 'ZLim', [0,0.65]);

xlabel('e_1'); 
ylabel('e_2');
zlabel('e_3');

view(-130, 26);
grid on;
axis equal
camlight
axis_length= 0.05;

%% Root frame E
trf_E_axes= hgtransform('Parent', handle_axes); 
% The root-link transform should be created as a child of the axes from the
% beginning to avoid the error "Cannot set property to a deleted object".
% E is synonymous with the axes, so there is no need for plot_axes(trf_E_axes, 'E');

%% the_Link-0: Base-link
trf_link0_E= make_transform([0, 0, 0], 0, 0, 0, trf_E_axes);

trf_viz_link0= make_transform([0, 0, 0.0425], 0, 0, 0, trf_link0_E );
sides (1)= 0.32; sides (2)= 0.26; sides (3)= 0.085; 
h(1)= link_box(sides, trf_viz_link0, [0 0.9 0.9]); 
plot_axes(trf_viz_link0, 'l1', true, axis_length); % V_0

%% the_Link-1: Base-Laser
trf_viz_link_1= make_transform([0, 0, 0], 0, 0, 0 );
length1= 0.07; radius1= 0.025;
h(1)= link_cylinder(radius1, length1, trf_viz_link_1, [1 0.41252 0.01242]); 
%plot_axes(trf_viz_link1, ' ', true, axis_length); % V_0

%% the_Link-2: cpu-link

trf_viz_link_2= make_transform([0, 0, 0.035], 0, 0, 0);
sides (1)= 0.19; sides (2)= 0.19; sides (3)= 0.07; 
h(1)= link_box(sides, trf_viz_link_2, [0.9874 0.1245 0.4215]); 
%plot_axes(trf_viz_link2, ' ',true,  axis_length); % V_0

%% the_Link-3: Upper_Base_Link

trf_viz_link_3= make_transform([0, 0, 0.05], 0, 0, 0);
length3= 0.10; radius3= 0.085;
h(1)= link_cylinder(radius3, length3, trf_viz_link_3, [0.2456 1 0.1425]); 
%plot_axes(trf_viz_link3, ' ', true, axis_length); % V_0

%% the_Link-4: Torso_Link

trf_viz_link_4= make_transform([0, 0, 0.12], 0, 0, 0);
length4= 0.24; radius4= 0.05;
h(1)= link_cylinder(radius4, length4, trf_viz_link_4, [0.1245 0.92145 0.2145]); 
%plot_axes(trf_viz_link4, ' ', true, axis_length); % V_0

%% the_Link-5: head_pan_link

trf_viz_link_5= make_transform([0, 0, 0.0225], 0, 0, 0);
sides (1)= 0.05; sides (2)= 0.045; sides (3)= 0.045; 
h(1)= link_box(sides, trf_viz_link_5, [1 0.1375 0]); 
%plot_axes(trf_viz_link5, ' ',true,  axis_length); % V_0

%% the_Link-6: head_tilt_link

trf_viz_link_6= make_transform([0, 0, 0.02], 0, 0, 0);
sides (1)= 0.03; sides (2)= 0.038; sides (3)= 0.04; 
h(1)= link_box(sides, trf_viz_link_6, [0.4157 0.2139 1]); 
%plot_axes(trf_viz_link6, ' ',true,  axis_length); % V_0

%% the_Link-7: neck_link
trf_viz_link_7= make_transform([0, 0, 0.021], 0, 0, 0);
sides (1)= 0.03; sides (2)= 0.05; sides (3)= 0.042; 
h(1)= link_box(sides, trf_viz_link_7, [0 0.4524 0.8264]); 
%plot_axes(trf_viz_link7, ' ',true,  axis_length); % V_0

%% the_Link-8: head_link
trf_viz_link_8= make_transform([0, 0, 0.025], 0, 0, 0);
sides (1)= 0.03; sides (2)= 0.07; sides (3)= 0.11; 
h(1)= link_box(sides, trf_viz_link_8, [1 0.1426 0.4523]); 
%plot_axes(trf_viz_link8, ' ',true,  axis_length); % V_0

%% the_Link-10: left_shoulder_link
trf_viz_link_10= make_transform([0, 0, 0], 0, 0, 0);
sides (1)= 0.025 ; sides (2)= 0.015 ; sides (3)= 0.05; 
h(1)= link_box(sides, trf_viz_link_10, [0.4287 0 0.5412]); 
%plot_axes(trf_viz_link10, ' ',true,  axis_length); % V_0

%% the_Link-11: right_shoulder_link
trf_viz_link_11= make_transform([0, 0, 0], 0, 0, 0);
sides (1)= 0.025 ; sides (2)= 0.015 ; sides (3)= 0.05; 
h(1)= link_box(sides, trf_viz_link_11, [0 0.1278 0.7541]); 
%plot_axes(trf_viz_link11, ' ',true,  axis_length); % V_0

%% the_Link-12: left_shoulder_forward_link
trf_viz_link_12= make_transform([0, 0, 0], 0, 0, 0);
sides (1)= 0.03 ; sides (2)= 0.05 ; sides (3)= 0.03; 
h(1)= link_box(sides, trf_viz_link_12, [0.7512 0 0.2415]); 
%plot_axes(trf_viz_link12, ' ',true,  axis_length); % V_0

%% the_Link-13: right_shoulder_forward_link
trf_viz_link_13= make_transform([0, 0, 0], 0, 0, 0);
sides (1)= 0.03 ; sides (2)= 0.05 ; sides (3)= 0.03; 
h(1)= link_box(sides, trf_viz_link_13, [0.4512 0.7516 0]); 
%plot_axes(trf_viz_link13, ' ',true,  axis_length); % V_0

%% the_Link-14: left_shoulder_up_link
trf_viz_link_14= make_transform([0, 0, 0], 1.57 , 0, 0);
sides (1)= 0.03 ; sides (2)= 0.05 ; sides (3)= 0.03; 
h(1)= link_box(sides, trf_viz_link_14, [0.98412 0.2548 0]); 
%plot_axes(trf_viz_link14, ' ',true,  axis_length); % V_0

%% the_Link-15: right_shoulder_up_link
trf_viz_link_15= make_transform([0, 0, 0], 1.57 , 0, 0);
sides (1)= 0.03 ; sides (2)= 0.05 ; sides (3)= 0.03; 
h(1)= link_box(sides, trf_viz_link_15, [0.1456 0.2415 0.8741]); 
%plot_axes(trf_viz_link15, ' ',true,  axis_length); % V_0

%% the_Link-16: left_upper_arm_Link

trf_viz_link_16= make_transform([0, 0, 0], 0, 0, 0);
length16= 0.05; radius16= 0.0075;
h(1)= link_cylinder(radius16, length16, trf_viz_link_16, [0.4578 1 0]); 
%plot_axes(trf_viz_link16, ' ', true, axis_length); % V_0



%% the_Link-17: right_upper_arm_Link

trf_viz_link_17= make_transform([0, 0, 0], 0, 0, 0);
length17= 0.05; radius17= 0.0075;
h(1)= link_cylinder(radius17, length17, trf_viz_link_17, [0 1 0.1275]); 
%plot_axes(trf_viz_link17, ' ', true, axis_length); % V_0

%% the_Link-18: left_elbow_link

trf_viz_link_18= make_transform([0, 0, 0], 0 , 0, 1.57);
sides (1)= 0.035  ; sides (2)= 0.035  ; sides (3)= 0.05; 
h(1)= link_box(sides, trf_viz_link_18, [0.1956 0 0.7624]); 
%plot_axes(trf_viz_link18, ' ',true,  axis_length); % V_0

%% the_Link-19: right_elbow_link

trf_viz_link_19= make_transform([0, 0, 0], 0 , 0, 1.57);
sides (1)= 0.035  ; sides (2)= 0.035  ; sides (3)= 0.05; 
h(1)= link_box(sides, trf_viz_link_19, [0.8564 0.1784 0.1456]); 
%plot_axes(trf_viz_link19, ' ',true,  axis_length); % V_0

%% the_Link-20: left_lower_arm_Link

trf_viz_link_20= make_transform([0, 0, 0], 0, 0, 0);
length20= 0.11; radius20= 0.0075;
h(1)= link_cylinder(radius20, length20, trf_viz_link_20, [0.5435 0.3245 0.4298]); 
%plot_axes(trf_viz_link20, ' ', true, axis_length); % V_0

%% the_Link-21: right_lower_arm_Link

trf_viz_link_21= make_transform([0, 0, 0], 0, 0, 0);
length21= 0.11; radius21= 0.0075;
h(1)= link_cylinder(radius21, length21, trf_viz_link_21, [0.5135 0.8456 0.1456]); 
%plot_axes(trf_viz_link21, ' ', true, axis_length); % V_0

%% the_Link-22: left_wrist_link

trf_viz_link_22= make_transform([0, 0, 0], 1.57 , 0, 0);
sides (1)= 0.03  ; sides (2)= 0.05  ; sides (3)= 0.03; 
h(1)= link_box(sides, trf_viz_link_22, [0.7512 0 0.4795]); 
%plot_axes(trf_viz_link22, ' ',true,  axis_length); % V_0

%% the_Link-23: right_wrist_link

trf_viz_link_23= make_transform([0, 0, 0], 1.57 , 0, 0);
sides (1)= 0.03  ; sides (2)= 0.05  ; sides (3)= 0.03; 
h(1)= link_box(sides, trf_viz_link_23, [0.2465 0 0.5364]); 
%plot_axes(trf_viz_link23, ' ',true,  axis_length); % V_0

%% the_Link-24: left_hand_link

trf_viz_link_24= make_transform([0, 0, 0], 0 , 0, 0);
sides (1)= 0.03  ; sides (2)= 0.01  ; sides (3)= 0.06; 
h(1)= link_box(sides, trf_viz_link_24, [0 0 1]); 
%plot_axes(trf_viz_link24, ' ',true,  axis_length); % V_0

%% the_Link-24: right_hand_link

trf_viz_link_25= make_transform([0, 0, 0], 0 , 0, 0);
sides (1)= 0.03  ; sides (2)= 0.01  ; sides (3)= 0.06; 
h(1)= link_box(sides, trf_viz_link_25, [0 0 1]); 
%plot_axes(trf_viz_link25, ' ',true,  axis_length); % V_0

%% Now define all the joints

%% the_cpu_joint -> links 0,1 type: Fixed
trf_joint1_link0= make_transform([0, 0, 0], 0, 0, 0, trf_link0_E);
trf_link1_joint1= make_transform([0.025, 0, 0.085], 0, 0, 0, trf_joint1_link0); 
make_child(trf_link1_joint1, trf_viz_link_2 );

%% the_base_laser_joint type : Fixed
trf_link2_joint1= make_transform([0.18, 0, 0.07], 0, 0, 0, trf_joint1_link0); 
make_child(trf_link2_joint1, trf_viz_link_1);

%% the_upper_base_joint type: Fixed
trf_link3_joint1= make_transform([0, 0, 0.07], 0, 0, 0, trf_link1_joint1); 
make_child(trf_link3_joint1, trf_viz_link_3);

%% the_torso_joint type : Revolute
j3_rot_axis_j3= [0,0,1]';
j3_rot_angle= 0; % [-pi/2, pi/2]
trf_link4_joint1= make_transform([0, 0, 0.10], 0, 0, 0, trf_link3_joint1);
trf_link3_joint3= make_transform_revolute(j3_rot_axis_j3, j3_rot_angle, trf_link4_joint1); 
make_child(trf_link3_joint3, trf_viz_link_4);

%% the_head_pan_servo_joint: Fixed
trf_link5_joint1= make_transform([0, 0, 0.225], 0, 0, 0, trf_link3_joint3); 
make_child(trf_link5_joint1, trf_viz_link_5);

%% the_head_pan_joint: Revolute
j6_rot_axis_j6= [0,0,1]';
j6_rot_angle= 0; % [-pi/2, pi/2]
trf_link6_joint1= make_transform([0, 0, 0.045], 0, 0, 0, trf_link5_joint1);
trf_link6_joint2= make_transform_revolute(j6_rot_axis_j6, j6_rot_angle, trf_link6_joint1); 
make_child(trf_link6_joint2, trf_viz_link_6);

%% the_head_tilt_joint: Revolute
j7_rot_axis_j7= [0,1,0]';
j7_rot_angle= 0; % [-pi/2, pi/2]
trf_link7_joint1= make_transform([0, 0, 0.04], 0, 0, 0, trf_link6_joint1);
trf_link7_joint2= make_transform_revolute(j7_rot_axis_j7, j7_rot_angle, trf_link7_joint1); 
make_child(trf_link7_joint2, trf_viz_link_7);

%% the_neck_joint: Fixed
trf_link8_joint1= make_transform([0.05, 0, 0.015], 0, 0, 0, trf_link7_joint2); 
make_child(trf_link8_joint1, trf_viz_link_8);

%% the_left_shoulder_joint: Fixed
trf_link10_joint1= make_transform([0.0, 0.055, 0.165], 0, 0, 0, trf_link3_joint3); 
make_child(trf_link10_joint1, trf_viz_link_10);

%% the_right_shoulder_joint: Fixed
trf_link11_joint1= make_transform([0.0, -0.055, 0.165], 0, 0, 0, trf_link3_joint3); 
make_child(trf_link11_joint1, trf_viz_link_11);

%% the_left_shoulder_forward_joint: Revolute
j12_rot_axis_j12= [0,1,0]';
j12_rot_angle= 0; % [-pi/2, pi/2]
trf_link12_joint1= make_transform([0, 0.025, 0], 0, 0, 0, trf_link10_joint1);
trf_link12_joint2= make_transform_revolute(j12_rot_axis_j12, j12_rot_angle, trf_link12_joint1); 
make_child(trf_link12_joint2, trf_viz_link_12);

%% the_right_shoulder_forward_joint: Revolute
j13_rot_axis_j13= [0,1,0]';
j13_rot_angle= 0; % [-pi/2, pi/2]
trf_link13_joint1= make_transform([0, -0.025, 0], 0, 0, 0, trf_link11_joint1);
trf_link13_joint2= make_transform_revolute(j13_rot_axis_j13, j13_rot_angle, trf_link13_joint1); 
make_child(trf_link13_joint2, trf_viz_link_13);

%% the_left_shoulder_up_joint: Revolute
j14_rot_axis_j14= [0,1,0]';
j14_rot_angle= 0; % [-pi/2, pi/2]
trf_link14_joint1= make_transform([0, 0.04, -0.01], 0, -0.707, 0, trf_link10_joint1);
trf_link14_joint2= make_transform_revolute(j14_rot_axis_j14, j14_rot_angle, trf_link14_joint1); 
make_child(trf_link14_joint2, trf_viz_link_14);

%% the_right_shoulder_up_joint: Revolute
j15_rot_axis_j15= [0,1,0]';
j15_rot_angle= 0; % [-pi/2, pi/2]
trf_link15_joint1= make_transform([0, -0.04, -0.01], 0, -0.707, 0, trf_link11_joint1);
trf_link15_joint2= make_transform_revolute(j15_rot_axis_j15, j15_rot_angle, trf_link15_joint1); 
make_child(trf_link15_joint2, trf_viz_link_15);

%% the_left_upper_arm_joint: Fixed
trf_link16_joint1= make_transform([0, 0, -0.05], 0, 0, 0, trf_link14_joint2); 
make_child(trf_link16_joint1, trf_viz_link_16);

%% the_right_upper_arm_joint: Fixed
trf_link17_joint1= make_transform([0, 0, -0.05], 0, 0, 0, trf_link15_joint2); 
make_child(trf_link17_joint1, trf_viz_link_17);

%% the_left_elbow_joint: Revolute
j18_rot_axis_j18= [0,0,1]';
j18_rot_angle= 0; % [-pi/2, pi/2]
trf_link18_joint1= make_transform([-0.005, 0, -0.05], 0, 0, 0, trf_link16_joint1);
trf_link18_joint2= make_transform_revolute(j18_rot_axis_j18, j18_rot_angle, trf_link18_joint1); 
make_child(trf_link18_joint2, trf_viz_link_18);

%% the_right_elbow_joint: Revolute
j19_rot_axis_j19= [0,0,1]';
j19_rot_angle= 0; % [-pi/2, pi/2]
trf_link19_joint1= make_transform([-0.005, 0, -0.05], 0, 0, 0, trf_link17_joint1);
trf_link19_joint2= make_transform_revolute(j19_rot_axis_j19, j19_rot_angle, trf_link19_joint1); 
make_child(trf_link19_joint2, trf_viz_link_19);

%% the_left_lower_arm_joint: Fixed
trf_link20_joint1= make_transform([0, 0, -0.08], 0, 0, 0, trf_link18_joint2); 
make_child(trf_link20_joint1, trf_viz_link_20);

%% the_right_lower_arm_joint: Fixed
trf_link21_joint1= make_transform([0, 0, -0.08], 0, 0, 0, trf_link19_joint2); 
make_child(trf_link21_joint1, trf_viz_link_21);

%% the_left_wrist_joint: Revolute
j22_rot_axis_j22= [1,0,0]';
j22_rot_angle= 0; % [-pi/2, pi/2]
trf_link22_joint1= make_transform([0, 0, -0.05], 0, 0, 0, trf_link20_joint1);
trf_link22_joint2= make_transform_revolute(j22_rot_axis_j22, j22_rot_angle, trf_link22_joint1); 
make_child(trf_link22_joint2, trf_viz_link_22);

%% the_right_wrist_joint: Revolute
j23_rot_axis_j23= [1,0,0]';
j23_rot_angle= 0; % [-pi/2, pi/2]
trf_link23_joint1= make_transform([0, 0, -0.05], 0, 0, 0, trf_link21_joint1);
trf_link23_joint2= make_transform_revolute(j23_rot_axis_j23, j23_rot_angle, trf_link23_joint1); 
make_child(trf_link23_joint2, trf_viz_link_23);

%% the_left_hand_joint: Fixed
trf_link24_joint1= make_transform([0, 0, -0.055], 0, 0, 0, trf_link22_joint2); 
make_child(trf_link24_joint1, trf_viz_link_24);

%% the_right_hand_joint: Fixed
trf_link25_joint1= make_transform([0, 0, -0.055], 0, 0, 0, trf_link23_joint2); 
make_child(trf_link25_joint1, trf_viz_link_25);

%% Animation: Torso Joint
for q1=[linspace(0, -pi/2, 30), linspace(-pi/2, pi/2, 30), linspace(pi/2, 0, 30)]
    set(handle_axes, 'XLim', [-0.4,0.4], 'YLim', [-0.25,0.4], 'ZLim', [0,0.65]);
    trf_q1= makehgtform('axisrotate', j3_rot_axis_j3, q1);
    set(trf_link3_joint3, 'Matrix', trf_q1);
    drawnow;
    pause(0.02);
end

%% Animation: Right Shoulder Up Joint
for q1=[linspace(0, -pi/2, 30), linspace(-pi/2, pi/2, 30), linspace(pi/2, 0, 30)]
    set(handle_axes, 'XLim', [-0.4,0.4], 'YLim', [-0.25,0.4], 'ZLim', [0,0.65]);
    trf_q1= makehgtform('axisrotate', j15_rot_axis_j15, q1);
    set(trf_link15_joint2, 'Matrix', trf_q1);
    drawnow;
    pause(0.02);
end

%% Animation: Left Shoulder Up Joint
for q1=[linspace(0, -pi/2, 30), linspace(-pi/2, pi/2, 30), linspace(pi/2, 0, 30)]
    set(handle_axes, 'XLim', [-0.4,0.4], 'YLim', [-0.25,0.4], 'ZLim', [0,0.65]);
    trf_q1= makehgtform('axisrotate', j14_rot_axis_j14, q1);
    set(trf_link14_joint2, 'Matrix', trf_q1);
    drawnow;
    pause(0.02);
end

%% Animation: Left Elbow Joint
for q1=[linspace(0, -pi/2, 30), linspace(-pi/2, pi/2, 30), linspace(pi/2, 0, 30)]
    set(handle_axes, 'XLim', [-0.4,0.4], 'YLim', [-0.25,0.4], 'ZLim', [0,0.65]);
    trf_q1= makehgtform('axisrotate', j18_rot_axis_j18, q1);
    set(trf_link18_joint2, 'Matrix', trf_q1);
    drawnow;
    pause(0.02);
end

%% Animation: Right Elbow Joint
for q1=[linspace(0, -pi/2, 30), linspace(-pi/2, pi/2, 30), linspace(pi/2, 0, 30)]
    set(handle_axes, 'XLim', [-0.4,0.4], 'YLim', [-0.25,0.4], 'ZLim', [0,0.65]);
    trf_q1= makehgtform('axisrotate', j19_rot_axis_j19, q1);
    set(trf_link19_joint2, 'Matrix', trf_q1);
    drawnow;
    pause(0.02);
end

%% Animation: Left Wrist Joint
for q1=[linspace(0, -pi/2, 30), linspace(-pi/2, pi/2, 30), linspace(pi/2, 0, 30)]
    set(handle_axes, 'XLim', [-0.4,0.4], 'YLim', [-0.25,0.4], 'ZLim', [0,0.65]);
    trf_q1= makehgtform('axisrotate', j22_rot_axis_j22, q1);
    set(trf_link22_joint2, 'Matrix', trf_q1);
    drawnow;
    pause(0.02);
end

%% Animation: Right Wrist Joint
for q1=[linspace(0, -pi/2, 30), linspace(-pi/2, pi/2, 30), linspace(pi/2, 0, 30)]
    set(handle_axes, 'XLim', [-0.4,0.4], 'YLim', [-0.25,0.4], 'ZLim', [0,0.65]);
    trf_q1= makehgtform('axisrotate', j23_rot_axis_j23, q1);
    set(trf_link23_joint2, 'Matrix', trf_q1);
    drawnow;
    pause(0.02);
end

