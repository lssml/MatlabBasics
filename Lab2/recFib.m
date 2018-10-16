% Approximating Golden Ratio
% recFib Function
% Bill Xu

function y = recFib(x)
fprintf("n         f_n           r_n\n------------------------------------\n");

A = zeros(1,x+1);
A(1) = 1;
A(2) = 1;
for i = 2:x
    fprintf('%d         %d           %.4f\n',i, A(i), A(i)/A(i-1));
    A(i+1) = A(i)+A(i-1);
end
y = A(x);

end

