function [ orms ] = odd_rms( nn )
%ODD_RMS Summary of this function goes here
%   Detailed explanation goes here
orms = sqrt(mean((1:2:2*nn-1).^2));

end

