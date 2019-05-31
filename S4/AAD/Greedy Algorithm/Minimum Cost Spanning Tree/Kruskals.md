<h1>Kruskal’s Algorithm </h1>
Kruskal’s Algorithm builds the spanning tree by adding edges one by one into a growing spanning tree. 
Kruskal's algorithm follows greedy approach as in each iteration it finds an edge which has least weight and add it to the growing spanning tree.

<h2>Algorithm Steps</h2>

Sort the graph edges with respect to their weights.
Start adding edges to the MST from the edge with the smallest weight until the edge of the largest weight.
Only add edges which doesn't form a cycle , edges which connect only disconnected components.
So now the question is how to check if  vertices are connected or not ?

This could be done using DFS which starts from the first vertex, then check if the second vertex is visited or not. But DFS will make time complexity large as it has an order of  where  is the number of vertices,  is the number of edges. So the best solution is "Disjoint Sets": 
Disjoint sets are sets whose intersection is the empty set so it means that they don't have any element in common.

<h3>Algorithm (Check Sahni Text too!)</h3>

```
KRUSKAL(G):
A = ∅
For each vertex v ∈ G.V:
    MAKE-SET(v)
For each edge (u, v) ∈ G.E ordered by increasing order by weight(u, v):
    if FIND-SET(u) ≠ FIND-SET(v):       
    A = A ∪ {(u, v)}
    UNION(u, v)
return A
```

<h2>Time Complexity</h2>
In Kruskal’s algorithm, most time consuming operation is sorting because the total complexity of the Disjoint-Set operations
will be , which is the overall Time Complexity of the algorithm.





<h2>Bibliography</h2>

* https://www.hackerearth.com/practice/algorithms/graphs/minimum-spanning-tree/tutorial/
*
