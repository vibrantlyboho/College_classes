The word polymorphism means having many forms. In simple words, we can define polymorphism as the ability of a message to be displayed in more than one form.
Real life example of polymorphism, a person at the same time can have different characteristic. Like a man at the same time is a father, a husband, an employee. So the same person posses different behavior in different situations. This is called polymorphism.
Polymorphism is considered as one of the important features of Object Oriented Programming.
In C++ polymorphism is mainly divided into two types:
Compile time Polymorphism
Runtime Polymorphism

1. Compile time polymorphism: This type of polymorphism is achieved by function overloading or operator overloading. 

* Function Overloading: When there are multiple functions with same name but different parameters then these functions are said to be overloaded. Functions can be overloaded by change in number of arguments or/and change in type of arguments.
* Operator Overloading: C++ also provide option to overload operators. For example, we can make the operator (‘+’) for string class to concatenate two strings. We know that this is the addition operator whose task is to add two operands. So a single operator ‘+’ 
when placed between integer operands , adds them and when placed between string operands, concatenates themA.

2. Runtime Polymorphism: This type of polymorphism is achieved by Function Overriding.
Function overriding on the other hand occurs when a derived class has a definition for one of the member functions of the base class. That base function is said to be overridden.

A virtual function a member function which is declared within a base class and is re-defined(Overriden) by a derived class. 
When you refer to a derived class object using a pointer or a reference to the base class, you can call a virtual function for that object and execute the derived class’s version of the function.

1)Virtual functions ensure that the correct function is called for an object, regardless of the type of reference (or pointer) used for function call.

2)They are mainly used to achieve Runtime polymorphism

3)Functions are declared with a virtual keyword in base class.

4)The resolving of function call is done at Run-time.

Rules for Virtual Functions

1)Virtual functions cannot be static and also cannot be a friend function of another class.

2)Virtual functions should be accessed using pointer or reference of base class type to achieve run time polymorphism.

3)The prototype of virtual functions should be same in base as well as derived class.

4)They are always defined in base class and overridden in derived class. It is not mandatory for derived class to override (or re-define the virtual function), in that case base class version of function is used.

5)A class may have virtual destructor but it cannot have a virtual constructor.
