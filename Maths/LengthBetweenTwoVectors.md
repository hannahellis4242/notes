# Length Between Two Vectors

[up](./Maths.md)

## Defining the length between two vectors

If we have two vectors $\mathbf{u}$ and $\mathbf{v}$ then the distance between them is given by the length of a vector starting at $\mathbf{u}$ and ending at $\mathbf{v}$. We will call this vector $\mathbf{l}$
![image showing how l is constructed](./img/605b0731-2ae3-4cc4-baf4-3cc84e641fa0.png)
$$\mathbf{l} = \mathbf{v} - \mathbf{u}$$

The distance between the two vectors is then given by the length of the vector $\mathbf{l}$
$$|\mathbf{l}| = |\mathbf{v} - \mathbf{u}|$$

It's a little easier to look at the square of the length because that can be defined as a dot product
$$|\mathbf{l}|^2 = \mathbf{l} \cdot \mathbf{l} = (\mathbf{v} - \mathbf{u}) \cdot (\mathbf{v} - \mathbf{u}) = \mathbf{u \cdot u} - 2 \mathbf{u \cdot v} + \mathbf{v \cdot v}$$

## Rate of change of the length

Before beginning to look at the rates of change based on the rate of change of our two vectors $\mathbf{u}$ and $\mathbf{v}$, lets first of all look in terms of the length squared. Here we define $L = |\mathbf{l}|$, then by the chain rule we get

$$ \frac{dL^2}{dt} = \frac{dL^2}{dL} \frac{dL}{dt} = 2 L \frac{dL}{dt}$$
Which finally gives us
$$ \frac{dL}{dt} = \frac{1}{2L} \frac{dL^2}{dt}$$

Since we determined that $L^2$ was given by

$$L^2 = \mathbf{u \cdot u} - 2 \mathbf{u \cdot v} + \mathbf{v \cdot v}$$

We will need to look at the rate of change of a dot product

### Rate of change of a dot product

Let $\mathbf{u}$ and $\mathbf{v}$ be our two arbitrary vectors, and so the rate of change of the dot product between them is defined as

$$ \begin{align*}
\frac{d \mathbf{u}(t) \cdot \mathbf{v}(t)}{dt} &= \lim_{h \to 0}{\frac{\mathbf{u}(t+h) \cdot \mathbf{v}(t+h)-\mathbf{u}(t) \cdot \mathbf{v}(t)}{h}} \\
&= \lim_{h \to 0}{\frac{(\mathbf{u}(t)+h\mathbf{u'}(t)+O(h^2)) \cdot (\mathbf{v}(t)+h\mathbf{v'}(t)+O(h^2))-\mathbf{u(t) \cdot v(t)}}{h}}\\
&= \lim_{h \to 0}{\frac{\mathbf{u}\cdot\mathbf{v}+h\mathbf{u}\cdot\mathbf{v'}+h\mathbf{v}\cdot\mathbf{u'}+O(h^2)-\mathbf{u}\cdot\mathbf{v}}{h}}\\
&= \lim_{h \to 0}\mathbf{u}\cdot\mathbf{v'}+\mathbf{v}\cdot\mathbf{u'}+{\frac{O(h^2)}{h}}\\
&= \lim_{h \to 0}\mathbf{u}\cdot\mathbf{v'}+\mathbf{v}\cdot\mathbf{u'}+O(h)\\
 &= \mathbf{u}\cdot\mathbf{v'}+\mathbf{v}\cdot\mathbf{u'}\\
\frac{d \mathbf{u}(t) \cdot \mathbf{v}(t)}{dt} &= \mathbf{u}\cdot \frac{d\mathbf{v}}{dt}+\mathbf{v}\cdot\frac{d\mathbf{u}}{dt}
\end{align*}$$

Basically we have show that the product rule also applies to vector dot products.

### Rate of change of a dot product of a vector with itself

We can still apply the product rule when we're doing a dot product of a vector with itself, just the result simplifies to something a little nicer.

$$ \begin{align*}
\frac{d \mathbf{v} \cdot \mathbf{v}}{dt} &= \mathbf{v}\cdot \frac{d\mathbf{v}}{dt}+\mathbf{v}\cdot\frac{d\mathbf{v}}{dt}\\
\frac{d \mathbf{v} \cdot \mathbf{v}}{dt} &= 2\mathbf{v}\cdot \frac{d\mathbf{v}}{dt}
\end{align*}$$

### Putting everything together
So we can finally put all this together to obtain a general formula for the rate of change of the distance between two vectors


$$ \begin{align*}
\frac{dL^2}{dt} &= \frac{d\mathbf{u \cdot u}}{dt} - 2 \frac{d\mathbf{u \cdot v}}{dt} + \frac{d\mathbf{ v \cdot v}}{dt}\\
&= 2 \mathbf{u}\cdot\frac{d\mathbf{u}}{dt}-2\mathbf{u}\cdot\frac{d\mathbf{v}}{dt} - 2 \mathbf{v}\cdot\frac{d\mathbf{u}}{dt}+2\mathbf{v}\cdot\frac{d\mathbf{v}}{dt}\\
\frac{dL^2}{dt} &=2 \left( \mathbf{u}\cdot\frac{d\mathbf{u}}{dt}-\mathbf{u}\cdot\frac{d\mathbf{v}}{dt} - \mathbf{v}\cdot\frac{d\mathbf{u}}{dt}+\mathbf{v}\cdot\frac{d\mathbf{v}}{dt}\right)
\end{align*}$$

Then finally using that
$$ \begin{align*} 
\frac{dL}{dt} &= \frac{1}{2L} \frac{dL^2}{dt} \\
&=\frac{1}{L}\left( \mathbf{u}\cdot\frac{d\mathbf{u}}{dt}-\mathbf{u}\cdot\frac{d\mathbf{v}}{dt} - \mathbf{v}\cdot\frac{d\mathbf{u}}{dt}+\mathbf{v}\cdot\frac{d\mathbf{v}}{dt}\right)
\end{align*}$$