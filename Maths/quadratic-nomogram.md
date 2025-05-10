# Quadratic Nonogram

## Studying the circle and projection lines

![circle setup](./img/quad.svg)

### Equation of the line

The line goes through two points $(a',0)$ and $(0,b')$ so the equation of the line is

``` math
\begin{align*}
\frac{x-a'}{y-0}&=\frac{0-a'}{b'-0} \\
\frac{x-a'}{y}&=-\frac{a'}{b'} \\
x-a'&=-y\frac{a'}{b'} \\
b'-\frac{b'}{a'}x&=y \\
\end{align*}
```

### Equation of the circle

The circle is a circle of radius $R$ is centered at the point $(0,R)$ and so the equation is

``` math
x^2+(y-R)^2=R^2
```

### Intersection of the circle and our line

We can substitute the equation for our line $y=b'-\frac{b'}{a'}x$ into the eqution for the circle $x^2+(y-R)^2=R^2$ and solve for $x$

``` math
\begin{align*}
R^2&=x^2+(y-R)^2\\
R^2&=x^2+\left(b'-\frac{b'}{a'}x-R\right)^2\\
\end{align*}
```
