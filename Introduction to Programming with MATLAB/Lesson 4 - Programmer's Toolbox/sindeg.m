function [ sins, avgs ] = sindeg( deg )
%SINDEG Summary of this function goes here
%   Detailed explanation goes here
sins = sin(deg / 180 * pi);
avgs = mean(sins(:));

end

