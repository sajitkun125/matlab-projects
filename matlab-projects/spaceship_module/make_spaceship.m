%In Group of two
%Rohit Paudel
%Matriculation no: 30001571
%Saurav Dahal
%matriculation no: 30001361


function [ myhandles ] = make_spaceship(trf_root, transparency)
% Makes a space-ship with the root transform as the given transform.
% The surfaces are drawn with the given transparency in [0,1]
% A vector of handles to all the surfaces is returned.

ship_dish_profile= 2*sin(linspace(0, pi, 20));
[Xc, Yc, Zc]= cylinder(ship_dish_profile);

[Xb,Yb,Zb]= sphere(2,2);

% Top dish
trf_top_root= hgtransform('Parent', trf_root);
set(trf_top_root, 'Matrix', makehgtform('translate', [0, 0, -1]));
trf_Ry= makehgtform('yrotate', -pi/2);
color_top= [0.05098, 0.61176, 0.24705];
myhandles(1)= surface(Xc, Yc, Zc, 'Parent', trf_top_root, 'FaceColor', color_top, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_top, 'EdgeAlpha', transparency);

% Bottom dish
trf_bottom_root= hgtransform('Parent', trf_root);
set(trf_bottom_root, 'Matrix', makehgtform('translate', [0, 0, 0.7]));
trf_Ry= makehgtform('yrotate', -pi/2);
color_bottom= [0.1247, 0.78545, 0.25882];
myhandles(2)= surface(Xc, Yc, Zc, 'Parent', trf_bottom_root, 'FaceColor', color_bottom, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_bottom, 'EdgeAlpha', transparency);

% Unit cylinder with a given profile (tapering at the ends).
% This is reused twice to create the two tails of the ship.
[Xt, Yt, Zt]= cylinder([ 0.3, 0.4, 0.4, 0.4,0.4, 0.35, 0.3, 0.25, 0.15, 0.8, 0.6]);  
[Xu, Yu, Zu]= cylinder([0.2 ,0.2,0.2 , 0.2,0.2]); 
[Xz, Yz, Zz]= cylinder([0.2 ,0.2,0.2, 0.2, 0.2]); 
[Xa, Ya, Za]= cylinder([0.5 ,0.5]);
[Xc, Yc, Zc]= cylinder([0 ,0.2,0.4, 0.6, 0.8, 1, 1, 1, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8]); 
[Xd, Yd, Zd]= cylinder([0.3 ,0.21, 0.27,0.35,0.26,0.14, 0.09, 0.06, 0.04, 0]);
%front
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,5]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [5.5, 0, 0.5]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_left= [0.75294 0.75294 0.75294]; % reddish
myhandles(3)= surface(Xc, Yc, Zc, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);

% Left tail
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,5]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [-0.2, 0.75, 0.5]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_left= [0.75294 0.75294 0.75294]; % reddish
myhandles(3)= surface(Xt, Yt, Zt, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);

% Right tail
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1, 1,5]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [-0.2, -0.75, 0.5]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [0.75294 0.75294 0.75294]; % drab olive
myhandles(7)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

%middle rod upward
trf_try_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,4]);
trf_Ry= makehgtform('yrotate', -pi/3);
trf_T= makehgtform('translate', [0,0,0]);
% Interpret the order as BFT (left to right)
set(trf_try_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_try_left= [0.29803 0.54117 0.47843]; 
myhandles(4)= surface(Xz, Yz, Zz, 'Parent', trf_try_root, 'FaceColor', color_try_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_try_left, 'EdgeAlpha', transparency);

%middle rod downward
trf_try_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,4]);
trf_Ry= makehgtform('yrotate', pi/3);
trf_T= makehgtform('translate', [-3.6,0,-2]);
% Interpret the order as BFT (left to right)
set(trf_try_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_try_left= [0.29803 0.54117 0.47843]; 
myhandles(4)= surface(Xz, Yz, Zz, 'Parent', trf_try_root, 'FaceColor', color_try_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_try_left, 'EdgeAlpha', transparency);

%rod connector 
trf_try_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,4]);
trf_Ry= makehgtform('yrotate', 0);
trf_T= makehgtform('translate', [-3.6,0,-2]);
% Interpret the order as BFT (left to right)
set(trf_try_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_try_left= [0.7254 0.2210 0.4562];
myhandles(5)= surface(Xu, Yu, Zu, 'Parent', trf_try_root, 'FaceColor', color_try_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_try_left, 'EdgeAlpha', transparency);

%pinkup
trf_try_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,4]);
trf_Ry= makehgtform('xrotate', -pi/2);
trf_T= makehgtform('translate', [-3.6,-2,2]);
% Interpret the order as BFT (left to right)
set(trf_try_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_try_left= [0.7254 0.2210 0.4562];
myhandles(5)= surface(Xu, Yu, Zu, 'Parent', trf_try_root, 'FaceColor', color_try_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_try_left, 'EdgeAlpha', transparency);

%pinkdown
trf_try_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,4]);
trf_Ry= makehgtform('xrotate', pi/2);
trf_T= makehgtform('translate', [-3.6,2,-2]);
% Interpret the order as BFT (left to right)
set(trf_try_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_try_left= [0.7254 0.2210 0.4562]; 
myhandles(5)= surface(Xu, Yu, Zu, 'Parent', trf_try_root, 'FaceColor', color_try_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_try_left, 'EdgeAlpha', transparency);


%big cylinder
trf_try_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [2,2,2]);
trf_Ry= makehgtform('yrotate', 0);
trf_T= makehgtform('translate', [0,0,-0.5]);
% Interpret the order as BFT (left to right)
set(trf_try_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_try_left= [0.2 0.2 0.2]; 
myhandles(5)= surface(Xa, Ya, Za, 'Parent', trf_try_root, 'FaceColor', color_try_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_try_left, 'EdgeAlpha', transparency);

%solar supporter inside big cylinder
trf_try_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,4]);
trf_Ry= makehgtform('yrotate', 0);
trf_T= makehgtform('translate', [-1.5,0,-2]);
% Interpret the order as BFT (left to right)
set(trf_try_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_try_left= [0.47895 0.90234 0.5187]; 
myhandles(5)= surface(Xa, Ya, Za, 'Parent', trf_try_root, 'FaceColor', color_try_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_try_left, 'EdgeAlpha', transparency);


%upper solar pannel
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [2,5,6]);
trf_Ry= makehgtform('xrotate', -pi/2);
trf_T= makehgtform('translate', [-2, 0, 2]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_left= [0.69019 0.768627 0.768627]; 
myhandles(3)= surface(Xb, Yb, Zb, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);

%lower solar pannel
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [2,5,6]);
trf_Ry= makehgtform('xrotate', -pi/2);
trf_T= makehgtform('translate', [-2, 0,-2]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_left= [0.69019  0.768627  0.768627]; 
myhandles(3)= surface(Xb, Yb, Zb, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);

%flame1
trf_try_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,3]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [-5,-0.8,0.5]);
% Interpret the order as BFT (left to right)
set(trf_try_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_try_left= [1 0.64705 0];
myhandles(5)= surface(Xd, Yd, Zd, 'Parent', trf_try_root, 'FaceColor', color_try_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_try_left, 'EdgeAlpha', transparency);

%flame2
trf_try_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,3]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [-5,0.8,0.5]);
% Interpret the order as BFT (left to right)
set(trf_try_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_try_left= [1 0.64705 0]; 
myhandles(5)= surface(Xd, Yd, Zd, 'Parent', trf_try_root, 'FaceColor', color_try_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_try_left, 'EdgeAlpha', transparency);

end

