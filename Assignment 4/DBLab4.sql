
SQL*Plus: Release 21.0.0.0.0 - Production on Sat Feb 28 07:04:33 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Sat Feb 28 2026 06:45:32 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL> COLUMN column_name FORMAT A30
SQL> SELECT
  2       STUDENT_ID AS Student_ID,
  3       STUDENT_NAME AS Student_Name,
  4       DATE_OF_BIRTH AS DOB,
  5       GENDER AS Gender,
  6       CONTACT_NUMBER AS Contact_No,
  7       DEPT_ID AS Dept_ID
  8  FROM Student;

STUDENT_ID STUDENT_NAME                                       DOB       GENDER     CONTACT_NO      DEPT_ID
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

SQL> SELECT
  2       STUDENT_ID AS Roll_No,
  3       STUDENT_NAME AS Student_Name,
  4       DEPT_ID AS Dept_ID
  5  FROM Student;

ROLL_NO    STUDENT_NAME                                       DEPT_ID
---------- -------------------------------------------------- ----------
S101       Asha Kumari                                        D101
S102       Arman Shandilya                                    D102
S103       Vijay Kumar                                        D103
S104       Ritika Raj                                         D104
S105       Piyush Kumar                                       D105
S106       Kunal Kumar                                        D106
S107       Shivangi Kumari                                    D107
S108       Navin Kumar                                        D108
S109       Manisha Kumari                                     D109
S110       Sahil Choudhary                                    D110

10 rows selected.

SQL> SELECT
  2       FACULTY_ID AS Faculty_ID,
  3       FACULTY_NAME AS Name,
  4       DESIGNATION AS Designation,
  5       EMAIL AS Email_Address
  6  FROM Faculty;

FACULTY_ID NAME                                               DESIGNATION                                        EMAIL_ADDRESS
---------- -------------------------------------------------- -------------------------------------------------- ----------------------------------------
F101       Prof. Murlidhar Prasad Singh                       Assistant Professor                                singhmurlidhar@gmail.com
F102       Prof. Md. Ehtashamoul Haque(HoD)                   Assistant Professor                                ehtasham47@gmail.com
F103       Prof. Arbind Kumar Amar                            Associate Professor,Principal-in-charge            ak_amar73@yahoo.com
F104       Prof. Kunal Kumar(HoD)                             Assistant Professor                                kunal1989kumar@gmail.com
F105       Prof. Hare Krishna Mishra                          Assistant Professor                                hare.dbit@gmail.com
F106       Prof. Akhilesh Kumar(HoD)                          Assistant Professor                                akhileshkumar3804@gmail.com
F107       Prof. Murlidhar Prasad Singh(HoD)                  Assistant Professor                                singhmurlidhar@gmail.com
F108       Prof. Md. Izhar                                    Assistant Professor                                mdizhar1996@gmail.com
F109       Prof. Manisha Kumari Singh                         Assistant Professor                                manisha.ks241@gmail.com
F110       Prof. Sujeet Kumar                                 Assistant Professor                                ksujeet.cs@gmail.com

10 rows selected.

SQL> SELECT
  2       COURSE_ID AS Course_ID,
  3       COURSE_NAME AS Subject_Name,
  4       CREDITS AS Course_Credit,
  5       DEPT_ID AS Dept_ID,
  6       FACULTY_ID AS Faculty_ID
  7  FROM Course;

COURSE_ID  SUBJECT_NAME                                       COURSE_CREDIT DEPT_ID    FACULTY_ID
---------- -------------------------------------------------- ------------- ---------- ----------
C101       Database Management System                                     5 D101       F101
C102       Computer Network                                               4 D102       F102
C103       Heat Transfer                                                  4 D103       F103
C104       Transportation Engineering                                     3 D104       F104
C105       Control Systems                                                5 D105       F105
C106       Machine Learning                                               4 D106       F106
C107       3D Texturing                                                   4 D107       F107
C108       Digital Electronics                                            3 D108       F108
C109       Operating System                                               4 D109       F109
C110       Artificial Intelligence                                        3 D110       F110

10 rows selected.

SQL> SELECT
  2       STUDENT_ID AS Student_ID,
  3       COURSE_ID AS Course_ID,
  4       SEMESTER AS Semester_No,
  5       GRADE AS Final_Grade
  6  FROM Enrollment;

STUDENT_ID COURSE_ID  SEMESTER_NO FINAL
---------- ---------- ----------- -----
S101       C101                 4 A
S102       C102                 5 A++
S103       C103                 5 B+
S104       C104                 3 B
S105       C105                 4 C+
S106       C106                 7 A
S107       C107                 3 B
S108       C108                 5 C
S109       C109                 7 A+
S110       C110                 2 D

