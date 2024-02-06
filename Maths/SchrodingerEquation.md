# Schrödinger Equation

[up](./Maths.md)

## General form

The general form of the Schrödinger Equation is

``` math
i \hbar \frac{\partial \Psi}{\partial t} = -\frac{\hbar^2}{2m}\nabla^2 \Psi + V(\mathbf{r},t)\Psi
```

Where $\nabla^2$ can vary depending on the coordinate system chosen (see [here](./LaplacianOperatorCoordinates.md) for more details)

## Separation

We can separate the equation into time dependant parts and time independant parts by assuming that $\Psi$ can be separated into a product of a function dependent only on time and a function dependant only on space. Typically $u$ is chosen for the space function, and I will choose $T$ to be the time dependant part. So we can write

``` math
\Psi = u(\mathbf{r})T(t)
```

Putting this back into the equations gives

``` math
\begin{align*}
i \hbar \frac{\partial \Psi}{\partial t} &= -\frac{\hbar^2}{2m}\nabla^2 \Psi+ V(x,t)\Psi \\
i \hbar u \frac{d T}{d t} &= -\frac{\hbar^2}{2m} T \nabla^2 u + V(\mathbf{r})uT \\
i \hbar \frac{1}{T} \frac{d T}{d t} &= -\frac{\hbar^2}{2m} \frac{1}{u}\nabla^2 u + V(\mathbf{r}) \\
\end{align*}
```
> Note: Notice that in order for this separation to work, we have to assume that $V$ is now just a function of space and does not change with time. If there was also a time component we would not be able to perform the separation. Because of this assumption for the rest of this text we will take $V$ to imply $V(\mathbf{r})$.

Where in the last step we have divided by $uT$ to give two equations that are independant of each other. The only way for these to be equal is if both of them equal the same constant which for physics reasons we will call $E$.

So now we have two separate equations that both equal $E$.

``` math
\begin{align*}
E&=i \hbar \frac{1}{T} \frac{d T}{d t} \\
E &= -\frac{\hbar^2}{2m} \frac{1}{u}\nabla^2 u + V
\end{align*}
```

Although these forms are valid it is more typical to see them in an eigen problem form

``` math
\begin{align*}
ET&=i \hbar \frac{d T}{d t} \\
Eu &= -\frac{\hbar^2}{2m}\nabla^2 u + V u
\end{align*}
```

Or even in the form where the rhs has been zeroed

``` math
\begin{align*}
0&=i \hbar \frac{d T}{d t} -ET\\
0 &= -\frac{\hbar^2}{2m}\nabla^2 u + \left(V-E\right)u
\end{align*}
```

## Solution to time dependant part

We will focus on just the time dependant part of the separation here and leave the time independent part to other texts more focused on a particular problem.

``` math
\frac{E}{i \hbar }T=\frac{d T}{d t}
```
