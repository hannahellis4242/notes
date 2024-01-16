# Change of Basis for Typical Solutions

## Complex Exponentials and Trigonometric functions

Sometimes when solving ODE's you'll get a solution of the form

$$ f(x) = A \exp(i x) + B \exp(-i x) $$

where $A$ and $B$ are both complex numbers.

Using Euler's formula
$$\exp(ix)=\cos(x)+i\sin(x)$$
this can be rewritten as

$$ \begin{align*}
f(x) &= A \cos(x)+Ai\sin(x) + B \cos(x)-Bi\sin(x)\\
&=(A+B)\cos(x)+(A-B)i\sin(x)
\end{align*}$$

if we let
$$
\begin{pmatrix} \tilde{A} \\ \tilde{B} \end{pmatrix} =
\begin{pmatrix}
 1 & 1 \\
 i & -i
\end{pmatrix}
\begin{pmatrix}A \\ B\end{pmatrix}$$

Then we get

$$ f(x)=\tilde{A}\cos(x)+\tilde{B}\sin(x) $$

Since we are free to choose our basis we can have either form

> $$ f(x)=A \exp(i x) + B \exp(-i x) = f(x)=\tilde{A}\cos(x)+\tilde{B}\sin(x)$$

## Exponentials and Hyperbolic functions

Sometimes when solving ODE's you'll get a solution of the form

$$ f(x) = A \exp(x) + B \exp(-x) $$

We can look at the definitions of the hyperbolic functions to build up something akin to the Eular formula used earlier

$$ \begin{align*}
\sinh(x) &= \frac{\exp(x)-\exp(-x)}{2}\\
\cosh(x) &= \frac{\exp(x)+\exp(-x)}{2}\\
\end{align*}$$

as you can see we can write this in a matrix form
$$ \begin{pmatrix}
\sinh(x)\\
\cosh(x)
\end{pmatrix} =
\frac{1}{2}\begin{pmatrix}
1 & -1 \\ 1 & 1
\end{pmatrix}
\begin{pmatrix}
\exp(x)\\
\exp(-x)
\end{pmatrix}$$
which we can invert to get
$$ \begin{pmatrix}
\exp(x)\\
\exp(-x)
\end{pmatrix} =
\begin{pmatrix}
1 & 1 \\ -1 & 1
\end{pmatrix}
\begin{pmatrix}
\sinh(x)\\
\cosh(x)
\end{pmatrix}$$

or to make it a little clearer

$$ \begin{align*}
\exp(x) &= \cosh(x)+\sinh(x)\\
\exp(-i)&= \cosh(x)-\sinh(x)
\end{align*}$$

So again we can rewrite

$$ f(x) = A \exp(x) + B \exp(-x) $$

as
$$\begin{align*}
f(x) &= A \cosh(x)+A\sinh(x) + B \cosh(x)-B\sinh(x)\\
&=(A+B)\cosh(x)+(A-B)\sinh(x)
\end{align*}$$

if we let
$$\begin{pmatrix} \tilde{A} \\ \tilde{B} \end{pmatrix} =
\begin{pmatrix}
 1 & 1 \\
 1 & -1
\end{pmatrix}
\begin{pmatrix}A \\ B\end{pmatrix}$$

Then we can write
> $$f(x) = A \exp(x) + B \exp(-x) =\tilde{A}\cosh(x)+\tilde{B}\sinh(x)$$