10 rows selected.

SQL> SELECT *
  2  FROM Student
  3  WHERE DEPT_ID = 'D101';

STUDENT_ID STUDENT_NAME                                       DATE_OF_B GENDER     CONTACT_NUMBER  DEPT_ID
---------- -------------------------------------------------- --------- ---------- --------------- ----------
S101       Asha Kumari                                        12-MAY-04 Female     9123456780      D101

SQL> SELECT *
  2  FROM Student
  3  WHERE GENDER = 'Female';

STUDENT_ID STUDENT_NAME                                       DATE_OF_B GENDER     CONTACT_NUMBER  DEPT_ID
---------- -------------------------------------------------- --------- ---------- --------------- ----------
S101       Asha Kumari                                        12-MAY-04 Female     9123456780      D101
S104       Ritika Raj                                         30-NOV-04 Female     9456789123      D104
S107       Shivangi Kumari                                    25-SEP-06 Female     9789123456      D107
S109       Manisha Kumari                                     14-JUN-03 Female     9912345678      D109

SQL> SELECT *
  2  FROM Faculty
  3  WHERE DESIGNATION = 'Assistant Professor';

FACULTY_ID FACULTY_NAME                                       DESIGNATION                                        EMAIL                                    DEPT_ID
---------- -------------------------------------------------- -------------------------------------------------- ---------------------------------------- ----------
F101       Prof. Murlidhar Prasad Singh                       Assistant Professor                                singhmurlidhar@gmail.com                 D101
F102       Prof. Md. Ehtashamoul Haque(HoD)                   Assistant Professor                                ehtasham47@gmail.com                     D102
F104       Prof. Kunal Kumar(HoD)                             Assistant Professor                                kunal1989kumar@gmail.com                 D104
F105       Prof. Hare Krishna Mishra                          Assistant Professor                                hare.dbit@gmail.com                      D105
F106       Prof. Akhilesh Kumar(HoD)                          Assistant Professor                                akhileshkumar3804@gmail.com              D106
F107       Prof. Murlidhar Prasad Singh(HoD)                  Assistant Professor                                singhmurlidhar@gmail.com                 D107
F108       Prof. Md. Izhar                                    Assistant Professor                                mdizhar1996@gmail.com                    D108
F109       Prof. Manisha Kumari Singh                         Assistant Professor                                manisha.ks241@gmail.com                  D109
F110       Prof. Sujeet Kumar                                 Assistant Professor                                ksujeet.cs@gmail.com                     D110

9 rows selected.

SQL> SELECT *
  2  FROM Faculty
  3  WHERE DEPT_ID = 'D102';

FACULTY_ID FACULTY_NAME                                       DESIGNATION                                        EMAIL                                    DEPT_ID
---------- -------------------------------------------------- -------------------------------------------------- ---------------------------------------- ----------
F102       Prof. Md. Ehtashamoul Haque(HoD)                   Assistant Professor                                ehtasham47@gmail.com                     D102

SQL> SELECT *
  2  FROM Course
  3  WHERE CREDITS >=4;

COURSE_ID  COURSE_NAME                                           CREDITS DEPT_ID    FACULTY_ID
---------- -------------------------------------------------- ---------- ---------- ----------
C101       Database Management System                                  5 D101       F101
C102       Computer Network                                            4 D102       F102
C103       Heat Transfer                                               4 D103       F103
C105       Control Systems                                             5 D105       F105
C106       Machine Learning                                            4 D106       F106
C107       3D Texturing                                                4 D107       F107
C109       Operating System                                            4 D109       F109

7 rows selected.

SQL> SELECT *
  2  FROM Student
  3  WHERE DATE_OF_BIRTH > TO_DATE('2003-01-01','YYYY-MM-DD');

STUDENT_ID STUDENT_NAME                                       DATE_OF_B GENDER     CONTACT_NUMBER  DEPT_ID
---------- -------------------------------------------------- --------- ---------- --------------- ----------
S101       Asha Kumari                                        12-MAY-04 Female     9123456780      D101
S102       Arman Shandilya                                    24-AUG-05 Male       9234567891      D102
S103       Vijay Kumar                                        15-JAN-03 Male       9345678912      D103
S104       Ritika Raj                                         30-NOV-04 Female     9456789123      D104
S105       Piyush Kumar                                       09-JUL-05 Male       9567891234      D105
S107       Shivangi Kumari                                    25-SEP-06 Female     9789123456      D107
S108       Navin Kumar                                        10-DEC-04 Male       9891234567      D108
S109       Manisha Kumari                                     14-JUN-03 Female     9912345678      D109
S110       Sahil Choudhary                                    05-FEB-05 Male       9023456789      D110

