# Finite Differences

## Forward

The forward difference approximations to the first and second order derivative are obtained by looking at the Taylor series for a single forward and a double forward step.
``` math
\begin{align*}
f(x+2h) &= f(x)+2h \frac{df}{dx}(x)+\frac{4h^2}{2} \frac{d^2f}{dx^2}(x) + 8O(h^3)\\
f(x+h) &= f(x) + h \frac{df}{dx}(x)+\frac{h^2}{2}\frac{d^2f}{dx^2}(x) + O(h^3) \\
f(x) &= f(x)
\end{align*}
```
which we can make into a matrix form as follows
``` math
\begin{bmatrix}
f(x+2h) - 8O(h^3)\\
f(x+h)- O(h^3)\\
f(x) 
\end{bmatrix} =
\begin{bmatrix}
1 & 2h & \frac{4h^2}{2}\\
1 & h & \frac{h^2}{2}\\
1 & 0 & 0
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
\end{bmatrix} = \begin{bmatrix}
0&0&1\\
 -\frac{1}{2h}&\frac{2}{h}&-\frac{3}{2h}\\
 \frac{1}{h^2}&-\frac{2}{h^2}&\frac{1}{h^2}
\end{bmatrix}
\begin{bmatrix}
f(x+2h) - 8O(h^3)\\
f(x+h)- O(h^3)\\
f(x)
\end{bmatrix}
```
Leaving us with

``` math
\begin{align*}
\frac{df}{dx}(x) &= -\frac{1}{2h}\left(f(x+2h) - 8O(h^3)\right) +\frac{2}{h}\left( f(x+h)- O(h^3) \right) -\frac{3}{2h}f(x) \\
&= -\frac{f(x+2h)}{2h}+ \frac{8O(h^3)}{2h} + \frac{2f(x+h)}{h}- \frac{2O(h^3)}{h} -\frac{3}{2h}f(x) \\
&= \frac{-f(x+2h)+4f(x+h)-3f(x)}{2h} + O(h^2)
\end{align*}
```
and
``` math
\begin{align*}
\frac{d^2f}{dx^2}(x) &= \frac{1}{h^2} \left( f(x+2h) - 8O(h^3) \right)-\frac{2}{h^2} \left( f(x+h)- O(h^3) \right) + \frac{1}{h^2}f(x) \\
&= \frac{1}{h^2}f(x+2h) -\frac{1}{h^2} 8O(h^3) -\frac{2}{h^2} f(x+h)+\frac{2}{h^2}  O(h^3) + \frac{1}{h^2}f(x) \\
&= \frac{f(x+2h)}{h^2} -\frac{8O(h^3)}{h^2} -\frac{2f(x+h)}{h^2} +\frac{2O(h^3)}{h^2} + \frac{f(x)}{h^2} \\
&= \frac{f(x+2h)-2f(x+h)+f(x)}{h^2} -\frac{6O(h^3)}{h^2}\\
&= \frac{f(x+2h)-2f(x+h)+f(x)}{h^2} - O(h)
\end{align*}
```
As you can see the first derivative we get accuracy to the second power of h, in the second derivative we only get accuracy to the first power of h. We have to introduce an extra point if we wish this to be more accurate.

### Increasing Accuracy

``` math
\begin{align*}
f(x+3h) &= f(x)+3h \frac{df}{dx}(x)+\frac{9h^2}{2} \frac{d^2f}{dx^2}(x) + \frac{27h^3}{6}\frac{d^3f}{dx^3}(x) + 81O(h^4)\\
f(x+2h) &= f(x)+2h \frac{df}{dx}(x)+\frac{4h^2}{2} \frac{d^2f}{dx^2}(x) + \frac{8h^3}{6}\frac{d^3f}{dx^3}(x) + 16O(h^4)\\
f(x+h) &= f(x) + h \frac{df}{dx}(x)+\frac{h^2}{2}\frac{d^2f}{dx^2}(x) ++ \frac{h^3}{6}\frac{d^3f}{dx^3}(x) + O(h^4)\\
f(x) &= f(x)
\end{align*}
```

