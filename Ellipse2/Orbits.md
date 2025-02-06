# Orbits

## Plane Polar Coordinates

![plain polar diagram](./img/polars.svg)

### Unit vectors

The unit vectors of plain polar coordinates can be determined from the standard unit vectors from the geometry above as

```math
\begin{align*}
\hat{\mathbf{r}} &= \mathbf{\hat{\imath}} \cos( \theta ) + \mathbf{\hat{\jmath}} \sin( \theta ) \\
\hat{\mathbf{\theta}}  &= - \mathbf{\hat{\imath}} \sin( \theta ) + \mathbf{\hat{\jmath}} \cos( \theta )
\end{align*}
```

Where $r$ is the distance from the origin to the position or alternatively the length of the position vector, and $\theta$ is the angle between $\mathbf{\hat{\textnormal{\bf\i}}}$ and $\mathbf{r}$.
Since the unit vectors $\hat{\mathbf{r}}$ and $\hat{\mathbf{\theta}}$ depend on $\theta$ which changes with time, the unit vectors also change with time. We will begin by looking at the derivative of $\hat{\mathbf{r}}$ with respect to time.

```math
\begin{align*}
\frac{d {\hat{\mathbf{r}}}}{d t} &= \frac{ d \theta}{d t}\frac{d}{d \theta} \hat{\mathbf{r}} \\
&=  \frac{ d \theta}{d t} \left[ -\mathbf{\hat{\imath}} \sin( \theta ) + \mathbf{\hat{\jmath}} \cos( \theta ) \right] \\
&= \frac{ d \theta}{d t} \hat{\mathbf{\theta}}
\end{align*}
```

Where we have used replaced the cartesian unit vectors with their corresponding plane polar ones.

```math
\begin{align*}
\frac{d {\hat{\mathbf{\theta}}}}{d t}&=\frac{d \theta}{d t} \frac{d}{dt}{\hat{\mathbf{\theta}}}\\
&=\frac{d \theta}{d t}  \left[ - \mathbf{\hat{\imath}} \cos( \theta ) - \mathbf{\hat{\jmath}} \sin( \theta ) \right]\\
&=- \frac{d \theta}{d t} \hat{\mathbf{r}}
\end{align*}
```

Where once again we have used replaced the cartesian unit vectors with their corresponding plane polar ones.

Since $\frac{d {\hat{\mathbf{r}}}}{d t}$ too depends on $\theta$ so is also time dependent. So we can differentiate again.

```math
\begin{align*}
\frac{d^2 {\hat{\mathbf{r}}}}{d t^2} &= \frac{d}{dt}\left[ \frac{ d \theta}{d t} \hat{\mathbf{\theta}} \right]\\
&=\frac{d^2 \theta}{d t^2}\hat{\mathbf{\theta}}+\frac{d \theta}{d t} \frac{d \hat{\mathbf{\theta}}}{dt}\\
&=\frac{d^2 \theta}{d t^2}\hat{\mathbf{\theta}}+\frac{d \theta}{d t} \left[- \frac{d \theta}{d t} \hat{\mathbf{r}} \right]\\
&=\frac{d^2 \theta}{d t^2}\hat{\mathbf{\theta}}-\left(\frac{d \theta}{d t} \right)^2 \hat{\mathbf{r}}
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
\frac{d \mathbf{r}}{d t} &= \frac{d r}{d t} \hat{\mathbf{r}} + r \frac{d \hat{\mathbf{r}}}{d t}\\
&=\frac{d r}{d t} \hat{\mathbf{r}} + r\frac{ d \theta}{d t} \hat{\mathbf{\theta}}\\
&=\frac{d r}{d t} \hat{\mathbf{r}} + r \omega \hat{\mathbf{\theta}}
\end{align*}
```

where we have used $\omega = \frac{ d \theta}{d t}$.

The acceleration can be obtained by taking the derivative with respect to time of the velocity.

