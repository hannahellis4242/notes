# Two Body Problem

In the two body problem, we have a parent particle that decays into two daughter particles. We will label the parent particle $p$ and the daugter particles $a$ and $b$ respectively.

## Parent particle at rest

The frame of reference where the parent particle is at rest is called the rest frame.

> Will introduce some shorthand here. $\tilde{m}=mc^2$ and $\tilde{p} = p c$. So that c's aren't so easily lost.

### Parent Particle

In the rest frame the parent particle has four momentum

``` math
P_p = \begin{pmatrix}
\tilde{M} \\
0 \\
0\\
0
\end{pmatrix}
```

### Daughter A

``` math
P_a = \begin{pmatrix}
E_a \\
\tilde{p}_a \sin \theta \cos \phi  \\
\tilde{p}_a  \sin \theta \sin \phi \\
\tilde{p}_a \cos \theta
\end{pmatrix}
```

Where I am using spherical polar coordinates, as this helps separate out the magnitute of the momentum from it's direction. It will also help when doing a lorentz boost into the lab frame later.

#### Energy of Daughter A

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
\tilde{M}^2 + \tilde{m}_a^2 - 2 P_a \cdot P_p &= \tilde{m}_b^2 \\
\tilde{M}^2 + \tilde{m}_a^2 - \tilde{m}_b^2 &= 2 P_a \cdot P_p
\end{align*}
```

Now we just have the dot product to deal with. Which we can do by following the rules about dot product for four momentum vectors

``` math
P_a \cdot P_p = \begin{pmatrix}
E_a \\
\tilde{p}_a \sin \theta \cos \phi \\
\tilde{p}_a \sin \theta \sin \phi \\
\tilde{p}_a \cos \theta
\end{pmatrix} \cdot \begin{pmatrix}
\tilde{M} \\
0 \\
0\\
0
\end{pmatrix} = E_a \tilde{M}
```

So we're left with

``` math
\begin{align*}
2 \tilde{M} E_a &= \tilde{M}^2 + \tilde{m}_a^2 - \tilde{m}_b^2\\
E_a &= \frac{\tilde{M}^2 + \tilde{m}_a^2 - \tilde{m}_b^2}{2 \tilde{M}}
\end{align*}
```

#### Momentum of daughter A

``` math
\begin{align*}
\tilde{p}_a^2 &= E_a^2 - \tilde{m}_a^2 \\
&= \left(\frac{\tilde{M}^2 + \tilde{m}_a^2 - \tilde{m}_b^2}{2 \tilde{M}}\right)^2 - \tilde{m}_a^2\\
&= \frac{\left(\tilde{M}^2 + \tilde{m}_a^2 - \tilde{m}_b^2\right)^2}{4 \tilde{M}^2} - \tilde{m}_a^2\\
&= \frac{\left(\tilde{M}^2 + \tilde{m}_a^2 - \tilde{m}_b^2\right)^2- 4 \tilde{M}^2\tilde{m}_a^2}{4 \tilde{M}^2} \\
4 \tilde{M}^2\tilde{p}_a^2 &=\left(\tilde{M}^2 + \tilde{m}_a^2 - \tilde{m}_b^2\right)^2- 4 \tilde{M}^2\tilde{m}_a^2 \\
&=\left(\tilde{M}^2 \left(\tilde{M}^2 + \tilde{m}_a^2 - \tilde{m}_b^2\right)+ \tilde{m}_a^2 \left(\tilde{M}^2 + \tilde{m}_a^2 - \tilde{m}_b^2\right)- \tilde{m}_b^2\left(\tilde{M}^2 + \tilde{m}_a^2 - \tilde{m}_b^2\right)\right)- 4 \tilde{M}^2\tilde{m}_a^2
\end{align*}
```

### Daughter B

``` math
P_b = \begin{pmatrix}
E_b \\
\tilde{p}_b \sin (\pi-\theta) \cos (\phi+\pi)  \\
\tilde{p}_b \sin (\pi-\theta)\sin (\phi+\pi) \\
\tilde{p}_b \cos (\pi-\theta)
\end{pmatrix}
```

> The angles for daughter b will be left for later, but are chosen so that $\mathbf{p}_a +\mathbf{p}_b=\mathbf{0}$ to conserve momentum.

## Energy of daughter b

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
\tilde{M}^2 + \tilde{m}_b^2 - 2 P_b \cdot P_p &= \tilde{m}_a^2 \\
\tilde{M}^2 +\tilde{m}_b^2-\tilde{m}_a^2 &= 2 P_b \cdot P_p
\end{align*}
```

Now we just have the dot product to deal with. Which we can do by following the rules about dot product for four momentum vectors

``` math
P_b \cdot P_p =\begin{pmatrix}
E_b \\
\tilde{p}_b \sin (\pi-\theta) \cos (\phi+\pi)  \\
\tilde{p}_b \sin (\pi-\theta)\sin (\phi+\pi) \\
\tilde{p}_b \cos (\pi-\theta)
\end{pmatrix} \cdot \begin{pmatrix}
\tilde{M} \\
0 \\
0\\
0
\end{pmatrix} = E_b \tilde{M}
```

So we're left with

``` math
\begin{align*}
2 \tilde{M} E_b &= \tilde{M}^2 + \tilde{m}_b^2 - \tilde{m}_a^2\\
E_b &= \frac{\tilde{M}^2 + \tilde{m}_b^2 - \tilde{m}_a^2}{2 \tilde{M}}
\end{align*}
```

## Momentum of daughter b

``` math
\begin{align*}
p_b^2c^2 &= E_b^2 - m_b^2 c^4 \\
&=\left(\frac{M^2c^4 + m_b^2c^4 - m_a^2 c^4}{2 M c^2}\right)^2-m_b^2 c^4
\end{align*}
```
