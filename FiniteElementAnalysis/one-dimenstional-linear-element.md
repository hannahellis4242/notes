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
&= \frac{1}{(b-a)^2}\left( b^2(b-a) -b(b-a)^2+\frac{(b-a)^3}{3} \right)\\
&= \frac{b^2}{b-a} -b + \frac{b - a}{3}\\
&= \frac{3b^2}{3(b-a)} - \frac{3b(b-a)}{3(b-a)} + \frac{(b - a)^2}{3(b-a)}\\
&= \frac{3b^2 - 3b(b-a) + (b - a)^2}{3(b-a)} \\
&= \frac{3b^2 - 3b^2+3ab + b^2 -2ab + a^2}{3(b-a)}\\
&= \frac{b^2 +ab + a^2}{3(b-a)}
\end{align*}
```

## Element equation
Unless the element is on a boundary, the equation for an element is

``` math
f_n(x) = \left\{
\begin{array}{ll}
      y_nf(x,x_n,x_{n+1})+y_{n+1}f(x,x_{n+1},x_n) & a\leq x\leq b \\
      0 & otherwise
\end{array} 
\right.
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
