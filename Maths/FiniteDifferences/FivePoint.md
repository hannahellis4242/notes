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
f(x+2h) &= f(x) + 2h\frac{df}{dx}(x) + \frac{4h^2}{2} \frac{d^2f}{dx^2}(x) + \frac{8h^3}{6}\frac{d^3 f}{dx^3}(x)+\frac{16h^4}{24}\frac{d^4 f}{dx^4}(x) + O(h^5)\\
f(x+h) &= f(x)+h \frac{df}{dx}(x)+\frac{h^2}{2} \frac{d^2f}{dx^2}(x) + \frac{h^3}{6}\frac{d^3 f}{dx^3}(x)+\frac{h^4}{24}\frac{d^4 f}{dx^4}(x) + O(h^5)\\
f(x) &= f(x)\\
f(x-h) &= f(x)-h \frac{df}{dx}(x)+\frac{h^2}{2} \frac{d^2f}{dx^2}(x) - \frac{h^3}{6}\frac{d^3 f}{dx^3}(x)+\frac{h^4}{24}\frac{d^4 f}{dx^4}(x) - O(h^5)\\
f(x-2h) &= f(x) - 2h\frac{df}{dx}(x) + \frac{4h^2}{2} \frac{d^2f}{dx^2}(x) - \frac{8h^3}{6}\frac{d^3 f}{dx^3}(x)+\frac{16h^4}{24}\frac{d^4 f}{dx^4}(x) - O(h^5)\\
\end{align*}
```
