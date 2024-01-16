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

$$ i \hbar \frac{1}{T}\frac{dT}{dt} = -\frac{\hbar^2}{2m}\frac{1}{\psi} \frac{d^2\psi}{dx^2} + V(x,t)$$

And now that neither side is now only dependant on one different variable, the only possible solution is if both halves are equal to the same constant.

$$ i \hbar \frac{1}{T}\frac{dT}{dt} = E $$
$$  -\frac{\hbar^2}{2m}\frac{1}{\psi} \frac{d^2\psi}{dx^2} + V(x,t) = E $$

Both of these can be then rewritten in more eigen problem form
$$ i \hbar \frac{dT}{dt} = E T $$
$$  -\frac{\hbar^2}{2m} \frac{d^2\psi}{dx^2} + V(x,t)\psi = E \psi $$

So now we have a spacial independent equation and a time independent equation.