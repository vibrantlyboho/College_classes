create table physician
(Phy_ID integer primary key, 
 Phy_fname varchar(10), 
 Phy_lname varchar(10), 
 Address varchar(20), 
 Salary integer, 
 Degree varchar(10));

 desc physician;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Phy_ID    | int(11)     | NO   | PRI | NULL    |       |
| Phy_fname | varchar(10) | YES  |     | NULL    |       |
| Phy_lname | varchar(10) | YES  |     | NULL    |       |
| Address   | varchar(20) | YES  |     | NULL    |       |
| Salary    | int(11)     | YES  |     | NULL    |       |
| Degree    | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

 select * from physician;
+--------+-----------+-----------+-------------+--------+--------+
| Phy_ID | Phy_fname | Phy_lname | Address     | Salary | Degree |
+--------+-----------+-----------+-------------+--------+--------+
|   1000 | Raju      | P         | Trivandrum  |  50000 | MBBS   |
|   1004 | Thomas    | Mathew    | Kollam      |  60000 | MBBS   |
|   1006 | Elizabeth | Varghese  | Kottayam    |  70000 | BDS    |
|   1010 | Arul      | S         | Ludiana     |  65000 | BDS    |
|   1025 | Chantelle | Sam       | Noida       |  55000 | MBBS   |
|   1027 | Catherine | P         | Hyderabad   |  65000 | MBBS   |
|   1032 | Jacob     | Stanley   | Coimbatore  |  70000 | MD     |
|   1047 | Persis    | Sara      | Tirunelveli |  70000 | MBBS   |
|   1050 | Aaren     | Patrick   | Manipur     |  65000 | MBBS   |
|   1056 | Mayuri    | Anurag    | Dehradun    |  75000 | MD     |
+--------+-----------+-----------+-------------+--------+--------+

create table physician_speciality
(Phy_ID integer ,
 Field_of_Specialization varchar(20),
 Year_of_Specialization date,
 foreign key (Phy_ID) references physician(Phy_ID)
 );

desc physician_speciality;
+-------------------------+-------------+------+-----+---------+-------+
| Field                   | Type        | Null | Key | Default | Extra |
+-------------------------+-------------+------+-----+---------+-------+
| Phy_ID                  | int(11)     | YES  | MUL | NULL    |       |
| Field_of_Specialization | varchar(20) | YES  |     | NULL    |       |
| Year_of_Specialization  | date        | YES  |     | NULL    |       |
+-------------------------+-------------+------+-----+---------+-------+

select * from physician_speciality;
+--------+-------------------------+------------------------+
| Phy_ID | Field_of_Specialization | Year_of_Specialization |
+--------+-------------------------+------------------------+
|   1000 | Cardiology              | 1990-05-26             |
|   1004 | Paediatrics             | 1988-03-25             |
|   1006 | Surgery                 | 1999-07-01             |
|   1010 | Radiology               | 1989-10-21             |
|   1032 | Oncology                | 2000-01-12             |
|   1056 | Neurology               | 2005-08-03             |
|   1025 | Cardiology              | 1999-10-22             |
|   1027 | Surgery                 | 1998-11-02             |
|   1050 | Oncology                | 1999-10-09             |
+--------+-------------------------+------------------------+

create table Nurse
(Nurse_ID integer primary key,
 Nurse_fName varchar(10),
 Nurse_lname varchar(10),
 Shift varchar(10)); 

desc Nurse;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Nurse_ID    | int(11)     | NO   | PRI | NULL    |       |
| Nurse_fName | varchar(10) | YES  |     | NULL    |       |
| Nurse_lname | varchar(10) | YES  |     | NULL    |       |
| Shift       | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

select * from Nurse;
+----------+-------------+-------------+-------+
| Nurse_ID | Nurse_fName | Nurse_lname | Shift |
+----------+-------------+-------------+-------+
|     2000 | Charlene    | Rebecca     | Day   |
|     2005 | Stephanie   | Mary        | Day   |
|     2017 | Baby        | Mon         | Night |
|     2023 | Derrick     | James       | Night |
|     2044 | Janice      | Fey         | Night |
|     2047 | Rhysand     | Prince      | Day   |
|     2054 | Ginny       | Potter      | Night |
|     2061 | Albert      | Wilson      | Day   |
|     2066 | Lisbon      | Teresa      | Night |
|     2067 | Jane        | Baker       | Night |
|     2079 | Robert      | Pete        | Day   |
+----------+-------------+-------------+-------+

create table Ward
(Ward_Num integer primary key,
 Ward_Name  varchar(10),
 Num_of_Beds integer,
 Nurse_ID integer,
 Phone integer,
 foreign key (Nurse_ID) references Nurse(Nurse_id));

desc Ward;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Ward_Num    | int(11)     | NO   | PRI | NULL    |       |
| Ward_Name   | varchar(10) | YES  |     | NULL    |       |
| Num_of_Beds | int(11)     | YES  |     | NULL    |       |
| Nurse_ID    | int(11)     | YES  | MUL | NULL    |       |
| Phone       | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

