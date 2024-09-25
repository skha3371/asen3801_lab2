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
legend('Aerospace Vehicle','Target','Location','northeastoutside')

subplot(3,1,2)
plot(t_vec,av_pos_inert(2,:),'b')
hold on
grid on
plot(t_vec,tar_pos_inert(2,:),'r')
hold off
xlabel('Time (s)')
ylabel('Y Position (m)')
legend('Aerospace Vehicle','Target','Location','northeastoutside')

subplot(3,1,3)
plot(t_vec,av_pos_inert(3,:),'b')
hold on
grid on
plot(t_vec,tar_pos_inert(3,:),'r')
hold off
xlabel('Time (s)')
ylabel('Z Position (m)')
legend('Aerospace Vehicle','Target','Location','northeastoutside')

figure
sgtitle('3-2-1 Euler Angles vs Time for Both Objects in the E-Frame')

subplot(3,1,1)
plot(t_vec,av_att(1,:),'b')
hold on
grid on
plot(t_vec,tar_att(1,:),'r')
hold off
xlabel('Time (s)')
ylabel('Alpha (rad)')
legend('Aerospace Vehicle','Target','Location','northeastoutside')

subplot(3,1,2)
plot(t_vec,av_att(2,:),'b')
hold on
grid on
plot(t_vec,tar_att(2,:),'r')
hold off
xlabel('Time (s)')
ylabel('Beta (rad)')
legend('Aerospace Vehicle','Target','Location','northeastoutside')

subplot(3,1,3)
plot(t_vec,av_att(3,:),'b')
hold on
grid on
plot(t_vec,tar_att(3,:),'r')
hold off
xlabel('Time (s)')
ylabel('Gamma (rad)')
legend('Aerospace Vehicle','Target','Location','northeastoutside')

%% Question 5

for i = 1:length(av_att)
    av_DCM = RotationMatrix321(av_att(:,i));
    av_att_313(:,i) = EulerAngles313(av_DCM);
end

for i = 1:length(tar_att)
    tar_DCM = RotationMatrix321(tar_att(:,i));
    tar_att_313(:,i) = EulerAngles313(tar_DCM);
end

figure
sgtitle('3-1-3 Euler Angles vs Time for Both Objects in the E-Frame')

subplot(3,1,1)
plot(t_vec,av_att_313(1,:),'b')
hold on
grid on
plot(t_vec,tar_att_313(1,:),'r')
hold off
xlabel('Time (s)')
ylabel('Alpha (rad)')
legend('Aerospace Vehicle','Target','Location','northeastoutside')

subplot(3,1,2)
plot(t_vec,av_att_313(2,:),'b')
hold on
grid on
plot(t_vec,tar_att_313(2,:),'r')
hold off
xlabel('Time (s)')
ylabel('Beta (rad)')
legend('Aerospace Vehicle','Target','Location','northeastoutside')

subplot(3,1,3)
plot(t_vec,av_att_313(3,:),'b')
hold on
grid on
plot(t_vec,tar_att_313(3,:),'r')
hold off
xlabel('Time (s)')
ylabel('Gamma (rad)')
legend('Aerospace Vehicle','Target','Location','northeastoutside')

%% Question 6 

tar_pos_rel_E = tar_pos_inert - av_pos_inert;

figure
sgtitle('Position vs Time for the Target Relative to the Aerospace Vehicle in the E-Frame')

subplot(3,1,1)
grid on
plot(t_vec,tar_pos_rel_E(1,:),'r')
xlabel('Time (s)')
ylabel('X Position (m)')

subplot(3,1,2)
grid on
plot(t_vec,tar_pos_rel_E(2,:),'r')
xlabel('Time (s)')
ylabel('Y Position (m)')

subplot(3,1,3)
grid on
plot(t_vec,tar_pos_rel_E(3,:),'r')
xlabel('Time (s)')
ylabel('Z Position (m)')

%% Question 7

for i = 1:length(av_att)
    av_DCM = RotationMatrix321(av_att(:,i));
    tar_pos_rel_B(:,i) = av_DCM*tar_pos_rel_E(:,i);
end

figure
sgtitle('Position vs Time for the Target Relative to the Aerospace Vehicle in the B-Frame')

subplot(3,1,1)
grid on
plot(t_vec,tar_pos_rel_B(1,:),'r')
xlabel('Time (s)')
ylabel('X Position (m)')

subplot(3,1,2)
grid on
plot(t_vec,tar_pos_rel_B(2,:),'r')
xlabel('Time (s)')
ylabel('Y Position (m)')

subplot(3,1,3)
grid on
plot(t_vec,tar_pos_rel_B(3,:),'r')
xlabel('Time (s)')
ylabel('Z Position (m)')

%% Question 8

for i = 1:length(av_att)
    av_DCM = RotationMatrix321(av_att(:,i));
    tar_DCM = RotationMatrix321(tar_att(:,i));

    DCM_B_to_A = av_DCM\tar_DCM;

    B_to_A_att_321(:,i) = EulerAngles321(DCM_B_to_A);
end

figure
sgtitle('3-2-1 Euler Angles vs Time for B to A DCM')

subplot(3,1,1)
plot(t_vec,B_to_A_att_321(1,:),'b')
grid on
xlabel('Time (s)')
ylabel('Alpha (rad)')

subplot(3,1,2)
plot(t_vec,B_to_A_att_321(2,:),'b')
grid on
xlabel('Time (s)')
ylabel('Beta (rad)')

subplot(3,1,3)
plot(t_vec,B_to_A_att_321(3,:),'b')
grid on
xlabel('Time (s)')
ylabel('Gamma (rad)')









