# Length Between Two Vectors

## Defining the length between two vectors

If we have two vectors $\bf{u}$ and $\bf{v}$ then the distance between them is given by the length of a vector starting at $\bf{u}$ and ending at $\bf{v}$. We will call this vector $\bf{l}$
![image showing how l is constructed](./img/605b0731-2ae3-4cc4-baf4-3cc84e641fa0.png)
$$\bf{l} = \bf{v} - \bf{u}$$

The distance between the two vectors is then given by the length of the vector $\bf{l}$
$$|\bf{l}| = |\bf{v} - \bf{u}|$$

It's a little easier to look at the square of the length because that can be defined as a dot product
$$|\bf{l}|^2 = \bf{l} \cdot \bf{l} = (\bf{v} - \bf{u}) \cdot (\bf{v} - \bf{u}) = \bf{u \cdot u} - 2 \bf{u \cdot v} + \bf{v \cdot v}$$

## Rate of change of the length

Before beginning to look at the rates of change based on the rate of change of our two vectors $\bf{u}$ and $\bf{v}$, lets first of all look in terms of the length squared. Here we define $L = |\bf{l}|$, then by the chain rule we get

$$ \frac{dL^2}{dt} = \frac{dL^2}{dL} \frac{dL}{dt} = 2 L \frac{dL}{dt}$$
Which finally gives us
$$ \frac{dL}{dt} = \frac{1}{2L} \frac{dL^2}{dt}$$

Since we determined that $L^2$ was given by

$$L^2 = \bf{u \cdot u} - 2 \bf{u \cdot v} + \bf{v \cdot v}$$

We will need to look at the rate of change of a dot product

### Rate of change of a dot product

Let $\bf{u}$ and $\bf{v}$ be our two arbitrary vectors, and so the rate of change of the dot product between them is defined as

$$ \begin{align*}
\frac{d \bf{u}(t) \cdot \bf{v}(t)}{dt} &= \lim_{h \to 0}{\frac{\bf{u}(t+h) \cdot \bf{v}(t+h)-\bf{u}(t) \cdot \bf{v}(t)}{h}} \\
&= \lim_{h \to 0}{\frac{(\bf{u}(t)+h\bf{u'}(t)+O(h^2)) \cdot (\bf{v}(t)+h\bf{v'}(t)+O(h^2))-\bf{u(t) \cdot v(t)}}{h}}\\
&= \lim_{h \to 0}{\frac{\bf{u}\cdot\bf{v}+h\bf{u}\cdot\bf{v'}+h\bf{v}\cdot\bf{u'}+O(h^2)-\bf{u}\cdot\bf{v}}{h}}\\
&= \lim_{h \to 0}\bf{u}\cdot\bf{v'}+\bf{v}\cdot\bf{u'}+{\frac{O(h^2)}{h}}\\
&= \lim_{h \to 0}\bf{u}\cdot\bf{v'}+\bf{v}\cdot\bf{u'}+O(h)\\
 &= \bf{u}\cdot\bf{v'}+\bf{v}\cdot\bf{u'}\\
\frac{d \bf{u}(t) \cdot \bf{v}(t)}{dt} &= \bf{u}\cdot \frac{d\bf{v}}{dt}+\bf{v}\cdot\frac{d\bf{u}}{dt}
\end{align*}$$

Basically we have show that the product rule also applies to vector dot products.

### Rate of change of a dot product of a vector with itself

We can still apply the product rule when we're doing a dot product of a vector with itself, just the result simplifies to something a little nicer.

$$ \begin{align*}
\frac{d \bf{v} \cdot \bf{v}}{dt} &= \bf{v}\cdot \frac{d\bf{v}}{dt}+\bf{v}\cdot\frac{d\bf{v}}{dt}\\
\frac{d \bf{v} \cdot \bf{v}}{dt} &= 2\bf{v}\cdot \frac{d\bf{v}}{dt}
\end{align*}$$

### Putting everything together
So we can finally put all this together to obtain a general formula for the rate of change of the distance between two vectors


$$ \begin{align*}
\frac{dL^2}{dt} &= \frac{d\bf{u \cdot u}}{dt} - 2 \frac{d\bf{u \cdot v}}{dt} + \frac{d\bf{ v \cdot v}}{dt}\\
&= 2 \bf{u}\cdot\frac{d\bf{u}}{dt}-2\bf{u}\cdot\frac{d\bf{v}}{dt} - 2 \bf{v}\cdot\frac{d\bf{u}}{dt}+2\bf{v}\cdot\frac{d\bf{v}}{dt} 
\end{align*}$$