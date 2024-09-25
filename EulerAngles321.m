function attitude321 = EulerAngles321(DCM)

% Goal: use the DCM to extract the 3-2-1 Euler angles

% Inputs:
% DCM: a rotation matrix

% Outputs:
% attitude321: 3 x 1 vector with the 3-2-1 Euler angles in the form 
% attitude321 = [alpha, beta, gamma]' (In ASEN 3728 notation, this would be
% equivalent to [phi, theta, psi]'.

R11 = DCM(1,1);
R12 = DCM(1,2);
R13 = DCM(1,3);
R23 = DCM(2,3);
R33 = DCM(3,3);

alpha = atan(R23/R33);
beta = -asin(R13);
gamma = atan(R12/R11);

attitude321 = [alpha, beta, gamma];

end