function amag = accelerate( F1, F2, m )
%ACCELERATE Summary of this function goes here
%   Detailed explanation goes here
F = F1 + F2;
a = F ./ m;
amag = norm(a);

end

