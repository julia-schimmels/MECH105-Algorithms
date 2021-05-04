# Simpson's 1/3 Algorithm

## What does it do?
This algorithm uses the simpson's 1/3 rule to integrate experimental data from a given vector. It checks data for an odd or even number of intervals and adds the trapezoidal rule to finish the integration accordingly. 

### Input
- *x* - the independent variable of an equally spaced vector
- *y* - the vector of function values with respect to x

### Input
- *I* - the calculated numerical integral value

### Limitations
- the inputs must be the same length
- the x input must be equally spaced
- the data may use the trapezoidal rule along with the simpson's 1/3 rule to solve the integral
