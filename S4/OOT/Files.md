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
>
> The objects defined in the header file iostream are cin and cout.
>
> Standard output stream (cout): Usually the standard output device is the display screen. cout is the instance of the ostream class. cout is used to produce output on the standard output device which is usually the display screen. The data needed to be displayed on the screen is inserted in the standard output stream (cout) using the insertion operator (<<).
>
>Standard input stream (cin): Usually the input device is the keyboard. cin is the instance of the class istream and is used to read input from the standard input device which is usually keyboard.The extraction operator(>>) is used along with the object cin for reading inputs. The extraction operator extracts the data from the object cin which is entered using the keboard.
>
>Un-buffered standard error stream (cerr): cerr is the standard error stream which is used to output the errors. This is also an instance of the ostream class. As cerr is un-buffered so it is used when we need to display the error message immediately. It does not have any buffer to store the error message and display later.
>
>Buffered standard error stream (clog): This is also an instance of ostream class and used to display errors but unlike cerr the error is first inserted into a buffer and is stored in the buffer until it is not fully filled. The error message will be displayed on the screen too.

<h2>File Handling</h2>
Files are a means to store data in a storage device. 
C++ file handling provides a mechanism to store output of a program in a file and read from a file on the disk. 
So far, we have been using \<iostream\> header file which provide functions cin and cout to take input from console and write output to a console respectively. 
Now, we introduce one more header file \<fstream\> which provides data types or classes ( ifstream , ofstream , fstream ) to read from a file and write to a file.
C++ provides the following classes to perform output and input of characters to/from files: 

* ofstream: Stream class to write on files
* ifstream: Stream class to read from files
* fstream: Stream class to both read and write from/to files.
* filebuf: Set file buffers to read and write, Contain open() and close() as members
* fstreambase: Provides operations common to the file streams, Serves as a base for fstream, ifstream and ofstream class

These classes are derived directly or indirectly from the classes istream and ostream.

<h3>Opening and Closing a file</h3>
We can open file by

1. passing file name in constructor at the time of object creation
>
> eg: Open File by using constructor
>
> ifstream (const char* filename, ios_base::openmode mode = ios_base::in);
>
> ifstream fin(filename, openmode) by default openmode = ios::in
>
> ifstream fin(“filename”);
2. using the open method
>
>Calling of default constructor
>
> ifstream fin;
>
> fin.open(filename, openmode)
>
> fin.open(“filename”);

Modes 

|MEMBER CONSTANT|	STANDS FOR| ACCESS|
|---|---|---|
|in *|	input	|File open for reading: the internal stream buffer supports input operations.|
|out	|output	|File open for writing: the internal stream buffer supports output operations.|
|binary |	binary	|Operations are performed in binary mode rather than text.|
|ate |	at end	|The output position starts at the end of the file.|
|app	|append	|All output operations happen at the end of the file, appending to its existing contents.|
|trunc	|truncate	|Any contents that existed in the file before it is open are discarded.|

Default Open Modes 
|---|
|ifstream-	ios::in|
|ofstream-	ios::out|
|fstream-	ios::in \| ios::out|

>
> Reading from two files simultaneously is implemented by creating 2 objects of ostream and using them to open the two files and read from it.

When we are finished with our input and output operations on a file we shall close it so that the operating system is notified and its resources become available again. 
For that, we call the stream's member function close. 
This member function takes flushes the associated buffers and closes the file: 
myfile.close();
Once this member function is called, the stream object can be re-used to open another file, and the file is available again to be opened by other processes.
In case that an object is destroyed while still associated with an open file, the destructor automatically calls the member function close.

<h3>Detecting END-OF-FILE</h3>

* while(fin)-
fin returns a zero if any error occurs in the file operation including end of file condition
While loop terminates when fin returns a value of 0 on reaching the end of file condition
* if(fin1.eof()!=0) { exit(1);}-
eof() is a member function of ios class- Returns true if a file open for reading has reached the end.

