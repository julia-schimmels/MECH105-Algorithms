# Simpson's 1/3 Algorithm

## What does it do?
This algorithm uses the Simpson's 1/3 Rule to integrate experimental data from a given vector. It checks data for an odd or even number of intervals and adds the trapezoidal rule to finish the integration accordingly. 

### Input
- *x* - the independent variable of an equally spaced vector
- *y* - the vector of function values with respect to x

### Input
- *I* - the calculated numerical integral value

### Limitations
- the inputs must be the same length
- the x input must be equally spaced
- the data may use the trapezoidal rule along with the Simpson's 1/3 Rule to solve the integral

### General Information
Simpson's 1/3 rule is a numerical integration method which provides an approximation for definite integrals. The rule is applied to a number (n) of equal subdivisions between an upper and lower bound and applies a formula that finds the approximate integral under a curve. The Simpson's 1/3 rule is an example of a closed Newton-Cotes formula.
