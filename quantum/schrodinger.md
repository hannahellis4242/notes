# Schrodinger Equation

## Derivation

___TODO___

## One Dimentional Form

In one dimention the equation takes the form

``` math
i \hbar \frac{\partial}{\partial t} \Psi(x,t) = -\frac{\hbar^2}{2m}\frac{\partial^2}{\partial x^2} \Psi(x,t) + V(x,t) \Psi(x,t) 
```

### Separation of variables

Assuming we can split the wavefunction $\Psi# like so

``` math
\Psi(x,t)=u(x)h(t)
```

so that

``` math
\begin{align*}
i \hbar \frac{\partial u(x)h(t)}{\partial t}  &= -\frac{\hbar^2}{2m}\frac{\partial^2 u(x)h(t)}{\partial x^2} + V(x,t) u(x)h(t)\\
i \hbar u(x)\frac{d h(t)}{d t}  &= - h(t) \frac{\hbar^2}{2m}\frac{d^2 u(x)}{dx^2} + V(x,t) u(x)h(t)
\end{align*}
```
dividing both sides by $\Psi=uh$

``` math
\begin{align*}
i \hbar \frac{1}{h}\frac{d h(t)}{d t}  &= - \frac{1}{u} \frac{\hbar^2}{2m}\frac{d^2 u(x)}{dx^2} + V(x,t)
\end{align*}
```

We can't get any further than this in general. If however we can split the potential to be a sum of terms $V(x,t)=v(x)+v_t(t)$, then we can continue on


``` math
\begin{align*}
i \hbar \frac{1}{h}\frac{d h(t)}{d t}  &= - \frac{1}{u} \frac{\hbar^2}{2m}\frac{d^2 u(x)}{dx^2} + v(x)+v_t(t) \\
i \hbar \frac{1}{h}\frac{d h(t)}{d t} - v_t(t) &= - \frac{1}{u} \frac{\hbar^2}{2m}\frac{d^2 u(x)}{dx^2} + v(x)
\end{align*}
```

Now the equation is fully separated, and the only solution that satisfies both halfs simultaniously is a constant, which we will call $E$



``` math
\begin{align*}
i \hbar \frac{1}{h}\frac{d h(t)}{d t} - v_t(t) &= E\\
- \frac{1}{u} \frac{\hbar^2}{2m}\frac{d^2 u(x)}{dx^2} + v(x) &= E
\end{align*}
```