<h3>File pointers </h3>
All i/o streams objects keep internally -at least- one internal position:

* ifstream, like istream, keeps an internal **get** position with the location of the element to be read in the next input operation.
* ofstream, like ostream, keeps an internal **put** position with the location where the next element has to be written.
* Finally, fstream, keeps both, the get and the put position, like iostream.

These internal stream positions point to the locations within the stream where the next reading or writing operation is performed. These positions can be observed and modified using the following member functions: 

* tellg() and tellp()-
These two member functions with no parameters return a value of the member type streampos, which is a type representing the current get position (in the case of tellg) or the put position (in the case of tellp).
* seekg() and seekp()-
These functions allow to change the location of the get and put positions. Both functions are overloaded with two different prototypes. The first form is:
* infile.seekg()

```
seekg ( position );
seekp ( position );
```
Using this prototype, the stream pointer is changed to the absolute position position (counting from the beginning of the file). The type for this parameter is streampos, which is the same type as returned by functions tellg and tellp.
The other form for these functions is:

```
seekg ( offset, direction );
seekp ( offset, direction );
```
Using this prototype, the get or put position is set to an offset value relative to some specific point determined by the parameter direction. offset is of type streamoff. And direction is of type seekdir, which is an enumerated type that determines the point from where offset is counted from, and that can take any of the following values:

|reference points |definition |
|---|---|
|ios::beg|	offset counted from the beginning of the stream|
|ios::cur| offset counted from the current position|
|ios::end|	offset counted from the end of the stream|

<h3>Sequential Input and Output Operations</h3>
|Function|Operation|
|---|---|
|get()	|Read a single character from a file|
|put()	|write a single character in file|
|read()	|Read data from file|
|write() |Write data into file|

>
>Two arguments, address and length of variable
>
>infile.read((char * )&V, sizeof(V));
>
>outfile.write((char *)&V, size of (V));

<h3>Error Handling During File Operations</h3>
Sometimes during file operations, errors may also creep in.
To check for errors and to ensure smooth processing, C++ file streams inherit 'stream-state' members from the ios class that store the information on the status of a file that is being currently used. 
The current state of the I/O system is held in an integer, in which the following flags are encoded :

|Name	|Meaning|
|---|---|
eofbit	|1 when end-of-file is encountered, 0 otherwise.
failbit	|1 when a non-fatal I/O error has occurred, 0 otherwise
badbit	|1 when a fatal I/O error has occurred, 0 otherwise
goodbit	|0 value

There are several error handling functions supported by class ios that help you read and process the status recorded in a file stream.

Error Handling Function	|Meaning
---|---
int bad()	|Returns a non-zero value if an invalid operation is attempted or any unrecoverable error has occurred. However, if it is zero (false value), it may be possible to recover from any other error reported and continue operations.
int eof()	|Returns non-zero (true value) if end-of-file is encountered while reading; otherwise returns zero (false value).
int fail()	|Returns non-zero (true) when an input or output operation has failed.
int good()	|Returns non-zero (true) if no error has occurred. This means, all the above functions are false. For example, if fin.good() is true, everything is okay with the stream named as fin and we can proceed to perform I/O operations. When it returns zero, no further operations can be carried out.
clear()	|Resets the error state so that further operations can be attempted.


<h2>Bibliography</h2>

* https://www.geeksforgeeks.org/basic-input-output-c/
* https://www.cprogramming.com/tutorial/c++-iostreams.html
* https://www.geeksforgeeks.org/c-stream-classes-structure/
* https://csegeek.com/csegeek/view/tutorials/cpp_lang/cpp_file.php
* http://www.cplusplus.com/doc/tutorial/files/
* https://www.geeksforgeeks.org/file-handling-c-classes/
* https://www.sitesbay.com/cpp/cpp-file-handling
* https://codescracker.com/cpp/cpp-error-handling.htm
