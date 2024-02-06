# Common Ordinary Differential Equations

- [up](./Maths.md)

## Common ODE 1

``` math
\frac{d^2y}{dx^2} = \alpha y
```

trying a solution of the form

``` math
y(x) = \exp(k x)
```

gives

``` math
\begin{align*}
\frac{d^2y}{dx^2} &= \alpha y \\
k^2 \exp(kx) &= \alpha \exp(kx) \\
k &= \pm\sqrt{\alpha}
\end{align*}
```

### When $\alpha > 0$

Letting $k = \sqrt{\alpha}$ gives a solution of the form

``` math
\begin{align*}
y(x) &= A \exp(kx)+B\exp(-kx) \\
&= \tilde{A} \cosh(kx) + \tilde{B} \sinh(kx)
\end{align*}
```

Where we have used the result from [here](./ChangeOfBasisOfTypicalSolutions.md) to change the form.

### When $\alpha = 0$

``` math
\frac{d^2y}{dx^2} = 0 
```

with solution

``` math
y(x) = m x + c
```

### When $\alpha < 0$

Letting $k = i\sqrt{-\alpha}$ gives a solution of the form

``` math
\begin{align*}
y(x) &= A \exp(kx)+B\exp(-kx) \\
&= \tilde{A} \cos(kx) + \tilde{B} \sin(kx)
\end{align*}
```

Where we have used the result from [here](./ChangeOfBasisOfTypicalSolutions.md) to change the form.

## Common ODE 2

``` math
\frac{dy}{dx} = k y
```

with solution

``` math
y=c \exp(kx)
```

where $c$ is the integration constant.
