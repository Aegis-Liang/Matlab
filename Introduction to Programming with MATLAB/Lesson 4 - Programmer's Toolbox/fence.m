function [ segments, holes ] = fence( lng, seg )
%FENCE Summary of this function goes here
%   Detailed explanation goes here
segments = ceil(lng/seg);
holes = segments + 1;
end

