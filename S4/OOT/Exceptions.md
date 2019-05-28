<h1>Exception Handling in C++</h1>

<h2>Errors</h2>
It's very rare that a large program or software works correctly the first time. It might have errors.
The two most common types of errors are:
<ul><li>
Logical errors</li>
<li>Syntactic errors</li>
</ul>
Programmers can debug these errors by exhausting debugging and testing procedures. 
But programmers often come across some peculiar problems in addition logic or syntax errors. 
These types of errors are known as exceptions. 

<h2>Exceptions</h2>
Exceptions are run-time anomalies or unusual logical conditions that may come up while executing the C ++ program.
There are two types of exceptions:
<ul><li>Synchronous(Out of range index, overflow)</li>
<li>Asynchronous(Ex:which are beyond the program’s control, Disc failure , Keyboard interrupts etc)</li></ul>

<h2>Exception Handling</h2>
Exceptions allow a method to react to exceptional circumstances and errors (like runtime errors) within programs by transferring control to special functions called handlers.

The main motive of the exceptional handling concept is to provide a means to detect and report an exception so that appropriate action can be taken.

This mechanism needs a separate error handling code that performs the following tasks:
<ul><li>Find and hit the problem (exception)</li>
<li>Inform that the error has occurred (throw exception)</li>
<li>Receive the error information (Catch the exception)</li>
<li>Take corrective actions (handle exception)</li></ul>

<h3>Exception Handling Mechanism</h3>

The error handling mechanism basically consists of two parts. These are:
<ul><li>To detect errors</li>
<li>To throw exceptions and then take appropriate actions</li></ul>

C++ provides following specialized keywords for this purpose.
<ul><li>try: represents a block of code that can throw an exception.</li>
<li>catch: represents a block of code that is executed when a particular exception is thrown.</li>
<li>throw: Used to throw an exception. Also used to list the exceptions that a function throws, but doesn’t handle itself.</li></ul>








<h2>Bibliography</h2>
<ul><li>https://www.geeksforgeeks.org/exception-handling-c/</li>
<li>https://www.w3schools.in/cplusplus-tutorial/exception-handling/</li>
<li></li>
</ul>
