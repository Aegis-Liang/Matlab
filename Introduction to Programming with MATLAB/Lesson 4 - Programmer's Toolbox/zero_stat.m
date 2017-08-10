function [ percentage ] = zero_stat( M )
%ZERO_STAT Summary of this function goes here
%   Detailed explanation goes here
percentage = 100 - (sum(M(:))  / (size(M, 1) * size(M, 2))) * 100;

end

