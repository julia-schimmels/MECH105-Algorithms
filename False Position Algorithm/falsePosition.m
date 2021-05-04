function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
    if nargin < 3
        error('At least 3 input arguments required')
    end
    
    if nargin < 4 || isempty(es)
        es = 0.0001;
    end
    
    if nargin < 5 || isempty(maxit)
        maxit = 200;
    end
    
    if nargin > 6
        error('Only 6 arguments allowed.')
    
    iter = 0;
    xr = xl;
    ea = 100;
    fxl_old = 0;
    
    
    while ea > es 
        if iter > maxit
            break
        else
        
        fxl = xu - ((func(xu) * (xl-xu)) / (func(xl) - func(xu)));
        ea = (fxl - fxl_old)/fxl;
        
        if (func(fxl) * xu) < 0
            xu = fxl;
        elseif (func(fxl) * xl) < 0
            xl = fxl;
        end
        
        iter = iter + 1;
        fxl_old = fxl;
        
        end
        
    end
    root = fxl
    fx = func(fxl)
    ea = ea
    iter = iter
end
