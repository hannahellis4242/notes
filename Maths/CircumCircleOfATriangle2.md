# Circum Circle of a Triangle

## The Idea

A triangle is formed from three points $A$, $B$ and $C$. A circle that passes through all three can be constructed
as follows:

- Draw a line between $A$ and $B$, and find its **perpendicular bisector** — the line perpendicular to $AB$, passing
  through its midpoint. Every point on this bisector is equidistant from $A$ and $B$.
- Do the same for $B$ and $C$, giving a second perpendicular bisector. Every point on it is equidistant from $B$ and $C$.
- The point where these two bisectors **cross** is therefore equidistant from all three of $A$, $B$ and $C$ — this is
  the circumcenter, $p=(x,y)$. The common distance is the radius, $r$.

![diagram](./img/circum-circle-diagram.svg)

The rest of this note builds up the machinery needed to compute this crossing point algebraically: first, a way to
describe a line using a point and a normal vector; then, how to build a perpendicular bisector this way; then, how to
find where two such lines cross.

## Machinery

### Describing a line by a point and its normal

A line can be described by a **normal vector** $\vec{n}$ — a vector perpendicular to the line — together with any
one point $p_0=(x_0,y_0)$ known to lie on it. The line is then the set of _all_ points $(x,y)$ satisfying

```math
\vec{n} \cdot (x,y) = \vec{n} \cdot p_0
```

This works because the dot product $\vec{n}\cdot(x,y)$ measures the projection of $(x,y)$ onto $\vec{n}$. Fixing that
projection to match $p_0$'s projection restricts $(x,y)$ to the single line through $p_0$ perpendicular to $\vec{n}$ —
moving along the line doesn't change your projection onto its normal, but moving off the line does.

### The perpendicular bisector of two points

Given two points $P_i=(x_i,y_i)$ and $P_j=(x_j,y_j)$, we can build their perpendicular bisector directly using the
form above.

- A vector **perpendicular to the bisector** is simply the side vector itself, $\vec{\delta}_{ij} = P_i - P_j = (\delta x_{ij}, \delta y_{ij})$,
  since the bisector is by definition perpendicular to the segment $P_iP_j$.
- A **point known to be on the bisector** is the midpoint, $\hat{p}_{ij} = \left(\frac{x_i+x_j}{2}, \frac{y_i+y_j}{2}\right) = (\hat{x}_{ij}, \hat{y}_{ij})$.

Plugging these into the point-and-normal line equation gives the bisector directly:

```math
\vec{\delta}_{ij} \cdot (x,y) = \vec{\delta}_{ij}\cdot \hat{p}_{ij}
```

We'll label the right-hand side $K_{ij} = \vec{\delta}_{ij}\cdot\hat{p}_{ij} = \delta x_{ij}\hat{x}_{ij} + \delta y_{ij}\hat{y}_{ij}$,
giving the compact form

```math
K_{ij} = \delta x_{ij}\, x + \delta y_{ij}\, y
```

### The crossing point of two lines

Given two lines in this normal form,

```math
\begin{align*}
\vec{n}_1 \cdot (x,y) &= k_1 \\
\vec{n}_2 \cdot (x,y) &= k_2
\end{align*}
```

their crossing point is found by solving both simultaneously. Writing this as a matrix equation:

```math
\begin{pmatrix}
k_1 \\
k_2
\end{pmatrix} = \begin{bmatrix}
n_{1x} & n_{1y} \\
n_{2x} & n_{2y} \\
\end{bmatrix}\begin{pmatrix}
x \\
y
\end{pmatrix}
```

which has solution

```math
\begin{pmatrix}
x \\
y
\end{pmatrix}=\frac{1}{n_{1x}n_{2y} - n_{1y}n_{2x}}\begin{bmatrix}
n_{2y} & -n_{1y} \\
-n_{2x} & n_{1x} \\
\end{bmatrix}\begin{pmatrix}
k_1 \\
k_2
\end{pmatrix}
```

