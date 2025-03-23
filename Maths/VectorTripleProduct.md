# Vector Triple Product

## Vector Product

The vector product of two vectors is

```math
\begin{align*}
\mathbf{a} \times \mathbf{b} &= \begin{vmatrix}
\hat{\imath} & \hat{\jmath} & \hat{k} \\
a_x & a_y & a_z \\
b_x & b_y & b_z
\end{vmatrix}\\
&= \begin{pmatrix} a_y b_z - a_z b_y \\ a_z b_x - a_x b_z \\ a_x b_y - a_y b_x  \end{pmatrix} \\
&=\begin{bmatrix}
0 & -a_z & a_y \\
a_z& 0 &-a_x \\
-a_y & a_x & 0
\end{bmatrix}\begin{pmatrix} b_x \\ b_y \\ b_z \end{pmatrix}
\end{align*}
```

## Triple product

```math
\begin{align*}
\mathbf{a}\times\mathbf{b}\times\mathbf{c} &= \mathbf{a}\times\mathbf{d} \\
\mathbf{d} &= \mathbf{b}\times\mathbf{c}
\end{align*}
```

Firstly calculating $\mathbf{d}$ gives

```math
\begin{align*}
\mathbf{d} &= \mathbf{b}\times\mathbf{c} \\
&= \begin{vmatrix}
\hat{\imath} & \hat{\jmath} & \hat{k} \\
b_x & b_y & b_z \\
c_x & c_y & c_z
\end{vmatrix}\\
&= \begin{pmatrix} b_y c_z - b_z c_y \\
 b_z c_x - b_x c_z \\
 b_x c_y - b_y c_x  \end{pmatrix}
\end{align*}
```

Secondly calculating $\mathbf{a}\times\mathbf{d}$ gives

```math
\begin{align*}
\mathbf{a}\times\mathbf{d} &= \begin{vmatrix}
\hat{\imath} & \hat{\jmath} & \hat{k} \\
a_x & a_y & a_z \\
d_x & d_y & d_z
\end{vmatrix}\\
&= \begin{pmatrix} a_y d_z - a_z d_y \\ a_z d_x - a_x d_z \\ a_x d_y - a_y d_x  \end{pmatrix}
\end{align*}
```

Putting these together gives

```math
\begin{align*}
\mathbf{a}\times\mathbf{b}\times\mathbf{c} &= \begin{pmatrix} a_y (b_x c_y - b_y c_x) - a_z (b_z c_x - b_x c_z) \\ a_z (b_y c_z - b_z c_y) - a_x (b_x c_y - b_y c_x) \\ a_x (b_z c_x - b_x c_z) - a_y (b_y c_z - b_z c_y)  \end{pmatrix} \\
&=\begin{pmatrix}  a_y b_x c_y - a_y b_y c_x - a_z b_z c_x + a_z b_x c_z \\
 a_z b_y c_z - a_z b_z c_y - a_x b_x c_y + a_x b_y c_x \\ a_x b_z c_x - a_x b_x c_z - a_y b_y c_z + a_y b_z c_y \end{pmatrix} \\
 &=\begin{pmatrix}  a_y b_x c_y + a_z b_x c_z - (a_y b_y c_x + a_z b_z c_x)  \\
 a_z b_y c_z + a_x b_y c_x - (a_z b_z c_y + a_x b_x c_y)  \\ a_x b_z c_x + a_y b_z c_y - (a_x b_x c_z + a_y b_y c_z)  \end{pmatrix} \\
  &=\begin{pmatrix}  (a_y c_y + a_z c_z)b_x - (a_y b_y + a_z b_z )c_x  \\
 (a_z c_z + a_x c_x)b_y - (a_z b_z + a_x b_x)c_y  \\ (a_x c_x + a_y c_y)b_z - (a_x b_x + a_y b_y)c_z  \end{pmatrix} \\
 &=\begin{pmatrix} (a_x c_x +a_y c_y + a_z c_z)b_x - a_x b_x c_x - (a_x b_x + a_y b_y + a_z b_z )c_x + a_x b_x c_x  \\
 (a_x c_x + a_y c_y + a_z c_z )b_y - a_y b_y c_y - (a_x b_x+ a_y b_y + a_z b_z )c_y + a_y b_y c_y  \\ (a_x c_x + a_y c_y + a_z c_z)b_z - a_z b_z c_z - (a_x b_x + a_y b_y + a_z b_z)c_z + a_z b_z c_z  \end{pmatrix} \\
  &=\begin{pmatrix} \mathbf{a} \cdot \mathbf{c} b_x  - \mathbf{a} \cdot \mathbf{b} c_x + a_x b_y c_x - a_x b_x c_x \\
\mathbf{a} \cdot \mathbf{c}b_y - \mathbf{a} \cdot \mathbf{b}c_y + a_y b_y c_y - a_y b_y c_y \\
\mathbf{a} \cdot \mathbf{c}b_z - \mathbf{a} \cdot \mathbf{b}c_z + a_z b_z c_z - a_z b_z c_z \end{pmatrix} \\
  &=\begin{pmatrix} \mathbf{a} \cdot \mathbf{c} b_x  - \mathbf{a} \cdot \mathbf{b} c_x \\
\mathbf{a} \cdot \mathbf{c}b_y - \mathbf{a} \cdot \mathbf{b}c_y \\
\mathbf{a} \cdot \mathbf{c}b_z - \mathbf{a} \cdot \mathbf{b}c_z \end{pmatrix} \\
&=(\mathbf{a} \cdot \mathbf{c})\mathbf{b}  - (\mathbf{a} \cdot \mathbf{b}) \mathbf{c}
\end{align*}
```

Leaving us with the final result

```math
\mathbf{a} \times \mathbf{b} \times \mathbf{c} = (\mathbf{a} \cdot \mathbf{c})\mathbf{b}  - (\mathbf{a} \cdot \mathbf{b}) \mathbf{c}
```
