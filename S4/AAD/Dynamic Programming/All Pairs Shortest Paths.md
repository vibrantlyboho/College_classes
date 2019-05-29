<h1>All Pairs Shortest Paths</h1>
The all-pairs shortest path problem is the determination of the shortest graph distances 
between every pair of vertices in a given graph. 
The problem can be solved using n applications of Dijkstra's algorithm or all at once using the Floyd-Warshall algorithm. 
The latter algorithm also works in the case of a weighted graph where the edges have negative weights.

 Here we look into All Pairs Shortest Paths with its solution based on 
 __dynamic programming i.e. the Floyd-Warshall algorithm__.

#### Complexity Analysis

The dynamic programming solution, called Floyd’s algorithm, runs in O (n^3) time. 
A Dynamic programming algorithm based on this recurrence
involves in calculating n+1 matrices, each of size n x n. Therefore, the algorithm has a
complexity of O (n^3).

<h2>Problem Definition</h2>

Given a directed, connected weighted graph G(V,E), for each edge ⟨u,v⟩∈E, a weight w(u,v) is associated with the edge. 
The all pairs of shortest paths problem (APSP) is to find a shortest path from u to v for every pair of vertices u and v in V.

The shortest i to j path in G, i ≠ j originates at vertex i and goes through some
intermediate vertices (possibly none) and terminates at vertex j. If k is an
intermediate vertex on this shortest path, then the subpaths from i to k and from k to j
must be shortest paths from i to k and k to j, respectively. Otherwise, the i to j path is not
of minimum length. So, the principle of optimality holds. Let Ak
(i, j) represent the
length of a shortest path from i to j going through no vertex of index greater than k, we
obtain:

Ak (i, j) = {min {min {Ak-1(i, k) + Ak-1(k, j)}, c (i, j)}
                  1<k<n

<h2>Algorithm</h2>

```
Algorithm All Paths (Cost, A, n)
// cost [1:n, 1:n] is the cost adjacency matrix of a graph which
// n vertices; A [I, j] is the cost of a shortest path from vertex
// i to vertex j. cost [i, i] = 0.0, for 1 < i < n.
{
for i := 1 to n do
for j:= 1 to n do
A [i, j] := cost [i, j]; // copy cost into A.
for k := 1 to n do
for i := 1 to n do
for j := 1 to n do
A [i, j] := min (A [i, j], A [i, k] + A [k, j]);
}
```























<h2>Bibliography</h2>

* http://mathworld.wolfram.com/All-PairsShortestPath.html
* https://mrcet.com/downloads/digital_notes/IT/Design%20and%20Analysis%20Algorithms.pdf
* Fundamentals of Compuer Algorithms by Horowitz and Sahni