9 rows selected.

SQL> SELECT *
  2  FROM Enrollment
  3  WHERE SEMESTER = 4;

STUDENT_ID COURSE_ID    SEMESTER GRADE
---------- ---------- ---------- -----
S101       C101                4 A
S105       C105                4 C+

SQL> SELECT *
  2  FROM Student
  3  ORDER BY STUDENT_NAME ASC;

STUDENT_ID STUDENT_NAME                                       DATE_OF_B GENDER     CONTACT_NUMBER  DEPT_ID
---------- -------------------------------------------------- --------- ---------- --------------- ----------
S102       Arman Shandilya                                    24-AUG-05 Male       9234567891      D102
S101       Asha Kumari                                        12-MAY-04 Female     9123456780      D101
S106       Kunal Kumar                                        18-MAR-02 Male       9678912345      D106
S109       Manisha Kumari                                     14-JUN-03 Female     9912345678      D109
S108       Navin Kumar                                        10-DEC-04 Male       9891234567      D108
S105       Piyush Kumar                                       09-JUL-05 Male       9567891234      D105
S104       Ritika Raj                                         30-NOV-04 Female     9456789123      D104
S110       Sahil Choudhary                                    05-FEB-05 Male       9023456789      D110
S107       Shivangi Kumari                                    25-SEP-06 Female     9789123456      D107
S103       Vijay Kumar                                        15-JAN-03 Male       9345678912      D103

10 rows selected.

SQL> SELECT *
  2  FROM Student
  3  ORDER BY DATE_OF_BIRTH DESC;

STUDENT_ID STUDENT_NAME                                       DATE_OF_B GENDER     CONTACT_NUMBER  DEPT_ID
---------- -------------------------------------------------- --------- ---------- --------------- ----------
S107       Shivangi Kumari                                    25-SEP-06 Female     9789123456      D107
S102       Arman Shandilya                                    24-AUG-05 Male       9234567891      D102
S105       Piyush Kumar                                       09-JUL-05 Male       9567891234      D105
S110       Sahil Choudhary                                    05-FEB-05 Male       9023456789      D110
S108       Navin Kumar                                        10-DEC-04 Male       9891234567      D108
S104       Ritika Raj                                         30-NOV-04 Female     9456789123      D104
S101       Asha Kumari                                        12-MAY-04 Female     9123456780      D101
S109       Manisha Kumari                                     14-JUN-03 Female     9912345678      D109
S103       Vijay Kumar                                        15-JAN-03 Male       9345678912      D103
S106       Kunal Kumar                                        18-MAR-02 Male       9678912345      D106

10 rows selected.

SQL> SELECT *
  2  FROM Faculty
  3  ORDER BY DESIGNATION ASC;

FACULTY_ID FACULTY_NAME                                       DESIGNATION                                        EMAIL                                    DEPT_ID
---------- -------------------------------------------------- -------------------------------------------------- ---------------------------------------- ----------
F101       Prof. Murlidhar Prasad Singh                       Assistant Professor                                singhmurlidhar@gmail.com                 D101
F102       Prof. Md. Ehtashamoul Haque(HoD)                   Assistant Professor                                ehtasham47@gmail.com                     D102
F105       Prof. Hare Krishna Mishra                          Assistant Professor                                hare.dbit@gmail.com                      D105
F104       Prof. Kunal Kumar(HoD)                             Assistant Professor                                kunal1989kumar@gmail.com                 D104
F110       Prof. Sujeet Kumar                                 Assistant Professor                                ksujeet.cs@gmail.com                     D110
F106       Prof. Akhilesh Kumar(HoD)                          Assistant Professor                                akhileshkumar3804@gmail.com              D106
F107       Prof. Murlidhar Prasad Singh(HoD)                  Assistant Professor                                singhmurlidhar@gmail.com                 D107
F108       Prof. Md. Izhar                                    Assistant Professor                                mdizhar1996@gmail.com                    D108
F109       Prof. Manisha Kumari Singh                         Assistant Professor                                manisha.ks241@gmail.com                  D109
F103       Prof. Arbind Kumar Amar                            Associate Professor,Principal-in-charge            ak_amar73@yahoo.com                      D103

10 rows selected.

SQL> SELECT *
  2  FROM Course
  3  ORDER BY CREDITS DESC;

