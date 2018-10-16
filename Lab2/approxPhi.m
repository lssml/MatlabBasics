% Approximating Golden Ratio
% approxPhi Function
% Bill Xu

function approxPhi
fprintf(' Approximating the golden ratio...\n')
i = 3;

while abs(expFib(i)/expFib(i-1) - expFib(i-1)/expFib(i-2)) > 1e-15
    i = i+1;
end

fprintf('        ...required the %dth Fibonacci number\n\n',i);
fprintf('Golden ratio is approximately %.10f\n',expFib(i)/expFib(i-1));
fprintf('Last change in approximation was %e\n',expFib(i)/expFib(i-1) - expFib(i-1)/expFib(i-2));
fprintf('Computed using ratio of %d to %d\n', int32(expFib(i)),int32(expFib(i-1)));

end