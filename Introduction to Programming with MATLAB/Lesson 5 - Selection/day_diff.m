function [ dd ] = day_diff( month1, day1, month2, day2)
%DAY_DIFF Summary of this function goes here
%   Detailed explanation goes here
daysOfMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
if ~isscalar(month1) || ~isscalar(day1) || ~isscalar(month2) || ~isscalar(day2)
    dd = -1;
    return    
end
if month1 < 1 || month1 > 12 || month2 < 1 || month2 > 12
    dd = -1;
    return
end
if floor(month1) ~= month1 || floor(day1) ~= day1 || floor(month2) ~= month2 || floor(day2) ~= day2 
    dd = -1;
    return
end
if day1 > daysOfMonth(month1)|| day1 <= 0 || day2 > daysOfMonth(month2) || day2 <= 0
    dd = -1;
    return
end



days1 =  sum(daysOfMonth(1:month1-1)) + day1;
days2 =  sum(daysOfMonth(1:month2-1)) + day2;
dd = days2 - days1;


dd = abs(dd);


end

