function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary
    
    sum_num = base10;
    R = 0;
    x = 1;
    new_base = 2;
    
    base2array = 0;
    
    while sum_num > 0
        R = mod(sum_num,new_base);
        sum_num = floor(sum_num./new_base);
        base2array(x) = R;
        x = x + 1;
    end
    
    base2 = flip(base2array)
end
