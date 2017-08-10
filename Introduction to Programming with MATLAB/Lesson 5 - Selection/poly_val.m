function [ p ] = poly_val( c0, c, x )
%POLY_VAL Summary of this function goes here
%   Detailed explanation goes here
if isempty(c)
p = c0;
else
    s = 1:1:length(c);
    if size(c, 1) == 1
        p = sum(c.*(x.^s)) + c0;
    else
        p = sum((x.^s)*c) + c0;
    end
end
end

