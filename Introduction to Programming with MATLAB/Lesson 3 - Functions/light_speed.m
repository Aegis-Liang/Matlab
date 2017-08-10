% function result = light_speed( row )
% %LIGHT_SPEED Summary of this function goes here
% %   Detailed explanation goes here
% minutes = row ./ 300000 / 60;
% miles = row ./ 1.609;
% result = [minutes; miles];
% end

function [t d] = light_speed(distanceinKM)
t = distanceinKM/300000/60;
d = distanceinKM / 1.609;
end
