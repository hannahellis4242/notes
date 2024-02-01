# Central Differences

The central difference approximations to the first and second order derivative are obtained by looking at the Taylor series for forward and backward step.
``` math
\begin{align*}
f(x+h) &= f(x)+h \frac{df}{dx}(x)+\frac{h^2}{2} \frac{d^2f}{dx^2}(x) +O(h^3)\\
f(x) &= f(x)\\
f(x-h) &= f(x) - h \frac{df}{dx}(x)+\frac{h^2}{2}\frac{d^2f}{dx^2}(x) - O(h^3)
\end{align*}
```
which we can make into a matrix form as follows
``` math
\begin{bmatrix}
f(x+h) - O(h^3)\\
f(x)\\
f(x-h) + O(h^3)
\end{bmatrix} =
\begin{bmatrix}
1 & h & \frac{h^2}{2}\\
1 & 0 & 0 \\
1 & - h &\frac{h^2}{2}
\end{bmatrix}
\begin{bmatrix}
f(x)\\
\frac{df}{dx}(x)\\
\frac{d^2f}{dx^2}(x)
\end{bmatrix}
```
taking the inverse gives

``` math
\begin{bmatrix}
f(x)\\
\frac{df}{dx}(x)\\
\frac{d^2f}{dx^2}(x)
\end{bmatrix}
=
\begin{bmatrix}0&1&0\\ \frac{1}{2h}&0&-\frac{1}{2h}\\ \frac{1}{h^2}&-\frac{2}{h^2}&\frac{1}{h^2}\end{bmatrix}
\begin{bmatrix}
f(x+h) - O(h^3)\\
f(x)\\
f(x-h) + O(h^3)
\end{bmatrix}
```

Leaving us with

``` math
\begin{align*}
\frac{df}{dx}(x) &= 
\end{align*}
```
