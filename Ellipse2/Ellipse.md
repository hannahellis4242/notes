# Ellipse

## Geometry
![geometry](./img/diagram.svg)

In the above diagram a point $P$ on the ellipse forms an angle $E$ with the origin and the $x$ axis. Additionally the angle $\theta$ is formed at the ellipse's focus between the point on the ellipse and the axis.

Additionally the distances $a$ and $p$ are the apoapsis and periapsis distances respectively.

The semi major axis has been labeled as $A$, so that the total width of the ellipse is $2A$. Not shown on the diagram is the semi minor axis $B$. However the total height of the ellipse in the diagram is $2B$.

For this text we will take the elliptical eccentricity to be defined as the ratio of the focus and the semi major axis.

``` math
e = \frac{f}{A}
```

### The Apses

Before we get any further, we will look at the apses. From the diagram we can see that

``` math
p = A - f = A - eA = A(1-e)
```

and that
``` math
a  = A + f = A + eA = A(1+e)
```

Additionally

``` math
\begin{align*}
a+p &= A -f + A +f = 2A \\
a-p &= A + f - A + f = 2f
\end{align*}
```

which can give us the eccentricity as defined by the apses
``` math
e=\frac{f}{A}=\frac{2f}{2A}=\frac{a-p}{a+p}
```

### Sum of distances from foci and $P$

One property of an ellipse is that the sum of the distances from any point on the ellipse and the foci is a constant. This fact allows you to draw an ellipse using two pins and a piece of string. We will use this fact and look at two special cases, before looking at the general case and deriving the equation for an ellipse. Before we do we will define what the sum is here.

``` math
S = d + r
```

#### Special Case 1 point on the $x$ axis

When the point is at $(A,0). The distance $d$ is $f+A$ and the distance $r$ is $A-f$ from the diagram above. So our sum becomes

``` math
S = d + r = f+A + A-f = 2A
```
#### Special Case 2 point on the $y$ axis

When the point is on the $y$ axis, it is at the point $(0,B)$. The distance $d$ is $\sqrt{f^2+B^2}$ and the distance $r$ is also $\sqrt{f^2+B^2}$ from the diagram above. So our sum is

``` math
S = 2 \sqrt{f^2+B^2}
```

and if the sum is a constant then this will be equal to the value obtained before.

``` math
S = 2 \sqrt{f^2+B^2} = 2 A
```

and so we now have the relationship between the semi major and minor axes and the focus

``` math
 A^2=f^2+B^2
```

This can also be used to get $B$ in terms of $A$ using the connection to the eccentricity

``` math
\begin{align*}
B^2&=A^2-f^2\\
&=A^2-(eA)^2\\
&=A^2(1-e^2)\\
\Rightarrow  & B = A\sqrt{1-e^2}
\end{align*}
```

#### General case.

In general for a point at $(x,y)$ the sum is

``` math
S=
```

### Point on the ellipse
The point on the ellipse is at $(x,y)$ where $x$ and $y$ are given by

``` math
\begin{align*}
x &= A \cos E \\
y &= B \sin E
\end{align*}
```

However, we can also measure $x$ and $y$ from the focus. Looking at $x$ first

``` math
\begin{align*}
x &= r \cos \theta
\end{align*}
```