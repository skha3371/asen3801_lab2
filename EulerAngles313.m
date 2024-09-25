function attitude313 = EulerAngles313(DCM)

% Goal: use the DCM to extract the 3-1-3 Euler angles

% Inputs:
% DCM: a rotation matrix

% Outputs:
% attitude313: 3 x 1 vector with the 3-1-3 Euler angles in the form 
% attitude313 = [alpha, beta, gamma]'

gamma = atan(DCM(3,1) / -DCM(3,2));
beta = acos(DCM(3,3));
alpha = atan(DCM(1,3) / DCM(2,3));

attitude313 = [gamma , beta , alpha];
end
