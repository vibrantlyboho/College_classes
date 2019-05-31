<h1>Knapsack Problem </h1>

The knapsack problem is in combinatorial optimization problem.
Given weights and values of n items, we need to put these items in a knapsack of capacity W to get the maximum total value in the knapsack.

__In the 0-1 Knapsack problem, we are not allowed to break items. We either take the whole item or don’t take it.__
__In Fractional Knapsack, we can break items for maximizing the total value of knapsack. This problem in which we can break an item is also called the fractional knapsack problem.__

An efficient solution is to use Greedy approach. The basic idea of the greedy approach is to calculate the ratio value/weight for each item and sort the item on basis of this ratio. Then take the item with the highest ratio and add them until we can’t add the next item as a whole and at the end add the next item as much as we can. Which will always be the optimal solution to this problem.

<h2>Time Complexity</h2>
 
While solving the problem,
The main time taking step is the sorting of all items in the decreasing order of their value / weight ratios.
If the items are already arranged in the required order, the while loop takes O(n) time.
Quick sort’s average time complexity is O(nlogn), therefore total time taken including the sort is O(nlogn).

<h2>Algorithm</h2>

```
Algorithm: Greedy-Fractional-Knapsack (w[1..n], p[1..n], W) 
for i = 1 to n 
   do x[i] = 0 
weight = 0 
for i = 1 to n 
   if weight + w[i] ≤ W then  
      x[i] = 1 
      weight = weight + w[i] 
   else 
      x[i] = (W - weight) / w[i] 
      weight = W 
      break 
return x
```






<h2>Bibliography</h2>

* https://www.tutorialspoint.com/design_and_analysis_of_algorithms/design_and_analysis_of_algorithms_fractional_knapsack.htm
* https://www.geeksforgeeks.org/fractional-knapsack-problem/
