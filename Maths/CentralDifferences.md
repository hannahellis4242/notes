# Central Differences

The central difference approximations to the first and second order derivative are obtained by looking at the Taylor series for forward and backward step.
``` math
\begin{align*}
f(x+h) &= f(x)+h \frac{df}{dx}(x)+\frac{h^2}{2} \frac{d^2f}{dx^2}(x) +O(h^3)\\
f(x) &= f(x)\\
f(x-h) &= f(x) - h \frac{df}{dx}(x)+frac{h^2}{2}\frac{d^2f}{dx^2}(x) - O(h^3)
\end{align*}
```
which we can make into a matrix form as follows
``` math
\begin{bmatrix}
f(x+h)\\
f(x)\\
f(x-h)
\end{bmatrix} =
\begin{bmatrix}
1 & h & \frac{h^2}{2}\\
1 & 0 & 0 \\
1 & - h &\frac{h^2}{2}
\end{bmatrix}
\begin{bmatrix}
f(x)\\
\frac{df}{dx} \\
\frac{d^2f}{dx^2}
\end{bmatrix}
```

where f'(x) is df/dx at x and f"(x) is d^2f/dx^2 at x

using f_i+1 = f(x+h), f_i = f(x) and f_i-1 = f(x-h)

f_i+1 = f_i+hf'_i+h^2/2 f"_i +O(h^3)
f_i = f_i
fi-1 = f_i- hf'_i+h^2/2 f"_i- O(h^3)

we can put this into matrix form like so
