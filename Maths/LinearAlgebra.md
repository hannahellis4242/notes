# Linear Algebra

## Simultaneous Equations

Simultaneous equations occur whenever we want to work out where lines, planes or hyperplanes meet. For example in 2 dimensions it would be trying to work out the coordinates that two lines meet.
![two lines crossing](./img/3c8173f1-94f9-4ec8-babd-60f35d2df7c2.png)

``` math
\begin{align*}
x+2y&=19 \\
-x+3y&=1
\end{align*}
```

You can solve these by hand by typical algebra methods, but here we're interested in vectors and matrices.

## Matrix Multipled by a vector

We define that when we multiply a matrix $\mathbf{M}$ by a vector $a$ (where the matrix has as many rows as the vector has columns) we get a vector $b$ who's elements follow the following equation.

``` math
b_i = \sum_{j=0}^n \mathbf{M}_{ij} a_k
```

