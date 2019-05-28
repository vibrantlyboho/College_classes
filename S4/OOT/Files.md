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
> The source stream that provides data to the program is called input stream.(the direction of flow of bytes is from device to the main memory then this process is called input)
>
> Destination stream that receives output from the program is called the output stream.(viceversa)
>
>A program extracts the bytes from an input stream and inserts bytes into an output stream. 

```
I/P Device -> I/P Stream -> Program -> O/P Stream -> O/P Device
```
>
> C++ program handles data independent of device
>
> cin represents the input stream connected to the standard input device
>
>cout represents the output stream connected to the standard output device
>

<h3>C++ IO Headers</h3>

* iostream: iostream stands for standard input output stream. This header file contains definitions to objects like cin, cout, cerr etc.
* iomanip: iomanip stands for input output manipulators. The methods declared in this files are used for manipulating streams. This file contains definitions of setw, setprecision etc.
* fstream: This header file mainly describes the file stream. This header file is used to handle the data being read from a file as input or data being written into the file as output.

<h3>C++ Stream Classes Structure</h3>

In C++ there are number of stream classes for defining various streams related with files and for doing input-output operations. All these classes are defined in the file iostream.h. 
* ios class is topmost class in the stream classes hierarchy. It is the base class for istream, ostream, and streambuf class.
* istream and ostream serves the base classes for iostream class. The class istream is used for input and ostream for the output.
* Class ios is indirectly inherited to iostream class using istream and ostream. To avoid the duplicity of data and member functions of ios class, it is declared as virtual base class when inheriting in istream and ostream
* The \_withassign classes are provided with extra functionality for the assignment operations that’s why \_withassign classes.




















<h2>Bibliography</h2>
* https://www.geeksforgeeks.org/basic-input-output-c/
* https://www.cprogramming.com/tutorial/c++-iostreams.html
* https://www.geeksforgeeks.org/c-stream-classes-structure/
* 
