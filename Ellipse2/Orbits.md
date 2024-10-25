# Orbits

## Plane Polar Coordinates

![plain polar diagram](./img/polars.svg)

### Unit vectors

The unit vectors of plain polar coordinates can be determined from the standard unit vectors from the geometry above as

```math
\begin{align*}
\hat{\bm{r}} &= \bm{\hat{\textnormal{\bf\i}}} \cos( \theta ) + \bm{\hat{\textnormal{\bf\j}}} \sin( \theta ) \\
\hat{\bm{\theta}}  &= - \bm{\hat{\textnormal{\bf\i}}} \sin( \theta ) + \bm{\hat{\textnormal{\bf\j}}} \cos( \theta )
\end{align*}
```

Where $r$ is the distance from the origin to the position or alternatively the length of the position vector, and $\theta$ is the angle between $\bm{\hat{\textnormal{\bf\i}}}$ and $\bm{r}$.
Since the unit vectors $\hat{\bm{r}}$ and $\hat{\bm{\theta}}$ depend on $\theta$ which changes with time, the unit vectors also change with time. We will begin by looking at the derivative of $\hat{\bm{r}}$ with respect to time.

```math
\begin{align*}
\frac{d {\hat{\bm{r}}}}{d t} &= \frac{ d \theta}{d t}\frac{d}{d \theta} \hat{\bm{r}} \\
&=  \frac{ d \theta}{d t} \left[ -\bm{\hat{\textnormal{\bf\i}}} \sin( \theta ) + \bm{\hat{\textnormal{\bf\j}}} \cos( \theta ) \right] \\
&= \frac{ d \theta}{d t} \hat{\bm{\theta}}
\end{align*}
```

Where we have used replaced the cartesian unit vectors with their corresponding plane polar ones.

```math
\begin{align*}
\frac{d {\hat{\bm{\theta}}}}{d t}&=\frac{d \theta}{d t} \frac{d}{dt}{\hat{\bm{\theta}}}\\
&=\frac{d \theta}{d t}  \left[ - \bm{\hat{\textnormal{\bf\i}}} \cos( \theta ) - \bm{\hat{\textnormal{\bf\j}}} \sin( \theta ) \right]\\
&=- \frac{d \theta}{d t} \hat{\bm{r}}
\end{align*}
```

Where once again we have used replaced the cartesian unit vectors with their corresponding plane polar ones.

Since $\frac{d {\hat{\bm{r}}}}{d t}$ too depends on $\theta$ so is also time dependent. So we can differentiate again.

```math
\begin{align*}
\frac{d^2 {\hat{\bm{r}}}}{d t^2} &= \frac{d}{dt}\left[ \frac{ d \theta}{d t} \hat{\bm{\theta}} \right]\\
&=\frac{d^2 \theta}{d t^2}\hat{\bm{\theta}}+\frac{d \theta}{d t} \frac{d \hat{\bm{\theta}}}{dt}\\
&=\frac{d^2 \theta}{d t^2}\hat{\bm{\theta}}+\frac{d \theta}{d t} \left[- \frac{d \theta}{d t} \hat{\bm{r}} \right]\\
&=\frac{d^2 \theta}{d t^2}\hat{\bm{\theta}}-\left(\frac{d \theta}{d t} \right)^2 \hat{\bm{r}}
\end{align*}
```

## Velocity and Acceleration in polar coordinates

Now that we have seen how the unit vectors change with respect to time, we can now look at how the position vector changes.

The position vector is

```math
\textbf{r}= r \hat{\textbf{r}}
```

Taking the derivative with respect to time gives us the velocity

```math
\begin{align*}
\frac{d \bm{r}}{d t} &= \frac{d r}{d t} \hat{\bm{r}} + r \frac{d \hat{\bm{r}}}{d t}\\
&=\frac{d r}{d t} \hat{\bm{r}} + r\frac{ d \theta}{d t} \hat{\bm{\theta}}\\
&=\frac{d r}{d t} \hat{\bm{r}} + r \omega \hat{\bm{\theta}}
\end{align*}
```

where we have used $\omega = \frac{ d \theta}{d t}$.

The acceleration can be obtained by taking the derivative with respect to time of the velocity.

```math
\begin{align*}
\frac{ d^2 \bm{r}}{ d t^2} &=\frac{d}{d}\left[\frac{d r}{d t} \hat{\bm{r}} + r \omega \hat{\bm{\theta}}\right]\\
&=\frac{d}{d}\left[\frac{d r}{d t} \hat{\bm{r}}\right] + \frac{d}{dt}\left[r \omega \hat{\bm{\theta}}\right]\\
&= \left[\frac{ d^2 r}{d t^2} \hat{\bm{r}} + \frac{d r}{d t} \frac{d \hat{\bm{r}}}{d t}\right] +\left[\frac{d r}{d t} \omega \hat{\bm{\theta}} +r \frac{d \omega}{d t} \hat{\bm{\theta}}+r \omega \frac{d \hat{\bm{\theta}}}{d t} \right]\\
&=  \frac{ d^2 r}{d t^2} \hat{\bm{r}} + \frac{d r}{d t} \omega \hat{\bm{\theta}} +\frac{d r}{d t} \omega \hat{\bm{\theta}} +r \frac{d \omega}{d t} \hat{\bm{\theta}}-r \omega^2 \hat{\bm{r}} \\
&=\left[  \frac{ d^2 r}{d t^2} -r \omega^2 \right] \hat{\bm{r}} + \left[ 2 \frac{d r}{d t} \omega + r \frac{ d \omega}{d t} \right] \hat{\bm{\theta}}
\end{align*}
```

We have had to use the triple product rule here. (The derivation for this is shown in another page)
