# Euler Angles

Euler angles are used to describe a rotation in 3d. They happen to correspond directly with Kepler's elements. Here we will develop a rotation matrix based on Euler angles, which then can be used to translate Kepler's elements.

Euler's angles are a set of three angles that correspond to the following rotations.

1. Rotation about the $\hat{k}$ vector by angle $\alpha$, giving a vector $\hat{\mathbf{u}}$ which is the rotation of the $\hat{\imath}$ vector. This vector is the ascending node vector in orbital elements with $\alpha$ being the _Longitude of the ascending node_.
2. Rotation about the $\hat{\mathbf{u}}$ vector by angle $\beta$, giving a vector $\hat{\mathbf{n}}'$ which is the normal of the orbital plane in orbital elements and $\beta$ being the _Inclination_
3. Rotation about the $\hat{\mathbf{n}}'$ vector by angle $\gamma$, giving a vector $\hat{\mathbf{u}}''$ which is the vector pointing towards the periapsis. This angle is the _Argument of periapsis_ in orbital elements.

## First Rotation

The first rotation is about the $\hat{k}$ vector by angle $\alpha$ and gives us our $\hat{\mathbf{u}}$, $\hat{\mathbf{v}}$ and $\hat{\mathbf{n}}$ vectors.

![The first rotation looking down the z axis]()

``` math
\begin{align*}
\hat{\mathbf{u}} &= \cos \alpha \hat{\imath} + \sin \alpha \hat{\jmath}\\
\hat{\mathbf{v}} &= -\sin \alpha \hat{\imath} + \cos \alpha \hat{\jmath}\\
\hat{\mathbf{n}} &= \hat{k}
\end{align*}
```

## Second Rotation

The first rotation is about the $\hat{\mathbf{u}}$ vector by angle $\beta$ and gives us our $\hat{\mathbf{u}}'$, $\hat{\mathbf{v}}'$ and $\hat{\mathbf{n}}'$ vectors.

![The second rotation looking down the u axis]()

``` math
\begin{align*}
\hat{\mathbf{u}}' &= \hat{\mathbf{u}} \\
\hat{\mathbf{v}}' &= \cos \beta \hat{\mathbf{v}} + \sin \beta \hat{\mathbf{n}}\\
\hat{\mathbf{n}}' &= -\sin \beta \hat{\mathbf{v}} + \cos \beta \hat{\mathbf{n}}
\end{align*}
```

Feeding in our first rotation gives
``` math
\begin{align*}
\hat{\mathbf{u}}' &= \cos \alpha \hat{\imath} + \sin \alpha \hat{\jmath} \\
\hat{\mathbf{v}}' &= \cos \beta \left( -\sin \alpha \hat{\imath} + \cos \alpha \hat{\jmath} \right) + \sin \beta \hat{k}\\
\hat{\mathbf{n}}' &= -\sin \beta \left( -\sin \alpha \hat{\imath} + \cos \alpha \hat{\jmath} \right)+ \cos \beta \hat{k}
\end{align*}
```
which simplifies to give
``` math
\begin{align*}
\hat{\mathbf{u}}' &= \cos \alpha \hat{\imath} + \sin \alpha \hat{\jmath} \\
\hat{\mathbf{v}}' &= -\sin \alpha \cos \beta  \hat{\imath} + \cos \alpha \cos \beta  \hat{\jmath} + \sin \beta \hat{k}\\
\hat{\mathbf{n}}' &=  \sin \alpha \sin \beta\hat{\imath} - \cos \alpha \sin \beta \hat{\jmath}+ \cos \beta \hat{k}
\end{align*}
```
