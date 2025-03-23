# Arbitary Shperical Polar Rotation of a Vector

## The Problem

Given a vector $\mathbf{v}$ and two angles $0<=\theta<=\pi$ and $0<=\phi<=2\pi$ we wish to rotatate it to $\mathbf{v}'$ so that the angle between $\mathbf{v}$ and $\mathbf{v}'$ is $\theta$. To archive this, a reference plane and direction will be needed, or equivalently a reference plane normal vector and a reference direction.

## Spherical Polar Angle Unit Vector

Before creating a new basis we will firstly look at the use of Spherical Polar Angles to describe any unit vector in three dimensions. Using the standard basis of $\hat{\imath}$, $\hat{\jmath}$ and $\hat{k}$ gives us the form

```math
\hat{\mathbf{u}} = \sin \theta \cos \phi \hat{\imath} + \sin \theta \sin \phi \hat{\jmath} + \cos \theta \hat{k}
```

Or as a column vector[^1]

```math
\hat{\mathbf{u}} = \begin{bmatrix}\sin \theta \cos \phi \\ \sin \theta \sin \phi \\ \cos \theta \end{bmatrix}
```

[^1]: Remember the implied row matrix of basis vectors
