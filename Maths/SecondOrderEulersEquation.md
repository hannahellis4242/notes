# Second Order Euler's Equation

The Euler Equation is a linear homogeneous ordinary differential equation with variable coefficients and is also known as the Euler–Cauchy equation, or Cauchy–Euler equation.

The general form is as follows
``` math
a_n x^n y^{(n)}(x) + a_{n-1} x^{n-1} y^{(n-1)}(x)+ \ldots + a_0 y(x) = 0
```

## Second Order

The second order form is as follows

``` math
x^2 y'' + a x y'+ b y = 0
```

### Separating into a coupled 1st order ODE

If we let $u=y'$ and rearrange a little bit we get

``` math
\begin{align*}
u' &= - \frac{a u}{x} - \frac{b y}{x^2} = 0 \\
y' &= u
\end{align*}
```