```math
\begin{align*}
\frac{ d^2 \mathbf{r}}{ d t^2} &=\frac{d}{d}\left[\frac{d r}{d t} \hat{\mathbf{r}} + r \omega \hat{\mathbf{\theta}}\right]\\
&=\frac{d}{d}\left[\frac{d r}{d t} \hat{\mathbf{r}}\right] + \frac{d}{dt}\left[r \omega \hat{\mathbf{\theta}}\right]\\
&= \left[\frac{ d^2 r}{d t^2} \hat{\mathbf{r}} + \frac{d r}{d t} \frac{d \hat{\mathbf{r}}}{d t}\right] +\left[\frac{d r}{d t} \omega \hat{\mathbf{\theta}} +r \frac{d \omega}{d t} \hat{\mathbf{\theta}}+r \omega \frac{d \hat{\mathbf{\theta}}}{d t} \right]\\
&=  \frac{ d^2 r}{d t^2} \hat{\mathbf{r}} + \frac{d r}{d t} \omega \hat{\mathbf{\theta}} +\frac{d r}{d t} \omega \hat{\mathbf{\theta}} +r \frac{d \omega}{d t} \hat{\mathbf{\theta}}-r \omega^2 \hat{\mathbf{r}} \\
&=\left[  \frac{ d^2 r}{d t^2} -r \omega^2 \right] \hat{\mathbf{r}} + \left[ 2 \frac{d r}{d t} \omega + r \frac{ d \omega}{d t} \right] \hat{\mathbf{\theta}}
\end{align*}
```

We have had to use the triple product rule here. (The derivation for this is shown in another page)

## Gravity

The gravitational force between two particles a distance $r$ apart with mass $M$ and $m$ is given by

```math
\mathbf{F}=-\frac{GMm}{r^2}\hat{\mathbf{r}}
```

The acceleration of the particle with mass $m$ due to the force of gravity between the two particles is then

```math
\frac{d^2\mathbf{r}}{dt^2}=\frac{\mathbf{F}}{m}=-\frac{GM}{r^2}\hat{\mathbf{r}}
```

We can then equate this to the acceleration in terms of polar coordinates to get

```math
-\frac{GM}{r^2}\hat{\mathbf{r}} = \left[  \frac{ d^2 r}{d t^2} -r \omega^2 \right] \hat{\mathbf{r}} + \left[ 2 \frac{d r}{d t} \omega + r \frac{ d \omega}{d t} \right] \hat{\mathbf{\theta}}
```

which we can split up into two parts, a radial part and an angular part

```math
\begin{align*}
-\frac{GM}{r^2}&= \frac{ d^2 r}{d t^2} -r \omega^2  \\
0 &= 2 \frac{d r}{d t} \omega + r \frac{ d \omega}{d t}
\end{align*}
```

## Angular Momentum

The angular momentum of a particle is given by the cross product of the position vector and the momentum vector.

```math
\begin{align*}
\mathbf{L}&=\mathbf{r} \times \mathbf{p}\\
&=\mathbf{r} \times \left(m\frac{d\mathbf{r}}{dt}\right)\\
&=m \mathbf{r} \times \frac{d\mathbf{r}}{dt}\\
&=m r\hat{\mathbf{r}} \times \left(\frac{d r}{d t} \hat{\mathbf{r}} + r \omega \hat{\mathbf{\theta}}\right)\\
&=mr\frac{d r}{d t}\hat{\mathbf{r}} \times \hat{\mathbf{r}} + mr r \omega \hat{\mathbf{r}} \times\hat{\mathbf{\theta}}\\
&=mr^2 \omega \hat{\mathbf{r}} \times\hat{\mathbf{\theta}}\\
&=mr^2\omega \hat{\mathbf{k}}
\end{align*}
```

We can also write this as $\mathbf{L} = l \hat{\mathbf{k}}$ were

```math
l=mr^2\omega
```

### Conservation of Angular Momentum

We can show now that angular momentum is conserved under a central force by taking the derivative with respect to time.

