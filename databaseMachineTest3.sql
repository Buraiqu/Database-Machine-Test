-----------------------------SQL Machine TEst-3------------------------------

1)


SELECT SUM(int_quantity*int_price) AS total_cost FROM tbl_stock;


 total_cost
------------
   214015.5

2)

SELECT SUM(int_quantity) AS total_no_products FROM tbl_stock;

 total_no_products
-------------------
               177


3)

SELECT UPPER(vchr_name) AS product_name,ROUND(int_price) AS product_price  FROM tbl_stock;

 product_name | product_price
--------------+---------------
 MOUSE        |           502
 KEYBOARD     |           452
 HEADPHONE    |           752
 MEMORY       |          3502
 MODEM        |          1202
 MEMORY       |          1502

4)

SELECT COUNT(DISTINCT vchr_name) AS items FROM tbl_stock;

 items
-------
     5


5)

SELECT vchr_name,int_price FROM tbl_stock WHERE int_price =(SELECT MAX(int_price) FROM tbl_stock);


 vchr_name | int_price
-----------+-----------
 Memory    |    3501.5


6)

SELECT SUM(int_count) AS total_enrollment FROM tbl_enrollment;

 total_enrollment
------------------
              351



7)

SELECT COUNT(vchr_class_name) AS number_of_classes FROM tbl_classes;

 number_of_classes
-------------------
                 7

8)

DELETE FROM tbl_stock WHERE fk_int_supplier = 5;

9)

SELECT CONCAT(vchr_name,int_price) AS Product_price FROM tbl_stock;

 Product_price
----------------
 Mouse501.5
 Keyboard451.5
 HeadPhone751.5
 Memory3501.5
 modem1201.5

10)

SELECT name,course,grade FROM Tbl_Student INNER JOIN tbl_grade ON Tbl_Student.roll_no = tbl_grade.roll_no WHERE grade = 'A';

  name   | course | grade
---------+--------+-------
 Akhil   | C      | A
 Maya    | java   | A
 Maya    | php    | A
 Paul    | java   | A
 Sandeep | php    | A


11)

SELECT COUNT(name),grade FROM Tbl_Student INNER JOIN tbl_grade ON Tbl_Student.roll_no = tbl_grade.roll_no GROUP BY grade HAVING grade = 'B';

 count | grade
-------+-------
     4 | B

12)

SELECT MAX(Tbl_Student.roll_no) As roll_no,name,COUNT(course) AS number_of_course FROM (Tbl_Student  INNER JOIN tbl_grade ON Tbl_Student.roll_no = tbl_grade.roll_no) GROUP BY name;

 roll_no |  name   | number_of_course
---------+---------+------------------
       2 | Akhil   |                2
       8 | Anoop   |                1
       1 | Paul    |                2
       5 | Sandeep |                2
       4 | Maya    |                3


13)

SELECT name,city,course FROM Tbl_Student INNER JOIN tbl_grade ON Tbl_Student.roll_no = tbl_grade.roll_no WHERE city = 'Bangalore' AND course = 'java';

 name  |   city    | course
-------+-----------+--------
 Maya  | Bangalore | java
 Anoop | Bangalore | java


 14)

 SELECT name,course FROM Tbl_Student INNER JOIN tbl_grade ON Tbl_Student.roll_no = tbl_grade.roll_no where name like 'A%';
 
 name  | course
-------+--------
 Akhil | C
 Akhil | java
 Anoop | java

  15)

 SELECT name, date_part('year',age(dob)) AS age FROM Tbl_Student;

   name  | age
---------+-----
 Akhil   |  37
 Maya    |  36
 Anoop   |  33
 Paul    |  31
 Sandeep |  29


 16)

SELECT name,to_char(dob, 'DD Mon YYYY') FROM Tbl_Student;
   
   af    |   to_char
---------+-------------
 Akhil   | 12 Jan 1986
 Maya    | 12 Jan 1987
 Anoop   | 12 Jan 1990
 Paul    | 13 Mar 1991
 Sandeep | 14 Jun 1993