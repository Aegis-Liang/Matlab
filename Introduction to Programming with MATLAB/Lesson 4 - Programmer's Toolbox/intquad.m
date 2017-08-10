function Q = intquad( m, n )
%INTQUAD Summary of this function goes here
%   Detailed explanation goes here
M_Zero = zeros(m, n);
M_One = ones(m, n);
M_Two = 2 * ones(m, n);
M_Three = 3 * ones(m, n);
Q = [M_Zero, M_One; M_Two, M_Three];

end

