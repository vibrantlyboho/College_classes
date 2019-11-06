create table branch
(b_id integer,
 bname varchar(20),
 bcity varchar(20));

alter table branch add primary key(b_id);

desc branch;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| b_id  | int(11)     | NO   | PRI | NULL    |       |
| bname | varchar(20) | YES  |     | NULL    |       |
| bcity | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+

insert into branch values(1000,"SBI Pattom", "Trivandrum");

select * from branch;
+------+-------------------+-------------+
| b_id | bname             | bcity       |
+------+-------------------+-------------+
| 1000 | SBI Pattom        | Trivandrum  |
| 1003 | SBI Mattanchery   | Kochi       |
| 1006 | SBI Vadakkara     | Kozhikode   |
| 1007 | SBI Neyyatingara  | Trivandrum  |
| 1009 | SBI Noida         | Delhi       |
| 1014 | SBI Anna Nagar    | Chennai     |
| 1017 | SBI Gandhi Lane   | Gandhinagar |
| 1018 | SBI TVMC Lane     | Tirunelveli |
| 1021 | SBI Edapally      | Kochi       |
+------+-------------------+-------------+
*************************************************************************************************************************************

create table customer
(c_id integer,
 cname varchar(20),
 ccity varchar(20)
);

alter table customer add primary key (c_id);

desc customer;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| c_id  | int(11)     | NO   | PRI | NULL    |       |
| cname | varchar(20) | YES  |     | NULL    |       |
| ccity | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+

select * from customer;
+------+------------+-------------+
| c_id | cname      | ccity       |
+------+------------+-------------+
| 2000 | Joann M V  | Trivandrum  |
| 2001 | Greeshma R | Trivandrum  |
| 2002 | Gayatri A  | Kozhikode   |
| 2003 | Eleena A   | Delhi       |
| 2005 | Chantelle  | Delhi       |
| 2008 | Stephan TV | Tirunelveli |
| 2010 | Issac P    | Tirunelveli |
| 2013 | Eva J      | Gandhinagar |
| 2017 | Shasniya   | Kochi       |
| 2019 | Fasla      | Kochi       |
+------+------------+-------------+
*************************************************************************************************************************************

create table deposit
(acc_no integer primary key,
 c_id integer,
 b_id integer,
 amount integer,
 type varchar(5),
 rate decimal(3,1),
 deposit_date date,
 mature_date date,
 foreign key(c_id) references customer(c_id),
 foreign key(b_id) references branch(b_id)	
);

desc deposit;                                                            
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| acc_no       | int(11)      | NO   | PRI | NULL    |       |
| c_id         | int(11)      | YES  | MUL | NULL    |       |
| b_id         | int(11)      | YES  | MUL | NULL    |       |
| amount       | int(11)      | YES  |     | NULL    |       |
| type         | varchar(5)   | YES  |     | NULL    |       |
| rate         | decimal(3,1) | YES  |     | NULL    |       |
| deposit_date | date         | YES  |     | NULL    |       |
| mature_date  | date         | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+

select * FROM deposit;
+--------+------+------+--------+------+------+--------------+-------------+
| acc_no | c_id | b_id | amount | type | rate | deposit_date | mature_date |
+--------+------+------+--------+------+------+--------------+-------------+
|   3000 | 2019 | 1021 |  10000 | FD   |  5.0 | 2015-05-10   | 2019-10-10  |
|   3003 | 2013 | 1017 |  15000 | RD   |  3.0 | 2017-12-12   | 2019-12-12  |
|   3005 | 2010 | 1018 |   9000 | RD   |  3.0 | 2019-05-01   | 2022-05-01  |
|   3006 | 2008 | 1018 |  90000 | RD   |  3.0 | 2019-05-11   | 2021-12-05  |
|   3008 | 2005 | 1009 |  15000 | FD   |  7.0 | 2017-07-10   | 2020-07-10  |
|   3010 | 2001 | 1007 |   9500 | RD   |  3.0 | 2017-08-15   | 2021-08-10  |
+--------+------+------+--------+------+------+--------------+-------------+
*************************************************************************************************************************************

create table loan
(loan_no integer primary key,
 c_id integer,
 b_id integer,
 amount integer,
 loandate date,
 foreign key(c_id) references customer(c_id),
 foreign key(b_id) references branch(b_id)
);

