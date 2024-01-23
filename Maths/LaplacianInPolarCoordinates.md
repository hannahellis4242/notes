# Laplacian in Polar Coordinates

In polar coordinates the Laplacian is
``` math
\nabla ^2 f = \frac{1}{r} \frac{\partial}{\partial r}\left(r \frac{\partial f}{\partial r}\right) + \frac{1}{r^2}\frac{\partial^2 f}{\partial \theta^2} = 0
```
or expanded out
``` math
\nabla ^2 f =  \frac{\partial^2 f}{\partial r^2} + \frac{1}{r} \frac{\partial f}{\partial r}+ \frac{1}{r^2}\frac{\partial^2 f}{\partial \theta^2} = 9
```

## Separation

If we assume that
``` math
f(r,\theta) = R(r)\Theta(\theta)
```
then
``` math
\begin{align*}
0 &=  \Theta\frac{d^2 R}{dr^2} + \Theta\frac{1}{r} \frac{df}{dr}+ R\frac{1}{r^2}\frac{d^2 \Theta}{d\theta^2} \\
-R\frac{1}{r^2}\frac{d^2 \Theta}{d\theta^2} &=  \Theta\frac{d^2 R}{dr^2} + \Theta\frac{1}{r} \frac{df}{dr}
\end{align*}
```
Then multiplying through by $\frac{r^2}{R\Theta}$ gives
then
``` math
-\frac{1}{T}\frac{d^2 \Theta}{d\theta^2} =  \frac{r^2}{R}\frac{d^2 R}{dr^2} + \frac{r}{R} \frac{df}{dr}
```
Because the only way two equations in different variable can be equal is if they are both equal to a constant, we introduce the separation constant $\lambda$

``` math
\begin{align*}
\frac{d^2 \Theta}{d\theta^2} &=  -\lambda \Theta\\
r^2\frac{d^2 R}{dr^2} + r \frac{df}{dr} &= \lambda R
\end{align*}
```

## Angular Part

The angular part is
``` math
\frac{d^2 \Theta}{d\theta^2} =  -\lambda \Theta
```
