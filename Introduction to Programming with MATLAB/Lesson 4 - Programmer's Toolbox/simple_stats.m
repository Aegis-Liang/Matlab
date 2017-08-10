function [ S ] = simple_stats( M )
%SIMPLE_STATS Summary of this function goes here
%   Detailed explanation goes here
% S = [mean(M, 2), median(M, 2), max(M, 2), min(M, 2)];
S = [mean(M, 2), median(M, 2), min(M, [], 2), max(M, [], 2)];

end