desc loan;
+----------+---------+------+-----+---------+-------+
| Field    | Type    | Null | Key | Default | Extra |
+----------+---------+------+-----+---------+-------+
| loan_no  | int(11) | NO   | PRI | NULL    |       |
| c_id     | int(11) | YES  | MUL | NULL    |       |
| b_id     | int(11) | YES  | MUL | NULL    |       |
| amount   | int(11) | YES  |     | NULL    |       |
| loandate | date    | YES  |     | NULL    |       |
+----------+---------+------+-----+---------+-------+

select * from loan;
+---------+------+------+--------+------------+
| loan_no | c_id | b_id | amount | loandate   |
+---------+------+------+--------+------------+
|    5000 | 2000 | 1000 |   5000 | 2019-06-25 |
|    5003 | 2003 | 1009 |   3000 | 2019-02-05 |
|    5005 | 2008 | 1018 |   1000 | 2019-12-01 |
|    5007 | 2013 | 1017 |   5000 | 2020-01-07 |
|    5009 | 2017 | 1003 |   2000 | 2016-12-17 |
|    5015 | 2005 | 1009 |   1000 | 2017-11-01 |
+---------+------+------+--------+------------+
*************************************************************************************************************************************
*************************************************************************************************************************************
/*1.Display the details of all customers having a loan amount greater than Rs. 3000*/

 select * from customer natural join loan where amount>3000;
+------+-----------+-------------+---------+------+--------+------------+
| c_id | cname     | ccity       | loan_no | b_id | amount | loandate   |
+------+-----------+-------------+---------+------+--------+------------+
| 2000 | Joann M V | Trivandrum  |    5000 | 1000 |   5000 | 2019-06-25 |
| 2013 | Eva J     | Gandhinagar |    5007 | 1017 |   5000 | 2020-01-07 |
+------+-----------+-------------+---------+------+--------+------------+

/*2.For those customers who have borrowed, display their names and loan numbers.*/

select cname, loan_no from customer natural join loan;
+------------+---------+
| cname      | loan_no |
+------------+---------+
| Joann M V  |    5000 |
| Eleena A   |    5003 |
| Chantelle  |    5015 |
| Stephan TV |    5005 |
| Eva J      |    5007 |
| Shasniya   |    5009 |
+------------+---------+

/*3.Display the name, deposit amount and date of deposit of all customers who have a fixed deposit (FD).*/

select cname, amount, deposit_date from customer natural join deposit where type="FD";
+-----------+--------+--------------+
| cname     | amount | deposit_date |
+-----------+--------+--------------+
| Fasla     |  10000 | 2015-05-10   |
| Chantelle |  15000 | 2017-07-10   |
+-----------+--------+--------------+

/*4.Display the total number of customers in each city.*/

select ccity, count(ccity) as count from customer group by ccity;
+-------------+-------+
| ccity       | count |
+-------------+-------+
| Delhi       |     2 |
| Gandhinagar |     1 |
| Kochi       |     2 |
| Kozhikode   |     1 |
| Tirunelveli |     2 |
| Trivandrum  |     2 |
+-------------+-------+

/*5.Display the customer name and branch name of customers who have made a Recurring Deposit (RD) on or after 8/8/2017.*/

select cname, bname from customer natural join deposit join branch where type="RD" and deposit_date>"2017-08-08" and deposit.b_id=branch.b_id;
+------------+-------------------+
| cname      | bname             |
+------------+-------------------+
| Eva J      | SBI Gandhi Lane   |
| Issac P    | SBI TVMC Lane     |
| Stephan TV | SBI TVMC Lane     |
| Greeshma R | SBI Neyyatingara  |
+------------+-------------------+

/*6.Display the details of all customers who have made a deposit between 08 Nov 2016 and 23rd Aug 2019.*/

 select c_id, cname, ccity from customer natural join deposit where deposit_date between "2017-1-1" and "2017-12-31";
+------+------------+-------------+
| c_id | cname      | ccity       |
+------+------------+-------------+
| 2013 | Eva J      | Gandhinagar |
| 2005 | Chantelle  | Delhi       |
| 2001 | Greeshma R | Trivandrum  |
+------+------------+-------------+

/*7.Display the count of customers who have taken a loan and belonging to the city ‘Trivandrum’.*/

select count(c_id) from customer natural join loan where ccity="Trivandrum";
+-------------+
| count(c_id) |
+-------------+
|           1 |
+-------------+

/*8.Display the total and average loan amount disbursed from each branch. Round off the result to two decimal places.*/

 select bname, sum(amount) as total, round(avg(amount), 2) as average  from branch natural join loan group by bname;
