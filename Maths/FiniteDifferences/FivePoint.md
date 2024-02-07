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
f(x+2h) &= f(x) + 2h\frac{df}{dx}(x) + \frac{4h^2}{2} \frac{d^2f}{dx^2}(x) + \frac{8h^3}{6}\frac{d^3 f}{dx^3}(x)+\frac{16h^4}{24}\frac{d^4 f}{dx^4}(x) + 32O(h^5)\\
f(x+h) &= f(x)+h \frac{df}{dx}(x)+\frac{h^2}{2} \frac{d^2f}{dx^2}(x) + \frac{h^3}{6}\frac{d^3 f}{dx^3}(x)+\frac{h^4}{24}\frac{d^4 f}{dx^4}(x) + O(h^5)\\
f(x) &= f(x)\\
f(x-h) &= f(x)-h \frac{df}{dx}(x)+\frac{h^2}{2} \frac{d^2f}{dx^2}(x) - \frac{h^3}{6}\frac{d^3 f}{dx^3}(x)+\frac{h^4}{24}\frac{d^4 f}{dx^4}(x) - O(h^5)\\
f(x-2h) &= f(x) - 2h\frac{df}{dx}(x) + \frac{4h^2}{2} \frac{d^2f}{dx^2}(x) - \frac{8h^3}{6}\frac{d^3 f}{dx^3}(x)+\frac{16h^4}{24}\frac{d^4 f}{dx^4}(x) - 32O(h^5)\\
\end{align*}
```

``` math
\begin{pmatrix}
f(x+2h) -32O(h^5) \\
f(x+h) -O(h^5)\\
f(x) \\
f(x-h) + O(h^5)\\
f(x-2h) +32O(h^5)
\end{pmatrix}=
\begin{bmatrix}
1 & 2h & \frac{4h^2}{2} & \frac{8h^3}{6} & \frac{16h^4}{24}\\
1 & h &\frac{h^2}{2} & \frac{h^3}{6} & \frac{h^4}{24} \\
1 & 0 & 0 & 0 & 0\\
1 & -h & \frac{h^2}{2} & - \frac{h^3}{6} & \frac{h^4}{24}\\
1 & -2h & \frac{4h^2}{2} & - \frac{8h^3}{6} &\frac{16h^4}{24}
\end{bmatrix}
\begin{pmatrix}
f(x) \\
\frac{df}{dx}(x)  \\
\frac{d^2f}{dx^2}(x) \\
\frac{d^3 f}{dx^3}(x) \\
\frac{d^4 f}{dx^4}(x)
\end{pmatrix}
```
with the inverse being
``` math
\begin{pmatrix}
f(x) \\
\frac{df}{dx}(x)  \\
\frac{d^2f}{dx^2}(x) \\
\frac{d^3 f}{dx^3}(x) \\
\frac{d^4 f}{dx^4}(x)
\end{pmatrix} = 
\begin{bmatrix}0&0&1&0&0\\ -\frac{1}{12h}&\frac{2}{3h}&0&-\frac{2}{3h}&\frac{1}{12h}\\ -\frac{1}{12h^2}&\frac{4}{3h^2}&-\frac{5}{2h^2}&\frac{4}{3h^2}&-\frac{1}{12h^2}\\ \frac{1}{2h^3}&-\frac{1}{h^3}&0&\frac{1}{h^3}&-\frac{1}{2h^3}\\ \frac{1}{h^4}&-\frac{4}{h^4}&\frac{6}{h^4}&-\frac{4}{h^4}&\frac{1}{h^4}\end{bmatrix}
\begin{pmatrix}
f(x+2h) -32O(h^5) \\
f(x+h) -O(h^5)\\
f(x) \\
f(x-h) + O(h^5)\\
f(x-2h) +32O(h^5)
\end{pmatrix}
```
