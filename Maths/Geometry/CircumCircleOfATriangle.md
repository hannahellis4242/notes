# Circumcircle of a triangle

The circumcircle of a triangle is a circle of minimum radius that fully contains the triangle.

Since you can construct a circle that goes through any three points, the circumcircle will actually touch the three corners of the triangle.

This means constructing the circumcircle is the same as constructing a circle through three points.

## Equation of Circle

The equation for a circle centred at (a,b) with radius c is given by
``` math
(x-a)^2+(y-b)^2=c^2
```

This can be expanded and rearranged to give
``` math
\begin{align*}
(x-a)^2+(y-b)^2&=c^2 \\
x^2 -2ax-a^2+y^2-2by+b^2 &= c^2 \\
-2ax-2by+a^2+b^2-c^2 &= -x^2 -y^2 \\
2ax+2by+c^2-a^2-b^2 &= +x^2 +y^2 \\
2ax+2by+k &= +x^2 +y^2 \\
\end{align*}
```
Where $k=c^2-a^2-b^2$

With our three points we get the system of equations

``` math
\begin{align*}
2ax_0+2by_0+k &= +x_0^2 +y_0^2 \\
2ax_1+2by_1+k &= +x_1^2 +y_1^2 \\
2ax_2+2by_2+k &= +x_2^2 +y_2^2
\end{align*}
```
which can be written as a matrix equation
``` math
\begin{bmatrix}
2x_0 & 2y_0 & 1 \\
2x_1 & 2y_1 & 1 \\
2x_2 & 2y_2 & 1
\end{bmatrix}\begin{pmatrix}
a \\
b \\
k
\end{pmatrix} =
\begin{pmatrix}
x_0^2 + y_0^2 \\
x_1^2 + y_1^2\\
x_2^2 + y_2^2
\end{pmatrix}
```

### Solving matrix equation

We can use Cramer's rule with the fact the determinant of a 3 by 3 matrix is

``` math
\det \begin{bmatrix}
a & b & c \\
d & e & f \\
g & h & i
\end{bmatrix} = a \det \begin{bmatrix}
e & f \\
 h & i
\end{bmatrix} - b \det \begin{bmatrix}
d  & f \\
g & i
\end{bmatrix} + c \det \begin{bmatrix}
d & e \\
g & h
\end{bmatrix} = aei - afh - bdi +bfg + cdh - ceg
```

and that Cramer's rule for the matrix equation
``` math
\begin{bmatrix}
a & b & c \\
d & e & f \\
g & h & i
\end{bmatrix}\begin{pmatrix}
x \\
y \\
z
\end{pmatrix} =
\begin{pmatrix}
u \\
v \\
w
\end{pmatrix}
```
is

``` math
x = \frac{\det \begin{bmatrix}
u & b & c \\
v & e & f \\
w & h & i
\end{bmatrix}}{\det \begin{bmatrix}
a & b & c \\
d & e & f \\
g & h & i
\end{bmatrix}}
```

``` math
y = \frac{\det \begin{bmatrix}
a & u & c \\
d & v & f \\
g & w & i
\end{bmatrix}}{\det \begin{bmatrix}
a & b & c \\
d & e & f \\
g & h & i
\end{bmatrix}}
```

``` math
z = \frac{\det \begin{bmatrix}
a & b & u \\
d & e & v \\
g & h & w
\end{bmatrix}}{\det \begin{bmatrix}
a & b & c \\
d & e & f \\
g & h & i
\end{bmatrix}}
```

#### Solutions

Since it's common, we'll start with
``` math
\begin{align*}
\det \begin{bmatrix}
2x_0 & 2y_0 & 1 \\
2x_1 & 2y_1 & 1 \\
2x_2 & 2y_2 & 1
\end{bmatrix} &= 2x_0 2y_1 - 2x_0 2y_2 - 2y_0 2x_1 +2y_0 2x_2 + 2x_1 2y_2 - 2y_1 2x_2 \\
&= 4 ( x_0 y_1 - x_0 y_2 + x_1 y_2 - x_1 y_0+ x_2 y_0  - x_2 y_1  )\\
&= 4 ( x_0 (y_1 - y_2 ) + x_1 (y_2 - y_0)+ x_2 (y_0  -  y_1 ) )\\
\end{align*}
```

