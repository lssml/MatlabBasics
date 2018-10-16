%Squaring a rectangle
%Use fzero
%Bill Xu

%useFzero(2) ----> 1.4142
%useFzero(23456) ---> 153.1535


function r = useFzero(a)

fun = @f;
option = optimset('Display','iter')
r = fzero(fun, 100, option);

function y = f(x)
    y = x^2 - a;
end

end