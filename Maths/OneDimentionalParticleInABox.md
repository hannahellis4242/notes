# One Dimensional Particle in a box

[up](./Maths.md)

## Introduction

Starting with the Shrodinger Equation

``` math
i \hbar \frac{\partial \Psi}{\partial t} = -\frac{\hbar^2}{2m}\frac{\partial^2 \Psi}{\partial x^2} + V(x,t)\Psi
```

We can separate variables by assuming that
``` math
\Psi(x,t) = \psi(x)T(t)
```

First the time part
``` math
\begin{align*}
\frac{\partial\Psi}{\partial t} &= \frac{\partial\psi(x)T(t)}{\partial t}\\
&= \psi\frac{dT}{dt}
\end{align*}
```

Then the spacial part
``` math
\begin{align*}
\frac{\partial\Psi}{\partial x} &= \frac{\partial\psi(x)T(t)}{\partial x}\\
&= T\frac{d\psi}{dx}
\end{align*}$$
$$ \begin{align*}
\frac{\partial^2\Psi}{\partial x^2} &= \frac{\partial}{\partial x}\frac{\partial\Psi}{\partial x}\\
&= \frac{\partial}{\partial x}\left(T\frac{d\psi}{dx}\right)\\
&=T \frac{d^2\psi}{dx^2}
\end{align*}
```

Feeding these back into the Shrodinger Equation gives

``` math
i \hbar \psi\frac{dT}{dt} = -\frac{\hbar^2}{2m}T \frac{d^2\psi}{dx^2} + V(x,t)\psi T
```

If the potential is time independent (ie we can write it as $V(x)$ instead) then we can separate further by dividing by $\psi T$

``` math
i \hbar \frac{1}{T}\frac{dT}{dt} = -\frac{\hbar^2}{2m}\frac{1}{\psi} \frac{d^2\psi}{dx^2} + V(x)
```

And now that neither side is now only dependant on one different variable, the only possible solution is if both halves are equal to the same constant.
``` math
i \hbar \frac{1}{T}\frac{dT}{dt} = E
```

``` math
-\frac{\hbar^2}{2m}\frac{1}{\psi} \frac{d^2\psi}{dx^2} + V(x) = E
```

Both of these can be then rewritten in more eigen problem form
``` math
i \hbar \frac{dT}{dt} = E T
```

``` math
-\frac{\hbar^2}{2m} \frac{d^2\psi}{dx^2} + V(x)\psi = E \psi
```

So now we have a spacial independent equation and a time independent equation.

## Time Independent Part

``` math
-\frac{\hbar^2}{2m} \frac{d^2\psi}{dx^2} + V(x)\psi = E \psi
```

For out particle in a box the potential is
``` math
V(x)=
\begin{cases}
    0 & 0 < x < a \\
    \infty & otherwise
\end{cases}
```

### Change of variable
It's possible to have a change of basis to $z$ such that

---
``` math
z=\frac{x}{a}
```
---

Which means the potential becomes
``` math
V(z)=
\begin{cases}
    0 & 0 < z < 1 \\
    \infty & otherwise
\end{cases}
```

additionally

``` math
\begin{align*}
\frac{d\psi}{dx}&=\frac{dz}{dx}\frac{d\psi}{dz}\\
&=\frac{1}{a}\frac{d\psi}{dz}
\end{align*}
```

and
``` math
\begin{align*}
\frac{d^2\psi}{dx^2}&=\frac{d}{dx}\frac{d\psi}{dx}\\
&=\frac{d}{dx}\left(\frac{1}{a}\frac{d\psi}{dz}\right)\\
&=\frac{dz}{dx}\frac{d}{dz}\left(\frac{1}{a}\frac{d\psi}{dz}\right)\\
&=\frac{1}{a}\frac{d}{dz}\left(\frac{1}{a}\frac{d\psi}{dz}\right)\\
&=\frac{1}{a^2}\frac{d^2\psi}{dz^2}
\end{align*}
```

So we can replace the terms in the time independent equation

