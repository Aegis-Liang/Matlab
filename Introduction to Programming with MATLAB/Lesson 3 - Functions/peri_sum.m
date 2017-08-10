function result_sum=peri_sum(M)
result_sum = sum(sum(M)) - sum(sum(M(2:end-1, 2:end-1)));
end

% B = A(2:end-1,2:end-1);
% s = sum(A(:)) - sum(B(:));