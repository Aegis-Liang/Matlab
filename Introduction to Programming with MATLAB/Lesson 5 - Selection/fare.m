function [ total ] = fare( distance, age )
%FARE Summary of this function goes here
%   Detailed explanation goes here

if distance <= 1
    addtion = 0;
elseif distance <= 10
    addtion = round(distance-1) * 0.25;
else
    addtion = round(distance-10) * 0.1 + 2.25;
end
total = 2 + addtion;

if age <=18 || age >= 60
    total = 0.8 * total;
end
end