```math
\begin{align*}
\frac{dl}{dt}&=m\frac{d}{dt}\left[r^2\omega\right]\\
&=m\left[\frac{dr^2}{dt}\omega + r^2\frac{d\omega}{dt}\right]\\
&=m\left[\frac{dr^2}{dr}\frac{dr}{dt}\omega + r^2\frac{d\omega}{dt}\right]\\
&=m\left[2r\frac{dr}{dt}\omega + r^2\frac{d\omega}{dt}\right]\\
&=mr\left[2\frac{dr}{dt}\omega + r\frac{d\omega}{dt}\right]\\
&=mr \times 0\\
&=0
\end{align*}
```

where we have used angular part of the acceleration being 0. This shows that the angular momentum is conserved. ie it is a constant with respect to time.

## Energy

### Potential energy

Firstly let us consider the potential energy of the particle. The potential energy is the work done in moving the particle from a radius of $\infty$ to $r$.
So the work done is given by

```math
\begin{align*}
U(r)&=\int_{\infty}^{r} \mathbf{F}(r') \cdot d\mathbf{r}' \\
&=\int_{\infty}^{r} -\frac{GMm}{r'^2} \hat{\mathbf{r}} \cdot dr' \hat{\mathbf{r}}  \\
&=-GMm\int_{\infty}^{r} \frac{dr'}{r'^2} \\
&=-GMm \left[ \frac{-1}{r'} \right]_{\infty}^{r} \\
&=GMm \left[ \frac{1}{\infty} - \frac{1}{r} \right] \\
&=- \frac{GMm}{r}
\end{align*}
```

### Kinetic Energy

The kinetic energy of a particle is given by

```math
T(\dot{r})=\frac{1}{2}m\dot{\mathbf{r}}\cdot\dot{\mathbf{r}}
```

using this gives us the kinetic energy as

```math
\begin{align*}
T(\dot{r})&=\frac{1}{2}m\left[ \dot{r}\hat{\mathbf{r}}+r\omega\hat{\mathbf{\theta}}\right]\cdot\left[ \dot{r}\hat{\mathbf{r}}+r\omega\hat{\mathbf{\theta}}\right] \\
&=\frac{1}{2}m \dot{r}^2 + \frac{1}{2}mr^2 \omega^2
\end{align*}
```

we can also make the substitution using the angular momentum.

```math
\begin{align*}
l&=mr^2\omega  \\
\omega&=\frac{l}{mr^2}
\end{align*}
```

So that

```math
\begin{align*}
T(\dot{r})
&=\frac{1}{2}m \dot{r}^2 + \frac{1}{2}mr^2 \left(\frac{l}{mr^2}\right)^2\\
&=\frac{1}{2}m \dot{r}^2 + \frac{1}{2}mr^2 \left(\frac{l^2}{m^2r^4}\right)\\
&=\frac{1}{2}m \dot{r}^2 +  \frac{l^2}{2mr^2}\\
\end{align*}
```

### Total Energy

Finally the total energy can be found adding both the kinetic and potential energy.

```math
\begin{align*}
E(r,\dot{r}) &= T(\dot{r}) + U(r)\\
&= \frac{1}{2}m \dot{r}^2 +  \frac{l^2}{2mr^2} - \frac{GMm}{r}
\end{align*}
```

sometimes the last two terms of total energy are put together to form a new potential energy term that is dependent only on the radius and the angular momentum.

#### Conservation of Total Energy

Just like with angular momentum we can show that total energy is conserved by taking the derivative with respect to time.

```math
\begin{align*}
\frac{dE}{dt}&=\frac{d}{dt}\left[\frac{1}{2}m \dot{r}^2 +  \frac{l^2}{2mr^2}-\frac{GMm}{r}\right]\\
&=\frac{1}{2}m \frac{d\dot{r}^2}{dt} +  \frac{l^2}{2m}\frac{dr^{-2}}{dt}-GMm\frac{dr^{-1}}{dt}\\
&=\frac{1}{2}m \frac{d\dot{r}^2}{d\dot{r}}\frac{d\dot{r}}{dt} +  \frac{l^2}{2m}\frac{dr^{-2}}{dr}\frac{dr}{dt}-GMm\frac{dr^{-1}}{dr}\frac{dr}{dt}\\
&=\frac{1}{2}m (2\dot{r})\ddot{r}+ \frac{l^2}{2m}\left(\frac{-2}{r^3}\right)\dot{r}+\frac{GMm}{r^2}\dot{r}\\
&=m \dot{r}\ddot{r}- \frac{l^2}{mr^3}\dot{r}+\frac{GMm}{r^2}\dot{r}\\
\end{align*}
```

