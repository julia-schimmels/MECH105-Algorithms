# False Position Algorithm

## What does it do?
The false position algorithm is a root finding method that determines the approximate root of a given function. It is a bracketing method that is very similar to the bisection method.

### Input
- *func* - the function being evaluated
- *xl* - the lower x value estimation
- *xu* - the upper x value estimation
- *es* - the desired relative error
- *maxit* - the maximum numbers of iterations used to find the roots
- *varargin* - any additional parameters used by the function

### Output
- *root* - the estimated root value
- *fx* - the function evaluated at the root location
- *ea* - the approximate percent relative error
- *iter* - the number of iterations performed

### Limitations
There are some cases where the false position method is not the most efficient one to use to find the root of a function. Functions with significant curvature will have poor convergence because of the one sided-ness of the method, as one point tends to stay fixed.
