function [ result ] = eligible( v, q )
%ELIGIBLE Summary of this function goes here
%   Detailed explanation goes here
result = true;
if (v + q) / 2 < 92 || v <= 88 || q <= 88
    result = false;
end

end

