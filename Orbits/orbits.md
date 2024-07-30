# Orbits extended

The following contains notes to add to the full version once ready.

## Three results we will be using here

In the orbital plane

1. The angular momentum for an orbit is given by $l = m r^2 \omega$ where $l$ is the magnitude of the angular momentum (the angular momentum vector is directed along the z axis normal to the plane in a right handed coordinate system)
2. In an eliptial orbit the angular momentum per unit mass (of the orbiting body) is given by $\frac{l}{m}=\sqrt{GM}\sqrt{\frac{2ap}{a+p}}$
   where $a$ and $p$ are the apoapsis and periapsis respectively.
3. The equation for an elipse in polar coordinates is given by $r(\theta)=\frac{A(1+e)(1-e)}{1+e \cos \theta}$
   so that the periapsis at $\theta = 0$
   (Note this is different to what is given in the other notes, as that has the apoapsis at $\theta = 0$. Can update this for everything later.)
   Where $A=\frac{a+p}{2}$ and $e=\frac{a-p}{a+p}$

## Rewriting the polar equation

For the polar equation of an elipse we have the following
``` math
r(\theta)=\frac{A(1+e)(1-e)}{1+e \cos \theta}
```
We can rewrite the numerator in terms of $a$ and $p$

``` math
\begin{align*}
A(1+e)(1-e) &= \frac{a+p}{2}\left(1+ \frac{a-p}{a+p}\right)\left(1- \frac{a-p}{a+p}\right)\\
 &= \frac{a+p}{2}\frac{a+p +a-p}{a+p}\frac{a+p-a+p}{a+p}\\
 &= \frac{a+p}{2}\frac{2a}{a+p}\frac{2p}{a+p} \\
 &= \frac{2ap}{a+p}
\end{align*}
```
So we obtain
``` math
r(\theta)=\frac{2ap}{a+p}\frac{1}{1+e \cos \theta}
```

## Using angular momentum to get angular velocity

The equation for angular momentum per unit mass can be rearranged

``` math
\begin{align*}
\frac{l}{m} &= r^2 \omega\\
\omega &= \frac{l}{m} \frac{1}{r^2}
\end{align*}
```

## Putting in the known anlgular momentum value for an eliptical orbit

``` math
\begin{align*}
\omega &= \frac{l}{m} \frac{1}{r^2}\\
 &= \sqrt{GM}\sqrt{\frac{2ap}{a+p}} \frac{1}{r^2}
\end{align*}
```

## Using the equation of an elipse in the angular velocity equation

``` math
\begin{align*}
\omega &= \sqrt{GM}\sqrt{\frac{2ap}{a+p}} \frac{1}{r^2} \\
 &= \sqrt{GM}\sqrt{\frac{2ap}{a+p}} \frac{1}{\left(\frac{2ap}{a+p}\frac{1}{1+e \cos \theta}\right)^2} \\
&= \sqrt{GM}\sqrt{\frac{2ap}{a+p}} \frac{\left(1+e \cos \theta\right)^2}{\left(\frac{2ap}{a+p}\right)^2}\\
&= \frac{\sqrt{GM}}{\left(\sqrt{\frac{2ap}{a+p}}\right)^3} \left(1+e \cos \theta\right)^2
\end{align*}
```
