SQL*Plus: Release 21.0.0.0.0 - Production on Fri Feb 27 22:31:15 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Fri Feb 27 2026 17:34:43 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> INSERT INTO Department VALUES('D101','CSE','Block A');

1 row created.

SQL> INSERT INTO Department VALUES('D102','CSE(AI and ML)','Block B');

1 row created.

SQL> INSERT INTO Department VALUES('D103','ME','Block C');

1 row created.

SQL> INSERT INTO Department VALUES('D104','CE','Block D');

1 row created.

SQL> INSERT INTO Department VALUES('D105','EEE','Block E');

1 row created.

SQL> INSERT INTO Department VALUES('D106','CE with CA','Block F');

1 row created.

SQL> INSERT INTO Department VALUES('D107','3DAG','Block G');

1 row created.

SQL> INSERT INTO Department VALUES('D108','ECE','Block H');

1 row created.

SQL> INSERT INTO Department VALUES('D109','IT','Block I');

1 row created.

SQL> INSERT INTO Department VALUES('D110','ROBOTICS','Block J');

1 row created.

SQL> INSERT INTO Faculty VALUES('F101','Prof. Murlidhar Prasad Singh','Assistant Professor','singhmurlidhar@gmail.com','D101');

1 row created.

SQL> INSERT INTO Faculty VALUES('F102','Prof. Md. Ehtashamoul Haque(HoD)','Assistant Professor','ehtasham47@gmail.com','D102');

1 row created.

SQL> INSERT INTO Faculty VALUES('F103','Prof. Arbind Kumar Amar','Associate Professor,Principal-in-charge','ak_amar73@yahoo.com','D103');

1 row created.

SQL> INSERT INTO Faculty VALUES('F104','Prof. Kunal Kumar(HoD)','Assistant Professor','kunal1989kumar@gmail.com','D104');

1 row created.

SQL> INSERT INTO Faculty VALUES('F105','Prof. Hare Krishna Mishra','Assistant Professor','hare.dbit@gmail.com','D105');

1 row created.

SQL> INSERT INTO Faculty VALUES('F106','Prof. Akhilesh Kumar(HoD)','Assistant Professor','akhileshkumar3804@gmail.com','D106');

1 row created.

SQL> INSERT INTO Faculty VALUES('F107','Prof. Murlidhar Prasad Singh(HoD)','Assistant Professor','singhmurlidhar@gmail.com','D107');

1 row created.

SQL> INSERT INTO Faculty VALUES('F108','Prof. Md. Izhar','Assistant Professor','mdizhar1996@gmail.com','D108');

1 row created.

SQL> INSERT INTO Faculty VALUES('F109','Prof. Manisha Kumari Singh','Assistant Professor','manisha.ks241@gmail.com','D109');

1 row created.

SQL> INSERT INTO Faculty VALUES('F110','Prof. Sujeet Kumar','Assistant Professor','ksujeet.cs@gmail.com','D110');

1 row created.

SQL> INSERT INTO Course VALUES('C101','Database Management System',5,'D101','F101');

1 row created.

SQL> INSERT INTO Course VALUES('C102','Computer Network',4,'D102','F102');

1 row created.

SQL> INSERT INTO Course VALUES('C103','Heat Transfer',4,'D103','F103');

1 row created.

SQL> INSERT INTO Course VALUES('C104','Transportation Engineering',3,'D104','F104');

1 row created.

SQL> INSERT INTO Course VALUES('C105','Control Systems',5,'D105','F105');

1 row created.

SQL> INSERT INTO Course VALUES('C105','Control Systems',4,'D106','F106');
INSERT INTO Course VALUES('C105','Control Systems',4,'D106','F106')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008351) violated


SQL>
SQL>
SQL>
SQL>
SQL> INSERT INTO Course VALUES('C106','Control Systems',4,'D106','F106');

1 row created.

SQL> DELETE FROM Course
  2  WHERE Course_ID = 'C106';

1 row deleted.

SQL> INSERT INTO Course VALUES('C106','Machine Learning',4,'D106','F106');

1 row created.

SQL> INSERT INTO Course VALUES('C107','3D Texturing',4,'D107','F107');

