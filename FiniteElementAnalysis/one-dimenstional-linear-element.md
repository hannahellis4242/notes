# One Dimensional Linear Element

![nth element](./one-dimensional-linear-element.svg)

## Shape function

The general form of the shape function is
``` math
f(x,a,b) = \left\{
\begin{array}{ll}
      \frac{b-x}{b-a} & a\leq x\leq b \\
      0 & otherwise
\end{array} 
\right.
```

This is chosen so that $f(a,a,b)=1$ and $f(b,a,b)=0$.

Taking the derivative
``` math
\frac{df(x,a,b)}{dx} = \left\{
\begin{array}{ll}
      \frac{-1}{b-a} & a\leq x\leq b \\
      0 & otherwise
\end{array} 
\right.
```

### Products

within the limits $a\leq x\leq b$

``` math
\begin{align*}
f(x,a,b)f(x,a,b)&=\frac{b-x}{b-a}\frac{b-x}{b-a} \\
&=\frac{(b-x)^2}{(b-a)^2}\\
&=\frac{b^2-2bx+x^2}{b^2-2ab+a^2}\\
\end{align*}
```

``` math
\begin{align*}
f(x,a,b)f(x,b,a)&=\frac{b-x}{b-a}\frac{a-x}{a-b} \\
&=-\frac{(b-x)(a-x)}{(b-a)^2} \\
&=-\frac{ab -bx -ax +x^2}{b^2-2ab+a^2}\\
&=-\frac{ab -(a+b)x +x^2}{b^2-2ab+a^2}
\end{align*}
```

``` math
\begin{align*}
f(x,b,a)f(x,a,b)&=\frac{a-x}{a-b}\frac{b-x}{b-a} \\
&=\frac{b-x}{b-a}\frac{a-x}{a-b}\\
&=f(x,a,b)f(x,b,a)
\end{align*}
```

``` math
\begin{align*}
f(x,b,a)f(x,b,a)&=\frac{a-x}{a-b}\frac{a-x}{a-b} \\
&=\frac{(a-x)^2}{(a-b)^2}\\
&=\frac{a^2-2ax+x^2}{(b-a)^2}\\
\end{align*}
```

| | $f(x,a,b)$ | $f(x,b,a)$ | 
| - | - | - |
| $f(x,a,b)$ | $\frac{b^2-2bx+x^2}{(b-a)^2}$ | $-\frac{ab -(a+b)x +x^2}{(b-a)^2}$|
| $f(x,b,a)$ | $-\frac{ab -(a+b)x +x^2}{(b-a)^2}$ | $\frac{a^2-2ax+x^2}{(b-a)^2}$|

#### Integrals

``` math
\begin{align*}
\int_{a}^{b} \frac{b^2-2bx+x^2}{(b-a)^2} dx &= \frac{1}{(b-a)^2}\int_{a}^{b}  b^2-2bx+x^2 dx \\
&= \frac{1}{(b-a)^2}\left[ b^2 x -bx^2+\frac{x^3}{3} \right]_{a}^{b} \\
&= \frac{1}{(b-a)^2}\left( b^2 b -b b^2+\frac{b^3}{3} - b^2 a + ba^2-\frac{a^3}{3} \right)\\
&= \frac{1}{(b-a)^2}\left( \frac{b^3}{3} - \frac{3 b^2 a}{3} + \frac{3ba^2}{3} -\frac{a^3}{3}\right)\\
&= \frac{b^3-3b^2 a+3ba^2-a^3}{3(b-a)^2}\\
&= \frac{(b-a)^3}{3(b-a)^2}\\
&= \frac{b-a}{3}
\end{align*}
```
Where we have used the fact $(b-a)^3=b^3-3b^2 a+3ba^2-a^3$ by binomial expansion

``` math
\begin{align*}
\int_{a}^{b} \frac{a^2-2ax+x^2}{(b-a)^2} dx &= \frac{1}{(b-a)^2}\int_{a}^{b} a^2-2ax+x^2 dx \\
 &=\frac{1}{(b-a)^2}\left[a^2x-ax^2+\frac{x^3}{3} \right]_{a}^{b}\\
&=\frac{1}{(b-a)^2}\left( a^2b-ab^2+\frac{b^3}{3} - a^2a+aa^2-\frac{a^3}{3} \right)\\
&=\frac{1}{(b-a)^2}\left( a^2b-ab^2+\frac{b^3}{3} - a^3+a^3-\frac{a^3}{3} \right)\\
&=\frac{b^3 +3a^2b-3ab^2-a^3}{3(b-a)^2}\\
&=\frac{(b-a)^3}{3(b-a)^2}\\
&=\frac{b-a}{3}
\end{align*}
```
Once again using $(b-a)^3=b^3-3b^2 a+3ba^2-a^3$
``` math
\begin{align*}
\int_{a}^{b} -\frac{ab -(a+b)x +x^2}{(b-a)^2} dx &= -\frac{1}{(b-a)^2} \int_{a}^{b} ab -(a+b)x +x^2 dx\\
&= -\frac{1}{(b-a)^2} \left[ abx -\frac{a+b}{2}x^2 +\frac{x^3}{3} \right]_{a}^{b}\\
&= -\frac{1}{(b-a)^2} \left( ab^2 -\frac{a+b}{2}b^2 +\frac{b^3}{3}  -  a^2b +\frac{a+b}{2}a^2 -\frac{a^3}{3} \right)\\
&= -\frac{1}{(b-a)^2} \left( \frac{6ab^2}{6} -\frac{3(a+b)b^2}{6} +\frac{2b^3}{6} - \frac{6a^2b}{6} +\frac{3(a+b)a^2}{6} - \frac{2a^3}{6} \right)\\
&= -\frac{6ab^2-3(a+b)b^2+2b^3-6a^2b +3(a+b)a^2 - 2a^3}{6(b-a)^2}\\
&= -\frac{6ab^2-3ab^2-3b^3+2b^3-6a^2b +3a^3 +3a^2b - 2a^3}{6(b-a)^2}\\
&= -\frac{3ab^2-b^3-3a^2b+a^3}{6(b-a)^2}\\
&= \frac{b^3-3ab^2+3a^2b-a^3}{6(b-a)^2}\\
&= \frac{(b-a)^3}{6(b-a)^2}\\
&= \frac{b-a}{6}\\
\end{align*}
```
##### Integral Summary
| | $f(x,a,b)$ | $f(x,b,a)$ | 
| - | - | - |
| $f(x,a,b)$ | $\frac{b-a}{3}$ | $\frac{b-a}{6}$|
| $f(x,b,a)$ | $\frac{b-a}{6}$ | $\frac{b-a}{3}$|

