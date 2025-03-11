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
or in matrix form
``` math
\begin{pmatrix}
\hat{\mathbf{u}} \\
\hat{\mathbf{v}}  \\
\hat{\mathbf{n}} 
\end{pmatrix} = \begin{bmatrix}
\cos \alpha & \sin \alpha & 0 \\
-\sin \alpha & \cos \alpha & 0  \\
0 & 0 & 1
\end{bmatrix}\begin{pmatrix}
\hat{\imath} \\
\hat{\jmath}  \\
\hat{k} 
\end{pmatrix}
```

## Second Rotation

The second rotation is about the $\hat{\mathbf{u}}$ vector by angle $\beta$ and gives us our $\hat{\mathbf{u}}'$, $\hat{\mathbf{v}}'$ and $\hat{\mathbf{n}}'$ vectors.

![The second rotation looking down the u axis]()

``` math
\begin{align*}
\hat{\mathbf{u}}' &= \hat{\mathbf{u}} \\
\hat{\mathbf{v}}' &= \cos \beta \hat{\mathbf{v}} + \sin \beta \hat{\mathbf{n}}\\
\hat{\mathbf{n}}' &= -\sin \beta \hat{\mathbf{v}} + \cos \beta \hat{\mathbf{n}}
\end{align*}
```

Or in matrix form

