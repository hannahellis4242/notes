# Tetrahedron

A Tetrahedron is a polyhedron with four vertices, four edges and 6 edges.

## Construction

A Tetrahedron with 4 vertices, A, B, C and D, will have

- Edges

  | Edge | Vertices |
  | :--: | :------: |
  |  1   |  (A,B)   |
  |  2   |  (A,C)   |
  |  3   |  (A,D)   |
  |  4   |  (B,C)   |
  |  5   |  (B,D)   |
  |  6   |  (C,D)   |

- Faces

  | Face | Edges | Vertices |
  | :--: | :---: | :------: |
  |  1   | 1,2,4 | {A,B,C}  |
  |  2   | 1,3,5 | {A,B,D}  |
  |  3   | 2,3,6 | {A,C,D}  |
  |  4   | 4,5,6 | {B,C,D}  |

## Volume

The volume of a tetrahedron is a sixth the volume of the parallelepiped that encloses it. The volume is then given by

```math
\text{volume} =\frac{ \overrightarrow{AB} \cdot (\overrightarrow{AC} \times \overrightarrow{AD} )}{6}
```

### Proof of volume equation

Lets first define our vertices of a parallelepiped. We will start with one vertex at the origin of our coordinate system for convenience. You can always translate and rotate as required. Starting from the origin, we have 3 other unique points, $P,Q,R$. The other points of the parallelepiped are formed based on the position vectors of these three points.

- $\mathbf{p} = \overrightarrow{OP}$
- $\mathbf{q} = \overrightarrow{OQ}$
- $\mathbf{r} = \overrightarrow{OR}$
- $\mathbf{s} = p+q = \overrightarrow{OS}$
- $\mathbf{t} = p+r = \overrightarrow{OT}$
- $\mathbf{u} = q+r = \overrightarrow{OU}$
- $\mathbf{v} = p+q+r = \overrightarrow{OV}$

Before beginning to look at a general parallelepiped, we shall look at the cube first

### The Cube and The Six Tetrahedra

If we look down the diagonal axis $OV$ you can see a hexagonal shadow. That's how we get our six tetrahedra. The vertices of the tetrahedra are as follows

| Tetrahedron | Vertices |          Edges          |            Edge lengths             |
| :---------: | :------: | :---------------------: | :---------------------------------: |
|      1      |   OPTV   | (O,P),(O,T),(O,V),(P,T) | len(O,P),len(O,T),len(O,V),len(P,T) |
|      2      |   ORTV   | (O,R),(O,T),(O,V),(R,T) | len(O,R),len(O,T),len(O,V),len(R,T) |
|      3      |   ORUV   | (O,R),(O,U),(O,V),(R,U) | len(O,R),len(O,U),len(O,V),len(R,U) |
|      4      |   OQUV   | (O,Q),(O,U),(O,V),(Q,U) | len(O,Q),len(O,U),len(O,V),len(Q,U) |
|      5      |   OQSV   | (O,Q),(O,S),(O,V),(Q,S) | len(O,Q),len(O,S),len(O,V),len(Q,S) |
|      6      |   OPSV   | (O,P),(O,S),(O,V),(P,S) | len(O,P),len(O,S),len(O,V),len(P,S) |

We will use the parallelepiped base vectors $\mathbf{p}$,$\mathbf{q}$ and $\mathbf{r}$ whenever we can, using the notation that

- len(O,P) = $\left|\mathbf{p}\right|$ = $p$
- len(O,Q) = $\left|\mathbf{q}\right|$ = $q$
- len(O,R) = $\left|\mathbf{r}\right|$ = $r$

| Tetrahedron | Vertices |          Edges          |          Edge lengths          |
| :---------: | :------: | :---------------------: | :----------------------------: |
|      1      |   OPTV   | (O,P),(O,T),(O,V),(P,T) | $p$,len(O,T),len(O,V),len(P,T) |
|      2      |   ORTV   | (O,R),(O,T),(O,V),(R,T) | $r$,len(O,T),len(O,V),len(R,T) |
|      3      |   ORUV   | (O,R),(O,U),(O,V),(R,U) | $r$,len(O,U),len(O,V),len(R,U) |
|      4      |   OQUV   | (O,Q),(O,U),(O,V),(Q,U) | $q$,len(O,U),len(O,V),len(Q,U) |
|      5      |   OQSV   | (O,Q),(O,S),(O,V),(Q,S) | $q$,len(O,S),len(O,V),len(Q,S) |
|      6      |   OPSV   | (O,P),(O,S),(O,V),(P,S) | $p$,len(O,S),len(O,V),len(P,S) |

Due to symmetry (ie the faces being parallelograms):

- len(P,T) = len(O,R) = $r$
- len(R,T) = len(O,P) = $p$
- len(R,U) = len(O,Q) = $q$
- len(Q,U) = len(O,R) = $r$
- len(Q,S) = len(O,P) = $p$
- len(P,S) = len(O,Q) = $q$

| Tetrahedron | Vertices |          Edges          |       Edge lengths        |
| :---------: | :------: | :---------------------: | :-----------------------: |
|      1      |   OPTV   | (O,P),(O,T),(O,V),(P,T) | $p$,len(O,T),len(O,V),$r$ |
|      2      |   ORTV   | (O,R),(O,T),(O,V),(R,T) | $r$,len(O,T),len(O,V),$p$ |
|      3      |   ORUV   | (O,R),(O,U),(O,V),(R,U) | $r$,len(O,U),len(O,V),$q$ |
|      4      |   OQUV   | (O,Q),(O,U),(O,V),(Q,U) | $q$,len(O,U),len(O,V),$r$ |
|      5      |   OQSV   | (O,Q),(O,S),(O,V),(Q,S) | $q$,len(O,S),len(O,V),$p$ |
|      6      |   OPSV   | (O,P),(O,S),(O,V),(P,S) | $p$,len(O,S),len(O,V),$q$ |

The lengths of the diagonals are

- len(O,S) = $\left|\overrightarrow{OS} \right| = \left| \mathbf{p}+\mathbf{q} \right|$
  = $\sqrt{(\mathbf{p}+\mathbf{q})\cdot(\mathbf{p}+\mathbf{q})}$
  = $\sqrt{\left|\mathbf{p}\right|^2+\left|\mathbf{q}\right|^2 + 2 \mathbf{p}\cdot \mathbf{q}}$
- len(O,T) = $\left|\overrightarrow{OT} \right|= \left| p+r \right| $
  = $\sqrt{(\mathbf{p}+\mathbf{r})\cdot(\mathbf{p}+\mathbf{r})}$
  = $\sqrt{\left|\mathbf{p}\right|^2+\left|\mathbf{r}\right|^2 + 2 \mathbf{p}\cdot \mathbf{r}}$
- len(O,U) = $\left|\overrightarrow{OU} \right|= \left| q+r \right| $
  = $\sqrt{(\mathbf{q}+\mathbf{r})\cdot(\mathbf{q}+\mathbf{r})}$
  = $\sqrt{\left|\mathbf{q}\right|^2+\left|\mathbf{r}\right|^2 + 2 \mathbf{q}\cdot \mathbf{r}}$
