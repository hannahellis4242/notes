# Transformations of Vectors and Coordinates

The column vector representation of a vector is written the following way

```math
\mathbf{r}=\begin{pmatrix} x \\ y \\ z \end{pmatrix}
```

However this really means the following

```math
\mathbf{r}=x \hat{\imath} + y \hat{\jmath} + z \hat{k}
```

This however can be written the following two ways

```math
\begin{align*}
\mathbf{r}&=x \hat{\imath} + y \hat{\jmath} + z \hat{k}\\
&=\begin{bmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \end{bmatrix}\begin{bmatrix} x \\ y \\ z \end{bmatrix}\\
&=\begin{bmatrix} x & y & z \end{bmatrix}\begin{bmatrix}  \hat{\imath}\\ \hat{\jmath} \\ \hat{k} \end{bmatrix}
\end{align*}
```

You can see that there's an implied row matrix of basis vectors when you use a column vector. You can also see this as a matrix of column vectors. You can also see there's a similar row vector, which you might consider to be the dual of the column vector. Similarly the column matrix of basis vectors is the dual to our row matrix of basis vectors.

## Transformation of basis vectors

If you know how your basis vectors translate, so for example

```math
\begin{bmatrix}  \hat{\imath}'\\ \hat{\jmath}' \\ \hat{k}' \end{bmatrix} = \begin{bmatrix}  a_{11} & a_{12} & a_{13} \\  a_{21} & a_{22} & a_{23} \\  a_{31} & a_{32} & a_{33} \end{bmatrix}\begin{bmatrix}  \hat{\imath}\\ \hat{\jmath} \\ \hat{k} \end{bmatrix}
```

We can use this to work out how our coordinates transform by noting

```math
\mathbf{r} = \begin{bmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \end{bmatrix}\begin{bmatrix} x \\ y \\ z \end{bmatrix}\ = \begin{bmatrix} \hat{\imath}' & \hat{\jmath}' & \hat{k}' \end{bmatrix}\begin{bmatrix} x' \\ y' \\ z' \end{bmatrix}
```

We can get the row matrix of basis vectors in our new coordinate system by transposing our transform for the basis vectors

```math
\begin{align*}
\begin{bmatrix}  \hat{\imath}'\\ \hat{\jmath}' \\ \hat{k}' \end{bmatrix}^T &= \left(\begin{bmatrix}  a_{11} & a_{12} & a_{13} \\  a_{21} & a_{22} & a_{23} \\  a_{31} & a_{32} & a_{33} \end{bmatrix}\begin{bmatrix}  \hat{\imath}\\ \hat{\jmath} \\ \hat{k} \end{bmatrix} \right)^T \\
\begin{bmatrix}  \hat{\imath}'& \hat{\jmath}' & \hat{k}' \end{bmatrix} &= \begin{bmatrix}  \hat{\imath}& \hat{\jmath} & \hat{k} \end{bmatrix} \begin{bmatrix}  a_{11} & a_{12} & a_{13} \\  a_{21} & a_{22} & a_{23} \\  a_{31} & a_{32} & a_{33} \end{bmatrix}^T \\
\end{align*}
```

We can put this result into our equation for a matrix and get

```math
\begin{align*}
\mathbf{r} = \begin{bmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \end{bmatrix}\begin{bmatrix} x \\ y \\ z \end{bmatrix} &= \begin{bmatrix} \hat{\imath}' & \hat{\jmath}' & \hat{k}' \end{bmatrix}\begin{bmatrix} x' \\ y' \\ z' \end{bmatrix}\\
&=\begin{bmatrix} \hat{\imath}' & \hat{\jmath}' & \hat{k}' \end{bmatrix}\begin{bmatrix} x' \\ y' \\ z' \end{bmatrix}\\
&= \begin{bmatrix}  \hat{\imath}& \hat{\jmath} & \hat{k} \end{bmatrix} \begin{bmatrix}  a_{11} & a_{12} & a_{13} \\  a_{21} & a_{22} & a_{23} \\  a_{31} & a_{32} & a_{33} \end{bmatrix}^T \begin{bmatrix} x' \\ y' \\ z' \end{bmatrix}\\
\end{align*}
```

And so the transformation of coordinates falls out as

```math
\begin{bmatrix} x \\ y \\ z \end{bmatrix}=\begin{bmatrix}  a_{11} & a_{12} & a_{13} \\  a_{21} & a_{22} & a_{23} \\  a_{31} & a_{32} & a_{33} \end{bmatrix}^T \begin{bmatrix} x' \\ y' \\ z' \end{bmatrix}
```
