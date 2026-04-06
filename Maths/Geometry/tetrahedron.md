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

- p = $\overrightarrow{OP}$
- q = $\overrightarrow{OQ}$
- r = $\overrightarrow{OR}$
- s = $p+q$ = $\overrightarrow{OS}$
- t = $p+r$ = $\overrightarrow{OT}$
- u = $q+r$ = $\overrightarrow{OU}$
- v = $p+q+r$ = $\overrightarrow{OV}$

Before beginning to look at a general parallelepiped, we shall look at the cube first

### The Cube and The Six Tetrahedra

If we look down the diagonal axis $OV$ you can see a hexagonal shadow. That's how we get our six tetrahedra. The vertices of the tetrahedra are as follows

| Tetrahedron | Vertices |          Edges          |
| :---------: | :------: | :---------------------: |
|      1      |   OPTV   | (O,P),(O,T),(O,V),(P,T) |
|      2      |   ORTV   | (O,R),(O,T),(O,V),(R,T) |
|      3      |   ORUV   | (O,R),(O,U),(O,V),(R,U) |
|      4      |   OQUV   | (O,Q),(O,U),(O,V),(Q,U) |
|      5      |   OQSV   | (O,Q),(O,S),(O,V),(Q,S) |
|      6      |   OPSV   | (O,P),(O,S),(O,V),(P,S) |

All six tetrahedra share an edge (O,V), which means that is the same length for all tetrahedra because it is the same edge.

If all the edges (O,P),()
