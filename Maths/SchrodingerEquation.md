# Schrödinger Equation

[up](./Maths.md)

## General form

The general form of the Schrödinger Equation is 

``` math
i \hbar \frac{\partial \Psi}{\partial t} = -\frac{\hbar^2}{2m}\nabla^2 \Psi{\partial x^2} + V(x,t)\Psi
```

Where $\nabla^@$ can vary depending on the situation

### One Dimention

``` math
\nabla^2 f = \frac{\partial^2 f}{\partial x^2}
```

### Two Dimensions

In two dimensions we have a lot more fredom to to choose our basis, here I will only include Cartesian and Plane Polar Coordinates

#### Cartesian Coordinates

``` math
\nabla^2 f = \frac{\partial^2 f}{\partial x^2} + \frac{\partial^2 f}{\partial y^2} 
```

#### Plane Polar Coordinates

``` math
\begin{align*}
\nabla^2 f &= \frac{1}{r} \frac{\partial}{\partial r}\left( r \frac{\partial f}{\partial x} \right) + \frac{1}{r^2} \frac{\partial^2 f}{\partial \theta^2} \\
 &= \frac{\partial^2 f}{\partial r^2} + \frac{1}{r}\frac{\partial f}{\partial r} + \frac{1}{r^2}\frac{\partial^2 f}{\partial \theta^2}
\end{align*}
```
