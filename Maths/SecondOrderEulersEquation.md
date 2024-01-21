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
Putting these back into the equation
``` math
\begin{align*}
0 &= x^2 \frac{d^2y}{dx^2} + a x \frac{dy}{dx}+ b y \\
0 &= x^2 \frac{1}{x^2} \left( \frac{d^2 y}{dt^2} -  \frac{dy}{dt} \right) + a x \frac{1}{x} \frac{dy}{dt} + b y \\
0 &=  \left( \frac{d^2 y}{dt^2} - \frac{dy}{dt} \right) + a \frac{dy}{dt} + b y \\
0 &=  \frac{d^2 y}{dt^2} + (a-1) \frac{dy}{dt} + b y 
\end{align*}
```

### Solving the Changed Varables

We now have the equation in the form

``` math
\frac{d^2 y}{dt^2} + (a-1) \frac{dy}{dt} + b y = 0
```
with the change of variables $t=\exp(x)$

So now we can try solutions of the form
``` math
\begin{align*}
y &=  \exp(kt)\\
\frac{dy}{dt} &= k \exp(kt) = ky \\
\frac{d^2 y}{dt^2} &= k^2 \exp(kt) = k^2 y
\end{align*}
```
Feeding this back into our equation give
``` math
k^2 y + (a-1) k y + b y = 0
```
either $y = 0$ or 
``` math
k^2 + (a-1) k + b = 0
```
which occurs when
``` math
k = \frac{1-a \pm \sqrt{(a-1)^2 - 4b}}{2}
```
Which means we have 3 possibilities

### 2 roots
If we have two roots $k_1$ and $k_2$ then we get the solution
``` math
\begin{align*}
y(t) &= A \exp(k_1 t) + B \exp(k_2 t)\\
y(x) &= A \left(\exp(\ln(x))\right)^{k_1} + B \left(\exp(\ln(x))\right)^{k_2}\\
&= A x^{k_1} + B x^{k_2}\\
\end{align*}
```

### 1 repeated root
If we have only one root then we must have that the square root term must be zero leading to our root being
``` math
\begin{align*}
k &= \frac{1-a}{2} \\
2k &= 1 - a \\
a & = 1 - 2k
\end{align*}
```
and for the square root to be zero
``` math
\begin{align*}
0 &= (a-1)^2 - 4b \\
b &= \frac{(a-1)^2}{4} \\
&= \frac{(1-2k-1)^2}{4} \\
&= \frac{(-2k)^2}{4} \\
b &= k^2
\end{align*}
```

This means we can rewrite our ODE with coefficents in terms of the root k

``` math
\begin{align*}
\frac{d^2 y}{dt^2} + (a-1) \frac{dy}{dt} + b y  &= 0 \\
\frac{d^2 y}{dt^2} + (1-2k-1) \frac{dy}{dt} + k^2 y  &= 0 \\
\frac{d^2 y}{dt^2} - 2k \frac{dy}{dt} + k^2 y  &= 0 \\
\end{align*}
```


If we only get 1 root then we need to find another solution. 

Starting with the first solution
``` math
y_1(x)=\exp(kt)
```
we construct a second solution by multiplying the first by function $v(x)$
``` math
\begin{align*}
y_2(t)&=v(x)y_1(x)=v(t)\exp(kt) \\
\frac{d y_2}{dt} &= \frac{dv}{dt}\exp(kt)+v(t)k\exp(kt) \\
\frac{d^2 y_2}{dt^2} &= \frac{d}{dt}\left(\frac{dv}{dt}\exp(kt)+v(t)k\exp(kt)\right) \\
&=\frac{d^2v}{dt^2}\exp(kt) + \frac{dv}{dt}k\exp(kt) +\frac{dv}{dt}k\exp(kt) + v(t)k^2\exp(kt) \\
&=\frac{d^2v}{dt^2}\exp(kt) + 2 \frac{dv}{dt}k\exp(kt) + v(t)k^2\exp(kt)
\end{align*}
```
Feeding this back into our ODE
``` math
\begin{align*}
0 &= \frac{d^2 y}{dt^2} -2k \frac{dy}{dt} + k^2 y \\
0 &= \frac{d^2v}{dt^2}\exp(kt) + 2 \frac{dv}{dt}k\exp(kt) + v(t)k^2\exp(kt) -2k \left( \frac{dv}{dt}\exp(kt)+v(t)k\exp(kt) \right) + k^2 v(t)\exp(kt)\\
0 &= \frac{d^2v}{dt^2}\exp(kt) + 2k \frac{dv}{dt}\exp(kt) - 2k \frac{dv}{dt}\exp(kt)  + k^2v(t)\exp(kt) - 2k v(t)k\exp(kt) + k^2 v(t)\exp(kt)\\
0 &= \frac{d^2v}{dt^2}\exp(kt) \\
0 &= \frac{d^2v}{dt^2}
\end{align*}
```
We then have the solution
``` math
v(t) = m t + c
```
so we end up with
``` math
y_2(t) = m t \exp(kt) + c \exp(kt)
```
the second part of the above equation of course gets absorbed into the $y_1$ term when we add them together but leads to the result
```math
y(t) = A t\exp(kt) + B \exp(kt)
```
putting back in $t=\ln(x)$ gives us finally that
```math
\begin{align*}
y(x) &= A \ln(x)\exp(k\ln(x)) + B \exp(k\ln(x)) \\
&= A \ln(x)\left(\exp(\ln(x))\right)^k + B \left(\exp(\ln(x))\right)^k \\
&= A \ln(x) x^k + B x^k \\
\end{align*}
```
