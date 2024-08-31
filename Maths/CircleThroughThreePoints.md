# Circle Through Three Points

![circle](./img/2b6b4095-290a-4547-81b1-6fce09861b17.svg)

```math
\begin{align*}
\left( x-c_x\right)^2+\left( y-c_y\right)^2 &= r^2 \
 x^2-2c_x x + c_x^2 + y^2 -2c_y y + c_y^2 &= r^2 \
-2c_x x - 2c_y y + c_x^2 + c_y^2 -r^2 &= -\left(x^2+y^2\right) \
A x + B y + C = -\left(x^2+y^2\right)
\end{align*}
```
Where $A=-2c_x$, $B=-2c_y$ and $C=c_x^2 + c_y^2 -r^2$.

## Circle parameters from equation parameters

### $c_x$
### $c_y$
### $c_r$
### Summary
```math
\begin{align*}
c_x&=-\frac{A}{2}\
c_y&=-\frac{B}{2}\
r&=\frac{1}{2}\sqrt{A^2+B^2-4C}
\end{align*}
```
## Circle through three points

If we have three points $(x_1,y_1)$, $(x_2,y_2)$ and $(x_3,y_3)$. We can obtain a system of equations like so

```math
\begin{bmatrix}
x_1 & y_1 & 1 \\
x_2 & y_2 & 1 \\
x_3 & y_3 & 1
\end{bmatrix}
\begin{pmatrix}
A \\
B\\
C
\end{pmatrix}=-\begin{pmatrix}
x_1^2 +y_1^2\\
x_2^2 +y_2^2 \\
x_3^2 +y_3^2
\end{pmatrix}
```
We can solve this. Here we will invert the matrix to get

``` math
\frac{1}{\left( x_2-x_1\right) y_3+\left( x_1-x_3\right)  y_2+\left( x_3-x_2\right) y_1}
\begin{pmatrix}{y_2}-{y_3} & {y_3}-{y_1} & {y_1}-{y_2}\\
{x_3}-{x_2} & {x_1}-{x_3} & {x_2}-{x_1}\\
{x_2} {y_3}-{x_3} {y_2} & {x_3} {y_1}-{x_1} {y_3} & {x_1} {y_2}-{x_2} {y_1}\end{pmatrix}
```