using $l=mr^2\omega$

```math
\begin{align*}
\frac{dE}{dt} &=m \dot{r}\ddot{r}- \frac{l^2}{mr^3}\dot{r}+\frac{GMm}{r^2}\dot{r}\\
&=m \dot{r}\ddot{r}- \frac{m^2r^4\omega^2}{mr^3}\dot{r}+\frac{GMm}{r^2}\dot{r}\\
&=m \dot{r}\ddot{r}-mr\omega^2\dot{r}+\frac{GMm}{r^2}\dot{r}\\
&=m \dot{r}\left[\ddot{r}-r\omega^2+\frac{GM}{r^2}\right]\\
\end{align*}
```

using the radial part of the acceleration $-\frac{GM}{r^2}= \ddot{r} -r \omega^2$ we get

```math
\begin{align*}
\frac{dE}{dt}&=m \dot{r}\left[-\frac{GM}{r^2}+\frac{GM}{r^2}\right]\\
&=m \dot{r}\left[0\right]\\
&=0
\end{align*}
```

This then shows that the total energy does not change with respect to time, so is a constant and also conserved.

## Elliptical orbits

Firstly we let $r=\frac{1}{u}$, so that

```math
\begin{align*}
\frac{dr}{dt} &= \frac{du^{-1}}{dt}\\
&= \frac{du^{-1}}{du}\frac{du}{dt}\\
&= -\frac{1}{u^2}\frac{du}{dt}\\
&= -r^2\frac{du}{dt}
\end{align*}
```

next we introduce an $\omega$ by chain rule

```math
\begin{align*}
\frac{dr}{dt}
&= -r^2\frac{du}{dt}\\
\frac{dr}{dt}
&= -r^2\frac{du}{d\theta}\frac{d\theta}{dt}\\
&= -r^2\omega\frac{du}{d\theta}
\end{align*}
```

And using the angular momentum $l=mr^2\omega$ or rearranging $\omega = \frac{l}{mr^2}$

```math
\begin{align*}
\frac{dr}{dt}&= -r^2\omega\frac{du}{d\theta}\\
\frac{dr}{dt}&= -r^2\frac{l}{mr^2}\frac{du}{d\theta}\\
\frac{dr}{dt}&= -\frac{l}{m}\frac{du}{d\theta}\\
\frac{dr}{dt}&= -\frac{l}{m}\frac{du}{d\theta}\\
\end{align*}
```

Differentiating again with respect to time gives

```math
\begin{align*}
\frac{dr^2}{dt^2}&= -\frac{l}{m}\frac{d}{dt}\frac{du}{d\theta}\\
&= -\frac{l}{m}\frac{d\theta}{dt}\frac{d}{d\theta}\frac{du}{d\theta}\\
&= -\frac{l}{m}\omega\frac{d^2u}{d\theta^2}
\end{align*}
```

We can substitute $l=mr^2\omega$ again to get

```math
\begin{align*}
\frac{dr^2}{dt^2}&= -\frac{l}{m}\omega\frac{d^2u}{d\theta^2}\\
&= -\frac{mr^2\omega}{m}\omega\frac{d^2u}{d\theta^2}\\
&= -r^2\omega^2\frac{d^2u}{d\theta^2}\\
\end{align*}
```

We can now substitute this into the radial part of the acceleration

