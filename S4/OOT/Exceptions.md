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

```
try
{
    throw exception;
}

catch(type arg)
{
    //some code
}
```
If the try block throws an exception then program control leaves the block and enters into the catch statement of the catch block. 
If the type of object thrown matches the argument type in the catch statement, the catch block is executed for handling the exception. 
Divided-by-zero is a common form of exception generally occurred in arithmetic based programs.

> There is a special catch block called ‘catch all’ catch(…) that can be used to catch all types of exceptions. 
>
> If an exception is thrown and not caught anywhere, the program terminates abnormally. 
>
> Functions/Methods can handle any exceptions they choose
>
> A derived class exception should be caught before a base class exception.
>
> In C++, try-catch blocks can be nested. Also, an exception can be re-thrown using “throw; ”

```cpp
#include <iostream>
using namespace std;
void divide(double x, double y)
{
	cout<<"Inside function"<<endl;
	try{	if(y==0){			throw y;		}
		else{	cout<<"Division"<<x/y;		}
	}
	catch(double)
	{
			cout<<"Caught double inside function"<<endl;
			throw;
	}
	
	cout<<"End of function"<<endl;
}
int main()
{
	cout<<"inside main"<<endl;
	try
	{
		divide(10.0,2.0);
		divide(20.0,0.0);
	}
	catch (double)
	{
		cout<<"caught double inside main"<<endl;
	}	
	cout<<"End of main"<<endl;
	return 0;
}
```
##### Output

```
inside main
Inside function
Division5End of function
Inside function
Caught double inside function
caught double inside main
End of main
```

>
> When an exception is thrown, all objects created inside the enclosing try block are destructed before the control is transferred to catch block.
>
> The point at which the throw is executed is called the throw point.
>
> Once an exception is thrown to the catch block, control cannot return to the throw point.
>
> After executing handler the control goes to the statement immediately following the catch block.Catch block is skipped if the catch statement does not catch an exception
>
> Restrict function to throw only certain specified exceptions. Add throw list clause to the function definition.Type-list specifies the type of exceptions that may be thrown. Throwing any other type of exception will cause abnormal program termination.  To prevent a function from throwing any exception, make throw list empty 

```
return_type  function(arg-list)  throw (type-list)
{

//function body

} 
```
>
>

<h2>Bibliography</h2>
<ul><li>https://www.geeksforgeeks.org/exception-handling-c/</li>
<li>https://www.w3schools.in/cplusplus-tutorial/exception-handling/</li>
</ul>
