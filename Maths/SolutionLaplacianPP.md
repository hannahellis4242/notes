# Solutions to the Laplacian in Plane Polar Coordinates

[up](./Maths.md)

In polar coordinates the Laplacian is
``` math
\nabla ^2 f = \frac{1}{r} \frac{\partial}{\partial r}\left(r \frac{\partial f}{\partial r}\right) + \frac{1}{r^2}\frac{\partial^2 f}{\partial \theta^2} = 0
```
or expanded out
``` math
\nabla ^2 f =  \frac{\partial^2 f}{\partial r^2} + \frac{1}{r} \frac{\partial f}{\partial r}+ \frac{1}{r^2}\frac{\partial^2 f}{\partial \theta^2} = 0
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
Solutions to this can be found [here](.\CommonODEs.md).

Assuming we don't have any boundary conditions in $\theta$, then there is a natural boundary condition due to symmetry
``` math
\Theta(\theta + 2\pi) = \Theta(\theta)
```
This means we cannot have solutions for $\lambda < 0$ and in the case that $\lambda = 0$ the linear term must be zero, leaving behind just a constant term. This leaves two cases

### when $\lambda > 0$
let $k = \sqrt{\lambda}$
``` math
\Theta(\theta)=A\sin(k\theta + \phi)
```
And with our condition that
``` math
\begin{align*}
\Theta(\theta + 2\pi) &= \Theta(\theta) \\
A\sin(k\theta +\phi + 2\pi k) &= A \sin(k\theta + \phi) \\
\sin(k\theta+\phi)\cos(2\pi k) + \sin(2\pi k)\cos(k\theta +\phi) &= \sin(k\theta + \phi)
\end{align*}
```
Which leads to the requirement that
``` math
\begin{align*}
\cos(2\pi k) &= 1 \\
\sin(2\pi k) &= 0 
\end{align*}
```

Which happens only when $k \in \mathbb{I}^+$ ie k is a positive integer

### when $\lambda = 0$

To satisfy our condition the linear part must be zero leaving just
``` math
\Theta(\theta)=C
```

In summary

---
``` math
\Theta(\theta)=A\sin(k\theta)+B\cos(k\theta)
```
where $k=\sqrt{\lambda}$ and $k \in \mathbb{I}^+$

--- 

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

## Bringing everything together

Letting $\lambda = k^2$ with $k \in \mathbb{I}^+$ we have solutions of the form

``` math
f(r,\theta) = A_0 \ln(r) + B_0 + \left( A_1 r + \frac{B_1}{r} \right)(\sin(\theta+\phi_1) + \left( A_2 r^2 + \frac{B_2}{r^2} \right)(\sin(2\theta+\phi_2) + \ldots
```
