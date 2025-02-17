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

