create table movie 
(mov_id integer primary key, 
 mov_title varchar(20), 
 mov_year integer, 
 mov_reldate date, 
 mov_duration integer, 
 mov_lang varchar(10), 
 release_country varchar(10));


desc movie;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| mov_id          | int(11)     | NO   | PRI | NULL    |       |
| mov_title       | varchar(20) | YES  |     | NULL    |       |
| mov_year        | int(11)     | YES  |     | NULL    |       |
| mov_reldate     | date        | YES  |     | NULL    |       |
| mov_duration    | int(11)     | YES  |     | NULL    |       |
| mov_lang        | varchar(10) | YES  |     | NULL    |       |
| release_country | varchar(10) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+

select * from movie;
+--------+----------------+----------+-------------+--------------+-----------+-----------------+
| mov_id | mov_title      | mov_year | mov_reldate | mov_duration | mov_lang  | release_country |
+--------+----------------+----------+-------------+--------------+-----------+-----------------+
|      1 | Bangalore Days |     2016 | 2016-05-20  |          120 | Malayalam | India           |
|      2 | Ambili         |     2019 | 2019-07-02  |          140 | Malayalam | India           |
|      3 | Up             |     2010 | 2010-10-03  |          125 | English   | USA             |
|      4 | It             |     2015 | 2015-01-05  |          135 | English   | UK              |
|      5 | Mugam          |     2017 | 2017-11-15  |          135 | Malayalam | UK              |
|      6 | Ek Villain     |     2016 | 2016-12-01  |          105 | Hindi     | India           |
|      7 | Lagaan         |     2018 | 2018-05-12  |          130 | Hindi     | UK              |
+--------+----------------+----------+-------------+--------------+-----------+-----------------+

----------------------------------------------------------------------------------------------------------------------------------------------

create table actor 
(act_id integer primary key, 
 act_fname varchar(10), 
 act_lname varchar(10), 
 act_gender varchar(10));

desc actor;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| act_id     | int(11)     | NO   | PRI | NULL    |       |
| act_fname  | varchar(10) | YES  |     | NULL    |       |
| act_lname  | varchar(10) | YES  |     | NULL    |       |
| act_gender | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

select * from actor;
+--------+-----------+------------+------------+
| act_id | act_fname | act_lname  | act_gender |
+--------+-----------+------------+------------+
|    101 | Aamir     | Khan       | Male       |
|    102 | Soubin    | Shah       | Male       |
|    103 | Shraddha  | Kapoor     | Female     |
|    104 | Dulqur    | Salmaan    | Male       |
|    105 | Parvathy  | T          | Female     |
|    106 | Nithya    | Menon      | Female     |
|    107 | Ellen     | Degenerees | Female     |
+--------+-----------+------------+------------+

----------------------------------------------------------------------------------------------------------------------------------------------


create table movie_cast 
(act_id integer , 
 mov_id integer, 
 role varchar(10),
 foreign key(act_id) references actor(act_id),
 foreign key(mov_id) references movie(mov_id)
);

desc movie_cast;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| act_id | int(11)     | YES  | MUL | NULL    |       |
| mov_id | int(11)     | YES  | MUL | NULL    |       |
| role   | varchar(10) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+

 select * from movie_cast;
+--------+--------+---------+
| act_id | mov_id | role    |
+--------+--------+---------+
|    101 |      7 | Main    |
|    106 |      1 | Support |
|    102 |      2 | Main    |
|    103 |      6 | Main    |
|    107 |      3 | Support |
|    104 |      1 | Main    |
+--------+--------+---------+

----------------------------------------------------------------------------------------------------------------------------------------------

create table director
(d_id integer primary key,
 d_fname varchar(10),
 d_lname varchar(10));

desc director;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| d_id    | int(11)     | NO   | PRI | NULL    |       |
| d_fname | varchar(10) | YES  |     | NULL    |       |
| d_lname | varchar(10) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+

 select * from director;
+------+---------+---------+
| d_id | d_fname | d_lname |
+------+---------+---------+
|  500 | Anjali  | Menon   |
|  501 | Yash    | Chopra  |
|  502 | Prem    | Kumar   |
|  503 | Karan   | Johar   |
|  504 | John    | Paul    |
|  505 | Andrew  | Stanton |
+------+---------+---------+

----------------------------------------------------------------------------------------------------------------------------------------------