+------------------+-------+---------+
| bname            | total | average |
+------------------+-------+---------+
| SBI Gandhi Lane  |  5000 | 5000.00 |
| SBI Mattanchery  |  2000 | 2000.00 |
| SBI Noida        |  4000 | 2000.00 |
| SBI Pattom       |  5000 | 5000.00 |
| SBI TVMC Lane    |  1000 | 1000.00 |
+------------------+-------+---------+

/*9.List the branch-wise total fixed deposit and recurring deposit amount.*/

 select bname, type, sum(amount) as totalamt from branch natural join deposit group by bname, type;
+-------------------+------+----------+
| bname             | type | totalamt |
+-------------------+------+----------+
| SBI Edapally      | FD   |    10000 |
| SBI Gandhi Lane   | RD   |    15000 |
| SBI Neyyatingara  | RD   |     9500 |
| SBI Noida         | FD   |    15000 |
| SBI TVMC Lane     | RD   |    99000 |
+-------------------+------+----------+

/*10.Delete the deposit details of all customers whose deposit account have matured.*/

 
update deposit set mature_date="2017-1-1" where acc_no=3000;
select * from deposit;

+--------+------+------+--------+------+------+--------------+-------------+
| acc_no | c_id | b_id | amount | type | rate | deposit_date | mature_date |
+--------+------+------+--------+------+------+--------------+-------------+
|   3000 | 2019 | 1021 |  10000 | FD   |  5.0 | 2015-05-10   | 2017-01-01  |
|   3003 | 2013 | 1017 |  15000 | RD   |  3.0 | 2017-12-12   | 2019-12-12  |
|   3005 | 2010 | 1018 |   9000 | RD   |  3.0 | 2019-05-01   | 2022-05-01  |
|   3006 | 2008 | 1018 |  90000 | RD   |  3.0 | 2019-05-11   | 2021-12-05  |
|   3008 | 2005 | 1009 |  15000 | FD   |  7.0 | 2017-07-10   | 2020-07-10  |
|   3010 | 2001 | 1007 |   9500 | RD   |  3.0 | 2017-08-15   | 2021-08-10  |
+--------+------+------+--------+------+------+--------------+-------------+

delete from deposit where curdate()>mature_date;
Query OK, 1 row affected (0.05 sec)

mysql> select * from deposit;                                                              
 +--------+------+------+--------+------+------+--------------+-------------+
| acc_no | c_id | b_id | amount | type | rate | deposit_date | mature_date |
+--------+------+------+--------+------+------+--------------+-------------+
|   3003 | 2013 | 1017 |  15000 | RD   |  3.0 | 2017-12-12   | 2019-12-12  |
|   3005 | 2010 | 1018 |   9000 | RD   |  3.0 | 2019-05-01   | 2022-05-01  |
|   3006 | 2008 | 1018 |  90000 | RD   |  3.0 | 2019-05-11   | 2021-12-05  |
|   3008 | 2005 | 1009 |  15000 | FD   |  7.0 | 2017-07-10   | 2020-07-10  |
|   3010 | 2001 | 1007 |   9500 | RD   |  3.0 | 2017-08-15   | 2021-08-10  |
+--------+------+------+--------+------+------+--------------+-------------+

/*11.List the total deposit amount of customers living in Tirunelveli.*/

select sum(amount) from deposit natural join customer where ccity="Tirunelveli";
+-------------+
| sum(amount) |
+-------------+
|       99000 |
+-------------+

/*12.Give a hike of 0.5% to the rate of interest of the customer who holds the largest deposit amount of the customers living in ‘Kochi’.


13.Display the name and deposit amount of all depositors and order them by the alphabetical ofbranch city.
14.Find the total loan amount of customers living in the same city in which ‘David’ is living.
15.Display the details of customers who are depositors as well as borrowers.
16.Find the average balance of each customer who lives in ‘Kozhikode’ and has at least 3 accounts.
17.Find the names of all branches that have balance greater than that of each branch in ‘Thiruvananthapuram’ city.
18.Find the branch that has the higher average balance.
19.Find all customers who have both an account and a loan at the ‘PMG’  branch.
20.Find all customers whose loans made at the ‘Trivandrum Main’ branch with loan amounts greater han Rs. 1,50,000.
21.Delete the records of all accounts with balances below the average balance at each branch.
22.Increase all accounts with balances over Rs. 10,00,000 by 6%, all other accounts receive 5%.*/
































