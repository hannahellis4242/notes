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
&=\frac{\sin A \cos B + \cos A \sin B}{\cos A \cos B - \sin A \sin B} \
&=\frac{\frac{\sin A}{\cos A} \cos B + \sin B}{ \cos B - \frac{\sin A}{\cos A} \sin B} \
&=\frac{\frac{\sin A}{\cos A} + \frac{\sin B}{\cos B}}{ 1 - \frac{\sin A}{\cos A} \frac{\sin B}{\cos B}} \
&=\frac{\tan A + \tan B}{ 1 - \tan A \tan B}
\end{align*}
```

### Summary


``` math
\begin{align*}
\sin \left( A + B \right) &= \sin A \cos B  +  \cos A \sin B \
\cos \left( A + B \right) &= \cos A \cos B -  \sin A \sin B \
\tan \left( A+B\right) &=\frac{\tan A + \tan B}{ 1 - \tan A \tan B}
\end{align*}
```

## Double Angle Formulas

The double angle formulas are easily calculated from the angle addition formulas by setting $B=A$ in them

``` math
\begin{align*}
\sin \left( 2A \right) &= 2 \sin A \cos A  \
\cos \left( 2A \right) &= \cos^2 A -  \sin^2 A = 1 - 2 \sin^2 A = 2\cos^2 A - 1 = (\cos A + \sin A)(\cos A - \sin A) \
\tan \left( 2A\right) &=\frac{2\tan A}{ 1 - \tan^2 A}
\end{align*}
```

$\cos \left( 2A \right)$ has a few forms because we can always use the fact that $\sin^2 A + \cos^2 A = 1$ to replace either the $\sin^2 A$ or the $\cos^2 A$ terms. The last version is using the fact that the product of the sum and the difference is the difference of the squares $(x+y)(x-y)=x^2-y^2$.


## Power Reduction Formulas

You might notice that the double angle formulas, the power of the sine or cosine increases by one, so rearanging allows you to rewite even powers of sines and cosines as the next lowest odd power instead.

### Sine

``` math
\begin{align*}
\cos \left( 2A \right) &= 1 - 2 \sin^2 A \
2 \sin^2 A &= 1 - \cos \left( 2A \right)\
\sin^2 A &= \frac{1 - \cos \left( 2A \right)}{2}
\end{align*}
```
### Cosine

``` math
\begin{align*}
\cos \left( 2A \right) &= 2\cos^2 A - 1 \
\cos \left( 2A \right)+1 &= 2\cos^2 A \
\cos^2 A &= \frac{1+\cos \left( 2A \right)}{2}
\end{align*}
```

### Tangent

``` math
\begin{align*}
\tan^2 \left( 2A \right) &= \frac{\sin^2 \left( 2A \right)}{\cos^2 \left( 2A \right)}\
 &= \frac{\frac{1 - \cos \left( 2A \right)}{2}}{\frac{1+ \cos \left( 2A \right)}{2}}\
 &= \frac{1 - \cos \left( 2A \right)}{1+\cos \left( 2A \right)}\
\end{align*}
```


## Half angle formula

[see here](https://math.libretexts.org/Bookshelves/Algebra/Algebra_and_Trigonometry_1e_(OpenStax)/09%3A_Trigonometric_Identities_and_Equations/9.03%3A_Double-Angle_Half-Angle_and_Reduction_Formulas)