```math
\begin{align*}
-\frac{GM}{r^2}&= \frac{ d^2 r}{d t^2} -r \omega^2  \\
&=-r^2\omega^2\frac{d^2u}{d\theta^2} -r\omega^2\\
&=-r^2\omega^2\left[\frac{d^2u}{d\theta^2}+\frac{1}{r}\right]\\
GM&=r^4\omega^2\left[\frac{d^2u}{d\theta^2}+\frac{1}{r}\right]
\end{align*}
```

Next we recall that $u=\frac{1}{r}$ and that $\frac{l}{m}=r^2\omega$ and substitute these in

```math
\begin{align*}
GM&=\left(\frac{l}{m}\right)^2\left[\frac{d^2u}{d\theta^2}+u\right]\\
\frac{d^2u}{d\theta^2}+u &=\frac{GMm^2}{l^2}
\end{align*}
```

To simplify this equation we will use $\alpha=\frac{GMm^2}{l^2}$

### Solution

The direct solution to

```math
\frac{d^2u}{d\theta^2}+u =\alpha
```

is $u=\alpha$

However because there is also a function that results in zero, we must include that

```math
\begin{align*}
\frac{d^2u}{d\theta^2}+u &=0\\
\frac{d^2u}{d\theta^2} &=-u
\end{align*}
```

we can take the solution that $u=c\cos\theta$ which gives the general overall solution of

```math
u(\theta)=\alpha + c \cos \theta
```

We can pick an initial condition when $\theta=0$ the body is at periapsis or $r=p=A(1-e)$ which gives $u=\frac{1}{A(1-e)}$ (see the ellipse notes for $p=A(1-e)$)

```math
\begin{align*}
\frac{1}{A(1-e)}&=\alpha+c\\
\alpha&=\frac{1}{A(1-e)} - c
\end{align*}
```

we could similarly hae picked the condition that when $\theta=\pi$ the body is at apoapsis or $r=a=A(1+e)$ which gives $u=\frac{1}{A(1+e)}$ (see ellipse notes for $a=A(1+e)$)

```math
\begin{align*}
\frac{1}{A(1+e)}&=\alpha-c\\
\alpha&=\frac{1}{A(1+e)} + c
\end{align*}
```

we can equate our two initial conditions to get $c$ in terms of just $a$ and $p$

```math
\begin{align*}
\alpha=\frac{1}{A(1-e)}-c&=\frac{1}{A(1+e)} + c\\
\frac{1}{A(1-e)}-\frac{1}{A(1+e)}&=2c\\
\frac{A(1+e)-A(1-e)}{A^2(1+e)(1-e)}&=2c\\
\frac{A+eA-A+eA}{A^2(1-e^2)}&=2c\\
\frac{2eA}{A^2(1-e^2)}&=2c\\
\frac{e}{A(1-e^2)}&=c\\
\end{align*}
```

Now that we have $c$ we can use this to determine $\alpha$ in terms of $A$ and $e$

```math
\begin{align*}
\alpha&=\frac{1}{A(1+e)} + c\\
&=\frac{1}{A(1+e)} + \frac{e}{A(1-e)^2}\\
&=\frac{(1-e)}{A(1+e)(1-e)} + \frac{e}{A(1-e)^2}\\
&=\frac{1-e+e}{A(1-e^2)} \\
&=\frac{1}{A(1-e^2)} \\
\end{align*}
```

So feeding all this back in we have

```math
\begin{align*}
u(\theta)&=\alpha + c \cos \theta\\
&=\frac{1}{A(1-e^2)} + \frac{e}{A(1-e^2)} \cos \theta\\
&=\frac{1+e\cos\theta}{A(1-e^2)}
\end{align*}
```

Now we have a simple form for $u$ we can recall that we chose $u=\frac{1}{r}$, so

```math
r=\frac{1+e\cos\theta}{A(1-e^2)}
```

which is the equation for a ellipse we saw from the ellipse notes.

We also get the interesting result here that

```math
\begin{align*}
\alpha = \frac{GMm^2}{l^2}&=\frac{1}{A(1-e^2)} \\
A(1-e^2)&=\frac{l^2}{GMm^2}
\end{align*}
```