create table movie_direction 
(d_id integer, 
 mov_id integer,
 foreign key(d_id) references director(d_id),
 foreign key(mov_id) references movie(mov_id));

desc movie_direction;
+--------+---------+------+-----+---------+-------+
| Field  | Type    | Null | Key | Default | Extra |
+--------+---------+------+-----+---------+-------+
| d_id   | int(11) | YES  | MUL | NULL    |       |
| mov_id | int(11) | YES  | MUL | NULL    |       |
+--------+---------+------+-----+---------+-------+

select * from movie_direction;
+------+--------+
| d_id | mov_id |
+------+--------+
|  501 |      7 |
|  500 |      1 |
|  504 |      2 |
|  505 |      3 |
|  502 |      5 |
|  503 |      6 |
+------+--------+

----------------------------------------------------------------------------------------------------------------------------------------------

create table reviewer 
(rev_id integer,
 rev_name varchar(20));

alter table reviewer add primary key(rev_id);

 desc reviewer;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| rev_id   | int(11)     | NO   | PRI | NULL    |       |
| rev_name | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+

select * from reviewer;
+--------+----------+
| rev_id | rev_name |
+--------+----------+
|   1000 | Joann    |
|   1002 | Greeshma |
|   1003 | Karthika |
|   1004 | Fasla    |
|   1005 | Ancy     |
|   1006 | Shasniya |
+--------+----------+

----------------------------------------------------------------------------------------------------------------------------------------------

create table rating 
(mov_id integer, 
 rev_id integer,
 howmanystars integer,
 total_ratings integer,
 foreign key(mov_id) references movie(mov_id),
 foreign key(rev_id) references reviewer(rev_id));

desc rating;
+---------------+---------+------+-----+---------+-------+
| Field         | Type    | Null | Key | Default | Extra |
+---------------+---------+------+-----+---------+-------+
| mov_id        | int(11) | YES  | MUL | NULL    |       |
| rev_id        | int(11) | YES  | MUL | NULL    |       |
| howmanystars  | int(11) | YES  |     | NULL    |       |
| total_ratings | int(11) | YES  |     | NULL    |       |
+---------------+---------+------+-----+---------+-------+

select * from rating;
+--------+--------+--------------+---------------+
| mov_id | rev_id | howmanystars | total_ratings |
+--------+--------+--------------+---------------+
|      1 |   1000 |            5 |            98 |
|      2 |   1003 |            4 |            94 |
|      3 |   1002 |            4 |            92 |
|      4 |   1006 |            5 |            85 |
|      7 |   1004 |            4 |            95 |
|      4 |   1000 |            2 |            85 |
|      5 |   1003 |            3 |            75 |
|      5 |   1006 |            2 |            75 |
+--------+--------+--------------+---------------+

----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------

/*1.Display the list of all actors who played a role in the movie 'Ambili'.*/

select act_fname, act_lname 
from actor natural join movie_cast 
where act_id in (select act_id from movie_cast natural join movie where mov_title="Ambili");
+-----------+-----------+
| act_fname | act_lname |
+-----------+-----------+
| Soubin    | Shah      |
+-----------+-----------+
----------------------------------------------------------------------------------------------------------------------------------------------
/*2.List all the movies which were also released outside India.*/

 select mov_title from movie where release_country not in ("India");
+-----------+
| mov_title |
+-----------+
| Up        |
| It        |
| Mugam     |
| Lagaan    |
+-----------+
----------------------------------------------------------------------------------------------------------------------------------------------
/*3.Find the movie title, year, date of release, director and actor for those movies which have no reviews yet.*/
                                         
select m.mov_title, m.mov_year, m.mov_reldate, d.d_fname, a.act_fname 
from movie m 
     join movie_direction md on md.mov_id=m.mov_id 
     join movie_cast ac on m.mov_id=ac.mov_id 
     join director d on d.d_id=md.d_id 
     join actor a on a.act_id=ac.act_id 
where m.mov_id not in (select mov_id from rating);
+------------+----------+-------------+---------+-----------+
| mov_title  | mov_year | mov_reldate | d_fname | act_fname |
+------------+----------+-------------+---------+-----------+
| Ek Villain |     2016 | 2016-12-01  | Karan   | Shraddha  |
+------------+----------+-------------+---------+-----------+

----------------------------------------------------------------------------------------------------------------------------------------------
/*4.Find the titles of all movies directed by the director whose first name is ‘Yash’.*/

