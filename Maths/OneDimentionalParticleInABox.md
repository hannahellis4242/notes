# One Dimensional Particle in a box

## Introduction

Starting with the Shrodinger Equation

$$ i \hbar \frac{\partial \Psi}{\partial t} = -\frac{\hbar^2}{2m}\frac{\partial^2 \Psi}{\partial x^2} + V(x,t)\Psi$$

We can separate variables by assuming that
$$\Psi(x,t) = \psi(x)T(t)$$

First the time part
$$\begin{align*}
\frac{\partial\Psi}{\partial t} &= \frac{\partial\psi(x)T(t)}{\partial t}\\
&= \psi\frac{dT}{dt}
\end{align*}$$

Then the spacial part
$$\begin{align*}
\frac{\partial\Psi}{\partial x} &= \frac{\partial\psi(x)T(t)}{\partial x}\\
&= T\frac{d\psi}{dx}
\end{align*}$$
$$\begin{align*}
\frac{\partial^2\Psi}{\partial x^2} &= \frac{\partial}{\partial x}\frac{\partial\Psi}{\partial x}\\
&= \frac{\partial}{\partial x}\left(T\frac{d\psi}{dx}\right)\\
&=T \frac{d^2\psi}{dx^2}
\end{align*}$$

Feeding these back into the Shrodinger Equation gives

$$ i \hbar \psi\frac{dT}{dt} = -\frac{\hbar^2}{2m}T \frac{d^2\psi}{dx^2} + V(x,t)\psi T$$

If the potential is time independent (ie we can write it as $V(x)$ instead) then we can separate further by dividing by $\psi T$

$$ i \hbar \frac{1}{T}\frac{dT}{dt} = -\frac{\hbar^2}{2m}\frac{1}{\psi} \frac{d^2\psi}{dx^2} + V(x)$$

And now that neither side is now only dependant on one different variable, the only possible solution is if both halves are equal to the same constant.

$$ i \hbar \frac{1}{T}\frac{dT}{dt} = E $$
$$  -\frac{\hbar^2}{2m}\frac{1}{\psi} \frac{d^2\psi}{dx^2} + V(x) = E $$

Both of these can be then rewritten in more eigen problem form
$$ i \hbar \frac{dT}{dt} = E T $$
$$  -\frac{\hbar^2}{2m} \frac{d^2\psi}{dx^2} + V(x)\psi = E \psi $$

So now we have a spacial independent equation and a time independent equation.

## Time Independent Part

$$  -\frac{\hbar^2}{2m} \frac{d^2\psi}{dx^2} + V(x)\psi = E \psi $$

For out particle in a box the potential is
$$V(x)=
\begin{cases}
    0 & 0<x<a \\
    \infty & otherwise\\
\end{cases}$$

### Change of variable
It's possible to have a change of basis to $z$ such that
$$z=\frac{x}{a}$$

Which means the potential becomes
$$V(z)=
\begin{cases}
    0 & 0<z<1 \\
    \infty & otherwise\\
\end{cases}$$

additionally

$$\begin{align*}
\frac{d\psi}{dx}&=\frac{dz}{dx}\frac{d\psi}{dz}\\
&=\frac{1}{a}\frac{d\psi}{dz}
\end{align*}$$

and
$$\begin{align*}
\frac{d^2\psi}{dx^2}&=\frac{d}{dx}\frac{d\psi}{dx}\\
&=\frac{d}{dx}\left(\frac{1}{a}\frac{d\psi}{dz}\right)\\
&=\frac{dz}{dx}\frac{d}{dz}\left(\frac{1}{a}\frac{d\psi}{dz}\right)\\
&=\frac{1}{a}\frac{d}{dz}\left(\frac{1}{a}\frac{d\psi}{dz}\right)\\
&=\frac{1}{a^2}\frac{d^2\psi}{dz^2}
\end{align*}$$

So we can replace the terms in the time independent equation

$$\begin{align*}
E \psi &= -\frac{\hbar^2}{2m} \frac{d^2\psi}{dx^2} + V(x)\psi \\
&=-\frac{\hbar^2}{2m a^2}\frac{d^2\psi}{dz^2} + V(z)\psi 
\end{align*}$$

### Even Simpler
We can further simplify this by dividing through by $\frac{\hbar^2}{2m a^2}$

$$\begin{align*}
\frac{2m a^2}{\hbar^2}E \psi &= - \frac{d^2\psi}{dx^2} + \frac{2m a^2}{\hbar^2}V(x)\psi \\
\tilde{E} \psi &=-\frac{d^2\psi}{dz^2} + \tilde{V}(z)\psi 
\end{align*}$$

where 
$$ \tilde{V} = \frac{2m a^2}{\hbar^2}V(x) $$
and
$$\tilde{E}=\frac{2m a^2}{\hbar^2}E$$

With all these changes our equation ends up being
$$\tilde{E} \psi =-\frac{d^2\psi}{dz^2} + \tilde{V}(z)\psi$$

## Lowering the order

We can turn a higher order ordinary differential equation into a lower order coupled ordinary differential equation. Usually this comes about by introducing a new variable.

In this case we introduce a variable
$$u = \frac{d\psi}{dz}$$

so that our equation becomes
$$\tilde{E} \psi =-\frac{du}{dz} + \tilde{V}(z)\psi$$

And with some rearrangement

$$\frac{du}{dz} =\left(\tilde{V}(z)-\tilde{E}\right)\psi$$

Leading to the coupled ODE being

$$\begin{align*}
\frac{d\psi}{dz} &= u \\
\frac{du}{dz} &=\left(\tilde{V}(z)-\tilde{E}\right)\psi
\end{align*}$$