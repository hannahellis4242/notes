# The Orbital Plane

Here we will develop the [orbital elements](https://en.wikipedia.org/wiki/Orbital_elements) in terms of planes. We should be able to translate a set of orbital elemnts to their coresponding plane and then any postition along an orbit within the orbital plane to it's position relative to the reference plane.

## The Reference Plane

Since we could choose any plane we liked as a reference plane, we'll make some convention choices now. When setting up axes for our reference plane[^1]. We will choose our x axis[^2] to be our "reference direction"


[^1]:Any plane and it's normal forms a reference frame.
[^2]:And correspondingly our i unit vector

## Equations of a Plane

Since the Orbital Plane is a plane like any other we can start with the typical vector equation that forms a plane.

``` math
\mathbf{r} = \mathbf{a} + \lambda \mathbf{b} + \mu \mathbf{c}
```
where $\mathbf{a}$ is a vector that goes from the origin to a point on the plane, $\mathbf{b}$ and $\mathbf{c}$ are non-coliniar vectors within the plane.

We can define a plane normal by taking the cross product of $\mathbf{b}$ and $\mathbf{c}$ as so
``` math
\mathbf{n} = \mathbf{b} \times \mathbf{c}
```
Taking the dot product with this normal

``` math
\begin{align*}
\mathbf{n} \cdot \mathbf{r} &= \mathbf{n} \cdot  \mathbf{a} + \lambda \mathbf{n} \cdot  \mathbf{b} + \mu \mathbf{n} \cdot \mathbf{c} \\
&=\mathbf{n} \cdot  \mathbf{a}
\end{align*}
```
where we have used the fact that $\mathbf{n} \cdot  \mathbf{b} = \mathbf{n} \cdot \mathbf{c} = 0$ because by definition the normal is perpendicular to both $\mathbf{b}$ and $\mathbf{c}$ and so the dot product is zero.

This gives us the other form of the equation for a plane of
``` math
\mathbf{n} \cdot \mathbf{r}=\mathbf{n} \cdot  \mathbf{a}
```
or
``` math
n_x x + n_y y +n_z z=k
```
where $k = \mathbf{n} \cdot  \mathbf{a}$.
In the case where the plane passes through the origin, $\mathbf{a}=\mathbf{0}$, so the dot product is also zero, and so $k$ is zero, giving us the form
``` math
n_x x + n_y y +n_z z=0
```

Since our orbital plane crosses through the origin of the refence plane also, we can fully describe the orbital plane by it's normal vector.

## The Normal of the Plane

Since it is often easier to think about a plane going through based on it's normal vector[^3]. We will start from the normal vector and use it to describe the orbital elements, so that for a given normal we can calculate the orbital elements or if given a set of orbital elements, we can work backwards to a plane normal. Thoughtout this text we will assume the normal vector is a unit vector, if it is not, we can replace it with $\hat{\mathbf{n}}$ given by

``` math
\hat{\mathbf{n}}= \frac{\mathbf{n}}{|\mathbf{n}|}=\frac{\mathbf{n}}{\sqrt{\mathbf{n} \cdot \mathbf{n} }}
```

Thoughout the rest of this text any reference to the orbital plane normal will assume it to be normal and so we will drop the hat notation for ease.

![Orbital plane and normal shown against the reference plane](./img/plane1.png)

[^3]: As we saw earlier, the equation of a plane through the origin is fully defined by the normal

## The Ascending Node

The Ascending Node is the point at which the path of an orbiting body goes through the reference plane in the same direction as the reference plane's normal. For our calculations, it's just the direction to the orbital node that maters as it helps us establish an axis we can use within our orbital plane. The Ascending Node direction is the shared direction of both the orbital plane and the reference plane.

![Orbital plane and normal shown against the reference plane showing the direction to the ascending node](./img/plain2.png)

Using our eqution for a plane based on the normal, we can work out when this crosses the reference plane by noting that a line is formed when they cross, when $z=0$ for the orbital plane.
``` math
\begin{align*}
0&=n_x x + n_y y +n_z 0\\
0&=n_x x + n_y y\\
-n_y y &= n_x x \\
y&=\frac{-n_x}{n_y} x
\end{align*}
```
This gives the equation of the line, but to get the direction of the ascending node, we need to consider the vector form
``` math
\mathbf{r} = \mathbf{a} + \mu \mathbf{b}
```
Where $\mathbf{a}$ is the vector between the origin and any point on the line, and $\mathbf{b}$ is a vector in the direction of the line. $\mathbf{a}$ is zero because the planes pass through the origin so the shared line of intersection between them will also go through the origins. We can introduce a parameter $\mu$ into the equation for the line by initially taking $x=\mu$ so that the $y$ part becomes $y=\frac{-n_x}{n_y} x$, so we get the vector form being

``` math
\begin{pmatrix}
x \\
y\\
z
\end{pmatrix} = \mu \begin{pmatrix}
1 \\
-\frac{n_x}{n_y}\\
0
\end{pmatrix}
```
Our direction to the ascending node is then 
``` math
\begin{pmatrix}
1 \\
-\frac{n_x}{n_y}\\
0
\end{pmatrix}
```
We would like this to be a unit vector so we do that by dividing by the length of the vector, we will call the unit vector in the direction of the ascending node $\hat{\mathbf{u}}$

``` math
\hat{\mathbf{u}} = \frac{1}{\sqrt{1+\frac{n_x^2}{n_y^2}}}\begin{pmatrix}
1 \\
-\frac{n_x}{n_y}\\
0
\end{pmatrix}
```
Firstly we can simplify the root

``` math
\begin{align*}
\sqrt{1+\frac{n_x^2}{n_y^2}} &= \sqrt{\frac{n_y^2}{n_y^2}+\frac{n_x^2}{n_y^2}}\\
 &= \sqrt{\frac{n_x^2+n_y^2}{n_y^2}}\\
 &= \frac{1}{n_y}\sqrt{n_x^2+n_y^2}\\
\end{align*}
```
Putting this back in we get
``` math
\hat{\mathbf{u}} = \frac{n_y}{\sqrt{n_x^2+n_y^2}}\begin{pmatrix}
1 \\
-\frac{n_x}{n_y}\\
0
\end{pmatrix}
```
Feeding the $n_y$ into the vector gives
``` math
\hat{\mathbf{u}} = \frac{1}{\sqrt{n_x^2+n_y^2}}\begin{pmatrix}
n_y \\
-n_x\\
0
\end{pmatrix}
```

For the rest of this text we shall call $\hat{\mathbf{u}}$ the "Ascending Node Vector".

## Establishing a Third Vector

We now need a third vector to describe the orbial plane, we already have $\hat{\mathbf{n}}$ and $\hat{\mathbf{u}}$, so we can establish the a third vector by taking their cross product to form a new set of axes. We would like our new set of axes to form a right handed coordinate system, so we should think of $\hat{\mathbf{u}}$ and $\hat{\mathbf{n}}$ as the new coordinate systems $\hat{\imath}$ and $\hat{k}$ respectively, however to avoid confusion we will still with $\hat{\mathbf{u}}$ and $\hat{\mathbf{n}}$. However since for a right handed coordinate system
``` math
\hat{\jmath} = \hat{k} \times \hat{\imath}
```
 we can get our third vector simarly, we will call it $\hat{\mathbf{v}}$.

``` math
\hat{\mathbf{v}}= \hat{\mathbf{n}} \times \hat{\mathbf{u}}
```

For now we won't worry about having a unit vector, just caculate the direction first. The [cross product](Maths/CrossProduct.md) is then 
``` math
{\mathbf{v}} = {\mathbf{n}} \times {\mathbf{u}} = \begin{vmatrix}
\hat{\imath} & \hat{\jmath} & \hat{k} \\
n_x & n_y & n_z \\
n_y & -n_x & 0 
\end{vmatrix} = \begin{pmatrix}
n_x n_z \\
n_y n_z\\
-(n_x^2 + n_y^2)
\end{pmatrix}
```
Now we will normalise so that we get a unit vector
``` math
\hat{\mathbf{v}} = \frac{1}{\sqrt{n_x^2 n_z^2 + n_y^2 n_z^2 + (n_x^2 + n_y^2)^2}} \begin{pmatrix}
n_x n_z \\
n_y n_z\\
-(n_x^2 + n_y^2)
\end{pmatrix}
```
so when simplifying lets start with the contents of the square root

``` math
\begin{align*}
n_x^2 n_z^2 + n_y^2 n_z^2 + (n_x^2 + n_y^2)^2 &= (n_x^2 + n_y^2) n_z^2 + (n_x^2 + n_y^2)^2\\
&=( n_x^2 + n_y^2) n_z^2 + (n_x^2 + n_y^2)(n_x^2 + n_y^2)\\
&=( n_x^2 + n_y^2)(n_z^2+(n_x^2 + n_y^2))\\
&= ( n_x^2 + n_y^2)(n_x^2 + n_y^2 +n_z^2)
\end{align*}
```
now the square root itself
``` math
\begin{align*}
\sqrt{n_x^2 n_z^2 + n_y^2 n_z^2 + (n_x^2 + n_y^2)^2 }&= \sqrt{( n_x^2 + n_y^2)(n_x^2 + n_y^2 +n_z^2)}
&= \sqrt{n_x^2 + n_y^2}\sqrt{n_x^2 + n_y^2 +n_z^2}
\end{align*}
```
Which finally gives us
``` math
\hat{\mathbf{v}} = \frac{1}{\sqrt{n_x^2 + n_y^2}\sqrt{n_x^2 + n_y^2 +n_z^2}} \begin{pmatrix}
n_x n_z \\
n_y n_z\\
-(n_x^2 + n_y^2)
\end{pmatrix}
```

Which is a bit nicer, but not a lot.

This third vector doesn't really have an established name, it is the vector that would point towards the periapsis point, if the _argument of periapsis_ is 90 degrees. However it always perpendicular to the _Ascending Node_ so in this text we shall call it the _Ascending Perpendicular Vector_. If we were to create a _Nodal Plane_, which is the plane normal to the _Ascending Node_, then the _Ascending Perpendicular Vector_ would be in the direction of the line intersecting the Orbital Plane and the Nodal Plane.

![All three planes](./img/planes.png)

## SUMARY SO FAR

Given the unit normal vector for the orbital plane
``` math
\hat{\mathbf{n}} = \begin{pmatrix}
n_x\\
n_y\\
n_z
\end{pmatrix}
```
The _Ascending Node Vector_ is 
``` math
\hat{\mathbf{u}} = \frac{1}{\sqrt{n_x^2+n_y^2}}\begin{pmatrix}
n_y \\
-n_x\\
0
\end{pmatrix}
```
The _Ascending Perpendicular Vector_ is
``` math
\hat{\mathbf{v}} = \frac{1}{\sqrt{n_x^2 + n_y^2}\sqrt{n_x^2 + n_y^2 +n_z^2}} \begin{pmatrix}
n_x n_z \\
n_y n_z\\
-(n_x^2 + n_y^2)
\end{pmatrix}
```

## Translating Between Orbital Plane and Reference Plane

Now we have a set of basis vectors established that are in the orbital plane, can start by working out the translation between a point in the plane and a point in our reference plane. Points in the orbital plane will be given coordinates $(u,v)$, so that a point is given by
``` math
\mathbf{r} = u \hat{\mathbf{u}} + v \hat{\mathbf{v}}
```
Or
``` math
\begin{pmatrix}
x \\
y\\
z
\end{pmatrix} = u \frac{1}{\sqrt{n_x^2+n_y^2}}\begin{pmatrix}
n_y \\
-n_x\\
0
\end{pmatrix}+ v \frac{1}{\sqrt{n_x^2 + n_y^2}\sqrt{n_x^2 + n_y^2 +n_z^2}} \begin{pmatrix}
n_x n_z \\
n_y n_z\\
-(n_x^2 + n_y^2)
\end{pmatrix}
```

``` math
\begin{pmatrix}
x \\
y \\
z
\end{pmatrix}=\begin{bmatrix}
\frac{n_y}{\sqrt{n_x^2+n_y^2}} & \frac{n_xn_z}{\sqrt{n_x^2+n_y^2}\sqrt{n_x^2+n_y^2+n_z^2}} \\
-\frac{n_x}{\sqrt{n_x^2+n_y^2}} & \frac{n_yn_z}{\sqrt{n_x^2+n_y^2}\sqrt{n_x^2+n_y^2+n_z^2}} \\
0 & -\frac{\sqrt{n_x^2+n_y^2}}{\sqrt{n_x^2+n_y^2+n_z^2}}   
\end{bmatrix}\begin{pmatrix}
u \\
v
\end{pmatrix}
```

For a full transformation that is invertable, you would need to include the normal vector so that points off the orbital plane could also be described
``` math
\mathbf{r} = u \hat{\mathbf{u}} + v \hat{\mathbf{v}} + n \hat{\mathbf{n}}
```
``` math
\begin{pmatrix}
x \\
y \\
z
\end{pmatrix}=\begin{bmatrix}
\frac{n_y}{\sqrt{n_x^2+n_y^2}} & \frac{n_xn_z}{\sqrt{n_x^2+n_y^2}\sqrt{n_x^2+n_y^2+n_z^2}} & \frac{n_x}{\sqrt{n_x^2+n_y^2+n_z^2}}\\
-\frac{n_x}{\sqrt{n_x^2+n_y^2}} & \frac{n_yn_z}{\sqrt{n_x^2+n_y^2}\sqrt{n_x^2+n_y^2+n_z^2}} &
\frac{n_y}{\sqrt{n_x^2+n_y^2+n_z^2}}  \\
0 & -\frac{\sqrt{n_x^2+n_y^2}}{\sqrt{n_x^2+n_y^2+n_z^2}} & \frac{n_z}{\sqrt{n_x^2+n_y^2+n_z^2}}
\end{bmatrix}\begin{pmatrix}
u \\
v \\
n
\end{pmatrix}
```

## Orbital Elements

### Longitude of the Ascending Node

The _Longitude of the Ascending Node_ is given the symbol $\Omega$ and is the angle between the reference direction within the reference plane and the _Ascending Node_. In our case it's the angle between the x axis and the Ascending Node Vector $\hat{\mathbf{u}}$. 

![Diagram showing the angle for the Longitude of the Ascending Node](./img/LongAscend.png)

Since the angle can be any angle within a full circle, rather than using the dot product, we will just use the fact $\tan \theta = \frac{y}{x}$ (you can use _atan2_ in most programming languges for this)

``` math
\tan \Omega = \frac{u_x}{u_y} = - \frac{n_y}{n_x}
```

Since we will wish to work backwards from a given Longitude of the Ascending Node, we can always split this up a little bit into sines and cosines.


``` math
\begin{align*}
\cos \Omega &= u_x = \frac{n_y}{\sqrt{n_x^2+n_y^2}} \\
\sin \Omega &= u_y = -\frac{n_x}{\sqrt{n_x^2+n_y^2}} \\
\end{align*}
```

### Inclination

The _Inclination_ is the angle the orbital plane makes with the reference plane at the ascending node, and is given the symbol $i$. 

![The Inclination looking down the ascending node](./img/plane-inclination.png)

This is the same as the angle the normal makes with the reference plane's normal vector.

![Angle between the orbital plane normal and the reference plane normal](./img/plane-inclination2.png)

so this can be obtained by taking the dot product

``` math
\hat{\mathbf{n}} \cdot \hat{k} = \frac{n_z}{\sqrt{n_x^2 + n_y^2 + n_z^2 \\}} = \cos i
```

### Longitude of the Ascending Node and Inclination

Both these two elements together establish the normal of the orbital plane.

``` math
\begin{align*}
\cos \Omega &= \frac{n_y}{\sqrt{n_x^2+n_y^2}} \\
\sin \Omega &= -\frac{n_x}{\sqrt{n_x^2+n_y^2}} \\
\cos i &= \frac{n_z}{\sqrt{n_x^2 + n_y^2 + n_z^2 }}
\end{align*}
```

If we're aiming for a unit normal vector, we of course choose $\sqrt{n_x^2 + n_y^2 + n_z^2}$ so that it is 1, so that
``` math
\begin{align*}
1 &=\sqrt{n_x^2 + n_y^2 + n_z^2 }\\
1 &=n_x^2 + n_y^2 + n_z^2\\
1 -n_z^2&=n_x^2 + n_y^2\\
\sqrt{n_x^2 + n_y^2}&=\sqrt{1-n_z^2}
\end{align*}
```
since $n_z = \cos i$, we can substitute that in
``` math
\begin{align*}
\sqrt{n_x^2 + n_y^2}&=\sqrt{1-n_z^2}=\sqrt{1-\cos^2 i}
\sqrt{n_x^2 + n_y^2}&=\sin i
\end{align*}
```
where we have used the identity $\sin^2 x + \cos^2 x = 1$. So we get 
``` math
\begin{align*}
\cos \Omega &= \frac{n_y}{\sin i} \\
\sin \Omega &= -\frac{n_x}{\sin i} \\
n_z &= \cos i
\end{align*}
```
rearanging gives
``` math
\begin{align*}
n_x &= -\sin i \sin \Omega & \\
n_y &= \sin i \cos \Omega &\\
n_z &= \cos i
\end{align*}
```

#### Summary

The orbital plane normal can be calculated from the Longitude of the Ascending Node $\Omega$ and the Inclination $i$ as follows

``` math
\hat{\mathbf{n}} = \begin{pmatrix}
-\sin i \sin \Omega \\
\sin i \cos \Omega \\
\cos i
\end{pmatrix}
```

The Ascending Node Vector is then
``` math
\hat{\mathbf{u}} = \begin{pmatrix}
\cos \Omega \\
\sin \Omega\\
0
\end{pmatrix}
```

The Ascending Perpendicular Vector is
``` math
\hat{\mathbf{v}} = \begin{pmatrix}
-\sin \Omega \cos i \\
\cos \Omega \cos i\\
-\sin i
\end{pmatrix}
```

### Argument of Periapsis

Although the orbital plane is correctly orientated, there is nothing stopping the orbit itself to be rotated within the plane. To account for this a third element called the _Argument of Periapsis_ is used. This is the angle between the _Ascending Node_ and the periapsis of the orbit. It is given the symbol $\omega$.

[The Argument of Periapsis as the angle between the ascending node and the periapsis](./img/plane-aop.png)

In the derivations ([here](./Ellipse.md), [here](./KeplersEquation.md) and [here](./EllipticalOrbits.md) so far we have taken the periapsis to be on the positive x axis. This was chosen so that we can reference the periapsis in the orbital plane.

Since this is just a plane rotation, it should be fairly easy to establish the transformation. Firstly we note that for any point $(x,y)$ within the orbit is defined so that
``` math
\mathbf{r}=x \hat{\mathbf{p}} + y \hat{\mathbf{q}}
```
![Showing the orientation between the ascending node vector, u, and the periapsis vector, p](./img/AOP.svg)

where $p$ is the vector from the origin to the periapsis, and $u$ is the ascending node. In the above diagram we are looking down the normal of the orbital plane. $p$ and $q$ can be calculated from the Argument of Periapsis, as such
``` math
\begin{align*}
\hat{\mathbf{p}} &= \cos \omega \hat{\mathbf{u}} + \sin \omega \hat{\mathbf{v}}\\
\hat{\mathbf{q}} &= -\sin \omega \hat{\mathbf{u}} + \cos \omega \hat{\mathbf{v}}
\end{align*}
```

So we can get the position within the plane to be
``` math
\begin{align*}
\mathbf{r}&=x \hat{\mathbf{p}} + y \hat{\mathbf{q}}\\
&= x (\cos \omega \hat{\mathbf{u}} + \sin \omega \hat{\mathbf{v}}) + y(-\sin \omega \hat{\mathbf{u}} + \cos \omega \hat{\mathbf{v}})\\
&= (x \cos \omega- y\sin \omega) \hat{\mathbf{u}} + (x \sin \omega + y \cos \omega)\hat{\mathbf{v}}
\end{align*}
```

## Postion based on orbital plane normal

``` math
\mathbf{r}= (x \cos \omega- y\sin \omega) \frac{1}{\sqrt{n_x^2+n_y^2}}\begin{pmatrix}
n_y \\
-n_x\\
0
\end{pmatrix} + (x \sin \omega + y \cos \omega)\frac{1}{\sqrt{n_x^2 + n_y^2}\sqrt{n_x^2 + n_y^2 +n_z^2}} \begin{pmatrix}
n_x n_z \\
n_y n_z\\
-(n_x^2 + n_y^2)
\end{pmatrix}
```
