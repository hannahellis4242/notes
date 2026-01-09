# notes

Things to one day get added to the main text or just me working stuff out

## relationship between eccentric anomaly $E$ and true anomaly $\theta$ but more normally called $\nu$

we already have that

```math
\begin{align*}
x &= A \cos E &= f + r \cos \nu \\
y &= B \sin E &= r \sin \nu
\end{align*}
```

We have both $r$ and $\nu$ at epoch so we can work out eccentric anomaly at epoch using the fact that $f=eA$ and $B=A\sqrt{1-e^2}$

```math
\begin{align*}
A \cos E &= f + r \cos \nu \\
A \cos E &= eA + r \cos \nu \\
\cos E &= e+\frac{r}{A} \cos \nu
\end{align*}
```

and

```math
\begin{align*}
B \sin E &= r \sin \nu\\
\sin E &= \frac{r}{B} \sin \nu \\
 &= \frac{r}{A\sqrt{1-e^2}} \sin \nu
\end{align*}
```

if we didn't know $A$ then we can use $r=A(1 - e \cos E)$

```math
\begin{align*}
\cos E &= e+\frac{r}{A} \cos \nu\\
\cos E &= e+\frac{A(1 - e \cos E)}{A} \cos \nu\\
\cos E &= e+(1 - e \cos E)\cos \nu\\
\cos E &= e+\cos \nu - e \cos E\cos \nu\\
\cos E + e \cos E\cos \nu&= e+\cos \nu \\
\cos E (1 + e cos \nu)&= e+\cos \nu \\
\cos E &= \frac{e+\cos \nu}{1 + e \cos \nu} \\
\end{align*}\
```

and

```math
\begin{align*}
\sin E &= \frac{r}{A\sqrt{1-e^2}} \sin \nu\\
&= \frac{A(1 - e \cos E}{A\sqrt{1-e^2}} \sin \nu\\
&= \frac{1 - e \cos E}{\sqrt{1-e^2}} \sin \nu\\
&= \frac{1 - e \frac{e+\cos \nu}{1 + e \cos \nu}}{\sqrt{1-e^2}} \sin \nu\\
&= \frac{1 - \frac{e^2+e\cos \nu}{1 + e \cos \nu}}{\sqrt{1-e^2}} \sin \nu\\
&= \frac{\frac{1 + e \cos \nu}{1 + e \cos \nu} - \frac{e^2+e\cos \nu}{1 + e \cos \nu}}{\sqrt{1-e^2}} \sin \nu\\
&= \frac{\frac{1 + e \cos \nu-e^2-e\cos \nu}{1 + e \cos \nu} }{\sqrt{1-e^2}} \sin \nu\\
&= \frac{\frac{1-e^2}{1 + e \cos \nu} }{\sqrt{1-e^2}} \sin \nu\\
&= \frac{\sqrt{1-e^2}}{1 + e \cos \nu}\sin \nu
\end{align*}
```

## Eccentricity vector

Start from the central force

```math
\frac{\mathbf{F}}{m} = \ddot{\mathbf{r}}=-\frac{GM}{r^2} \hat{\mathbf{r}}
```

Which we can rewrite by noting the following, $\ddot{\mathbf{r}} =\dot{\mathbf{v}}$ and $\hat{\mathbf{r}} = \frac{\mathbf{r}}{r}$

```math
\begin{align*}
\dot{\mathbf{v}}&=-\frac{GM}{r^2} \frac{\mathbf{r}}{r}\\
&= -\frac{GM}{r^3} \mathbf{r}
\end{align*}
```

### Cross Product with specific angular momentum

Here we will use the symbol $\mathbf{h}$ for the specific angular momentum or $\frac{\mathbf{L}}{m}$ which will have the value
$\mathbf{h}=\mathbf{r} \times \mathbf{v}$

Now taking the cross product with $\mathbf{h}$ gives

```math
\begin{align*}
\dot{\mathbf{v}} \times \mathbf{h} &= -\frac{GM}{r^3} \mathbf{r} \times \mathbf{h} \\
\dot{\mathbf{v}} \times \mathbf{r} \times \mathbf{v} &= -\frac{GM}{r^3} \mathbf{r} \times \mathbf{r} \times \mathbf{v}
\end{align*}
```

we can apply the triple product expansion

```math
\mathbf {a} \times (\mathbf {b} \times \mathbf {c} )=(\mathbf {a} \cdot \mathbf {c} )\mathbf {b} -(\mathbf {a} \cdot \mathbf {b} )\mathbf {c}
```

starting with the right hand side

```math
\begin{align*}
\mathbf{r} \times \mathbf{r} \times \mathbf{v} & = (\mathbf{r}\cdot \mathbf{v})\mathbf{r} - (\mathbf{r} \cdot \mathbf{r})\mathbf{v}\\
&= (\mathbf{r}\cdot \mathbf{v})\mathbf{r} - r^2\mathbf{v}
\end{align*}
```

and the left hand side

```math
\begin{align*}
\dot{\mathbf{v}} \times \mathbf{r} \times \mathbf{v} &= (\dot{\mathbf{v}} \cdot \mathbf{v})\mathbf{r}-(\dot{\mathbf{v}}  \cdot \mathbf{r} )\mathbf{v}
\end{align*}
```

