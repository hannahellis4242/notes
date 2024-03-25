# Laplacian Operator in Different Coordinate Systems

[up](./Maths.md)

The Laplacian Operator is defined as the divergence ($\nabla \cdot$) of the gradient ($\nabla f$) of a function $f$.
The Laplacian can be written as the divergence of the gradient $\nabla \cdot \nabla f$ but is more commonly written as $\nabla^2 f$. The exact form the operator takes depends on the coordinate system. Below are some of the common coordinate systems used and the Laplacian expressed within that coordinate system.

## The Laplacian in different coordinate systems

### One Dimension

``` math
\nabla^2 f = \frac{\partial^2 f}{\partial x^2}
```

### Two Dimensions

In two dimensions we have a lot more freedom to to choose our basis, here I will only include Cartesian and Plane Polar Coordinates

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

### Three Dimentions

Once again there are many options of basis in three dimentions so I will only cover Cartesian, Cylindrical Polar and Spherical Polar Coordinates here.

#### Cartesian coordinates

``` math
\nabla^2 f = \frac{\partial^2 f}{\partial x^2} + \frac{\partial^2 f}{\partial y^2} + \frac{\partial^2 f}{\partial z^2}
```

####  Cylindrical Polar Coordinates

``` math
\begin{align*}
\nabla^2 f &=\frac{1}{r}\frac {\partial }{\partial r }\left(r \frac {\partial f}{\partial r }\right)+ \frac{1}{r^2}\frac{\partial^2f}{\partial \theta ^2}+\frac{\partial^2 f}{\partial z^2}\\
&= \frac{\partial^2 f}{\partial r^2} + \frac{1}{r}\frac{\partial f}{\partial r} + \frac{1}{r^2}\frac{\partial^2 f}{\partial \theta^2}+\frac{\partial^2 f}{\partial z^2}
\end{align*}
```

#### Spherical Polar Coordinates


``` math
\begin{align*}
\nabla^2 f &= \frac{1}{r^2}\frac{\partial}{\partial r}\left(r^2 \frac{\partial f}{\partial r}\right)+ \frac{1}{r^2 \sin \theta} \frac{\partial}{\partial \theta}\left(\sin \theta \frac{\partial f}{\partial \theta}\right)+\frac{1}{r^2 \sin^2 \theta} \frac{\partial^2 f}{\partial \phi^2} \\
&=\frac {1}{r}\frac {\partial^2}{\partial r^2}\left(rf\right)+\frac{1}{r^2 \sin \theta}\frac{\partial}{\partial \theta}\left(\sin \theta \frac {\partial f}{\partial \theta}\right)+\frac{1}{r^2 \sin^2\theta}\frac {\partial^2 f}{\partial \phi^2} \\
&= \frac {\partial^2 f}{\partial r^2}+\frac{2}{r}\frac{\partial f}{\partial r}+\frac{1}{r^2 \sin \theta}\frac{\partial}{\partial \theta}\left(\sin \theta \frac{\partial f}{\partial \theta}\right)+\frac {1}{r^2 \sin^2 \theta}\frac{\partial^2 f}{\partial \phi^2}
\end{align*}
```
