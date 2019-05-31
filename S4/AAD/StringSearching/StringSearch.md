<h1>String Searching Algorihms</h1>
In computer science, string-searching algorithms, sometimes called string-matching algorithms, 
are an important class of string algorithms that try to find a place where one or several strings 
(also called patterns) are found within a larger string or text.

<h2>Kinds of searching</h2>

* The most basic case of string searching involves one (often very long) string, sometimes called the "haystack", and one (often very short) string, sometimes called the "needle". 
  The goal is to find one or more occurrences of the "needle" within the "haystack".
* Another common example involves "normalization". For many purposes, a search for 
 a phrase such as "to be" should succeed even in places where there is something else intervening between the "to" and the "be".

<h2>Basic Classification</h2>
* Single-pattern algorithms
Let m be the length of the pattern, n be the length of the searchable text and k = |Σ| be the size of the alphabet.

Algorithm|	Preprocessing time|	Matching time[1]|	Space
---|---|---|---
Naïve string-search algorithm|	none| Θ(nm)|	none
Rabin–Karp algorithm|	Θ(m)|	average Θ(n + m), worst Θ((n−m)m)|	O(1)



<h2>Bibliography</h2>

* https://en.wikipedia.org/wiki/String-searching_algorithm
