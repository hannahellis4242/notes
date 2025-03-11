# Euler Angles

Euler angles are used to describe a rotation in 3d. They happen to correspond directly with Kepler's elements. Here we will develop a rotation matrix based on Euler angles, which then can be used to translate Kepler's elements.

Euler's angles are a set of three angles that correspond to the following rotations.

1. Rotation about the $\hat{k}$ vector by angle $\alpha$, giving a vector $\hat{\mathbf{u}}$ which is the rotation of the $\hat{\imath}$ vector. This vector is the ascending node vector in orbital elements with $\alpha$ being the _Longitude of the ascending node_.
2. Rotation about the $\hat{\mathbf{u}}$ vector by angle $\beta$, giving a vector $\hat{\mathbf{n}}'$ which is the normal of the orbital plane in orbital elements and $\beta$ being the _Inclination_
3. Rotation about the $\hat{\mathbf{n}}'$ vector by angle $\gamma$, giving a vector $\hat{\mathbf{u}}''$ which is the vector pointing towards the periapsis. This angle is the _Argument of periapsis_ in orbital elements.