##### solution for $a$

``` math
\begin{align*}
\det \begin{bmatrix}
x_0^2 + y_0^2 & 2y_0 & 1 \\
x_1^2 + y_1^2 & 2y_1 & 1 \\
x_2^2 + y_2^2 & 2y_2 & 1
\end{bmatrix} &= (x_0^2 + y_0^2)2y_1 - (x_0^2 + y_0^2)2y_2 - 2y_0(x_1^2 + y_1^2) +2y_0(x_2^2 + y_2^2 ) + (x_1^2 + y_1^2)2y_2 - 2y_1(x_2^2 + y_2^2 )\\
&= 2(y_1(x_0^2 + y_0^2)- y_2(x_0^2 + y_0^2) - y_0(x_1^2 + y_1^2) +y_0(x_2^2 + y_2^2 ) + y_2(x_1^2 + y_1^2) - y_1(x_2^2 + y_2^2 ))\\
&= 2((y_1- y_2) (x_0^2 + y_0^2) + (y_2-y_0)(x_1^2 + y_1^2)  +(y_0-y_1)(x_2^2 + y_2^2 ) )
\end{align*}
```
so
``` math
\begin{align*}
a &= \frac{2((y_1- y_2) (x_0^2 + y_0^2) + (y_2-y_0)(x_1^2 + y_1^2)  +(y_0-y_1)(x_2^2 + y_2^2 ) )}{4 ( x_0 (y_1 - y_2 ) + x_1 (y_2 - y_0)+ x_2 (y_0  -  y_1 ) )}\\
&=\frac{(y_1- y_2) (x_0^2 + y_0^2) + (y_2-y_0)(x_1^2 + y_1^2)  +(y_0-y_1)(x_2^2 + y_2^2 ) }{2 ( x_0 (y_1 - y_2 ) + x_1 (y_2 - y_0)+ x_2 (y_0  -  y_1 ) )} \\
&=\frac{1}{2}\frac{(y_1- y_2) (x_0^2 + y_0^2) + (y_2-y_0)(x_1^2 + y_1^2)  +(y_0-y_1)(x_2^2 + y_2^2 ) }{ x_0 (y_1 - y_2 ) + x_1 (y_2 - y_0)+ x_2 (y_0  -  y_1 )}
\end{align*}
```

##### solution for $b$

``` math
\begin{align*}
\det \begin{bmatrix}
2x_0 & x_0^2 + y_0^2 & 1 \\
2x_1 & x_1^2 + y_1^2 & 1 \\
2x_2 & x_2^2 + y_2^2 & 1
\end{bmatrix} &= 2x_0 (x_1^2 + y_1^2) - 2x_0 (x_2^2 + y_2^2) - 2x_1 (x_0^2 + y_0^2) +2x_2 (x_0^2 + y_0^2) + 2x_1 (x_2^2 + y_2^2) - 2x_2 (x_1^2 + y_1^2)\\
&= 2((x_0-x_2) (x_1^2 + y_1^2) + (x_1-x_0) (x_2^2 + y_2^2)  + (x_2-x_1) (x_0^2 + y_0^2) )
\end{align*}
```
so
``` math
\begin{align*}
b &= \frac{2((x_0-x_2) (x_1^2 + y_1^2) + (x_1-x_0) (x_2^2 + y_2^2)  + (x_2-x_1) (x_0^2 + y_0^2) )}{4 ( x_0 (y_1 - y_2 ) + x_1 (y_2 - y_0)+ x_2 (y_0  -  y_1 ) )}\\
&= \frac{1}{2}\frac{(x_2-x_1) (x_0^2 + y_0^2)+(x_0-x_2) (x_1^2 + y_1^2) + (x_1-x_0) (x_2^2 + y_2^2) }{x_0 (y_1 - y_2 ) + x_1 (y_2 - y_0)+ x_2 (y_0  -  y_1 ) }
\end{align*}
```