COURSE_ID  COURSE_NAME                                           CREDITS DEPT_ID    FACULTY_ID
---------- -------------------------------------------------- ---------- ---------- ----------
C101       Database Management System                                  5 D101       F101
C105       Control Systems                                             5 D105       F105
C103       Heat Transfer                                               4 D103       F103
C106       Machine Learning                                            4 D106       F106
C107       3D Texturing                                                4 D107       F107
C109       Operating System                                            4 D109       F109
C102       Computer Network                                            4 D102       F102
C104       Transportation Engineering                                  3 D104       F104
C110       Artificial Intelligence                                     3 D110       F110
C108       Digital Electronics                                         3 D108       F108

10 rows selected.

SQL> SELECT *
  2  FROM Student
  3  FETCH FIRST 3 ROWS ONLY;

STUDENT_ID STUDENT_NAME                                       DATE_OF_B GENDER     CONTACT_NUMBER  DEPT_ID
---------- -------------------------------------------------- --------- ---------- --------------- ----------
S101       Asha Kumari                                        12-MAY-04 Female     9123456780      D101
S102       Arman Shandilya                                    24-AUG-05 Male       9234567891      D102
S103       Vijay Kumar                                        15-JAN-03 Male       9345678912      D103

SQL> SELECT *
  2  FROM Course
  3  FETCH FIRST 5 ROWS ONLY;

COURSE_ID  COURSE_NAME                                           CREDITS DEPT_ID    FACULTY_ID
---------- -------------------------------------------------- ---------- ---------- ----------
C101       Database Management System                                  5 D101       F101
C102       Computer Network                                            4 D102       F102
C103       Heat Transfer                                               4 D103       F103
C104       Transportation Engineering                                  3 D104       F104
C105       Control Systems                                             5 D105       F105

SQL> SELECT
  2      STUDENT_NAME,
  3      FLOOR(MONTHS_BETWEEN(SYSDATE,DATE_OF_BIRTH)/12) AS Age
  4  FROM Student;

STUDENT_NAME                                              AGE
-------------------------------------------------- ----------
Asha Kumari                                                21
Arman Shandilya                                            20
Vijay Kumar                                                23
Ritika Raj                                                 21
Piyush Kumar                                               20
Kunal Kumar                                                23
Shivangi Kumari                                            19
Navin Kumar                                                21
Manisha Kumari                                             22
Sahil Choudhary                                            21

10 rows selected.

SQL> SELECT
  2       COURSE_NAME,
  3       CREDITS + 1 AS Updated_Credits
  4  FROM Course;

COURSE_NAME                                        UPDATED_CREDITS
-------------------------------------------------- ---------------
Database Management System                                       6
Computer Network                                                 5
Heat Transfer                                                    5
Transportation Engineering                                       4
Control Systems                                                  6
Machine Learning                                                 5
3D Texturing                                                     5
Digital Electronics                                              4
Operating System                                                 5
Artificial Intelligence                                          4

10 rows selected.

SQL> SELECT
  2       STUDENT_ID,
  3       COURSE_ID,
  4       SEMESTER,
  5       GRADE AS Final_Grade
  6  FROM Enrollment;

STUDENT_ID COURSE_ID    SEMESTER FINAL
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

SQL> SELECT
  2       STUDENT_NAME,
  3       EXTRACT(YEAR FROM DATE_OF_BIRTH) AS Birth_Year
  4  FROM Student;

STUDENT_NAME                                       BIRTH_YEAR
-------------------------------------------------- ----------
Asha Kumari                                              2004
Arman Shandilya                                          2005
Vijay Kumar                                              2003
Ritika Raj                                               2004
Piyush Kumar                                             2005
Kunal Kumar                                              2002
Shivangi Kumari                                          2006
Navin Kumar                                              2004
Manisha Kumari                                           2003
Sahil Choudhary                                          2005

10 rows selected.

SQL> SELECT
  2       FACULTY_NAME,
  3       SUBSTR(EMAIL, INSTR(EMAIL, '@' ) + 1) AS Email_Domain
  4  FROM Faculty;

FACULTY_NAME                                       EMAIL_DOMAIN
-------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------
Prof. Murlidhar Prasad Singh                       gmail.com
Prof. Md. Ehtashamoul Haque(HoD)                   gmail.com
Prof. Arbind Kumar Amar                            yahoo.com
Prof. Kunal Kumar(HoD)                             gmail.com
Prof. Hare Krishna Mishra                          gmail.com
Prof. Akhilesh Kumar(HoD)                          gmail.com
Prof. Murlidhar Prasad Singh(HoD)                  gmail.com
Prof. Md. Izhar                                    gmail.com
Prof. Manisha Kumari Singh                         gmail.com
Prof. Sujeet Kumar                                 gmail.com

10 rows selected.