``` math
\begin{align*}
E \psi &= -\frac{\hbar^2}{2m} \frac{d^2\psi}{dx^2} + V(x)\psi \\
&=-\frac{\hbar^2}{2m a^2}\frac{d^2\psi}{dz^2} + V(z)\psi 
\end{align*}
```

### Even Simpler
We can further simplify this by dividing through by $\frac{\hbar^2}{2m a^2}$

``` math
\begin{align*}
\frac{2m a^2}{\hbar^2}E \psi &= - \frac{d^2\psi}{dx^2} + \frac{2m a^2}{\hbar^2}V(x)\psi \\
\tilde{E} \psi &=-\frac{d^2\psi}{dz^2} + \tilde{V}(z)\psi 
\end{align*}
```

where

---
``` math
\begin{align*}
\tilde{V} &= \frac{2m a^2}{\hbar^2}V(x)\\
\tilde{E} &=\frac{2m a^2}{\hbar^2}E
\end{align*}
```
---

With all these changes our equation ends up being
``` math
\tilde{E} \psi =-\frac{d^2\psi}{dz^2} + \tilde{V}(z)\psi
```

## Lowering the order

We can turn a higher order ordinary differential equation into a lower order coupled ordinary differential equation. Usually this comes about by introducing a new variable.

In this case we introduce a variable
``` math
u = \frac{d\psi}{dz}
```

so that our equation becomes
``` math
\tilde{E} \psi =-\frac{du}{dz} + \tilde{V}(z)\psi
```

And with some rearrangement

``` math
\frac{du}{dz} =\left(\tilde{V}(z)-\tilde{E}\right)\psi
```

Leading to the coupled ODE being

``` math
\begin{align*}
\frac{d\psi}{dz} &= u \\
\frac{du}{dz} &=\left(\tilde{V}(z)-\tilde{E}\right)\psi
\end{align*}
```

### Alternative form

If instead of defining $\tilde{E}$ and $\tilde{V}$ as
``` math
\begin{align*}
\tilde{V} &= \frac{2m a^2}{\hbar^2}V(x)\\
\tilde{E} &=\frac{2m a^2}{\hbar^2}E
\end{align*}
```

but instead as
``` math
\begin{align*}
\hat{V} &= \frac{m a^2}{\hbar^2}V(x)\\
\hat{E} &=\frac{m a^2}{\hbar^2}E
\end{align*}
```
or

``` math
\begin{align*}
\tilde{V} = 2\hat{V} \\
\tilde{E} = 2\hat{E}
\end{align*}
```

Where I have given these a hat to distingush them from our original defintions our coupled ODE becomes

``` math
\begin{align*}
\frac{d\psi}{dz} &= u \\
\frac{du}{dz} &=2\left(\hat{V}(z)-\hat{E}\right)\psi
\end{align*}
```


## Solving Analytically

In the range $0 < z < 1$ we have the time independent part as
``` math
\tilde{E} \psi =-\frac{du}{dz}
```

and trying solutions of the form

``` math
\begin{align*}
\psi(z) &= \exp(\alpha z) \\
\frac{d\psi(z)}{dz} &= \alpha \exp(\alpha z)\\
\frac{d^\psi(z)}{dz^2} &= \alpha^2\exp(\alpha z)
\end{align*}
```

putting these back in leads to
``` math
\begin{align*}
\tilde{E} &=-\alpha^2\\
\alpha^2 &=-\tilde{E}\\
\alpha &= \sqrt{-\tilde{E}}\\
&= \pm i\sqrt{\tilde{E}}
\end{align*}
```
if we let

---
``` math
k=\sqrt{\tilde{E}}
```
---

This gives solutions of the form
``` math
\psi = A \exp(ikz) + B \exp(-ikz)
```

### Boundary Conditions

Because of the infinite potential either side of the well, the wavefunction must become zero at the two ends of the well ie
``` math
\psi(0) = \psi(1) = 0
```

putting these in gives
``` math
\begin{align*}
\psi(0) &= A  + B = 0 \\
\psi(1) &= A \exp(ik) + B \exp(-ik) = 0
\end{align*}
```

