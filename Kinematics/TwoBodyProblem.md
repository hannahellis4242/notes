# Two Body Problem

In the two body problem, we have a parent particle that decays into two daughter particles. We will label the parent particle $p$ and the daugter particles $a$ and $b$ respectively.

## Parent particle at rest

The frame of reference where the parent particle is at rest is called the rest frame.

### Parent Particle

In the rest frame the parent particle has four momentum

``` math
P_p = \begin{pmatrix}
Mc^2 \\
0 \\
0\\
0
\end{pmatrix}
```

### Daughter A

``` math
P_a = \begin{pmatrix}
E_a \\
p_a \sin \theta_a \cos \phi_a  \\
p_a \sin \theta_a \sin \phi_a \\
p_a \cos \theta_a
\end{pmatrix}
```

Where I am using spherical polar coordinates, as this helps separate out the magnitute of the momentum from it's direction. It will also help when doing a lorentz boost into the lab frame later.

### Daughter B

``` math
P_b = \begin{pmatrix}
E_b \\
p_b \sin \theta_b \cos \phi_b  \\
p_b \sin \theta_b \sin \phi_b \\
p_b \cos \theta_b
\end{pmatrix}
```

## Energy of the daughter a

Starting by equating the momentum before with momentum after we get

``` math
P_p = P_a + P_b
```

We can rearrange our momentum sum as follows.

``` math
\begin{align*}
P_p &= P_a + P_b \\
P_p - P_a &= P_b \\
(P_p - P_a)\cdot(P_p - P_a) &= P_b \cdot P_b \\
P_p^2 - 2 P_a \cdot P_p + P_a^2 &= P_b^2
\end{align*}
```

Remembering that any four momentum vector squared is just it's square rest mass energy.

``` math
\begin{align*}
P_p^2 - 2 P_a \cdot P_p + P_a^2 &= P_b^2 \\
M^2c^4 + m_a^2c^4 - 2 P_a \cdot P_p &= m_b^2 c^4 \\
M^2c^4 + m_a^2c^4 - m_b^2 c^4 &= 2 P_a \cdot P_p
\end{align*}
```

Now we just have the dot product to deal with. Which we can do by following the rules about dot product for four momentum vectors

``` math
P_a \cdot P_p = \begin{pmatrix}
E_a \\
p_a \sin \theta_a \cos \phi_a  \\
p_a \sin \theta_a \sin \phi_a \\
p_a \cos \theta_a
\end{pmatrix} \cdot \begin{pmatrix}
Mc^2 \\
0 \\
0\\
0
\end{pmatrix} = E_a Mc^2
```

So we're left with

``` math
\begin{align*}
2 M E_a &= M^2c^4 + m_a^2c^4 - m_b^2 c^4\\
E_a &= \frac{M^2c^4 + m_a^2c^4 - m_b^2 c^4}{2 M c^2}
\end{align*}
```

## Energy of the daughter b

Starting by equating the momentum before with momentum after we get

``` math
P_p = P_a + P_b
```

We can rearrange our momentum sum as follows.

``` math
\begin{align*}
P_p &= P_a + P_b \\
P_p - P_b &= P_a \\
(P_p - P_b)\cdot(P_p - P_b) &= P_a \cdot P_a \\
P_p^2 - 2 P_b \cdot P_p + P_b^2 &= P_a^2
\end{align*}
```

Remembering that any four momentum vector squared is just it's square rest mass energy.

``` math
\begin{align*}
P_p^2 - 2 P_b \cdot P_p + P_b^2 &= P_a^2 \\
M^2c^4 + m_b^2c^4 - 2 P_b \cdot P_p &= m_a^2 c^4 \\
M^2c^4 + m_b^2c^4 - m_a^2 c^4 &= 2 P_b \cdot P_p
\end{align*}
```

Now we just have the dot product to deal with. Which we can do by following the rules about dot product for four momentum vectors

``` math
P_b \cdot P_p = \begin{pmatrix}
E_b \\
p_b \sin \theta_b \cos \phi_b  \\
p_b \sin \theta_b \sin \phi_b \\
p_b \cos \theta_b
\end{pmatrix} \cdot \begin{pmatrix}
Mc^2 \\
0 \\
0\\
0
\end{pmatrix} = E_b Mc^2
```

So we're left with

``` math
\begin{align*}
2 M E_b &= M^2c^4 + m_b^2c^4 - m_a^2 c^4\\
E_b &= \frac{M^2c^4 + m_b^2c^4 - m_a^2 c^4}{2 M c^2}
\end{align*}
```
