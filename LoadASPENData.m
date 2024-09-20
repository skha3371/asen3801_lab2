function [t_vec, av_pos_inert, av_att, tar_pos_inert, tar_att] = LoadASPENData(filename)

% Goals:
% 1. assign columns from the original datafile to associated variables
% 2. perform unit conversions
% 3. convert the information from the original data file to position 
% vectors and 3-2-1 Euler angles in frame E using the ConvertASPENData 
% function

% Inputs:
% 1. filename of a .csv file with data from the motion capture system in 
% the ASPEN lab. The data file has no headers or extra columns (the data 
% provided from the TEST team must first be modified as described in the 
% background section).

% Outputs:
% 1. t_vec: 1 x n time vector in seconds where n = the total number of 
% frames from the dataset. The frame rate of the camera is 100 Hz so the 
% frame number can be converted to time in seconds.
% 2. av_pos_inert: 3 x n matrix of position vectors in meters for the 
% aerospace vehicle in Frame E.
% 3. av_att: 3 x n matrix of attitude vectors listing the 3-2-1 Euler 
% angles in radians for the aerospace vehicle relative to frame E
% 4. tar_pos_inert: 3 x n matrix of position vectors in meters for the 
% target in Frame E
% 5. tar_att: 3 x n matrix of attitude vectors listing the 3-2-1 Euler 
% angles in radians for the target relative to frame E

% Implementation hints:
% See the readmatrix.m file provided by Mathworks.
% This function must call the ConvertASPENData.m function to convert from 
% the data file s format to the final outputs.

end 