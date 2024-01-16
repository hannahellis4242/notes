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