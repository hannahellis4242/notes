# Schrödinger Equation

[up](./Maths.md)

## General form

The general form of the Schrödinger Equation is 

``` math
i \hbar \frac{\partial \Psi}{\partial t} = -\frac{\hbar^2}{2m}\nabla^2 \Psi + V(x,t)\Psi
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
i \hbar u \frac{d T}{d t} &= -\frac{\hbar^2}{2m} T \nabla^2 u + V(x,t)uT \\
i \hbar \frac{1}{T} \frac{d T}{d t} &= -\frac{\hbar^2}{2m} \frac{1}{u}\nabla^2 u + V(x,t) \\
\end{align*}
```
Where in the last step we have divided by $uT$ to give two equations that are independant of each other. The only way for these to be equal is if both of them equal the same constant which for physics reasons we will call $E$.

So now we have two separate equations

``` math
\begin{align*}
E&=i \hbar \frac{1}{T} \frac{d T}{d t} \\
E &= -\frac{\hbar^2}{2m} \frac{1}{u}\nabla^2 u + V(x,t)
\end{align*}
```
