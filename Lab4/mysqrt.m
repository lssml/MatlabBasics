%Squaring a Rectangle
%mysqrt.m
%Bill Xu

%mysqrt(2)----> 1.4142
%mysqrt(23456)----> 153.1535

function x = mysqrt(a)
x = a;
i = 0;
while comp_err(x,a) > 1e-14
    i = i+1;
    x = (x + (a/x))/2;
    print_values();
end
    % prints iteration info
    function print_values()
        fprintf('%2d   %21.15f   %.2e\n', i, x, comp_err(x,a));
    end
end


% compute the relative error
function e = comp_err(s,b)
e = abs(s*s-b) / b;
end