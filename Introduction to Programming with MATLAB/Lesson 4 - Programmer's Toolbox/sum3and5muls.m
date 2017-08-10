function [ result ] = sum3and5muls( n )
%SUM3AND5MULS Summary of this function goes here
%   Detailed explanation goes here
Threes = 0:3:n;
Fives = 0:5:n;
Fifteens = 0:15:n;
result = sum(Threes) + sum(Fives) - sum(Fifteens);
end

