# The Orbital Plane

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

