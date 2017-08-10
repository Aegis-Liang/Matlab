function [ vout1, vout2, vout3 ] = sort3( vin )
%SORT3 Summary of this function goes here
%   Detailed explanation goes here
if vin(1) <= vin(2)
    if vin(2) <= vin(3)
        vout1 = vin(1);
        vout2 = vin(2);
        vout3 = vin(3);
    else
        vout3 = vin(2);
        if vin(1) <= vin(3)
            vout1 = vin(1);
            vout2 = vin(3);
        else
            vout1 = vin(3);
            vout2 = vin(1);
        end
    end
else
    if vin(1) <= vin(3)
        vout1 = vin(2);
        vout2 = vin(1);
        vout3 = vin(3);
    else
        vout3 = vin(1);
        if vin(2) <= vin(3)
            vout1 = vin(2);
            vout2 = vin(3);
        else
            vout1 = vin(3);
            vout2 = vin(2);
        end
    end 
end
end

