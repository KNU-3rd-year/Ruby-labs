# Lab 4

## Short video about Lab 4:
https://user-images.githubusercontent.com/39382424/193329470-d702e815-35db-4f5e-9d3f-9161a2a09f8c.mp4



## Part 1:
Write programs according to given conditions. Where
maybe use iterators. The data input to the array is arbitrary (for example,
you can use the rand method).
Two real arrays A(15) and B(15) are given. Build new
integer array D(15), containing first the sums of even integer parts
real numbers of array A with integer parts of the values of array B with the same
indices, and then the sum of the odd integer parts of the values from the array A with integer
parts of the values of the array B, which have the same indices.

### Solution:

[task 1.rb](task%201.rb)

---

## Part 2:
### Task:
Develop program codes that perform basic operations with
matrices and allow you to solve the following problems: Perform the addition of two matrices A and B.

Basic requirements for programs:
1. The dimensions of matrices A and B are constant and equal to n×n = 8 × 8.
2. All diagonal elements of matrix A are equal to 1.
3. All other elements of matrices A and B are determined by referring to the method
   rand(10) of the Numeric class.
4. The dimensions of the vectors X and Y are equal to n = 8. The elements of the vectors are calculated
   by calling the rand(10) method of the Numeric class.
4. To work with matrices, it is desirable to use:  
   – methods of Array classes;  
   – iterators and loops.
### Solution:

[task 2.rb](task%202.rb)

---

## Part 3:
### Task:
Develop a program that calculates the values of unknowns in
systems of linear algebraic equations (SLAE) by the Gaussian elimination method,
type:

![formula](media/task%203%20description%20part%201.png)

Basic requirements for the program:
1. Name of the program: Solving systems of linear algebraic equations
   Gaussian method.
2. The dimension of SLAE n×n changes: from 3 × 3 to 9 × 9. I.e. n=[3, 4, ...,9].
3. All diagonal elements of matrix A are equal to 2.
4. All other elements of the matrix of coefficients of the system of equations for
   unknown х are equal to k+2, where k is the number of the computer.
5. The vector of the right parts b is always constant and contains values (from top to bottom)
   [1, 2, 3, ..., 8, 9].

So, for example, with k=5 and the dimension of the matrix A is 5 x 5, the matrix of coefficients A and 
the vector of right b parts will look like this:

![formula](media/task%203%20description%20part%202.png)

![formula](media/task%203%20description%20part%203.png)
![formula](media/task%203%20description%20part%204.png)

### Solution:

[task 3.rb](task%203.rb)