select * from Ward;
+----------+-----------+-------------+----------+------------+
| Ward_Num | Ward_Name | Num_of_Beds | Nurse_ID | Phone      |
+----------+-----------+-------------+----------+------------+
|     5001 | W1        |          25 |     2000 | 9849787232 |
|     5002 | W2        |          25 |     2005 | 9865787232 |
|     5003 | W3        |          25 |     2017 | 9132543626 |
|     5004 | W4        |          25 |     2023 | 9555436246 |
|     5005 | W5        |          25 |     2044 | 9091627491 |
|     5006 | W6        |          25 |     2047 | 9134281917 |
|     5007 | W7        |          25 |     2054 | 9172371938 |
|     5008 | W8        |          25 |     2061 | 8752910348 |
|     5009 | G1        |          50 |     2066 | 9348762388 |
|     5010 | G2        |          50 |     2079 | 9237294051 |
+----------+-----------+-------------+----------+------------+

create table Patient 
(Pat_ID integer primary key, 
 Pat_fname varchar(10), 
 Pat_lname varchar(10), 
 Age integer, 
 Phy_ID integer, 
 Ward_Num integer,
 Admit_Date date);

desc Patient;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Pat_ID     | int(11)     | NO   | PRI | NULL    |       |
| Pat_fname  | varchar(10) | YES  |     | NULL    |       |
| Pat_lname  | varchar(10) | YES  |     | NULL    |       |
| Age        | int(11)     | YES  |     | NULL    |       |
| Phy_ID     | int(11)     | YES  | MUL | NULL    |       |
| Ward_Num   | int(11)     | YES  |     | NULL    |       |
| Admit_Date | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

select * from Patient;
+--------+-----------+-----------+------+--------+----------+------------+
| Pat_ID | Pat_fname | Pat_lname | Age  | Phy_ID | Ward_Num | Admit_Date |
+--------+-----------+-----------+------+--------+----------+------------+
|     10 | May       | Phil      |   45 |   1004 |     5007 | 2000-10-11 |
|     13 | Yani      | L         |   50 |   1025 |     5005 | 2005-05-01 |
|     25 | Steve     | Dan       |   25 |   1056 |     5009 | 2009-06-19 |
|     32 | Lindsey   | Stan      |   35 |   1010 |     5002 | 2010-05-17 |
|     44 | Laney     | Samuel    |   19 |   1025 |     5003 | 2011-04-27 |
|     54 | Robin     | Lane      |   35 |   1032 |     NULL | 2012-04-22 |
|     59 | Christoph | Smith     |   22 |   1050 |     NULL | 2016-12-20 |
+--------+-----------+-----------+------+--------+----------+------------+

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------


1.Display the patient number and ward number of all patients.

select Pat_ID, Ward_Num from Patient;
+--------+----------+
| Pat_ID | Ward_Num |
+--------+----------+
|     10 |     5007 |
|     13 |     5005 |
|     25 |     5009 |
|     32 |     5002 |
|     44 |     5003 |
+--------+----------+


2.Display the names of all nurses in the hospital along with their shift of working

select Nurse_fName, Shift from Nurse;
+-------------+-------+
| Nurse_fName | Shift |
+-------------+-------+
| Charlene    | Day   |
| Stephanie   | Day   |
| Baby        | Night |
| Derrick     | Night |
| Janice      | Night |
| Rhysand     | Day   |
| Ginny       | Night |
| Albert      | Day   |
| Lisbon      | Night |
| Jane        | Night |
| Robert      | Day   |
+-------------+-------+

3.Display the names of patients and their physicians only for patients admitted in any ward. 

select Pat_fName, Phy_fname from Patient natural join physician;
+-----------+-----------+
| Pat_fName | Phy_fname |
+-----------+-----------+
| May       | Thomas    |
| Yani      | Chantelle |
| Steve     | Mayuri    |
| Lindsey   | Arul      |
| Laney     | Chantelle |
| Robin     | Jacob     |
| Christoph | Aaren     |
+-----------+-----------+

4.Display the details of physicians who earn more than Rs. 50,000.

select * from physician where Salary>50000;
+--------+-----------+-----------+-------------+--------+--------+
| Phy_ID | Phy_fname | Phy_lname | Address     | Salary | Degree |
+--------+-----------+-----------+-------------+--------+--------+
|   1004 | Thomas    | Mathew    | Kollam      |  60000 | MBBS   |
|   1006 | Elizabeth | Varghese  | Kottayam    |  70000 | BDS    |
|   1010 | Arul      | S         | Ludiana     |  65000 | BDS    |
|   1025 | Chantelle | Sam       | Noida       |  55000 | MBBS   |
|   1027 | Catherine | P         | Hyderabad   |  65000 | MBBS   |
|   1032 | Jacob     | Stanley   | Coimbatore  |  70000 | MD     |
|   1047 | Persis    | Sara      | Tirunelveli |  70000 | MBBS   |
|   1050 | Aaren     | Patrick   | Manipur     |  65000 | MBBS   |
|   1056 | Mayuri    | Anurag    | Dehradun    |  75000 | MD     |
+--------+-----------+-----------+-------------+--------+--------+

