# notes

Things to one day get added to the main text or just me working stuff out

## relationship between eccentric anomaly $E$ and true anomaly $\theta$ but more normally called $\nu$

we already have that
``` math
\begin{align*}
x &= A \cos E &= f + r \cos \nu \\
y &= B \sin E &= r \sin \nu
\end{align*}
```
We have both $r$ and $\nu$ at epoch so we can work out eccentric anomaly at epoch using the fact that $f=eA$ and $B=A\sqrt{1-e^2}$

``` math
\begin{align*}
A \cos E &= f + r \cos \nu \\
A \cos E &= eA + r \cos \nu \\
\cos E &= e+\frac{r}{A} \cos \nu
\end{align*}
```
and
``` math
\begin{align*}
B \sin E &= r \sin \nu\\
\sin E &= \frac{r}{B} \sin \nu \\
 &= \frac{r}{A\sqrt{1-e^2}} \sin \nu
\end{align*}
```
if we didn't know $A$ then we can use $r=A(1 - e \cos E)$
``` math
\begin{align*}
\cos E &= e+\frac{r}{A} \cos \nu\\
\cos E &= e+\frac{A(1 - e \cos E)}{A} \cos \nu\\
\cos E &= e+(1 - e \cos E)\cos \nu\\
\cos E &= e+\cos \nu - e \cos E\cos \nu\\
\cos E + e \cos E\cos \nu&= e+\cos \nu \\
\cos E (1 + e cos \nu)&= e+\cos \nu \\
\cos E &= \frac{e+\cos \nu}{1 + e \cos \nu} \\
\end{align*}\
```
and
``` math
\begin{align*}
\sin E &= \frac{r}{A\sqrt{1-e^2}} \sin \nu\\
&= \frac{A(1 - e \cos E}{A\sqrt{1-e^2}} \sin \nu\\
&= \frac{1 - e \cos E}{\sqrt{1-e^2}} \sin \nu\\
&= \frac{1 - e \frac{e+\cos \nu}{1 + e \cos \nu}}{\sqrt{1-e^2}} \sin \nu\\
&= \frac{1 - \frac{e^2+e\cos \nu}{1 + e \cos \nu}}{\sqrt{1-e^2}} \sin \nu\\
&= \frac{\frac{1 + e \cos \nu}{1 + e \cos \nu} - \frac{e^2+e\cos \nu}{1 + e \cos \nu}}{\sqrt{1-e^2}} \sin \nu\\
&= \frac{\frac{1 + e \cos \nu-e^2-e\cos \nu}{1 + e \cos \nu} }{\sqrt{1-e^2}} \sin \nu\\
&= \frac{\frac{1-e^2}{1 + e \cos \nu} }{\sqrt{1-e^2}} \sin \nu\\
&= \frac{\sqrt{1-e^2}}{1 + e \cos \nu}\sin \nu
\end{align*}
```
