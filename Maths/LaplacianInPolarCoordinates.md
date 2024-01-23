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
0 &=  \Theta\frac{d^2 R}{dr^2} + \Theta\frac{1}{r} \frac{dR}{dr}+ R\frac{1}{r^2}\frac{d^2 \Theta}{d\theta^2} \\
-R\frac{1}{r^2}\frac{d^2 \Theta}{d\theta^2} &=  \Theta\frac{d^2 R}{dr^2} + \Theta\frac{1}{r} \frac{dR}{dr}
\end{align*}
```
Then multiplying through by $\frac{r^2}{R\Theta}$ gives
then
``` math
-\frac{1}{T}\frac{d^2 \Theta}{d\theta^2} =  \frac{r^2}{R}\frac{d^2 R}{dr^2} + \frac{r}{R} \frac{dR}{dr}
```
Because the only way two equations in different variable can be equal is if they are both equal to a constant, we introduce the separation constant $\lambda$

``` math
\begin{align*}
\frac{d^2 \Theta}{d\theta^2} &=  -\lambda \Theta\\
r^2\frac{d^2 R}{dr^2} + r \frac{dR}{dr} &= \lambda R
\end{align*}
```

## Angular Part

The angular part is
``` math
\frac{d^2 \Theta}{d\theta^2} =  -\lambda \Theta
```

## Radial Part

The radial part is
``` math
r^2\frac{d^2 R}{dr^2} + r \frac{dR}{dr} = \lambda R
```
which can be rewritten as
``` math
r^2\frac{d^2 R}{dr^2} + r \frac{dR}{dr} - \lambda R = 0
```
Which is a [second order Euler equation](./SecondOrderEulersEquation.md) $x^2 y'' + a x y' + b y = 0$. Where $x=r$ , $y=R$ , $a=1$ and $b=-\lambda$

This gives us two kinds of solutions
### when $\lambda > 0$

``` math
R_{\lambda}(r) = A r^{\sqrt{\lambda}} + \frac{B}{r^{\sqrt{\lambda}}}
```

### when $\lambda = 0$

``` math
R_{0}(r) = A \ln(r) + B
```
