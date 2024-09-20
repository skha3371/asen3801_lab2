% Skylar Harris, Leya Shaw, Dane Shedd, Bryce Smith
% ASEN 3801
% Harris_Shaw_Shedd_Smith_Lab2
% Created: 9/13/24

clc;clear;close all;

[t_vec,av_pos_inert,av_att,tar_pos_inert,tar_att] = LoadASPENData("Section003_GroupA_Data");

%% Question 3

figure
plot3(av_pos_inert(1,:),-av_pos_inert(2,:),-av_pos_inert(3,:),'b')
hold on
grid on
plot3(tar_pos_inert(1,:),-tar_pos_inert(2,:),-tar_pos_inert(3,:),'r--')
hold off
title('3D Position of Both Targets in the N-Frame')
xlabel('X position (m)')
ylabel('Y position (m)')
zlabel('Z position (m)')
legend('Path of the Aerospace Vehicle','Path of the Target')

%% Question 4

figure
sgtitle('Position vs Time for Both Objects in the E-Frame')

subplot(3,1,1)
plot(t_vec,av_pos_inert(1,:),'b')
hold on
grid on
plot(t_vec,tar_pos_inert(1,:),'r')
hold off
xlabel('Time (s)')
ylabel('X Position (m)')

subplot(3,1,2)
plot(t_vec,av_pos_inert(2,:),'b')
hold on
grid on
plot(t_vec,tar_pos_inert(2,:),'r')
hold off
xlabel('Time (s)')
ylabel('Y Position (m)')

subplot(3,1,3)
plot(t_vec,av_pos_inert(3,:),'b')
hold on
grid on
plot(t_vec,tar_pos_inert(3,:),'r')
hold off
xlabel('Time (s)')
ylabel('Z Position (m)')

figure
sgtitle('Euler Angles vs Time for Both Objects in the E-Frame')

subplot(3,1,1)
plot(t_vec,av_att(1,:),'b')
hold on
grid on
plot(t_vec,tar_att(1,:),'r')
hold off
xlabel('Time (s)')
ylabel('Alpha (rad)')

subplot(3,1,2)
plot(t_vec,av_att(2,:),'b')
hold on
grid on
plot(t_vec,tar_att(2,:),'r')
hold off
xlabel('Time (s)')
ylabel('Beta (rad)')

subplot(3,1,3)
plot(t_vec,av_att(3,:),'b')
hold on
grid on
plot(t_vec,tar_att(3,:),'r')
hold off
xlabel('Time (s)')
ylabel('Gamma (rad)')

%% Question 5

% take angles from the data (321) and make a 321 dcm. then take the 321 dcm
% and get 313 angles from the 313 angle function.


%% Question 6 

%% Question 7

%% Question 8