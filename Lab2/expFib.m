% Approximating Golden Ratio
% expFib Function
% Bill Xu

function y = expFib(x)
y = (1/sqrt(5))*(((1+sqrt(5))/2)^x - ((1-sqrt(5))/2)^x);
end
