# Trigonometric identities with proofs

## Unit Circle

![unit circle with the right angled triangle formed from the horizontal and vertical](./img/6f55e0f5-6cd6-49bb-b2ca-df796d57c66f.svg)

## Angle Addition Formulas


![geometric setup for angle addition formulas](./img/df02d9d5-3c82-44c0-80d1-1862582cfb23.svg)

In the above diagram we have a rectangle formed from two right angled triangles on top of each other and the boundaries. The second A angle can be determined by the fact the internal angles of a triangle are $180^{\circ}$ and similarly the angles that make up a line also sum up to $180^{\circ}$.

From the edges of the rectangle we can see that

``` math
\begin{align*}
h &= d+e\
c &= f+g
\end{align*}
```

additionally we can see that

``` math
\begin{align*}
a &= R \sin B\
b &= R \cos B\
c &= b \cos A = R \cos B \cos A \
d &= b \sin A = R \cos B \sin A \
e &= a \cos A = R \sin B \cos A \
f &= a \sin A = R \sin B \sin A \
g &= R \cos \left( A + B \right) \
h &= R \sin \left( A + B \right)
\end{align*}
```

### Vertical Part

Feeding our observations into $h = d+e$ gives us

``` math
\begin{align*}
h &= d+e\
 R \sin \left( A + B \right) &= R \cos B \sin A + R \sin B \cos A \
\sin \left( A + B \right) &= \sin A \cos B  +  \cos A \sin B
\end{align*}
```

### Horizontal Part

Feeding our observations into $c = f+g$ gives us

``` math
\begin{align*}
c &= f+g\
R \cos B \cos A &= R \sin B \sin A + R \cos \left( A + B \right) \
\cos \left( A + B \right) &= \cos A \cos B -  \sin A \sin B
\end{align*}
```

### Tangent

The tangent of an angle can be given by the ratio of sin and cos ie $\tan x = \frac{\sin x}{\cos x}$, so we can get the angle addition formula for tan as follows

``` math
\begin{align*}
\tan \left( A+B\right)&=\frac{\sin \left( A+B\right)}{\cos \left( A+B\right)}\
&=\frac{\sin A \cos B  +  \cos A \sin B}{\cos A \cos B -  \sin A \sin B}
\end{align*}
```

