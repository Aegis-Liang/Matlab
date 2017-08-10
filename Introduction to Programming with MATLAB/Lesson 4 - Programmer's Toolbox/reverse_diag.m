function [ M ] = reverse_diag( n )
%REVERSE_DIAG Summary of this function goes here
%   Detailed explanation goes here
M = zeros(n);
M(1:n-1:n^2) = 1;
M(1 ,1) = 0;
M(n ,n) = 0;
M(1 ,n) = 1;

end