``` math
\begin{pmatrix}
\hat{\mathbf{u}}' \\
\hat{\mathbf{v}}'  \\
\hat{\mathbf{n}}' 
\end{pmatrix} = \begin{bmatrix}
1 & 0 & 0 \\
0 & \cos \beta & \sin \beta  \\
0 & -\sin \beta & \cos \beta
\end{bmatrix}\begin{pmatrix}
\hat{\mathbf{u}} \\
\hat{\mathbf{v}}  \\
\hat{\mathbf{n}} 
\end{pmatrix}
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

or as our matrix form

``` math
\begin{pmatrix}
\hat{\mathbf{u}}' \\
\hat{\mathbf{v}}'  \\
\hat{\mathbf{n}}' 
\end{pmatrix} = \begin{bmatrix}
1 & 0 & 0 \\
0 & \cos \beta & \sin \beta  \\
0 & -\sin \beta & \cos \beta
\end{bmatrix} \begin{bmatrix}
\cos \alpha & \sin \alpha & 0 \\
-\sin \alpha & \cos \alpha & 0  \\
0 & 0 & 1
\end{bmatrix}\begin{pmatrix}
\hat{\imath} \\
\hat{\jmath}  \\
\hat{k} 
\end{pmatrix}
```
when multiplied out gives
``` math
\begin{pmatrix}
\hat{\mathbf{u}}' \\
\hat{\mathbf{v}}'  \\
\hat{\mathbf{n}}' 
\end{pmatrix} = \begin{bmatrix}\cos \left(α\right)&\sin \left(α\right)&0\\ -\cos \left(β\right)\sin \left(α\right)&\cos \left(β\right)\cos \left(α\right)&\sin \left(β\right)\\ \sin \left(β\right)\sin \left(α\right)&-\sin \left(β\right)\cos \left(α\right)&\cos \left(β\right)\end{bmatrix}\begin{pmatrix}
\hat{\imath} \\
\hat{\jmath}  \\
\hat{k} 
\end{pmatrix}
```

### Third Rotation

The third rotation is about the $\hat{\mathbf{n}}'$ vector by angle $\gamma$ and gives us our $\hat{\mathbf{u}}''$, $\hat{\mathbf{v}}''$ and $\hat{\mathbf{n}}''$ vectors.

![The third rotation looking down the n' axis]()

``` math
\begin{align*}
\hat{\mathbf{u}}'' &= \cos \gamma \hat{\mathbf{u}}' + \sin \gamma \hat{\mathbf{v}}'\\
\hat{\mathbf{v}}'' &= -\sin \gamma \hat{\mathbf{u}}' + \cos \gamma \hat{\mathbf{v}}'\\
\hat{\mathbf{n}}'' &= \hat{\mathbf{n}}'
\end{align*}
```

or in matrix form

``` math
\begin{pmatrix}
\hat{\mathbf{u}''} \\
\hat{\mathbf{v}''}  \\
\hat{\mathbf{n}''} 
\end{pmatrix} = \begin{bmatrix}
\cos \gamma & \sin \gamma & 0 \\
-\sin \gamma & \cos \gamma & 0  \\
0 & 0 & 1
\end{bmatrix}\begin{pmatrix}
\hat{\mathbf{u}'} \\
\hat{\mathbf{v}'}  \\
\hat{\mathbf{n}'} 
\end{pmatrix}
```

Feeding our second rotation vectors in gives

``` math
\begin{align*}
\hat{\mathbf{u}}'' &= \cos \gamma \left( \cos \alpha \hat{\imath} + \sin \alpha \hat{\jmath} \right) + \sin \gamma \left( -\sin \alpha \cos \beta  \hat{\imath} + \cos \alpha \cos \beta  \hat{\jmath} + \sin \beta \hat{k}\right) \\
\hat{\mathbf{v}}'' &= -\sin \gamma \left( \cos \alpha \hat{\imath} + \sin \alpha \hat{\jmath} \right) + \cos \gamma \left( -\sin \alpha \cos \beta  \hat{\imath} + \cos \alpha \cos \beta  \hat{\jmath} + \sin \beta \hat{k}\right) \\
\hat{\mathbf{n}}'' &= \sin \alpha \sin \beta\hat{\imath} - \cos \alpha \sin \beta \hat{\jmath}+ \cos \beta \hat{k}'
\end{align*}
```
expanding the brackets gives
``` math
\begin{align*}
\hat{\mathbf{u}}'' &=  \cos \alpha \cos \gamma \hat{\imath} + \sin \alpha \cos \gamma \hat{\jmath} -\sin \alpha \cos \beta  \sin \gamma  \hat{\imath} + \cos \alpha \cos \beta \sin \gamma  \hat{\jmath} + \sin \beta \sin \gamma \hat{k} \\
\hat{\mathbf{v}}'' &=  -\cos \alpha \sin \gamma\hat{\imath} - \sin \alpha \sin \gamma\hat{\jmath} -\sin \alpha \cos \beta \cos \gamma  \hat{\imath} + \cos \alpha \cos \beta \cos \gamma  \hat{\jmath} + \sin \beta \cos \gamma \hat{k}\\
\hat{\mathbf{n}}'' &= \sin \alpha \sin \beta\hat{\imath} - \cos \alpha \sin \beta \hat{\jmath}+ \cos \beta \hat{k}'
\end{align*}
```
collecting terms
``` math
\begin{align*}
\hat{\mathbf{u}}'' &=  \left(\cos \alpha \cos \gamma -\sin \alpha \cos \beta  \sin \gamma \right) \hat{\imath} + \left( \sin \alpha \cos \gamma + \cos \alpha \cos \beta \sin \gamma \right) \hat{\jmath} + \sin \beta \sin \gamma \hat{k} \\
\hat{\mathbf{v}}'' &=  -\left(\cos \alpha \sin \gamma\hat{\imath} +\sin \alpha \cos \beta \cos \gamma \right) + \left( \cos \alpha \cos \beta \cos \gamma - \sin \alpha \sin \gamma \right)\hat{\jmath} + \sin \beta \cos \gamma \hat{k}\\
\hat{\mathbf{n}}'' &= \sin \alpha \sin \beta\hat{\imath} - \cos \alpha \sin \beta \hat{\jmath}+ \cos \beta \hat{k}'
\end{align*}
```

Or in matrix form

``` math
\begin{pmatrix}
\hat{\mathbf{u}''} \\
\hat{\mathbf{v}''}  \\
\hat{\mathbf{n}''} 
\end{pmatrix} = \begin{bmatrix}
\cos \gamma & \sin \gamma & 0 \\
-\sin \gamma & \cos \gamma & 0  \\
0 & 0 & 1
\end{bmatrix}\begin{bmatrix}
1 & 0 & 0 \\
0 & \cos \beta & \sin \beta  \\
0 & -\sin \beta & \cos \beta
\end{bmatrix} \begin{bmatrix}
\cos \alpha & \sin \alpha & 0 \\
-\sin \alpha & \cos \alpha & 0  \\
0 & 0 & 1
\end{bmatrix}\begin{pmatrix}
\hat{\imath} \\
\hat{\jmath}  \\
\hat{k} 
\end{pmatrix}
```
