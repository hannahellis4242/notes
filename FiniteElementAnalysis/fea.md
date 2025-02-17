# Finite Element Analysis

## Integration By Parts

Start with product rule

``` math
\begin{align*}
\frac{d uv}{dx} &= u \frac{dv}{dx}+ \frac{du}{dx}v \\
\int_a^b \frac{d uv}{dx} dx &= \int_a^b u \frac{dv}{dx} dx + \int_a^b \frac{du}{dx}v dx \\
\left[ uv \right]_a^b &= \int_a^b u \frac{dv}{dx} dx + \int_a^b \frac{du}{dx}v dx \\
\int_a^b u \frac{dv}{dx} dx &= \left[ uv \right]_a^b - \int_a^b \frac{du}{dx}v dx 
\end{align*}
```

## Element

Consider a linear element with two nodes. Each node at $x_i$ has a shape function $N_i(x)$ that satifies the condition that $N_i(x_j)=\delta_{ij}$ for every node in the element.

For a linear element the shape functions are


``` math
\begin{align*}
N_0(x) &= \frac{x_1-x}{x_1-x_0}\\
N_1(x) &= \frac{x_0-x}{x_0-x_1}
\end{align*}
```

The overall function for the element is

``` math
y(x) = y_0 N_0(x) + y_1 N_1(x)
```
