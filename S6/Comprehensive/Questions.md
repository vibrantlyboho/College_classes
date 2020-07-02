# Questions

1. The problem that cannot be solved at all by any algorithm are known as 

  Ans: Undecidable problems

2. Consider a three word machine instruction. ADD A[R0], @ B ,The first operand (destination) "A [R0]" uses indexed addressing mode with R0 as the index register. 
The second operand (source) "@ B" uses indirect addressing mode. A and B are memory addresses residing at the second and the third words, respectively. 
The first word of the instruction specifies the opcode, the index register designation and the source and destination addressing modes. During execution of ADD instruction, 
the two operands are added and stored in the destination (first operand). The number of memory cycles needed during the execution cycle of the instruction is

  Ans: 4 memory cycles; The given instruction can be written as: A [R0] ← A[R0] + @B. So, 2 memory accesses for fetching operand B as it is in indirect addressing mode, 1 for A[R0] as it is in indexed addressing mode and 1 for write back into A[R0]. Hence 4 memory accesses are required in total.

3. Consider the following relational schema:

  * employee(empId, empName, empDept)
  * customer(custId, custName, salesRepId, rating) 
  * salesRepId is a foreign key referring to empId of the employee relation. 
  * Assume that each employee makes a sale to at least one customer. What does the following query return?
    
     SELECT empName
     FROM employee E
     WHERE NOT EXISTS ( SELECT custId
                       FROM customer C
                       WHERE C.salesRepId = E.empId
                       AND C.rating <> `GOOD`);"

  Ans: This will give back all the employees with all customer ratings as `GOOD`; If there exists a rating that is not `GOOD` then the WHERE condition becomes false.                             
4. Let L be the set of all binary strings whose last two symbols are same. The number of states in the minimal state deterministic finite-state automaton accepting L is

  Ans: Total no of states =5 , Regular expression of binary strings whose last two symbols are same =(0+1)∗(00+11)

5. A system uses FIFO policy for page replacement. It has 4 page frames with no pages loaded to begin with. 
The system first accesses 100 distinct pages in some order and then accesses the same 100 pages but now in the reverse order. How many page faults will occur?

  Ans: 196 page faults; 100 page faults will occur to access the first 100 distinct pages. Then we start accessing in reverse order. So 100 more page faults occur. But when you are doing in reverse order the first 4 page faults won't occur as it is already present in the page frames. So 100+100-4= 196 page faults
  
6. A client message usually needs ____________ to send a mail

  Ans: Simple Mail Transfer Protocol(SMTP) & Post Office Protocol; Simple Mail Transfer Protocol (SMTP) is the standard protocol for sending emails across the Internet & Post Office Protocol version 3 (POP3) is a standard mail protocol used to receive emails from a remote server to a local email client. 