From the first line we get that $B = -A$ and putting this into the second line
``` math
\begin{align*}
0 &= A \exp(ik) -A \exp(-ik) \\
&=A \cos(k) +iA\sin(k) -A\cos(k)+iA\sin(k)\\
0&= 2iA\sin(k)\\
\end{align*}
```
Either we have the trivial solution that $A=0$ or we have that $\sin(k)=0$

$\sin(k)$ is only zero when

---
``` math
k=n\pi
```
---

which gives

---
``` math
\tilde{E}=\pi^2 n^2
```
---

so the solutions are
``` math
\psi_n = \tilde{A} \sin(n\pi z)
```

### Normalisation
The normalisation condition is
``` math
\int_0^1 \psi_n \psi_n^* dz = 1
```

which we can solve by doing the following
``` math
\begin{align*} 
1 &= \int_0^1 \tilde{A}\tilde{A}^* \sin^2(n\pi z)dz \\
&= \tilde{A}\tilde{A}^*  \int_0^1 \frac {1-\cos(2n\pi z)}{2}dz \\
&= \frac{\tilde{A}\tilde{A}^*}{2}  \left(\int_0^1 dz - \int_0^1 \cos(2n\pi z)dz\right)\\
&= \frac{\tilde{A}\tilde{A}^*}{2} \left( 1 - \left[ \frac{\sin(2n \pi z)}{2n \pi}\right]_0^1\right)\\
1 &=\frac{\tilde{A}\tilde{A}^*}{2}\\
2 &=\tilde{A}\tilde{A}^*\\
\tilde{A}&=\sqrt{2}\exp(i\phi)
\end{align*}
```

where we have used the identity
``` math
\sin ^{2}\theta =\frac {1-\cos(2\theta )}{2}
```

so finally the normalised solutions are

---
``` math
\begin{align*}
\psi_n(z) &= \sqrt{2}\exp(i\phi) \sin(n\pi z) \\
\tilde{E}_n &=\pi^2 n^2
\end{align*}
```
---

### Changing basis back
so far we have been using the variables

``` math
\begin{align*}
\tilde{E}&=\frac{2m a^2}{\hbar^2}E\\
z&=\frac{x}{a}
\end{align*}
```

so converting back we get
``` math
E=\frac{{\hbar^2}}{2ma^2}\tilde{E}
```

we also have to renormalise the wavefunctions to allow for the change of basis again
``` math
\psi_n(x) = \hat{A} \sin\left(\frac{n\pi}{a} x \right)
```
where $\hat{A}$ is our new normalisation constant
``` math
\begin{align*}
1&=\int_0^a \psi_n(x) \psi_n^*(x) dx \\
&=\int_0^a \hat{A} \hat{A}^* \sin^2\left(\frac{n\pi}{a} x \right) dx \\
&=\hat{A} \hat{A}^* \int_0^a \sin^2\left(\frac{n\pi}{a} x \right) dx \\
&=\frac{\hat{A} \hat{A}^*}{2} \left( \int_0^a dx + \int_0^a \cos\left(\frac{2n\pi}{a} x \right)dx \right) \\
&=\frac{\hat{A} \hat{A}^*}{2} \left( a+ \frac{a}{2\pi n}\left[ \sin\left(\frac{2n\pi}{a} x \right) \right]_0^a \right) \\
1 &=\frac{a \hat{A} \hat{A}^*}{2}
\hat{A} \hat{A}^* &=\frac{2}{a}
\hat{A} = \sqrt{\frac{2}{a}} \exp(i\phi)
\end{align*}
```
giving us normalised solutions as
``` math
\psi_n(x) = \sqrt{\frac{2}{a}}\exp(i\phi) \sin\left(\frac{n\pi}{a} x \right)
```

---
``` math
\begin{align*}
k_n&=\frac{n\pi}{a} \\
\psi_n(x) &= \sqrt{\frac{2}{a}}\exp(i\phi) \sin(k_n x) \\
E_n&=\frac{{\hbar^2}}{2m}k_n^2
\end{align*}
```
---
