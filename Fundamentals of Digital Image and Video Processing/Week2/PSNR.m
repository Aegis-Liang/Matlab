function [ result ] = PSNR( MSE )
%PSNR Summary of this function goes here
%   Detailed explanation goes here

% in the question, it said
% For the 8-bit gray-scale images considered in this problem, MAXI=255
% but here it is not 8-bit gray-scale images, MAXI should be = 1
result = log10(1^2/MSE) * 10;

end