5.Display the unique listing of the fields of specialization of the physicians.

 select distinct FIeld_of_Specialization from  physician_speciality;
+-------------------------+
| FIeld_of_Specialization |
+-------------------------+
| Cardiology              |
| Paediatrics             |
| Surgery                 |
| Radiology               |
| Oncology                |
| Neurology               |
+-------------------------+

6.Find the details of all patients whose first name starts with ‘L’ and are treated by the physician named ‘Arul’.

select * from Patient natural join physician where Pat_fname like 'L%' and Phy_fname='Arul';
+--------+--------+-----------+-----------+------+----------+------------+-----------+-----------+---------+--------+--------+
| Phy_ID | Pat_ID | Pat_fname | Pat_lname | Age  | Ward_Num | Admit_Date | Phy_fname | Phy_lname | Address | Salary | Degree |
+--------+--------+-----------+-----------+------+----------+------------+-----------+-----------+---------+--------+--------+
|   1010 |     32 | Lindsey   | Stan      |   35 |     5002 | 2010-05-17 | Arul      | S         | Ludiana |  65000 | BDS    |
+--------+--------+-----------+-----------+------+----------+------------+-----------+-----------+---------+--------+--------+

7.Display the details of wards having more than 30 beds.

 select * from Ward where Num_of_Beds>30;
+----------+-----------+-------------+----------+------------+
| Ward_Num | Ward_Name | Num_of_Beds | Nurse_ID | Phone      |
+----------+-----------+-------------+----------+------------+
|     5009 | G1        |          50 |     2066 | 9348762388 |
|     5010 | G2        |          50 |     2079 | 9237294051 |
+----------+-----------+-------------+----------+------------+

8.Display the details of all patients who are more than 45 years of age and are treated by physicians specialized in ‘Cardiology’.

 select * from Patient natural join physician_speciality where age>45 and Field_of_Specialization='Cardiology';
+--------+--------+-----------+-----------+------+----------+------------+-------------------------+------------------------+
| Phy_ID | Pat_ID | Pat_fname | Pat_lname | Age  | Ward_Num | Admit_Date | Field_of_Specialization | Year_of_Specialization |
+--------+--------+-----------+-----------+------+----------+------------+-------------------------+------------------------+
|   1025 |     13 | Yani      | L         |   50 |     5005 | 2005-05-01 | Cardiology              | 1999-10-22             |
+--------+--------+-----------+-----------+------+----------+------------+-------------------------+------------------------+

9.Display the Ward Number and Ward Name of all wards in the hospital along with the ID andnames of nurses assigned to that ward.

select Ward_Num, Ward_Name, Nurse_ID, Nurse_fname from Ward natural join Nurse ;
+----------+-----------+----------+-------------+
| Ward_Num | Ward_Name | Nurse_ID | Nurse_fname |
+----------+-----------+----------+-------------+
|     5001 | W1        |     2000 | Charlene    |
|     5002 | W2        |     2005 | Stephanie   |
|     5003 | W3        |     2017 | Baby        |
|     5004 | W4        |     2023 | Derrick     |
|     5005 | W5        |     2044 | Janice      |
|     5006 | W6        |     2047 | Rhysand     |
|     5007 | W7        |     2054 | Ginny       |
|     5008 | W8        |     2061 | Albert      |
|     5009 | G1        |     2066 | Lisbon      |
|     5010 | G2        |     2079 | Robert      |
+----------+-----------+----------+-------------+

10.Display the details of all physicians whose ‘Field_of Specialization’ string length is less than7. 

 select * from physician natural join physician_speciality where length(Field_of_Specialization)<8;
+--------+-----------+-----------+-----------+--------+--------+-------------------------+------------------------+
| Phy_ID | Phy_fname | Phy_lname | Address   | Salary | Degree | Field_of_Specialization | Year_of_Specialization |
+--------+-----------+-----------+-----------+--------+--------+-------------------------+------------------------+
|   1006 | Elizabeth | Varghese  | Kottayam  |  70000 | BDS    | Surgery                 | 1999-07-01             |
|   1027 | Catherine | P         | Hyderabad |  65000 | MBBS   | Surgery                 | 1998-11-02             |
+--------+-----------+-----------+-----------+--------+--------+-------------------------+------------------------+

11.Add a new patient to the ‘Patient’ table. Assign a ward number to this new patient. Display the details of the nurse in charge of this patient.
12.Display the details of nurses in all wards. Ignore wards which have no patients admitted.
13.List all the nurses working in ‘Night’ shift.























