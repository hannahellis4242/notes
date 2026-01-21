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

which implies the vector $\mathbf{v}\times\mathbf{h}-\mu\hat{\mathbf{r}}$ is a constant, let's call it $\alpha$

```math
\mathbf{\alpha} = \mathbf{v}\times\mathbf{h}-\mu\hat{\mathbf{r}}
```

## Some more bits

showing

```math
(\mathbf{v}×\mathbf{h})⋅\hat{\mathbf{r}}=\frac{h^2}{r}
```

### Step 1: Rewrite the scalar triple product

Use the cyclic property of the scalar triple product

```math
(\mathbf{a}\times\mathbf{b})\cdot\mathbf{c}=(\mathbf{b}\times\mathbf{c})\cdot\mathbf{a}=(\mathbf{c}\times\mathbf{a})\cdot\mathbf{b}
```

so

```math
(\mathbf{v}\times\mathbf{h})\cdot\hat{\mathbf{r}} = (\mathbf{h}\times\hat{\mathbf{r}})\cdot\mathbf{v}
```

starting with the cross product $\mathbf{h}\times\hat{\mathbf{r}}$

```math
\begin{align*}
\mathbf{h}\times\hat{\mathbf{r}} &= \mathbf{r}\times\mathbf{v}\times\hat{\mathbf{r}}\\
&=(\mathbf{r} \cdot \hat{\mathbf{r}})\mathbf{v} -(\mathbf{r} \cdot \mathbf{v} )\hat{\mathbf{r}}\\
&=r\mathbf{v} -(\mathbf{r} \cdot \mathbf{v})\frac{\mathbf{r}}{r}\\
&=r\mathbf{v} - \left(\frac{\mathbf{r}}{r} \cdot \mathbf{v} \right)\mathbf{r}\\
&=r\mathbf{v} - \left(\hat{\mathbf{r}} \cdot \mathbf{v} \right)\mathbf{r}
\end{align*}
```

Now we apply the dot product with $\mathbf{v}$

```math
\begin{align*}
(\mathbf{h}\times\hat{\mathbf{r}})\cdot\mathbf{v} &= \left[r\mathbf{v} - \left(\hat{\mathbf{r}} \cdot \mathbf{v} \right)\mathbf{r}\right]\cdot\mathbf{v}\\
&= r\mathbf{v}\cdot\mathbf{v} - \left(\hat{\mathbf{r}} \cdot \mathbf{v} \right)\mathbf{r}\cdot\mathbf{v}\\
&= rv^2 - (\hat{\mathbf{r}} \cdot \mathbf{v})(\mathbf{r}\cdot\mathbf{v})\\
&= rv^2 - (\hat{\mathbf{r}} \cdot \mathbf{v})(r\hat{\mathbf{r}}\cdot\mathbf{v})\\
&= r (v^2 - (\hat{\mathbf{r}} \cdot \mathbf{v})(\hat{\mathbf{r}}\cdot\mathbf{v}))\\
&= r (v^2 - (\hat{\mathbf{r}} \cdot \mathbf{v})^2)
\end{align*}
```

### Step 2: The square magnitude of specific angular momentum

```math
\begin{align*}
h^2 &= (\mathbf{r}\times\mathbf{v})\cdot \mathbf{h} \\
&= (\mathbf{v} \times  \mathbf{h})\cdot\mathbf{r}
\end{align*}
```

where we have use the triple scalar product identity from before. We can also expand out $\mathbf{v} \times  \mathbf{h}$ as before with the triple vector product rule

```math
\begin{align*}
\mathbf{v} \times  \mathbf{h} &= \mathbf{v} \times \mathbf{r} \times \mathbf{v}\\
&=
(\mathbf{v} \cdot \mathbf{v})\mathbf{r} -(\mathbf{v} \cdot \mathbf{r} )\mathbf{v}\\
&= v^2 \mathbf{r} -(\mathbf{v} \cdot \mathbf{r} )\mathbf{v}
\end{align*}
```

Substitute in

```math
\begin{align*}
h^2 &= (\mathbf{v} \times  \mathbf{h})\cdot\mathbf{r} \\
&=(v^2 \mathbf{r} -(\mathbf{v} \cdot \mathbf{r} )\mathbf{v})\cdot\mathbf{r}\\
&=v^2 (\mathbf{r}\cdot\mathbf{r}) -(\mathbf{v} \cdot \mathbf{r})(\mathbf{v}\cdot\mathbf{r})\\
&=v^2 r^2 -(\mathbf{v} \cdot \mathbf{r})^2\\
&=r^2\left[v^2 -(\mathbf{v} \cdot \hat{\mathbf{r}})^2\right]
\end{align*}
```

Comparing to the result from step 1 we see that

```math
(\mathbf{v}\times{\mathbf{h}})\cdot\hat{\mathbf{r}}=(\mathbf{h}\times\hat{\mathbf{r}})\cdot\mathbf{v} = r (v^2 - (\hat{\mathbf{r}} \cdot \mathbf{v})^2)
```

and

```math
\frac{h^2}{r} =r\left[v^2 -(\mathbf{v} \cdot \hat{\mathbf{r}})^2\right]
```

which means

```math
(\mathbf{v}\times{\mathbf{h}})\cdot\hat{\mathbf{r}}=\frac{h^2}{r}
```

