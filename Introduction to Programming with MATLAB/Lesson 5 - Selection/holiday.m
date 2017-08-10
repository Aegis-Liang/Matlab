function [ isholiday ] = holiday( month, day )
%HOLIDAY Summary of this function goes here
%   Detailed explanation goes here
isholiday = false;
if (month == 1 && day == 1) || (month == 7 && day == 4) || (month == 12 && day == 25) || (month == 12 && day == 31)
    isholiday = true;
end

end