## Element equation

The nth element has nodes $n_n$ at $(x_n,y_n)$ and $n_{n+1}$ at $(x_{n+1},y_{n+1})$.

### Shape functions
The shape functions for the nth element and corresponding to the ith node are denoted $N_{n,i}(x)$.
The corresponding shape function for node $n_n$ is
``` math
N_{n,n}(x)=f(x,x_n,x_{n+1})=\left\{
\begin{array}{ll}
      \frac{x_{n+1}-x}{x_{n+1}-x_n} & x_n\leq x\leq x_{n+1}\\
      0 & otherwise
\end{array} 
\right.
```
and the corresponding function for node $n_{n+1}$ is
``` math
N_{n,n+1}(x)=f(x,x_{n+1},x_{n})=\left\{
\begin{array}{ll}
      -\frac{x_{n}-x}{x_{n+1}-x_n} & x_n\leq x\leq x_{n+1} \\
      0 & otherwise
\end{array} 
\right.
```

Unless the element is on a boundary, the equation for an element is

``` math
f_n(x) = y_n N_{n,n}(x) + y_{n+1} N_{n,n+1}(x)
```

Taking the derivative again

``` math
\begin{align*}
\frac{df_n}{dx}&=y_n \frac{df(x,x_n,x_{n+1})}{dx}+y_{n+1} \frac{df(x,x_{n+1},x_n)}{dx}\\
&=y_n \frac{-1}{x_{n+1}-x_n}+y_{n+1} \frac{-1}{x_n-x_{n+1}} \\
&=y_n \frac{-1}{x_{n+1}-x_n}+y_{n+1} \frac{1}{x_{n+1}-x_n}+y_{n+1} \\
&= \frac{y_{n+1} -y_n}{x_{n+1}-x_n}
\end{align*}
```

## Stiffness matrix

The stiffness matrix comes from the integration by parts for our govenerning equation. For second order derivative terms the integral we need to solve for each node is

``` math
\int_{x_n}^{x_{n+1}} \frac{dN_{n,i}}{dx} \frac{df_n}{dx} dx
```

For $n_n$
``` math
\begin{align*}
\int_{x_n}^{x_{n+1}} \frac{dN_{n,n}}{dx} \frac{df_n}{dx} dx &= \int_{x_n}^{x_{n+1}} \frac{-1}{x_{n+1}-x_n}\frac{y_{n+1} -y_n}{x_{n+1}-x_n} dx\\
&= \frac{-1}{x_{n+1}-x_n}\frac{y_{n+1} -y_n}{x_{n+1}-x_n} \int_{x_n}^{x_{n+1}} dx \\
&= \frac{-1}{x_{n+1}-x_n}\frac{y_{n+1} -y_n}{x_{n+1}-x_n} (x_{n+1}-x_n)\\
&= -\frac{y_{n+1} -y_n}{x_{n+1}-x_n}\\
&= \frac{1}{x_{n+1}-x_n} y_n + \frac{-1}{x_{n+1}-x_n} y_{n+1} 
\end{align*}
```

For $n_{n+1}$
``` math
\begin{align*}
\int_{x_n}^{x_{n+1}} \frac{dN_{n,n+1}}{dx} \frac{df_n}{dx} dx &= \int_{x_n}^{x_{n+1}} \frac{1}{x_{n+1}-x_n}\frac{y_{n+1} -y_n}{x_{n+1}-x_n} dx\\
&= \frac{1}{x_{n+1}-x_n}\frac{y_{n+1} -y_n}{x_{n+1}-x_n} \int_{x_n}^{x_{n+1}} dx \\
&= \frac{-}{x_{n+1}-x_n}\frac{y_{n+1} -y_n}{x_{n+1}-x_n} (x_{n+1}-x_n)\\
&= \frac{y_{n+1} -y_n}{x_{n+1}-x_n}\\
&= \frac{1}{x_{n+1}-x_n} y_{n+1} + \frac{-1}{x_{n+1}-x_n} y_{n} 
\end{align*}
```

Since $x_{n+1}-x_n$ is the length of the element, we'll denote this as $l_n$, ie the length of the nth element.

Leading to
``` math
\frac{1}{l_n}\begin{bmatrix}
 1 &  -1\\
 -1 & 1 
\end{bmatrix}\begin{pmatrix}
y_n \\ y_{n+1}
\end{pmatrix}
```
