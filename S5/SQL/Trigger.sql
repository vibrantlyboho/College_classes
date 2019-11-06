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


/*empbackup(eid, ename, dob, joindate, salary, deptid, dateofoperation, typeofoperation)*/

create table employeetablebackup
(eid integer PRIMARY KEY,
 ename varchar(20),
 dob date,
 joindate date,
 salary integer,
 deptid integer,
 dateofoperation date,
 typeofoperation varchar(20),
 foreign key(deptid) references department(deptid));


/*Write a trigger which converts employee name into uppercase if it is entered in lowercase
Write a trigger that stores the data of employee in employeebackup for every delete operation and 
stores the old data for every update operation*/
