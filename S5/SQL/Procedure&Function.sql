/*department(deptid, deptname)*/

create table department
(deptid integer PRIMARY KEY,
 deptname varchar(20)
 );

/*employee(eid, ename, dob, joindate, salary, deptid)*/

create table employeetable
(eid integer PRIMARY KEY,
 ename varchar(20),
 dob date,
 joindate date,
 salary integer,
 deptid integer, 
 foreign key(deptid) references department(deptid));

/*Write a function or procedure for updating the salary of employees working in the dept with dept id=10 by 20%
Write a function or procedure for employee which accept dept number & returns the highest salary in the dept*/