``` math
\begin{bmatrix}
f(x+3h) - 81O(h^4) \\
f(x+2h) - 16O(h^4)\\
f(x+h)- O(h^4)\\
f(x) 
\end{bmatrix} =
\begin{bmatrix}
1&3h&\frac{9h^2}{2} &  \frac{27h^3}{6}\\
1&2h&\frac{4h^2}{2}&\frac{8h^3}{6}\\
1 & h &\frac{h^2}{2}& \frac{h^3}{6}\\
1&0&0&0
\end{bmatrix}
\begin{bmatrix}
f(x)\\
\frac{df}{dx}(x)\\
\frac{d^2f}{dx^2}(x)\\
\frac{d^3f}{dx^3}(x)
\end{bmatrix}
```
because we only really care about the solution for the second derivative here, we will use [Cramer's rule](https://en.wikipedia.org/wiki/Cramer%27s_rule) to get just this solution.

```math
\begin{align*}
\frac{d^2f}{dx^2}(x) &= \frac{\begin{vmatrix}
1&3h&f(x+3h) - 81O(h^4) &  \frac{27h^3}{6}\\
1&2h&f(x+2h) - 16O(h^4)&\frac{8h^3}{6}\\
1 & h &f(x+h)- O(h^4)& \frac{h^3}{6}\\
1&0&f(x)&0
\end{vmatrix}}{\begin{vmatrix}
1&3h&\frac{9h^2}{2} &  \frac{27h^3}{6}\\
1&2h&\frac{4h^2}{2}&\frac{8h^3}{6}\\
1 & h &\frac{h^2}{2}& \frac{h^3}{6}\\
1&0&0&0
\end{vmatrix}} \\
 &=\frac{-h^4\left( f(x+3h) - 81O(h^4) \right) +4h^4 \left( f(x+2h) - 16O(h^4) \right) -5h^4 \left( f(x+h)- O(h^4)\right)+2h^4f(x)}{h^6} \\
 &=\frac{ -h^4f(x+3h) + h^4 81O(h^4) +4h^4f(x+2h) - 4h^4 16O(h^4) -5h^4f(x+h) + 5h^4 O(h^4)+2h^4f(x)}{h^6} \\
 &=\frac{ -f(x+3h) +4f(x+2h) -5f(x+h) +2f(x)}{h^2} + O(h^2)
\end{align*}
```

---

``` math
\begin{align*}
\frac{df}{dx}(x) &= \frac{-f(x+2h)+4f(x+h)-3f(x)}{2h} + O(h^2)\\
\frac{d^2f}{dx^2}(x) &=\frac{ -f(x+3h) +4f(x+2h) -5f(x+h) +2f(x)}{h^2} + O(h^2)
\end{align*}
```

---
## Central

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
\frac{df}{dx}(x) &= \frac{f(x+h) - O(h^3) - f(x-h) - O(h^3) }{2h} \\
&= \frac{f(x+h) - f(x-h) - O(h^3) }{2h} \\
&= \frac{f(x+h) - f(x-h) }{2h} - O(h^2)
\end{align*}
```
and
``` math
\begin{align*}
\frac{d^2f}{dx^2}(x) &= \frac{f(x+h) - O(h^3) - 2f(x) + f(x-h) + O(h^3) }{h^2} \\
&= \frac{f(x+h) - 2f(x) + f(x-h) + O(h^4) }{h^2} \\
&= \frac{f(x+h) - 2f(x) + f(x-h) }{h^2} +O(h^2)\\
\end{align*}
```
With the order terms telling us the result is accurate to the second power of h

---

``` math
\begin{align*}
\frac{df}{dx}(x) &= \frac{f(x+h) - f(x-h) }{2h} - O(h^2) \\
\frac{d^2f}{dx^2}(x) &= \frac{f(x+h) - 2f(x) + f(x-h) }{h^2} +O(h^2)\\
\end{align*}
```
---

## Backwards

The backwards difference approximations to the first order derivative are obtained by looking at the Taylor series for a single backward and a double backward step.
``` math
\begin{align*}
f(x) &= f(x)\\
f(x-h) &= f(x) -h \frac{df}{dx}(x)+\frac{h^2}{2}\frac{d^2f}{dx^2}(x) + O(h^3) \\
f(x-2h) &= f(x)-2h \frac{df}{dx}(x)+\frac{4h^2}{2} \frac{d^2f}{dx^2}(x) - 8O(h^3)
\end{align*}
```
