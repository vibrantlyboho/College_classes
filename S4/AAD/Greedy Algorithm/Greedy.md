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

<h2>Components of Greedy Algorithm</h2>
Greedy algorithms have the following five components −

* A candidate set − A solution is created from this set.
* A selection function − Used to choose the best candidate to be added to the solution.
* A feasibility function − Used to determine whether a candidate can be used to contribute to the solution.
* An objective function − Used to assign a value to a solution or a partial solution.
* A solution function − Used to indicate whether a complete solution has been reached.

________

<h2>Control Abstraction for Greedy algorithm</h2>

```
Algorithm Greedy(A : set; n : integer){
MakeEmpty(solution);
f or(i = 2;i <= n;i + +){
x = Select(A);
if Feasible(solution, x) then
solution = Union(solution, {x})
}
return solution
}
```


<h2>Bibliography</h2>

* https://www.hackerearth.com/practice/algorithms/greedy/basics-of-greedy-algorithms/tutorial/
* https://www.geeksforgeeks.org/greedy-algorithms/
* https://www.tutorialspoint.com/design_and_analysis_of_algorithms/design_and_analysis_of_algorithms_greedy_method.htm
* http://www.personal.reading.ac.uk/~sis01xh/teaching/CS2EA16/Le6a.pdf
