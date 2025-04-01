# Elliptical Orbits

We have already seen from the [orbits notes](./Orbits.md), that there can be a direct connection between the physics of gravitational attraction and the resulting ellipse.

```math
A(1-e^2)=\frac{l^2}{GMm^2}
```

## Geometry

Here I will list all the relationships found so far

```math
p=A(1-e)
```

```math
a=A(1+e)
```

```math
f=eA
```

```math
A=\frac{a+p}{2}
```

```math
f=\frac{a-p}{2}
```

```math
e=\frac{a-p}{a+p}
```

```math
\begin{align*}
B^2 &= A^2-f^2\\
&=A^2(1-e^2)\\
&=A(1+e)A(1-e)\\
&=ap\\
B&=\sqrt{ap}
\end{align*}
```

```math
\begin{align*}
r&=\frac{A(1-e^2)}{1+e\cos\theta}\\
&=A\left( 1-e\cos E\right)
\end{align*}
```

```math
\begin{align*}
x&=A\cos E\\
&=f+r\cos\theta
\end{align*}
```

```math
\begin{align*}
y&=B\sin E\\
&=r \sin \theta
\end{align*}
```

## Physics

### Angular Momentum

We can reuse the above to rewrite the result we obtained from the physics

```math
\begin{align*}
\frac{l^2}{GMm^2} &= A(1-e^2)\\
&=\frac{A^2(1-e^2)}{A}\\
&=\frac{B^2}{A}\\
&=\frac{ap}{A}\\
&=\frac{2ap}{a+p}\\
\end{align*}
```

This links the physics to the geometry both in terms of semi major and minor axes as well as the apses.

With a small rewrite we can obtain that

```math
\begin{align*}
\left(\frac{l}{m}\right)^2 &= GMA(1-e^2)\\
\frac{l}{m} &= \sqrt{GMA(1-e^2)}\\
&=B\sqrt{\frac{GM}{A}}\\
&=\sqrt{GM\frac{2ap}{a+p}}
\end{align*}
```

### Total Energy

The total energy is given by

```math
E(r,\dot{r})=\frac{1}{2}m \dot{r}^2 +  \frac{l^2}{2mr^2} - \frac{GMm}{r}
```

with a little rewriting becomes

```math
\frac{E}{m}=\frac{1}{2} \dot{r}^2 +  \frac{1}{2r^2}\left(\frac{l}{m}\right)^2 - \frac{GM}{r}
```

If we choose one of the apses, say the periapsis we know that at this point $\dot{r}=0$ so the total energy per unit mass is

```math
\begin{align*}
\frac{E}{m}&= \frac{1}{2p^2}\left(\frac{l}{m}\right)^2 - \frac{GM}{p}\\
&=\frac{1}{2p^2}\left(GM\frac{2ap}{a+p}\right) - \frac{GM}{p}\\
&=GM\left[\frac{2ap}{2p^2(a+p)} - \frac{1}{p}\right]\\
&=GM\left[\frac{2ap}{2p^2(a+p)} - \frac{2p(a+p)}{2p^2(a+p)}\right]\\
&=GM\left[\frac{2ap-2p(a+p)}{2p^2(a+p)}\right]\\
&=GM\left[\frac{-2p^2}{2p^2(a+p)}\right]\\
&=-GM\left[\frac{1}{a+p}\right]\\
&=-\frac{GM}{2}\left[\frac{2}{a+p}\right]\\
&=-\frac{GM}{2A}
\end{align*}
```

Note that energy is negative because we took zero to be when the particle is at infinity.

We can rearrange the total energy so we can obtain $A$ as such

```math
\begin{align*}
\frac{E}{m}=\tilde{E}&=-\frac{GM}{2A}\\
2A\tilde{E}&=-{GM}\\
A&=-\frac{GM}{2\tilde{E}}\\
\end{align*}
```

Where we are using $\tilde{E}=\frac{E}{m}$ to be the energy per unit mass of the orbiting body. This can then be fed back into our relationship for angular momentum.

```math
\begin{align*}
\tilde{l}^2 &= GMA(1-e^2)\\
&=-\frac{(GM)^2(1-e^2)}{2\tilde{E}}\\
-\frac{2\tilde{E}\tilde{l}^2}{(GM)^2}&=1-e^2\\
e^2-\frac{2\tilde{E}\tilde{l}^2}{(GM)^2}&=1\\
e^2&=1+\frac{2\tilde{E}\tilde{l}^2}{(GM)^2}\\
e&=\sqrt{1+\frac{2\tilde{E}\tilde{l}^2}{(GM)^2}}
\end{align*}
```

