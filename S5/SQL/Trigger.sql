/*department(deptid, deptname)*/

create table department
(deptid integer PRIMARY KEY,
 deptname varchar(20)
 );
 
 /*desc department;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| deptid   | int(11)     | NO   | PRI | NULL    |       |
| deptname | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+*/

select * from department;
+--------+----------+
| deptid | deptname |
+--------+----------+
|    101 | IT       |
|    102 | EC       |
+--------+----------+


/*employee(eid, ename, dob, joindate, salary, deptid)*/

create table employeetable
(eid integer PRIMARY KEY,
 ename varchar(20),
 dob date,
 joindate date,
 salary integer,
 deptid integer, 
 foreign key(deptid) references department(deptid));

/* desc employeetable;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| eid      | int(11)     | NO   | PRI | NULL    |       |
| ename    | varchar(20) | YES  |     | NULL    |       |
| dob      | date        | YES  |     | NULL    |       |
| joindate | date        | YES  |     | NULL    |       |
| salary   | int(11)     | YES  |     | NULL    |       |
| deptid   | int(11)     | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+*/


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

/*desc employeetablebackup;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| eid             | int(11)     | NO   | PRI | NULL    |       |
| ename           | varchar(20) | YES  |     | NULL    |       |
| dob             | date        | YES  |     | NULL    |       |
| joindate        | date        | YES  |     | NULL    |       |
| salary          | int(11)     | YES  |     | NULL    |       |
| deptid          | int(11)     | YES  | MUL | NULL    |       |
| dateofoperation | date        | YES  |     | NULL    |       |
| typeofoperation | varchar(20) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+*/


/*Write a trigger which converts employee name into uppercase if it is entered in lowercase*/
create trigger uppercase
before insert
on employeetable  
for each row
set new.ename=upper(new.ename);

insert into employeetable values(1, "joann", '1999-10-25', '2017-12-03', 10000, 101);
Query OK, 1 row affected (0.13 sec)

mysql> select * from employeetable;
+-----+-------+------------+------------+--------+--------+
| eid | ename | dob        | joindate   | salary | deptid |
+-----+-------+------------+------------+--------+--------+
|   1 | JOANN | 1999-10-25 | 2017-12-03 |  10000 |    101 |
+-----+-------+------------+------------+--------+--------+
1 row in set (0.02 sec)

insert into employeetable values(2, "Karthika", '1999-03-04', '2018-10-11', 10000, 101);
Query OK, 1 row affected (0.06 sec)

mysql> select * from employeetable;                                            
+-----+----------+------------+------------+--------+--------+
| eid | ename    | dob        | joindate   | salary | deptid |
+-----+----------+------------+------------+--------+--------+
|   1 | JOANN    | 1999-10-25 | 2017-12-03 |  10000 |    101 |
|   2 | KARTHIKA | 1999-03-04 | 2018-10-11 |  10000 |    101 |
+-----+----------+------------+------------+--------+--------+


/*Write a trigger that stores the data of employee in employeebackup for every delete operation and 
stores the old data for every update operation*/

create trigger backup
before delete 
on employeetable
referencing old as d
for each row
begin
insert into employeetablebackup(:d.eid, :d.ename, :d.dob, :d.joindate, :d.salary, :d.deptid)  
end;
