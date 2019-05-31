<h1>Greedy Algorithms </h1>
Greedy is an algorithmic paradigm that builds up a solution piece by piece, 
always choosing the next piece that offers the most obvious and immediate benefit. 

__It always makes the choice that seems to be the best at that moment.__
This means that it makes a locally-optimal choice in the hope that this choice will lead to a globally-optimal solution.

<h3>How do you decide which choice is optimal?</h3>

Assume that you have an objective function that needs to be optimized (either maximized or minimized) at a given point. 
A Greedy algorithm makes greedy choices at each step to ensure that the objective function is optimized. 
The Greedy algorithm has only one shot to compute the optimal solution so that it never goes back and reverses the decision.
____

If both of the properties below are true, a greedy algorithm can be used to solve the problem.

__Greedy choice property__: A global (overall) optimal solution can be reached by choosing the optimal choice at each step.
__Optimal substructure__: A problem has an optimal substructure if an optimal solution to the entire problem contains the optimal solutions to the sub-problems.
In other words, greedy algorithms work on problems for which it is true that, at every step, 
there is a choice that is optimal for the problem up to that step, and after the last step, the algorithm produces the optimal solution of the complete problem.

```
To make a greedy algorithm, identify an optimal substructure or subproblem in the problem. 
Then, determine what the solution will include (for example, the largest sum, the shortest path, etc.). 
Create some sort of iterative way to go through all of the subproblems and build a solution.
```




<h2>Bibliography</h2>

* https://www.hackerearth.com/practice/algorithms/greedy/basics-of-greedy-algorithms/tutorial/
* https://www.geeksforgeeks.org/greedy-algorithms/
