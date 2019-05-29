<h1>Multistage Graph </h1>

A Multistage graph is a directed graph in which the nodes can be divided into a set of stages such that all edges are from a stage to next stage only.
In other words there is no edge between vertices of same stage and from a vertex of current stage to previous stage.

We are give a multistage graph, a source and a destination, we need to find shortest path from source to destination.
Here we look into Multistage graph problem with its solution based on __dynamic programming
i.e. forward approach and backward approach algorithms__ for multistage graph.

<h1>Multistage Graph Problem</h1>

A multistage graph G = (V, E) is a directed graph in which the vertices are partitioned
into k > 2 disjoint sets Vi, 1 < i < k. In addition, if <u, v> is an edge in E, then u E Vi and v
E Vi+1 for some i, 1 < i < k.
Let the vertex ‘s’ is the source, and ‘t’ the sink. Let c (i, j) be the cost of edge <i, j>. The cost
of a path from ‘s’ to ‘t’ is the sum of the costs of the edges on the path. The multistage graph
problem is to find a minimum cost path from ‘s’ to ‘t’. Each set Vi defines a stage in the
graph. Because of the constraints on E, every path from ‘s’ to ‘t’ starts in stage 1, goes to stage
2, then to stage 3, then to stage 4, and so on, and eventually terminates in stage k.
A dynamic programming formulation for a k-stage graph problem is obtained by first
noticing that every s to t path is the result of a sequence of k – 2 decisions. The ith
decision involves determining which vertex in vi+1, 1 < i < k - 2, is to be on the path. Let c
(i, j) be the cost of the path from source to destination. 

<h2>Forward Approach(End to Front)</h2>

Then using the forward approach, we
obtain:

cost (i, j) = min {c (j, l) + cost (i + 1, l)}
              l belongs to Vi + 1
<j, l> belongs to E

```
Algorithm Fgraph (G, k, n, p)
// The input is a k-stage graph G = (V, E) with n vertices //
indexed in order or stages. E is a set of edges and c [i, j] // is the
cost of (i, j). p [1 : k] is a minimum cost path.
{
cost [n] := 0.0;
for j:= n - 1 to 1 step – 1 do
{ // compute cost [j]
let r be a vertex such that (j, r) is an edge of G
and c [j, r] + cost [r] is minimum; cost [j] := c
[j, r] + cost [r];
d [j] := r:
}
p [1] := 1; p [k] := n; // Find a minimum cost path.
for j := 2 to k - 1 do p [j] := d [p [j - 1]];}

```
Complexity Analysis
The complexity analysis of the algorithm is fairly straightforward. Here, if G has |E| edges,
then the time for the first for loop is theta( |V| + |E| ).

<h2>Backward Approach(Front to End)</h2>

From the backward approach we obtain:
Bcost (i, j) = min { Bcost (i –1, l) + c (l, j)}
               l belongs to Vi - 1
<l, j> belongs to E

```
Algorithm Bgraph (G, k, n, p)
// Same function as Fgraph {
Bcost [1] := 0.0; for j := 2 to n do { / / C o m p u t e
B c o s t [ j ] .
Let r be such that (r, j) is an edge of
G and Bcost [r] + c [r, j] is minimum;
Bcost [j] := Bcost [r] + c [r, j];
D [j] := r;
} //find a minimum cost path
p [1] := 1; p [k] := n;
for j:= k - 1 to 2 do p [j] := d [p [j + 1]];
}

```


















<h2>Bibliography</h2>

* https://www.geeksforgeeks.org/multistage-graph-shortest-path/
* https://www.includehelp.com/algorithms/multistage-graph-problem-with-forward-approach-and-backward-approach.aspx
* https://mrcet.com/downloads/digital_notes/IT/Design%20and%20Analysis%20Algorithms.pdf
* Fundamentals of Compuer Algorithms by Horowitz and Sahni
