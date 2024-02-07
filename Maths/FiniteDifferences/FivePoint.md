# Five Point Finite Differences

[up](./FiniteDifferences.md)

## Summary

| | Forward | Central | Backwards |
|:-:|:-:|:-:|:-:|
|$\frac{df}{dx}$|  |  |  |
|$\frac{d^2f}{dx^2}$| |  |  |

These are all accurate up to ???

## Derivations

### Central

The central difference approximations to the first and second order derivative are obtained by looking at the Taylor series for forward and backward step.

``` math
\begin{align*}
f(x+h) &= f(x)+h \frac{df}{dx}(x)+\frac{h^2}{2} \frac{d^2f}{dx^2}(x) +O(h^3)\\
f(x) &= f(x)\\
f(x-h) &= f(x) - h \frac{df}{dx}(x)+\frac{h^2}{2}\frac{d^2f}{dx^2}(x) - O(h^3)
\end{align*}
```