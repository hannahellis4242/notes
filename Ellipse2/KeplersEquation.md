# Kepler's Equation

## Derivation

Starting with the result from the Ellipse notes that the distance from a focus to any point on the ellipse is given by

``` math
r=A(1-e\cos E)
```

where $A$ is the semi major axis and $e$ is the eccentricity of the ellipse, defined as $e=\frac{f}{A}$ where $f$ is the distance to the focus of the eclipse from it's center. Finally $E$ is the angle between the semi major axis going through the focus and the point on the ellipse.

Taking the derivative with respect to time

``` math
\begin{align*}
\frac{dr}{dt} &= A \frac{d}{dt}\left(1-e\cos E \right)\\
&= A \frac{dE}{dt}\frac{d}{dE}\left(1-e\cos E \right)\\
&= eA \sin E \frac{dE}{dt}
\end{align*}
```

We have an equation for $r$ based on the polar equation of an ellipse $r = \frac{A\left(1-e^2\right)}{ 1+e \cos \theta}$. We can invert this this to get

``` math
\frac{1}{r}= \frac{ 1+e \cos \theta}{A\left(1-e^2\right)} \\
```
which will make taking the derivative with respect to time easier.

``` math
\begin{align*}
\frac{d}{dt}\left( \frac{1}{r}\right) &= \frac{d}{dt}\left[ \frac{ 1+e \cos \theta}{A\left(1-e^2\right)}\right]\\
\frac{dr}{dt}\frac{d}{dr}\left( \frac{1}{r}\right) &= \frac{1}{A(1-e^2)}\frac{d\theta}{dt}\frac{d}{d\theta}\left[  1+e \cos \theta \right]\\
-\frac{1}{r^2}\frac{dr}{dt} &= \frac{-e \sin \theta}{A(1-e^2)}\frac{d\theta}{dt}
\end{align*}
```

We already have an equation for $\frac{dr}{dt} = eA \sin E \frac{dE}{dt}$, so we will substitute this in

``` math
-\frac{1}{r^2} eA \sin E \frac{dE}{dt}= \frac{-e \sin \theta}{A(1-e^2)}\frac{d\theta}{dt}

```

From the equations for an ellipse, we had an equation for the height of a point on the ellipse in terms of $\theta$ and in terms of $E$

``` math
\begin{align*}
y & = r \sin \theta \\
&= A\sqrt{1-e^2}\sin E
\end{align*}
```
We can use this relationship to replace the $\sin \theta$ term in our equation

``` math
\begin{align*}
-\frac{1}{r^2} eA \sin E \frac{dE}{dt}&= \frac{-e \sin \theta}{A(1-e^2)}\frac{d\theta}{dt}\\
&= \frac{-e A\sqrt{1-e^2}\sin E}{Ar(1-e^2)}\frac{d\theta}{dt}\\
&= \frac{-e \sin E}{r\sqrt{1-e^2}}\frac{d\theta}{dt}\\
\frac{-eA \sin E }{r^2} \frac{dE}{dt}&= \frac{-e \sin E}{r\sqrt{1-e^2}}\frac{d\theta}{dt}\\
\frac{dE}{dt}&= \frac{-r^2}{eA \sin E } \frac{-e \sin E}{r\sqrt{1-e^2}}\frac{d\theta}{dt}\\
\frac{dE}{dt} & = \frac{r}{A\sqrt{1-e^2}}\frac{d\theta}{dt}
\end{align*}
```
Finally we can replace $r$ with our original equation $r=A(1-e \cos E)$ to get

``` math
\begin{align*}
\frac{dE}{dt} & = \frac{r}{A\sqrt{1-e^2}}\frac{d\theta}{dt}\\
 & = \frac{A(1-e\cos E)}{A\sqrt{1-e^2}}\frac{d\theta}{dt}\\
  & = \frac{(1-e\cos E)}{\sqrt{1-e^2}}\frac{d\theta}{dt}
\end{align*}
```

Now we have an equation that links the rate of change of $E$ to the rate of change of $\theta$ in terms of just $E$ and $\theta$

### Conservation of Angular Momentum

The angular momentum of a particle in plane polar coordinates is given by
``` math
l = m r^2 \frac{d\theta}{dt}
```

We can rearrange this and use the fact that $r=A(1-e\cos E)$

``` math
\begin{align*}
l &= m r^2 \frac{d\theta}{dt}\\
\frac{d\theta}{dt}&= \frac{l}{m r^2} \\
\frac{d\theta}{dt}&= \frac{l}{m A^2\left(1-e \cos E \right)^2} \\
\end{align*}
```
we can now use this to remove the $\frac{d\theta}{dt}$ term earlier.

``` math
\begin{align*}
\frac{dE}{dt} & = \frac{(1-e\cos E)}{\sqrt{1-e^2}}\frac{d\theta}{dt}\\
& = \frac{(1-e\cos E)}{\sqrt{1-e^2}}\frac{l}{m A^2\left(1-e \cos E \right)^2}\\
&= \frac{l}{m A^2\sqrt{1-e^2}}\frac{1}{1-e \cos E}\\
\left(1-e \cos E \right)\frac{dE}{dt}&= \frac{l}{m A^2\sqrt{1-e^2}}
\end{align*}
```

Now you can see that the right hand side is just a constant, which is defined by properties of the orbit. Namely the angular momentum, the mass of the orbiting object, the semi major axis and the eccentricity.