# LU Factorization Algorithm

## What does it do?

The LU factorization algorithm determines the LU factorization of a square matrix with partial pivoting. It is essentially performing linear algebra and provides you with the lower triangular matrix, upper triangular matrix, and pivot matrix.

### Input
- *A* - a coefficient matrix

### Output
- *L* - lower triangular matrix
- *U* - upper triangular matrix
- *P* - pivot matrix

### Limitations
- the algorithm only accepts square matrices
- it does not provide you with the solution to the system but only with the P, L, and U matrices that result from LU factorization.

### General Information
LU Factorization is essentially the matrix form of Gauss elimination. It is a numerical method for linear algebra and finds the lower-upper (LU) decomposition (or factorization) of a matrix, which can in some cases also include a permutation (or pivot) matrix as well. Square systems of linear equations are often solved using this method.
