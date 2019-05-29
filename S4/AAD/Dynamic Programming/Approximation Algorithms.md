<h1>Approximation Algorithms </h1>

An Approximate Algorithm is a way of approach [NP-COMPLETENESS](https://www.geeksforgeeks.org/np-completeness-set-1/) for the optimization problem. 
This technique does not guarantee the best solution. 
The goal of an approximation algorithm is to come as close as possible to the optimum value in a reasonable amount of time 
which is at the most polynomial time. Such algorithms are called approximation algorithm or heuristic algorithm.

<h2>Approximation ratio</h2>

The approximation ratio (or approximation factor) of an algorithm is the ratio between the result obtained by the algorithm 
and the optimal cost or profit. Typically this ratio is taken in whichever direction makes it bigger than one; 
for example, an algorithm that solves for a cost of $2 an instance of a problem that has an optimal cost of $1 has approximation ratio 2;
but an algorithm that sells 10 airplane tickets (a profit of 10) when the optimum is 20 also has approximation ratio 2.

An algorithm with approximation ratio k is called a k-approximation algorithm; both algorithms above would be called 2-approximation algorithms.

When the approximation ratio is close to 1, it is often more useful to look at the approximation error, 
which is defined as the approximation ratio minus 1. 
So an algorithm that always got within 1.01 of the optimal cost or profit would have a 1% approximation error.

<h1>Vertex cover approximation</h1>

A vertex cover of an undirected graph is a subset of its vertices such that for every edge (u, v) of the graph, 
either ‘u’ or ‘v’ is in vertex cover. 
__Although the name is Vertex Cover, the set covers all edges of the given graph.__ 
Given an undirected graph, the vertex cover problem is to find minimum size vertex cover.
Vertex Cover Problem is a known NP Complete problem, i.e., there is no polynomial time solution for this unless P = NP.
(It is known that vertex cover is NP-hard, 
so we can't really hope to find a polynomial-time algorithm for solving the problem exactly. )
There are approximate polynomial time algorithms to solve the problem though. 

Following is a simple approximate algorithm adapted from CLRS book.

```
1) Initialize the result as {}
2) Consider a set of all edges in given graph.  Let the set be E.
3) Do following while E is not empty
...a) Pick an arbitrary edge (u, v) from set E and add 'u' and 'v' to result
...b) Remove all edges from E which are either incident on u or v.
4) Return result 
```
<h1>Planar Graph Colouring approximation</h1>

A multicoloring of a weighted graph G is an assignment of sets of colors to the vertices of G so that two adjacent
vertices receive two disjoint sets of colors. A multicoloring problem on G is to find a multicoloring of G. In particular,
we are interested in a minimum multicoloring that uses the least total number of colors.
Graph coloring is computationally hard. It is NP-complete to decide if a given graph admits a k-coloring for a given k except for the cases k ∈ {0,1,2} . In particular, it is NP-hard to compute the chromatic number. The 3-coloring problem remains NP-complete even on 4-regular planar graphs. However, for every k > 3, a k-coloring of a planar graph exists by the four color theorem, and it is possible to find such a coloring in polynomial time.

The best known approximation algorithm computes a coloring of size at most within a factor O(n(log log n)2(log n)−3) of the chromatic number. For all ε > 0, approximating the chromatic number within n1−ε is NP-hard. 





<h2>Bibliography</h2>

* https://www.javatpoint.com/daa-approximate-algorithms
* http://www.cs.yale.edu/homes/aspnes/pinewiki/ApproximationAlgorithms.html?highlight=%28CategoryAlgorithmNotes%29
* https://www.geeksforgeeks.org/vertex-cover-problem-set-1-introduction-approximate-algorithm-2/
* https://www.geeksforgeeks.org/np-completeness-set-1/
* https://www.dmtcs.org/pdfpapers/dm080110.pdf
* https://en.wikipedia.org/wiki/Graph_coloring#Algorithms
