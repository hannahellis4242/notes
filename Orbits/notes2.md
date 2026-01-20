# More stuff

## Force

```math
\mathbf{F}=-\frac{\mu m}{r^2}\hat{\mathbf{r}} = m \dot{\mathbf{v}}
```

Where $\mu = GM$

We'll get the specific force $\mathbf{f}=\frac{\mathbf{F}}{m}$ by dividing by $m$

```math
\mathbf{f}=-\frac{\mu}{r^2}\hat{\mathbf{r}} =  \dot{\mathbf{v}}
```

## Angular Momentum

```math
\begin{align*}
\mathbf{L} &= \mathbf{r} \times \mathbf{p}\\
 &= m \mathbf{r} \times \mathbf{v}
\end{align*}
```

We can get the specific angular momentum $\mathbf{h} = \frac{\mathbf{L}}{m}$ by dividing through by m

```math
\mathbf{h} = \mathbf{r} \times \mathbf{v}
```

## Energy

```math
E = \frac{m v^2}{2} - \frac{\mu m}{r}
```

once again specific energy $\epsilon = \frac{E}{m}$ is

```math
\epsilon = \frac{v^2}{2} - \frac{\mu}{r}
```

## Triple vector product

```math
\mathbf{a} \times (\mathbf{b} \times \mathbf{c}) = (\mathbf{a} \cdot \mathbf{c})\mathbf{b} -(\mathbf{a} \cdot \mathbf{b} )\mathbf{c}
```

## Product Rule

The product rule works for vectors, both with dot products and cross products

```math
{\frac {d}{dx}}(\mathbf{u}\cdot \mathbf{v})={\frac {d\mathbf{u}}{dx}}\cdot \mathbf{v}+\mathbf{u}\cdot {\frac {d\mathbf{v}}{dx}}
```

```math
{\frac {d}{dx}}(\mathbf{u}\times \mathbf{v})={\frac {d\mathbf{u}}{dx}}\times \mathbf{v}+\mathbf{u}\times {\frac {d\mathbf{v}}{dx}}
```

## Quotient Rule

```math
h'(x)={\frac {f'(x)g(x)-f(x)g'(x)}{(g(x))^{2}}}
```

## Eccentricity Vector

### Rate of change of unit position vector

```math
\begin{align*}
\frac{d}{dt}\hat{\mathbf{r}} & = \frac{d}{dt}\frac{\mathbf{r}}{r}\\
&=\frac {\dot{\mathbf{r}}r-\mathbf{r}\dot{r}}{r^2}
&=\frac {{\mathbf{v}}-\dot{r}\hat{\mathbf{r}}}{r}
\end{align*}
```

### Central Force again

starting from

```math
\mathbf{f}=-\frac{\mu}{r^2}\hat{\mathbf{r}} =  \dot{\mathbf{v}}
```

and taking the cross product of both sides with the angular momentum

```math
-\frac{\mu}{r^2}\hat{\mathbf{r}} \times \mathbf{h} =  \dot{\mathbf{v}}\times \mathbf{h}
```

but

```math
\begin{align*}
\frac{d}{dt}(\mathbf{v}\times\mathbf{h}) &= \frac{d\mathbf{v}}{dt}\times\mathbf{h} + \mathbf{v}\times\frac{d\mathbf{h}}{dt}\\
&=\dot{\mathbf{v}}\times\mathbf{h} + \mathbf{v}\times\mathbf{0}\\
&=\dot{\mathbf{v}}\times\mathbf{h}
\end{align*}
```

So

```math
\begin{align*}
-\frac{\mu}{r^2}\hat{\mathbf{r}} \times \mathbf{h} &= \dot{\mathbf{v}}\times \mathbf{h}\\
&= \frac{d}{dt}(\mathbf{v}\times\mathbf{h})
\end{align*}
```

Using the triple product rule we can expand $\hat{\mathbf{r}} \times \mathbf{h}$

