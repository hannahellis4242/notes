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
\end{align*}
```

#### Integrals


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
