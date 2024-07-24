# Circumcircle of a triangle

The circumcircle of a triangle is a circle of minimum radius that fully contains the triangle.

Since you can construct a circle that goes through any three points, the circumcircle will actually touch the three corners of the triangle.

This means constructing the circumcircle is the same as constructing a circle through three points.

## Finding the centre

### Method 1

This method uses the fact that the distance to the centre of the circumcircle to each corner is the same for every corner.

![circumcircle](../img/dbf8408a-c61c-4d9e-89ef-02abc84065fe.svg)

The triangle corners are labelled $A$, $B$ and $C$ and the centre of the circumcircle is lablled $O$

The distance to any point $P$ is given by

``` math
\left| O - P \right|^2=\left| O \right|^2 + \left| P^2 \right| - 2 O \cdot P
```

We can subract any two distances from each other, and since the distances are the same for every courner of the triangle we obtain the following

``` math
\left| O - P \right|^2=\left| O \right|^2 + \left| P^2 \right| - 2 O \cdot P
```
