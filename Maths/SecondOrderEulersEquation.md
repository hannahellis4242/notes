# Second Order Euler's Equation

The Euler Equation is a linear homogeneous ordinary differential equation with variable coefficients and is also known as the Euler–Cauchy equation, or Cauchy–Euler equation.

The general form is as follows
``` math
a_n x^n y^{(n)}(x) + a_{n-1} x^{n-1} y^{(n-1)}(x)+ \ldots + a_0 y(x) = 0
```

## Second Order

The second order form is as follows

``` math
x^2 y'' + a x y'+ b y = 0
```

### Separating into a coupled 1st order ODE

If we let $u=y'$ and rearrange a little bit we get

``` math
\begin{align*}
u' &= - \frac{a u}{x} - \frac{b y}{x^2} = 0 \\
y' &= u
\end{align*}
```
### Analytical Solution

We start with a change of variable $x=\exp(t)$ so that $\frac{dx}{dt}=x$. Looking at our derivitives of x
``` math
\frac{dy}{dx} = \frac{dy}{dt} \frac{dt}{dx} 
```
and by the inverse rule
```math
\frac{dt}{dx}= \frac{1}{\frac{dx}{dt}}=\frac{1}{x}
```
so we are left with
``` math
\frac{dy}{dx} = \frac{1}{x} \frac{dy}{dt}
```
Then differentating again gives
``` math
\begin{align*}
\frac{d^2y}{dx^2} &= \frac{d}{dx} \left( \frac{1}{x} \frac{dy}{dt} \right) \\
\frac{d^2y}{dx^2} &= \frac{d}{dx}\left( \frac{1}{x} \right) \frac{dy}{dt} + \frac{1}{x} \frac{d}{dx} \left( \frac{dy}{dt} \right)\\
\frac{d^2y}{dx^2} &=  -\frac{1}{x^2} \frac{dy}{dt} + \frac{1}{x} \frac{dt}{dx}\frac{d}{dt} \left( \frac{dy}{dt} \right)\\
\frac{d^2y}{dx^2} &=  -\frac{1}{x^2} \frac{dy}{dt} + \frac{1}{x^2} \frac{d^2 y}{dt^2} \\
\frac{d^2y}{dx^2} &=  \frac{1}{x^2} \left( \frac{d^2 y}{dt^2} -  \frac{dy}{dt} \right)
\end{align*}
```