1 row created.

SQL> INSERT INTO Course VALUES('C108','Digital Electronics',3,'D108','F108');

1 row created.

SQL> INSERT INTO Course VALUES('C109','Operating System',4,'D109','F109');

1 row created.

SQL> INSERT INTO Course VALUES('C110','Artificial Intelligence',3,'D110','F110');

1 row created.

SQL> INSERT INTO Student VALUES('S101','Asha Kumari',TO_DATE('12-05-2004','DD-MM-YYYY'),'Female','9123456780',D101');
ERROR:
ORA-01756: quoted string not properly terminated


SQL> INSERT INTO Student VALUES('S101','Asha Kumari',TO_DATE('12-05-2004','DD-MM-YYYY'),'Female','9123456780','D101');

1 row created.

SQL> INSERT INTO Student VALUES('S102','Arman Shandilya',TO_DATE('24-08-2005','DD-MM-YYYY'),'Male','9234567891','D102');

1 row created.

SQL> INSERT INTO Student VALUES('S103','Vijay Kumar',TO_DATE('15-01-2003','DD-MM-YYYY'),'Male','9345678912','D103');

1 row created.

SQL> INSERT INTO Student VALUES('S104','Vijay Kumar',TO_DATE('30-11-2004','DD-MM-YYYY'),'Female','9456789123','D104');

1 row created.

SQL> UPDATE Student
  2  SET Name = 'Ritika Raj'
  3  WHERE StudentID = 'S104';
WHERE StudentID = 'S104'
      *
ERROR at line 3:
ORA-00904: "STUDENTID": invalid identifier


SQL> UPDATE Student
  2  SET Name = 'Ritika Raj'
  3  WHERE Student_ID = 'S104';
SET Name = 'Ritika Raj'
    *
ERROR at line 2:
ORA-00904: "NAME": invalid identifier


SQL> DELETE FROM Student
  2  WHERE Student_ID = 'S104';

1 row deleted.

SQL> INSERT INTO Student VALUES('S104','Ritika Raj',TO_DATE('30-11-2004','DD-MM-YYYY'),'Female','9456789123','D104');

1 row created.

SQL> INSERT INTO Student VALUES('S105','Piyush Kumar',TO_DATE('09-07-2005','DD-MM-YYYY'),'Male','9567891234','D105');

1 row created.

SQL> INSERT INTO Student VALUES('S106','Kunal Kumar',TO_DATE('18-03-2002','DD-MM-YYYY'),'Male','9678912345','D106');

1 row created.

SQL> INSERT INTO Student VALUES('S107','Shivangi Kumari',TO_DATE('25-09-2006','DD-MM-YYYY'),'Female','9789123456','D107');

1 row created.

SQL> INSERT INTO Student VALUES('S108','Navin Kumar',TO_DATE('10-12-2004','DD-MM-YYYY'),'Male','9891234567','D108');

1 row created.

SQL> INSERT INTO Student VALUES('S109','Manisha Kumari',TO_DATE('14-06-2003','DD-MM-YYYY'),'Female','9912345678','D109');

1 row created.

SQL> INSERT INTO Student VALUES('S110','Sahil Choudhary',TO_DATE('05-02-2005','DD-MM-YYYY'),'Male','9023456789','D110');

1 row created.

SQL> INSERT INTO Enrollment VALUES('S101','C101',4,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES('S102','C102',5,'A++');

1 row created.

SQL> INSERT INTO Enrollment VALUES('S103','C103',5,'B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES('S104','C104',3,'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES('S105','C105',4,'C+');

1 row created.

SQL> INSERT INTO Enrollment VALUES('S106','C106',7,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES('S107','C107',3,'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES('S108','C108',5,'C');

1 row created.

SQL> INSERT INTO Enrollment VALUES('S109','C109',7,'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES('S110','C110',2,'D');

1 row created.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL> COLUMN column_name FORMAT A30
SQL> SELECT * FROM Department;

DEPT_ID    DEPARTMENT_NAME      OFFICE_LOCATION
---------- -------------------- --------------------------------------------------
D101       CSE                  Block A
D102       CSE(AI and ML)       Block B
D103       ME                   Block C
D104       CE                   Block D
D105       EEE                  Block E
D106       CE with CA           Block F
D107       3DAG                 Block G
D108       ECE                  Block H
D109       IT                   Block I
D110       ROBOTICS             Block J

10 rows selected.

SQL> SELECT * FROM Faculty;

FACULTY_ID FACULTY_NAME                                       DESIGNATION                                        EMAIL                                    DEPT_ID
---------- -------------------------------------------------- -------------------------------------------------- ---------------------------------------- ----------
F101       Prof. Murlidhar Prasad Singh                       Assistant Professor                                singhmurlidhar@gmail.com                 D101
F102       Prof. Md. Ehtashamoul Haque(HoD)                   Assistant Professor                                ehtasham47@gmail.com                     D102
F103       Prof. Arbind Kumar Amar                            Associate Professor,Principal-in-charge            ak_amar73@yahoo.com                      D103
F104       Prof. Kunal Kumar(HoD)                             Assistant Professor                                kunal1989kumar@gmail.com                 D104
F105       Prof. Hare Krishna Mishra                          Assistant Professor                                hare.dbit@gmail.com                      D105
F106       Prof. Akhilesh Kumar(HoD)                          Assistant Professor                                akhileshkumar3804@gmail.com              D106
F107       Prof. Murlidhar Prasad Singh(HoD)                  Assistant Professor                                singhmurlidhar@gmail.com                 D107
F108       Prof. Md. Izhar                                    Assistant Professor                                mdizhar1996@gmail.com                    D108
F109       Prof. Manisha Kumari Singh                         Assistant Professor                                manisha.ks241@gmail.com                  D109
F110       Prof. Sujeet Kumar                                 Assistant Professor                                ksujeet.cs@gmail.com                     D110

10 rows selected.

SQL> SELECT * FROM Course;

COURSE_ID  COURSE_NAME                                           CREDITS DEPT_ID    FACULTY_ID
---------- -------------------------------------------------- ---------- ---------- ----------
C101       Database Management System                                  5 D101       F101
C102       Computer Network                                            4 D102       F102
C103       Heat Transfer                                               4 D103       F103
C104       Transportation Engineering                                  3 D104       F104
C105       Control Systems                                             5 D105       F105
C106       Machine Learning                                            4 D106       F106
C107       3D Texturing                                                4 D107       F107
C108       Digital Electronics                                         3 D108       F108
C109       Operating System                                            4 D109       F109
C110       Artificial Intelligence                                     3 D110       F110

10 rows selected.

SQL> SELECT * FROM Student;

STUDENT_ID STUDENT_NAME                                       DATE_OF_B GENDER     CONTACT_NUMBER  DEPT_ID
---------- -------------------------------------------------- --------- ---------- --------------- ----------
S101       Asha Kumari                                        12-MAY-04 Female     9123456780      D101
S102       Arman Shandilya                                    24-AUG-05 Male       9234567891      D102
S103       Vijay Kumar                                        15-JAN-03 Male       9345678912      D103
S104       Ritika Raj                                         30-NOV-04 Female     9456789123      D104
S105       Piyush Kumar                                       09-JUL-05 Male       9567891234      D105
S106       Kunal Kumar                                        18-MAR-02 Male       9678912345      D106
S107       Shivangi Kumari                                    25-SEP-06 Female     9789123456      D107
S108       Navin Kumar                                        10-DEC-04 Male       9891234567      D108
S109       Manisha Kumari                                     14-JUN-03 Female     9912345678      D109
S110       Sahil Choudhary                                    05-FEB-05 Male       9023456789      D110

10 rows selected.

SQL> SELECT * FROM Enrollment;

STUDENT_ID COURSE_ID    SEMESTER GRADE
---------- ---------- ---------- -----
S101       C101                4 A
S102       C102                5 A++
S103       C103                5 B+
S104       C104                3 B
S105       C105                4 C+
S106       C106                7 A
S107       C107                3 B
S108       C108                5 C
S109       C109                7 A+
S110       C110                2 D

10 rows selected.