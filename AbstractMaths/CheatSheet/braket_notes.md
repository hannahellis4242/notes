# Braket Notes

In quantum mechanics, a vector space is composed of elements |A> called ket-vectors or just kets. Here are the axioms we will use to define the vector space of states of a quantum system (z and w are complex numbers).

1. The sum of any two ket-vectors is also a ket-vector
   `|A> + |B> = |C>`
2. Vector addition is commutative:
   `|A> + |B> =|B> +|A>`
3. Vector addition is associative:
   `{|A> + |B>} + |C> =|A>+ {|B> + |C>}`
4. There is a unique vector O such that when you add it to any ket, it gives the same ket back:
   `|A> + 0 = |A>`
5. Given any ket |A>, there is a unique ket -|A> such that:
   `|A> + (-|A>) = 0`
6. Given any ket |A> and any complex number z, you can multiply them to get a new ket. Also,multiplication by a scalar is linear:
   `|zA> = z|A> = |B>`
7. The distributive property holds:
   `z{|A> + |B>} = z|A> + z|B>`
   `{z+ w}|A> = z|A> + w|A>`
   Axioms 6 and 7 taken together are often called linearity.

---

## Bras and Kets

As we have seen, the complex numbers have a dual version: in the form of complex conjugate numbers. In the same way, a complex vector space has a dual version that is essentially the complex conjugate vector space.

For every ket-vector `|A>`, there is a “bra” vector in the dual space, denoted by `<A|`.
Why the strange terms bra and ket? Shortly, we will define inner products of bras and kets, using expressions like `<B|A>` to form bra-kets or brackets.

Inner products are extremely important in the mathematical machinery of quantum mechanics,and for characterizing vector spaces in general.

Bra-vectors satisfy the same axioms as the ket-vectors, but there are two things to keep in mind about the correspondence between kets and bras:

1. Suppose `<A|` is the bra corresponding to the ket `|A>`, and `<B|` is the bra corresponding to the ket `|B>`.
   Then the bra corresponding to `|A> + |B> is <A| + <B|`

2. If z is a complex number, then it is not true that the bra corresponding to `z|A>` is `<A|z.`
   You have to remember to complex-conjugate.
   Thus, the bra corresponding to
   `z|A>` is `<A|z*`

---

## Inner Products

You are no doubt familiar with the dot product defined for ordinary 3-vectors. The analogous operation for bras and kets is the inner product. The inner product is always the product of a bra and a ket and it is written this way:
`<B|A>`
The result of this operation is a complex number.

The axioms for inner products are not too hard to guess:

1. They are linear:
   `<C|{ |A> + |B> } = <C|A> + <C|B>`
2. Interchanging bras and kets corresponds to complex conjugation:
   `<B|A> = <A|B>*`

Additionally we can show that
`{<A|+<B|}|C> = <A|C>+<B|C>`
using axiom 2 above we get
`(<C|{|A>+|B>})*=(<C|A> + <C|B>)*`
`<C|{|A>+|B>}=<C|A> + <C|B>`
which is the same as axiom 1

Also applying axiom 2 to
`<A|A>`
give that
`<A|A> = <A|A>*`
which can only be true if `<A|A>` is a real number.

Using the inner product, we can define some concepts that are familiar from ordinary 3-vectors:

- _Normalized Vector_: A vector is said to be normalized if its inner product with itself is 1.
  Normalized vectors satisfy,
  `<A|A> = 1`
  For ordinary 3-vectors, the term normalized vector is usually replaced by unit vector, that is, a vector of unit length.
- _Orthogonal Vectors_: Two vectors are said to be orthogonal if their inner product is zero. `|A>` and `|B>` are orthogonal if
  `<B|A> =0`
  This is the analog of saying that two 3-vectors are orthogonal if their dot product is zero.

---

## Orthonormal Bases
