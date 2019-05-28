<h1>Files in C++</h1>

<h2>C++ IO Streams</h2>
C++ comes with libraries which provides us many ways for performing input and output. In C++ input and output is performed in the form of sequence of bytes or more commonly known as streams.(I/O system supplies an interface to the programmer that is independent of the actual device being used. The interface is known as stream.)
As Bjarne Stroustrup says in his book "The C++ Programming Language",

>
>"Designing and implementing a general input/output facility for a programming language is notoriously difficult".
<h3>IO stream features</h3>

* A 'stream' is internally nothing but a series of characters. Streams provide you with a universal character-based interface to any type of storage medium (for example, a file), without requiring you to know the details of how to write to the storage medium. 
* Any object that can be written to one type of stream, can be written to all types of streams. In other words, as long as an object has a stream representation, any storage medium can accept objects with that stream representation.
* Streams work with built-in data types, and you can make user-defined types work with streams by overloading the insertion operator (<<) to put objects into streams, and the extraction operator (>>) to read objects from streams.

>
> A stream is a sequence of bytes.
>
> It acts as a source from which input data can be obtained or as a destination output data can be sent.
>
> The source stream that provides data to the program is called input stream.
>
> Destination stream that receives output from the program is called the output stream.
>
>A program extracts the bytes from an input stream and inserts bytes into an output stream. 

```
I/P Device -> I/P Stream -> Program -> O/P Stream -> O/P Device
```






















<h2>Bibliography</h2>
* https://www.geeksforgeeks.org/basic-input-output-c/
* https://www.cprogramming.com/tutorial/c++-iostreams.html
* 
