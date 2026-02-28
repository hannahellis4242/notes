# Relativistic Kinematics

## Four Momentum

In relativistic kinematics, a useful object is the four momentum, defined as such

``` math
\begin{pmatrix}
E \\
p_x c \\
p_y c \\
p_z c
\end{pmatrix}
```

Where $E$ is the energy of the particle, and $\mathbf{p}$ is the momentum of the particle with the subscript defining the direction.

Where the dot product of two four mometum vectors is defined to be

``` math
\begin{pmatrix}
a_0 \\
a_1 \\
a_2 \\
a_3
\end{pmatrix} \cdot
\begin{pmatrix}
b_0 \\
b_1 \\
b_2 \\
b_3
\end{pmatrix} = a_0 b_0 - (a_1 b_1 + a_2 b_2 +a_3 b_3 )
```
Notice the negative sign. This is chosen so that it is invariant of Lorentz transformations and so a dot product of any four vector with itself is then
``` math
\begin{pmatrix}
E \\
p_x c \\
p_y c \\
p_z c
\end{pmatrix}\cdot
\begin{pmatrix}
E \\
p_x c \\
p_y c \\
p_z c
\end{pmatrix}\ = E^2 - \left|\mathbf{p}\right|^2 c^2 = m^2c^4 = (mc^2)^2
```
where $m$ is the rest mass of the particle.

## Individual particle

As we've already seen for an individual particle 

``` math
E^2 - (pc)^2  = (mc^2)^2
```
where $p=\left|\mathbf{p}\right|$

Additionally we have that the energy is given by

``` math
E = m \gamma c^2
```
where $c$ is the speed of light and

``` math
\gamma = \frac{1}{\sqrt{1-\left(\frac{v}{c}\right)^2}}
```

The momentum is given by

``` math
p = m \gamma v
```
where $v$ is the velocity of the particle.

If we use 

``` math
\beta = \frac{v}{c}
```
we get
``` math
\gamma = \frac{1}{\sqrt{1-\beta^2}}
```

``` math
\begin{align*}
p &= m \gamma\beta c \
pc &= \gamma\beta  mc^2 \
E &= \gamma mc^2
\end{align*}
```

We can rearrange the last few equations to get new equations for $\gamma$ and $\beta$ in terms of $E$, $m$ and $p$.


``` math
\begin{align*}
\gamma &= \frac{E}{mc^2} \
\gamma\beta &= \frac{pc}{mc^2} \
\beta &= \frac{1}{\gamma}\frac{pc}{mc^2} =\frac{mc^2}{E}\frac{pc}{mc^2} = \frac{pc}{E}
\end{align*}
```