The denominator $n_{1x}n_{2y} - n_{1y}n_{2x}$ is the 2D cross product $\vec{n}_1 \times \vec{n}_2$. A cross product is
zero exactly when the two vectors are parallel — so this solution breaks down exactly when $\vec{n}_1$ and $\vec{n}_2$
are parallel, meaning the two lines themselves are parallel (or identical), and either never meet or meet everywhere
rather than at a single point.

## Applying this to the Circumcircle

To find the circumcenter, take the two perpendicular bisectors built above — say for sides $AB$ and $BC$ — and treat
them as the two lines to intersect. Their normals are $\vec{\delta}_{AB}$ and $\vec{\delta}_{BC}$, so:

```math
\begin{pmatrix}
K_{AB} \\
K_{BC}
\end{pmatrix} = \begin{bmatrix}
\delta x_{AB} & \delta y_{AB} \\
\delta x_{BC} & \delta y_{BC} \\
\end{bmatrix}\begin{pmatrix}
x \\
y
\end{pmatrix}
```

with solution

```math
\begin{pmatrix}
x \\
y
\end{pmatrix}=\frac{1}{\delta x_{AB}\delta y_{BC} -\delta y_{AB}\delta x_{BC}}\begin{bmatrix}
\delta y_{BC} & -\delta y_{AB} \\
-\delta x_{BC} & \delta x_{AB} \\
\end{bmatrix}\begin{pmatrix}
K_{AB} \\
K_{BC}
\end{pmatrix}
```

The denominator vanishing corresponds to $\vec{\delta}_{AB}$ and $\vec{\delta}_{BC}$ being parallel — i.e. sides $AB$
and $BC$ pointing along the same line — which is exactly the case where $A$, $B$, $C$ are collinear and have no
circumcircle. Its magnitude also equals twice the (signed) area of triangle $ABC$, since the cross product of two
vectors always gives twice the area of the triangle (or parallelogram) they span.

Once $(x,y)$ is found, the radius follows directly from the plain distance formula to any one of the three points:

```math
r = \sqrt{(x-x_A)^2 + (y-y_A)^2}
```

## Appendix: Deriving the Bisector from Distances

The bisector equation $K_{ij} = \delta x_{ij}x + \delta y_{ij}y$ can also be reached without starting from the
normal-vector idea, by working directly from the requirement that $(x,y)$ be equidistant from $P_i$ and $P_j$:

```math
\begin{align*}
\sqrt{ (x-x_i)^2 + (y-y_i)^2 }  &= \sqrt{ (x-x_j)^2 + (y-y_j)^2 } \\
(x-x_i)^2 + (y-y_i)^2  &= (x-x_j)^2 + (y-y_j)^2 \\
x^2-2x_i x +x_i^2 + y^2 - 2y_i y + y_i^2 &= x^2-2x_j x +x_j^2 + y^2 - 2y_j y + y_j^2 \\
-2x_i x +x_i^2 - 2y_i y + y_i^2 &= -2x_j x +x_j^2 - 2y_j y + y_j^2 \\
x_i^2 + y_i^2 - x_j^2 - y_j^2&= -2x_j x - 2y_j y +2x_i x+2y_i y\\
(x_i^2 - x_j^2) + (y_i^2 - y_j^2) &= 2(x_i-x_j) x + 2(y_i -y_j) y\\
(x_i - x_j)\frac{x_i + x_j}{2} + (y_i- y_j)\frac{y_i+y_j}{2} &= (x_i-x_j) x + (y_i -y_j) y
\end{align*}
```

The squared terms cancel because both sides expand identically — this is the algebraic signature of the fact that
"equidistant from two points" is a straight line (the bisector), not a curve. The result is the same $K_{ij}$ equation
derived above, confirming both routes agree: one built directly from the geometric normal-and-point idea, the other
arrived at by brute-force expansion of the distance equality.
