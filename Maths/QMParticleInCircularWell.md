# Quantum Mechanical Particle in an Infinite Circular Well

[up](./Maths.md)

## Set up

From the [full Schrödinger Equation](./SchrodingerEquation.md) we find that the time independent equation looks like this.

``` math
Eu = -\frac{\hbar^2}{2m}\nabla^2 u + V u
```

Because this is a circular well, it makes most sense to solve using plane polar coordinates. The Laplacian operator in plane polar coordinates is given [here](./LaplacianOperatorCoordinates.md) and results in the time independent Schrödinger equation being.

``` math
Eu = -\frac{\hbar^2}{2m}\left( \frac{\partial^2 u}{\partial r^2} + \frac{1}{r}\frac{\partial u}{\partial r} + \frac{1}{r^2}\frac{\partial^2 u}{\partial \theta^2} \right) + V u
```

And the definition of our potential is

``` math
V(r,\theta) = 
\begin{cases}
    0 & r < a \\
    \infty & otherwise
\end{cases}
```

This leads to the equation within the well being

``` math
-\frac{\hbar^2}{2m}\left( \frac{\partial^2 u}{\partial r^2} + \frac{1}{r}\frac{\partial u}{\partial r} + \frac{1}{r^2}\frac{\partial^2 u}{\partial \theta^2} \right) -E u = 0
```
Dividing by $-\frac{\hbar^2}{2m}$ gives
``` math
\frac{\partial^2 u}{\partial r^2} + \frac{1}{r}\frac{\partial u}{\partial r} + \frac{1}{r^2}\frac{\partial^2 u}{\partial \theta^2} + \frac{2mE}{\hbar^2} u = 0
```
and we will now introduce $\tilde{E}=\frac{2mE}{\hbar^2}$ to help keep things a little more tidy.

``` math
\frac{\partial^2 u}{\partial r^2} + \frac{1}{r}\frac{\partial u}{\partial r} + \frac{1}{r^2}\frac{\partial^2 u}{\partial \theta^2} + \tilde{E} u = 0
```
## Separation

So again we can assume that $u$ is a product of two other functions $R(r)$ and $\Theta(\theta)$ ie $u(r,\theta)=R(r)\Theta(\theta)$. Putting this through gives
``` math
\begin{align*}
0&=\Theta \frac{d^2 R}{dr^2} + \Theta \frac{1}{r}\frac{dR}{dr} + R\frac{1}{r^2}\frac{d^2 \Theta}{d\theta^2} + \tilde{E} R\Theta\\
0&=\frac{r^2}{R} \frac{d^2 R}{dr^2} + \frac{r}{R}\frac{dR}{dr} + r^2 \tilde{E} + \frac{1}{\Theta}\frac{d^2 \Theta}{d\theta^2}\\
- \frac{1}{\Theta}\frac{d^2 \Theta}{d\theta^2}&=\frac{r^2}{R} \frac{d^2 R}{dr^2} + \frac{r}{R}\frac{dR}{dr} + r^2 \tilde{E}
\end{align*}
```
where we have multiplied through by $\frac{r^2}{R\Theta}$ on the second line. We end up with two independant equations being equal to each other. The only way for this to be valid is if they are both equal to a constant, which we will call $\lambda$.

### Angular part

For the angular part we get

``` math
\begin{align*}
- \frac{1}{\Theta}\frac{d^2 \Theta}{d\theta^2}&=\lambda \\
\frac{d^2 \Theta}{d\theta^2} = - \lambda \Theta
\end{align*}
```