```math
\begin{align*}
\hat{\mathbf{r}} \times \mathbf{h} &= \hat{\mathbf{r}} \times \mathbf{r} \times \mathbf{v}\\
&=(\hat{\mathbf{r}} \cdot \mathbf{v})\mathbf{r} -(\hat{\mathbf{r}}\cdot \mathbf{r} )\mathbf{v}\\
&=\frac{r\left[(\hat{\mathbf{r}} \cdot \mathbf{v})\mathbf{r} -(\hat{\mathbf{r}}\cdot \mathbf{r} )\mathbf{v}\right]}{r}\\
&=\frac{(\mathbf{r} \cdot \mathbf{v})\mathbf{r} -(\mathbf{r}\cdot \mathbf{r} )\mathbf{v}}{r}\\
&=\frac{(\mathbf{r} \cdot \mathbf{v})\mathbf{r} -r^2\mathbf{v}}{r}\\
&=(\mathbf{r} \cdot \mathbf{v})\hat{\mathbf{r}} -r\mathbf{v}
\end{align*}
```

### Rate of change of the length of the position vector over time

```math
\begin{align*}
\frac{dr}{dt} &= \frac{d}{dt}\sqrt{\mathbf{r}\cdot\mathbf{r}}\\
&= \frac{d}{dt}\sqrt{u}\\
&= \frac{d\sqrt{u}}{du}\frac{du}{dt}\\
&= \frac{1}{2\sqrt{u}}\frac{d \mathbf{r}\cdot\mathbf{r}}{dt}\\
&= \frac{1}{2\sqrt{\mathbf{r}\cdot\mathbf{r}}}\left[\frac{d \mathbf{r}}{dt}\cdot\mathbf{r}+\mathbf{r}\cdot\frac{d \mathbf{r}}{dt}\right]\\
&= \frac{1}{2r}\left[2\mathbf{r}\cdot\mathbf{v}\right]\\
&= \frac{\mathbf{r}\cdot\mathbf{v}}{r}
\end{align*}
```

Or in a slightly more useful form for us

```math
\begin{align*}
\frac{dr}{dt} &= \frac{\mathbf{r}\cdot\mathbf{v}}{r}\\
 r \frac{dr}{dt} &= \mathbf{r}\cdot\mathbf{v}
\end{align*}

```

So we can substitute this in to

```math
\begin{align*}
\hat{\mathbf{r}} \times \mathbf{h} &= (\mathbf{r} \cdot \mathbf{v})\hat{\mathbf{r}} -r\mathbf{v}\\
&= r \frac{dr}{dt}\hat{\mathbf{r}} -r\mathbf{v}\\
&=r\left[ \dot{r}\hat{\mathbf{r}} -\mathbf{v}\right]
\end{align*}
```

from earlier we had

```math
\begin{align*}
\frac{d}{dt}\hat{\mathbf{r}} &=\frac {{\mathbf{v}}-\dot{r}\hat{\mathbf{r}}}{r} \\
-r\frac{d}{dt}\hat{\mathbf{r}} &=\dot{r}\hat{\mathbf{r}}-{\mathbf{v}}
\end{align*}
```

which we can substitute in

```math
\begin{align*}
\hat{\mathbf{r}} \times \mathbf{h} &=r\left[ \dot{r}\hat{\mathbf{r}} -\mathbf{v}\right]\\
&=-r^2\frac{d}{dt}\hat{\mathbf{r}}
\end{align*}
```

which can go back into

```math
\begin{align*}
\frac{d}{dt}(\mathbf{v}\times\mathbf{h}) &= -\frac{\mu}{r^2}\hat{\mathbf{r}} \times \mathbf{h} \\
&= -\frac{\mu}{r^2}\left(-r^2\frac{d}{dt}\hat{\mathbf{r}}\right)\\
&= \mu\frac{d}{dt}\hat{\mathbf{r}}
\end{align*}
```

Now we can pull everything onto one side to show

```math
\begin{align*}
\frac{d}{dt}(\mathbf{v}\times\mathbf{h}) &= \mu\frac{d}{dt}\hat{\mathbf{r}}\\
\frac{d}{dt}(\mathbf{v}\times\mathbf{h})-\mu\frac{d}{dt}\hat{\mathbf{r}}&=0\\
\frac{d}{dt}\left(\mathbf{v}\times\mathbf{h}-\mu\hat{\mathbf{r}}\right) &=0
\end{align*}
```

which implies the vector $\mathbf{v}\times\mathbf{h}-\mu\hat{\mathbf{r}}$ is a constant
