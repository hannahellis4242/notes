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

---
$$ f(x)=A \exp(i x) + B \exp(-i x) = f(x)=\tilde{A}\cos(x)+\tilde{B}\sin(x)$$
---