select mov_title 
from movie natural join movie_direction 
where mov_id in (select mov_id from movie_direction natural join director where d_fname="Yash");
+-----------+
| mov_title |
+-----------+
| Lagaan    |
+-----------+
----------------------------------------------------------------------------------------------------------------------------------------------
/*5.Find all the years in which at least 2 movies were released and that received a rating of morethan 3 stars. Show the results in chronological order.*/  

 select mov_year from movie group by(mov_year) having count(mov_id)>=2;
+----------+
| mov_year |
+----------+
|     2016 |
+----------+
                                         
select m.mov_year from movie m join rating r on r.mov_id=m.mov_id where howmanystars>3 group by(m.mov_year) having count(m.mov_id)>1;
Empty set (0.03 sec)
----------------------------------------------------------------------------------------------------------------------------------------------
/*6.Display the names of all reviewers (and ratings given by them) who gave at least 4 star ratings.*/
                                         
 select * from reviewer natural join rating where howmanystars>=4;
+--------+----------+--------+--------------+---------------+
| rev_id | rev_name | mov_id | howmanystars | total_ratings |
+--------+----------+--------+--------------+---------------+
|   1000 | Joann    |      1 |            5 |            98 |
|   1003 | Karthika |      2 |            4 |            94 |
|   1002 | Greeshma |      3 |            4 |            92 |
|   1006 | Shasniya |      4 |            5 |            85 |
|   1004 | Fasla    |      7 |            4 |            95 |
+--------+----------+--------+--------------+---------------+
----------------------------------------------------------------------------------------------------------------------------------------------
/*7.Find the reviewer's name and the title of the movie for those reviewers who rated more than two movies.*/
                                         
select re.rev_name, m.mov_title from rating r join movie m on r.mov_id=m.mov_id join reviewer re on r.rev_id=re.rev_id where re.rev_name in (select rev_name from reviewer natural join rating group by(rev_id) having count(rev_id)>=2);
+----------+----------------+
| rev_name | mov_title      |
+----------+----------------+
| Joann    | Bangalore Days |
| Karthika | Ambili         |
| Shasniya | It             |
| Joann    | It             |
| Karthika | Mugam          |
| Shasniya | Mugam          |
+----------+----------------+

----------------------------------------------------------------------------------------------------------------------------------------------
/*8.List the titles of all the movies released in 2018 and the number of stars received by it. Sort the results in decreasing order of star ratings.*/

 select mov_title, howmanystars from movie natural join rating where mov_year=2018 order by howmanystars desc;
+-----------+--------------+
| mov_title | howmanystars |
+-----------+--------------+
| Lagaan    |            4 |
+-----------+--------------+

----------------------------------------------------------------------------------------------------------------------------------------------                                         

/*9.Find the names of all reviewers who rated the movie ‘Mugam’.*/
                                         
select re.rev_name 
from rating r  
join reviewer re on re.rev_id=r.rev_id 
join movie m on r.mov_id=m.mov_id 
where m.mov_title="Mugam";
+----------+
| rev_name |
+----------+
| Karthika |
| Shasniya |
+----------+
----------------------------------------------------------------------------------------------------------------------------------------------                                         
                                         

/*10.Display the reviewer name, movie title, and number of stars for those movies for which rating is the lowest one.
                                         
                                         
11.Fnd the details of all movies directed by ‘Rosshan Andrrews’.
                                         
                                         
12.Find the list of all those movies along with release date, which includes the words ‘The’ or ‘Hero’ in their title.
                                         
                                         
13.List the first and last names of all actors who were cast in the movie 'CID Moosa', and the roles they played in that production.

                                         
14.List all the actors who have not acted in any movie between 2010 and 2015.
                                         
                                         
15.List all the movies with title, year, date of release, movie duration, and first and last name ofthe director which released before 1st January 2018, and sort the results according to release date from latest to old.
                                         
                                         
16.Find the director's first and last name together with the title of the movie(s) they directed and have received at least one star rating.
                                         
                                         
17.Find the movie title, actor first and last name, and their role in that movie, for those movies where one or more actors acted in two or more movies.
                                         
                                         
18.Find the first and last name of all actors with their role in the movie, and which was also directed by themselves.
                                         
                                         
19.Display the year-wise list of highest-rated movie in that year, its title, rating, and releasing country. 
                                         
                                         
20.Display he following details: movie title, name of the actor, year of the movie, role of actor, director, date of release, release country and total rating of that movie. Sort the results in chronological order.*/