### Going in the wrong direction here. Try again

start with $\mathbf{v} \times \mathbf{h}$ and look at the rate of change

```math
\begin{align*}
\frac{d}{dt}[\mathbf{v} \times \mathbf{h}] & = \dot{\mathbf{v}} \times \mathbf{h}+ \mathbf{v} \times \dot{\mathbf{h}}\\
& = \dot{\mathbf{v}} \times \mathbf{h}
\end{align*}
```

where we have used the fact that $\dot{\mathbf{h}}=0$ because angular momentum is conserved.

We can now substitute in

```math
\dot{\mathbf{v}}= -\frac{GM}{r^3} \mathbf{r}
```

to get

```math
\begin{align*}
\frac{d}{dt}[\mathbf{v} \times \mathbf{h}] & = \dot{\mathbf{v}} \times \mathbf{h}\\
&=-\frac{GM}{r^3} \mathbf{r} \times \mathbf{h}\\
&=-\frac{GM}{r^3} \mathbf{r} \times \mathbf{r} \times \mathbf{v}
\end{align*}
```

which we can expand out like before

```math
\begin{align*}
\mathbf{r} \times \mathbf{r} \times \mathbf{v} & = (\mathbf{r}\cdot \mathbf{v})\mathbf{r} - (\mathbf{r} \cdot \mathbf{r})\mathbf{v}\\
&= (\mathbf{r}\cdot \mathbf{v})\mathbf{r} - r^2\mathbf{v}
\end{align*}
```

leading to

```math
\begin{align*}
\frac{d}{dt}[\mathbf{v} \times \mathbf{h}] &=-\frac{GM}{r^3} \mathbf{r} \times \mathbf{r} \times \mathbf{v}\\
&=-\frac{GM}{r^3} \left[ (\mathbf{r}\cdot \mathbf{v})\mathbf{r} - r^2\mathbf{v} \right]\\
\end{align*}
```

## investigating the $\mathbf{r}\cdot \mathbf{v}$ term

```math
\begin{align*}
\mathbf{r} \cdot \mathbf{v} &= \mathbf{r} \cdot \dot{\mathbf{r}}\\
2\mathbf{r} \cdot \mathbf{v} &= 2\mathbf{r} \cdot \dot{\mathbf{r}}\\
&= \mathbf{r} \cdot \dot{\mathbf{r}}+\mathbf{r} \cdot \dot{\mathbf{r}}\\
&=\dot{\mathbf{r}}\cdot\mathbf{r}+\mathbf{r} \cdot \dot{\mathbf{r}}\\
&= \frac{d}{dt}[\mathbf{r}\cdot\mathbf{r}]\\
&= \frac{d}{dt}[r^2]\\
&= \frac{dr^2}{dr}\frac{dr}{dt}\\
2\mathbf{r} \cdot \mathbf{v}&= 2r\frac{dr}{dt}\\
\mathbf{r} \cdot \mathbf{v}&= r\frac{dr}{dt}
\end{align*}
```

## feeding back in

```math
\begin{align*}
\frac{d}{dt}[\mathbf{v} \times \mathbf{h}] &=-\frac{GM}{r^3} \left[ (\mathbf{r}\cdot \mathbf{v})\mathbf{r} - r^2\mathbf{v} \right]\\
&=-\frac{GM}{r^3} \left[ r\frac{dr}{dt}\mathbf{r} - r^2\mathbf{v} \right]\\
&=-\frac{GM}{r^2} \left[ \dot{r}\mathbf{r} - r \dot{\mathbf{r}} \right]\\
&=-GM \frac{ \dot{r}\mathbf{r} - r \dot{\mathbf{r}}}{r^2}
\end{align*}
```

consider

```math
\begin{align*}
\frac{d\hat{\mathbf{r}}}{dt} &= \frac{d}{dt}
\left( \frac{\mathbf{r}}{r}\right)\\
&= \frac{\dot{\mathbf{r}}r-\mathbf{r}\dot{r}}{r^2}
\end{align*}
```

which we can substitute back in

```math
\begin{align*}
\frac{d}{dt}[\mathbf{v} \times \mathbf{h}] &=-GM \frac{ \dot{r}\mathbf{r} - r \dot{\mathbf{r}}}{r^2}\\
&=GM \frac{d\hat{\mathbf{r}}}{dt} \\
\frac{d}{dt}[\mathbf{v} \times \mathbf{h}-GM \hat{\mathbf{r}}] = 0
\end{align*}
```

and so $\mathbf{v} \times \mathbf{h}-GM \hat{\mathbf{r}}$ is a constant

### Little bit more investigation

```math
\begin{align*}
\mathbf{v} \times \mathbf{h} &= \mathbf{v} \times \mathbf{r} \times \mathbf{v}\\
&= (\mathbf{v} \cdot \mathbf{v}) \mathbf{r} - (\mathbf{v} \cdot \mathbf{r})\mathbf{v}\\
&= v^2 \mathbf{r} - (\mathbf{v} \cdot \mathbf{r})\mathbf{v}
\end{align*}
```
