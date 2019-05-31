# Rabin Karp Algorithm

* The Rabin–Karp algorithm or Karp–Rabin algorithm is a *string-searching algorithm* created by Richard M. Karp and 
Michael O. Rabin (1987) that uses hashing to find any one of a set of pattern strings in a text.
* For text of **length n and p patterns of combined length m**, 
its *average and best case running time is O(n+m) in space O(p), but its worst-case time is O(nm)*. 
* A practical application of the algorithm is *detecting plagiarism.*
Given source material, the algorithm can rapidly search through a paper for instances of sentences from the source material,
ignoring details such as case and punctuation. 
* The Rabin- Karp algorithm seeks to speed up the testing of equality of the pattern to the substrings in the text by using a hash function. 
( A hash function converts every string into a number value)
* The algorithm exploits the fact that if 2 strings are equal their hash values are also equal. Thus, string matching is reduced to computing the hash value of the search pattern and then looking for the substrings of the input string with that hash value. 
* 2 problem- 1) There are so many different strings and so few hash values some different strings will have the same hash value. If hash value match, the pattern & substring may not match. 2) The comparison can take long time for long substrings.
* Algorithm
* Hash function used
        This is used instead of Rabin fingerprint. It treats every substring as a number in some base, the base being usually a large prime. 
Base =256, prime modulus=101
For "hi"
 [(104%101) *256 +105]%101= 65
//The ASCII of 'h' is 104 & of 'i' is 105


Better to use Rabin fingerprint. 
