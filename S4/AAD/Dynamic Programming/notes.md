<h1>Dynamic Programming</h1>

```
Those who cannot remember the past are condemned to repeat it.

-Dynamic Programming
```

Dynamic Programming is mainly an optimization over plain recursion. 
Wherever we see a recursive solution that has repeated calls for same inputs, we can optimize it using Dynamic Programming. 
The idea is to simply store the results of subproblems, so that we do not have to re-compute them when needed later.

>
> Dynamic programming is both a mathematical optimization method and a computer programming method. 
>
> In both contexts it refers to simplifying a complicated problem by breaking it down into simpler sub-problems in a recursive manner. 
>
> While some decision problems cannot be taken apart this way, decisions that span several points in time do often break apart recursively. 
>
> Likewise, in computer science, if a problem can be solved optimally by breaking it into sub-problems and then recursively finding the optimal solutions to the sub-problems, then it is said to have optimal substructure.
>
> If sub-problems can be nested recursively inside larger problems, so that dynamic programming methods are applicable, then there is a relation between the value of the larger problem and the values of the sub-problems. 
>
> In the optimization literature this relationship is called the Bellman equation.

In simple English,
>
> Dynamic programming is a method of solving problems, which is used in computer science, mathematics and economics. 
>
> Using this method, a complex problem is split into simpler problems, which are then solved. At the end, the solutions of the simpler problems are used to find the solution of the original complex problem.
>
> Dynamic programming can be used in cases where it is possible to split a problem into smaller problems, which are all quite similar.


#### This simple optimization reduces time complexities from exponential to polynomial. 

<h2>Bellman's principle of optimality</h2>


```
An optimal policy has the property that whatever the initial state and
initial decision are, the remaining decisions must constitute an optimal
policy with regard to the state resulting from the first decision.

— Bellman, 1957
```

It can be summarized simply as follows: “every optimal policy consists only of optimal sub policies.”
>
> Claim 22.1. (Bellman's principle (BP) of optimality)
>
> “Any tail of an optimal trajectory is optimal too.” 



















<h2>Bibliography</h2>

* https://www.geeksforgeeks.org/dynamic-programming/
* https://en.wikipedia.org/wiki/Dynamic_programming
* https://www.sciencedirect.com/topics/engineering/principle-of-optimality
* https://simple.wikipedia.org/wiki/Dynamic_programming
* https://www.hackerearth.com/practice/algorithms/dynamic-programming/introduction-to-dynamic-programming-1/tutorial/
