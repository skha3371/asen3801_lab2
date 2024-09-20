function DCM = RotationMatrix321(attitude321)

% Goal: use the Euler angles for the 3-2-1 rotation sequence to calculate 
% the associated DCM.

% Inputs:
% attitude321: 3 x 1 vector with the 3-2-1 Euler angles in the form 
% attitude321 = [alpha, beta, gamma]' (In ASEN 3728 notation, this would 
% be equivalent to [phi, theta, psi]').

% Outputs:
% DCM: the rotation matrix calculated from the Euler angles.

alpha = attitude321(1);
beta = attitude321(2);
gamma = attitude321(3);

R1 = [1 0 0 ; 0 cos(alpha) sin(alpha) ; 0 -sin(alpha) cos(alpha)];
R2 = [cos(beta) 0 -sin(beta) ; 0 1 0 ; sin(beta) 0 cos(beta)];
R3 = [cos(gamma) sin(gamma) 0 ; -sin(gamma) cos(gamma) 0 ; 0 0 1];

DCM = R1*R2*R3;

end 