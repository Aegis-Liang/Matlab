function [ vout ] = exp_average( vin, bin )
%EXP_AVERAGE Summary of this function goes here
%   Detailed explanation goes here
persistent output;
persistent b;

if nargin == 1
    if isempty(b)
        b = 0.1;
        vout = vin;
        output = vin;
    else
        output = b*vin + (1-b)*output;
        vout = output;
    end 
else
    b = bin;
    vout = vin;
    output = vin;
end
end

