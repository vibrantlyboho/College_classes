<h1>Templates in C++</h1>
Templates are powerful features of C++ which allows you to write generic programs. 
In simple terms, you can create a single function or a class to work with different data types using templates.
Templates are often used in larger codebase for the purpose of code reusability and flexibility of the programs.
For example a software company may need sort() for different data types. 
Rather than writing and maintaining the multiple codes, we can write one sort() and pass data type as a parameter.

<h2>How templates work?</h2>
Templates are expanded at compiler time. This is like macros. 
The difference is, compiler does type checking before template expansion. 
The idea is simple, source code contains only function/class, but compiled code may contain multiple copies of same function/class.

<h2>Types of templates</h2>
The concept of templates can be used in two different ways:
<ul><li>Function Templates</li>
<li>Class Templates</li></ul>

<h3>Function Templates</h3>
We write a generic function that can be used for different data types. Examples of function templates are sort(), max(), min(), printArray()

```
template <class T>
T someFunction(T arg)
{
   ... .. ...
}
```
In the above code, T is a template argument that accepts different data types (int, float), and class is a keyword.
You can also use keyword typename instead of class in the above example.

<h3>Class Templates</h3>
Like function templates, you can also create class templates for generic class operations.
Sometimes, you need a class implementation that is same for all classes, only the data types used are different.
Normally, you would need to create a different class for each data type OR create different member variables and functions within a single class.
This will unnecessarily bloat your code base and will be hard to maintain, as a change is one class/function should be performed on all classes/functions.
However, class templates make it easy to reuse the same code for all data types.

```
template <class T>
class className
{
   ... .. ...
public:
   T var;
   T someOperation(T arg);
   ... .. ...
};
```
<h4>How to create a class template object?</h4>
To create a class template object, you need to define the data type inside a < > when creation.

`className<dataType> classObject;`

For example: className \<int\> classObject;

<h2>Templates vs Function Overloading</h2>
When functions are overloaded, you can have different actions performed within the body of each function
But generic functions must perform the same general action for all versions
If you overload a generic function, the overloaded function overrides(hides) the generic function relative to that specific version

<h2>Bibliography</h2>
<ul><li>https://www.programiz.com/cpp-programming/templates</li>
<li>https://www.geeksforgeeks.org/templates-cpp/</li></ul>