## Orbital Equation from eccentricity vector

recall so far we had

```math
\mathbf{\alpha} = \mathbf{v}\times\mathbf{h}-\mu\hat{\mathbf{r}}
```

taking the dot product with $\hat{\mathbf{r}}$ gives

```math
\begin{align*}
\mathbf{\alpha}\cdot\hat{\mathbf{r}} &= (\mathbf{v}\times\mathbf{h})\cdot\hat{\mathbf{r}} -\mu\hat{\mathbf{r}}\cdot\hat{\mathbf{r}}
\end{align*}
```

we can use the above result of $(\mathbf{v}\times{\mathbf{h}})\cdot\hat{\mathbf{r}}=\frac{h^2}{r}$ to replace the first term in the rhs

```math
\begin{align*}
\mathbf{\alpha}\cdot\hat{\mathbf{r}}&=  (\mathbf{v}\times\mathbf{h})\cdot\hat{\mathbf{r}} -\mu \\
&=  \frac{h^2}{r}-\mu
\end{align*}
```

we can also note that the lhs is $\mathbf{\alpha}\cdot\hat{\mathbf{r}} = \alpha \cos \nu$, where $\nu$ is the angle between the $\alpha$ vector and $\mathbf{r}$

```math
\begin{align*}
\mathbf{\alpha}\cdot\hat{\mathbf{r}} &= \frac{h^2}{r}-\mu\\
\alpha \cos \nu &=\frac{h^2}{r}-\mu\\
\alpha \cos \nu + \mu&=\frac{h^2}{r}\\
r &=\frac{h^2}{\mu+\alpha \cos \nu}
\end{align*}
```

if we divide top and bottom by $\mu$ we get the expected form for an equation of an ellipse

```math
\begin{align*}
r &=\frac{\frac{h^2}{\mu}}{1+\frac{\alpha}{\mu} \cos \nu}
\end{align*}
```

from this we can determine that $ e = \frac{\alpha}{\mu}$ and that $A(1-e^2)=\frac{h^2}{\mu}$

So we can say that

```math
\mathbf{e}=\frac{\mathbf{\alpha}}{\mu}=\frac{\mathbf{v}\times\mathbf{h}}{\mu}-\hat{\mathbf{r}}
```

## Direction of the eccentricity vector

At periapsis, $\mathbf{r} = \mathbf{p}$ and the position vector and velocity vector are perpendicular so $\mathbf{p}\cdot\mathbf{v}=0$

```math
\begin{align*}
\mathbf{e}&=\frac{\mathbf{v}\times\mathbf{h}}{\mu}-\hat{\mathbf{r}}\\
&=\frac{\mathbf{v}\times\mathbf{p}\times\mathbf{v}}{\mu}-\hat{\mathbf{p}}\\
&=\frac{(\mathbf{v} \cdot \mathbf{v})\mathbf{p} -(\mathbf{v} \cdot \mathbf{p} )\mathbf{v}}{\mu}-\hat{\mathbf{p}}\\
&=\frac{v^2\mathbf{p}}{\mu}-\frac{{\mathbf{p}}}{p}\\
&=\left[\frac{v^2}{\mu}-\frac{1}{p}\right]\mathbf{p}
\end{align*}
```

which shows that $\mathbf{e}$ is in the direction of the periapsis

## Eccentricity vector squared

Starting with the eccentricity vector

```math
\mathbf{e}=\frac{\mathbf{v}\times\mathbf{h}}{\mu}-\hat{\mathbf{r}}
```

and squaring it

```math
\begin{align*}
e^2 &= \mathbf{e}\cdot\mathbf{e}\\
&=\left(\frac{\mathbf{v}\times\mathbf{h}}{\mu}-\hat{\mathbf{r}}\right)\cdot\left(\frac{\mathbf{v}\times\mathbf{h}}{\mu}-\hat{\mathbf{r}}\right)\\
&=\left(\frac{\mathbf{v}\times\mathbf{h}}{\mu}\right)^2 - \frac{2}{\mu}\mathbf{v}\times\mathbf{h}\cdot\hat{\mathbf{r}}+\hat{\mathbf{r}}^2\\
&=\frac{\left|\mathbf{v}\times\mathbf{h}\right|^2}{\mu^2} - \frac{2 }{\mu}\frac{h^2}{r}+1\\
&=1+\frac{\left|vh\right|^2}{\mu^2} - \frac{2h^2}{\mu r}\\
&=1+\frac{v^2h^2}{\mu^2} - \frac{2 \mu h^2}{\mu^2 r}\\
&=1+\frac{2h^2}{\mu^2}\left(\frac{v^2}{2} - \frac{\mu}{r}\right)\\
&=1+\frac{2\epsilon h^2}{\mu^2}
\end{align*}
```

Where we have used the fact that $\mathbf{v}$ and $\mathbf{h}$ are perpendicular by construction so that the magnitude of $\mathbf{v}\times\mathbf{v}$ will be $vh$. Also we have reused the result from earlier that $(\mathbf{v}\times{\mathbf{h}})\cdot\hat{\mathbf{r}}=\frac{h^2}{r}$, we have also used the specific orbital energy $\epsilon = \frac{v^2}{2} - \frac{\mu}{r}$.