Just for the sake of completeness

### Time dependant part

So here we're going to have to be a little careful about notation as we are using $E$ for both the angle between the semi major axis and a point on the ellipse at the centre and for total energy. From this point on $E$ will only refer to the angle, and we will use $\tilde{E}$ for total energy per unit mass as already established.

### Kepler's Equation

We previously [derived](KeplersEquation.md) kepler's equation as

```math
E - e \sin E=k(t-t_0)
```

Where we have already established that $E$ is the angle between the major axis starting at the periapsis to a point on the eclipse, going through the centre.

### Determining initial conditions

We can work out $t_0$ from the angle $E_0$ which is the angle $E$ at time zero.

```math
\begin{align*}
E_0 - e \sin E_0&=-kt_0\\
t_0 &= \frac{e\sin E_0 - E_0}{k}
\end{align*}
```

### Revisiting $k$

It was established during our derivation that $k$ is given by

```math
k = \frac{l}{m A^2\sqrt{1-e^2}}
```

We can use our previous relationship

```math
\frac{l}{m} = \sqrt{GMA(1-e^2)}
```

to simplify $k$

```math
\begin{align*}
k &= \frac{l}{m A^2\sqrt{1-e^2}}\\
&= \frac{l}{m}\frac{1}{ A^2\sqrt{1-e^2}}\\
&=\frac{ \sqrt{GMA(1-e^2)}}{\sqrt{A^4(1-e^2)}}\\
&=\sqrt{GM}\frac{\sqrt{A(1-e^2)}}{ \sqrt{A^4(1-e^2)}}\\
&=\sqrt{GM}\sqrt{\frac{A(1-e^2)}{ A^4(1-e^2)}}\\
&=\sqrt{GM}\sqrt{\frac{1}{ A^3}}\\
&=\sqrt{\frac{GM}{A^3}}
\end{align*}
```

So now we have

```math
E - e \sin E=\sqrt{\frac{GM}{A^3}}(t-t_0)
```

which will need to be solved numerically as it is transcendental.

### Determining position

Once $E$ is determined for a particular time we can then use

```math
\begin{align*}
r&=A\left( 1-e\cos E\right)\\
r\cos\theta &=A(\cos(E)-e)\\
r\sin\theta &= A\sqrt{1-e^2}\sin E
\end{align*}
```

to determine the bodies position at at that time.

### Determining velocities

#### Angular velocity

The angular velocity can be determined from the angular momentum,

```math
\omega = \frac{1}{r^2}\frac{l}{m}
```

#### Radial velocity

The radial velocity we obtain from the geometry. Recall that we have

```math
r=A(1-e\cos E)
```

As we did for the derivation of Kepler's Equation, we can differentiate with respect to time. Which gives the result

```math
\frac{dr}{dt} =eA \sin E \frac{dE}{dt}
```

And looking at Kepler's Equation again

```math
\begin{align*}
E-e\sin E &= k(t-t_0)\\
t&=\frac{E-e\sin E}{k}+t_0\\
\frac{dt}{dE}&=\frac{1-e\cos E}{k}
\end{align*}
```

which gives us the result that

```math
\frac{dE}{dt}=\frac{k}{1-e\cos E}
```

We can put this back in to our earlier equation to get the radial velocity

```math
\frac{dr}{dt} = \frac{keA \sin E}{1-e\cos E}
```

We can simplify the $keA$ part a little bit by noting that $k=\sqrt{\frac{GM}{A^3}}$ from earlier.

```math
\begin{align*}
keA&=eA\sqrt{\frac{GM}{A^3}}\\
&=e\sqrt{\frac{GMA^2}{A^3}}\\
&=e\sqrt{\frac{GM}{A}}\\
&=e\sqrt{-2\tilde{E}}\\
\end{align*}
```

Where we recall that $\tilde{E}=\frac{E}{m}=-\frac{GM}{2A}$ from total energy.

This gives the final result of

```math
\dot{r}=\frac{e\sqrt{\frac{GM}{A}}\sin E}{1-e\cos E}
```
