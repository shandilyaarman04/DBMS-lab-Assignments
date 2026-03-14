
SQL*Plus: Release 21.0.0.0.0 - Production on Sat Mar 14 03:44:50 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Wed Mar 11 2026 14:40:56 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> SELECT S.STUDENT_ID, S.STUDENT_NAME, E.COURSE_ID
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

STUDENT_ID STUDENT_NAME                                       COURSE_ID
---------- -------------------------------------------------- ----------
S101       Asha Kumari                                        C101
S102       Arman Shandilya                                    C102
S103       Vijay Kumar                                        C103
S104       Ritika Raj                                         C104
S105       Piyush Kumar                                       C105
S106       Kunal Kumar                                        C106
S107       Shivangi Kumari                                    C107
S108       Navin Kumar                                        C108
S109       Manisha Kumari                                     C109
S110       Sahil Choudhary                                    C110

10 rows selected.

SQL> SELECT S.STUDENT_NAME, E.SEMESTER
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

STUDENT_NAME                                         SEMESTER
-------------------------------------------------- ----------
Asha Kumari                                                 4
Arman Shandilya                                             5
Vijay Kumar                                                 5
Ritika Raj                                                  3
Piyush Kumar                                                4
Kunal Kumar                                                 7
Shivangi Kumari                                             3
Navin Kumar                                                 5
Manisha Kumari                                              7
Sahil Choudhary                                             2

10 rows selected.

SQL> SELECT S.STUDENT_NAME, E.GRADE
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

STUDENT_NAME                                       GRADE
-------------------------------------------------- -----
Asha Kumari                                        A
Arman Shandilya                                    A++
Vijay Kumar                                        B+
Ritika Raj                                         B
Piyush Kumar                                       C+
Kunal Kumar                                        A
Shivangi Kumari                                    B
Navin Kumar                                        C
Manisha Kumari                                     A+
Sahil Choudhary                                    D

10 rows selected.

SQL> COLUMN COURSE_NAME FORMAT A30
SQL> COLUMN FACULTY_NAME FORMAT A35
SQL> SELECT C.COURSE_NAME, C.CREDITS, F.FACULTY_NAME
  2  FROM COURSE C
  3  INNER JOIN FACULTY F
  4  ON C.FACULTY_ID = F.FACULTY_ID;

COURSE_NAME                       CREDITS FACULTY_NAME
------------------------------ ---------- -----------------------------------
Database Management System              5 Prof. Murlidhar Prasad Singh
Computer Network                        4 Prof. Md. Ehtashamoul Haque(HoD)
Heat Transfer                           4 Prof. Arbind Kumar Amar
Transportation Engineering              3 Prof. Kunal Kumar(HoD)
Control Systems                         5 Prof. Hare Krishna Mishra
Machine Learning                        4 Prof. Akhilesh Kumar(HoD)
3D Texturing                            4 Prof. Murlidhar Prasad Singh(HoD)
Digital Electronics                     3 Prof. Md. Izhar
Operating System                        4 Prof. Manisha Kumari Singh
Artificial Intelligence                 3 Prof. Sujeet Kumar

10 rows selected.

SQL> SELECT C.COURSE_NAME
  2  FROM COURSE C
  3  INNER JOIN FACULTY F
  4  ON C.FACULTY_ID = F.FACULTY_ID
  5  WHERE F.FACULTY_ID = 'F109';

COURSE_NAME
------------------------------
Operating System

SQL> COLUMN DESIGNATION FORMAT A20
SQL> SELECT F.FACULTY_NAME, F.DESIGNATION, C.COURSE_NAME
  2  FROM FACULTY F
  3  INNER JOIN COURSE C
  4  ON F.FACULTY_ID = C.FACULTY_ID;

FACULTY_NAME                        DESIGNATION
----------------------------------- --------------------
COURSE_NAME
------------------------------
Prof. Murlidhar Prasad Singh        Assistant Professor
Database Management System

Prof. Md. Ehtashamoul Haque(HoD)    Assistant Professor
Computer Network

Prof. Arbind Kumar Amar             Associate Professor,
                                    Principal-in-charge
Heat Transfer

FACULTY_NAME                        DESIGNATION
----------------------------------- --------------------
COURSE_NAME
------------------------------

Prof. Kunal Kumar(HoD)              Assistant Professor
Transportation Engineering

Prof. Hare Krishna Mishra           Assistant Professor
Control Systems

Prof. Akhilesh Kumar(HoD)           Assistant Professor
Machine Learning

FACULTY_NAME                        DESIGNATION
----------------------------------- --------------------
COURSE_NAME
------------------------------

Prof. Murlidhar Prasad Singh(HoD)   Assistant Professor
3D Texturing

Prof. Md. Izhar                     Assistant Professor
Digital Electronics

Prof. Manisha Kumari Singh          Assistant Professor
Operating System

FACULTY_NAME                        DESIGNATION
----------------------------------- --------------------
COURSE_NAME
------------------------------

Prof. Sujeet Kumar                  Assistant Professor
Artificial Intelligence


10 rows selected.

SQL> COLUMN STUDENT_NAME FORMAT A20
SQL> SELECT S.STUDENT_NAME, C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID;

STUDENT_NAME         COURSE_NAME
-------------------- ------------------------------
Asha Kumari          Database Management System
Arman Shandilya      Computer Network
Vijay Kumar          Heat Transfer
Ritika Raj           Transportation Engineering
Piyush Kumar         Control Systems
Kunal Kumar          Machine Learning
Shivangi Kumari      3D Texturing
Navin Kumar          Digital Electronics
Manisha Kumari       Operating System
Sahil Choudhary      Artificial Intelligence

10 rows selected.

SQL> COLUMN SEMESTER FORMAT 999
SQL> SELECT S.STUDENT_NAME, C.COURSE_NAME, E.SEMESTER
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID;

STUDENT_NAME         COURSE_NAME                    SEMESTER
-------------------- ------------------------------ --------
Asha Kumari          Database Management System            4
Arman Shandilya      Computer Network                      5
Vijay Kumar          Heat Transfer                         5
Ritika Raj           Transportation Engineering            3
Piyush Kumar         Control Systems                       4
Kunal Kumar          Machine Learning                      7
Shivangi Kumari      3D Texturing                          3
Navin Kumar          Digital Electronics                   5
Manisha Kumari       Operating System                      7
Sahil Choudhary      Artificial Intelligence               2

10 rows selected.

SQL> SELECT S.STUDENT_NAME, C.COURSE_NAME, E.GRADE
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID
  7  WHERE E.SEMESTER = 4;

STUDENT_NAME         COURSE_NAME                    GRADE
-------------------- ------------------------------ -----
Asha Kumari          Database Management System     A
Piyush Kumar         Control Systems                C+

SQL> SELECT C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID
  7  WHERE S.STUDENT_ID = 'S104';

COURSE_NAME
------------------------------
Transportation Engineering

SQL> SELECT S.STUDENT_NAME, S.DEPT_ID, C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID;

STUDENT_NAME         DEPT_ID    COURSE_NAME
-------------------- ---------- ------------------------------
Asha Kumari          D101       Database Management System
Arman Shandilya      D102       Computer Network
Vijay Kumar          D103       Heat Transfer
Ritika Raj           D104       Transportation Engineering
Piyush Kumar         D105       Control Systems
Kunal Kumar          D106       Machine Learning
Shivangi Kumari      D107       3D Texturing
Navin Kumar          D108       Digital Electronics
Manisha Kumari       D109       Operating System
Sahil Choudhary      D110       Artificial Intelligence

10 rows selected.

SQL> SELECT D.DEPT_ID, C.COURSE_NAME
  2  FROM DEPARTMENT D
  3  INNER JOIN COURSE C
  4  ON D.DEPT_ID = C.DEPT_ID;

DEPT_ID    COURSE_NAME
---------- ------------------------------
D101       Database Management System
D102       Computer Network
D103       Heat Transfer
D104       Transportation Engineering
D105       Control Systems
D106       Machine Learning
D107       3D Texturing
D108       Digital Electronics
D109       Operating System
D110       Artificial Intelligence

10 rows selected.

SQL> SELECT F.FACULTY_NAME, D.DEPARTMENT_NAME
  2  FROM FACULTY F
  3  INNER JOIN DEPARTMENT D
  4  ON F.DEPT_ID = D.DEPT_ID;

FACULTY_NAME                        DEPARTMENT_NAME
----------------------------------- --------------------
Prof. Murlidhar Prasad Singh        CSE
Prof. Md. Ehtashamoul Haque(HoD)    CSE(AI and ML)
Prof. Arbind Kumar Amar             ME
Prof. Kunal Kumar(HoD)              CE
Prof. Hare Krishna Mishra           EEE
Prof. Akhilesh Kumar(HoD)           CE with CA
Prof. Murlidhar Prasad Singh(HoD)   3DAG
Prof. Md. Izhar                     ECE
Prof. Manisha Kumari Singh          IT
Prof. Sujeet Kumar                  ROBOTICS

10 rows selected.

SQL> SELECT S.STUDENT_NAME, C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID
  7  WHERE S.DEPT_ID = 'D101';

STUDENT_NAME         COURSE_NAME
-------------------- ------------------------------
Asha Kumari          Database Management System

SQL> SELECT S.STUDENT_NAME, C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID
  7  ORDER BY S.STUDENT_NAME ASC;

STUDENT_NAME         COURSE_NAME
-------------------- ------------------------------
Arman Shandilya      Computer Network
Asha Kumari          Database Management System
Kunal Kumar          Machine Learning
Manisha Kumari       Operating System
Navin Kumar          Digital Electronics
Piyush Kumar         Control Systems
Ritika Raj           Transportation Engineering
Sahil Choudhary      Artificial Intelligence
Shivangi Kumari      3D Texturing
Vijay Kumar          Heat Transfer

10 rows selected.

SQL> SELECT F.FACULTY_NAME, C.COURSE_NAME
  2  FROM FACULTY F
  3  INNER JOIN COURSE C
  4  ON F.FACULTY_ID = C.FACULTY_ID
  5  ORDER BY C.CREDITS DESC;

FACULTY_NAME                        COURSE_NAME
----------------------------------- ------------------------------
Prof. Murlidhar Prasad Singh        Database Management System
Prof. Hare Krishna Mishra           Control Systems
Prof. Arbind Kumar Amar             Heat Transfer
Prof. Akhilesh Kumar(HoD)           Machine Learning
Prof. Murlidhar Prasad Singh(HoD)   3D Texturing
Prof. Manisha Kumari Singh          Operating System
Prof. Md. Ehtashamoul Haque(HoD)    Computer Network
Prof. Kunal Kumar(HoD)              Transportation Engineering
Prof. Sujeet Kumar                  Artificial Intelligence
Prof. Md. Izhar                     Digital Electronics

10 rows selected.

SQL> SELECT C.COURSE_NAME, COUNT(E.STUDENT_ID)
  2  AS TOTAL_STUDENTS
  3  FROM COURSE C
  4  INNER JOIN ENROLLMENT E
  5  ON C.COURSE_ID = E.COURSE_ID
  6  GROUP BY C.COURSE_NAME;

COURSE_NAME                    TOTAL_STUDENTS
------------------------------ --------------
Database Management System                  1
Computer Network                            1
Heat Transfer                               1
Transportation Engineering                  1
Control Systems                             1
Machine Learning                            1
3D Texturing                                1
Digital Electronics                         1
Operating System                            1
Artificial Intelligence                     1

10 rows selected.

SQL> SELECT F.FACULTY_NAME, COUNT(C.COURSE_ID)
  2  AS TOTAL_COURSES
  3  FROM FACULTY F
  4  INNER JOIN COURSE C
  5  ON F.FACULTY_ID = C.FACULTY_ID
  6  GROUP BY F.FACULTY_NAME;

FACULTY_NAME                        TOTAL_COURSES
----------------------------------- -------------
Prof. Murlidhar Prasad Singh                    1
Prof. Md. Ehtashamoul Haque(HoD)                1
Prof. Arbind Kumar Amar                         1
Prof. Kunal Kumar(HoD)                          1
Prof. Hare Krishna Mishra                       1
Prof. Akhilesh Kumar(HoD)                       1
Prof. Murlidhar Prasad Singh(HoD)               1
Prof. Md. Izhar                                 1
Prof. Manisha Kumari Singh                      1
Prof. Sujeet Kumar                              1

10 rows selected.

SQL> SELECT D.DEPARTMENT_NAME, COUNT(S.STUDENT_ID)
  2  AS TOTAL_STUDENTS
  3  FROM DEPARTMENT D
  4  INNER JOIN STUDENT S
  5  ON D.DEPT_ID = S.DEPT_ID
  6  GROUP BY D.DEPARTMENT_NAME;

DEPARTMENT_NAME      TOTAL_STUDENTS
-------------------- --------------
CSE                               1
CSE(AI and ML)                    1
ME                                1
CE                                1
EEE                               1
CE with CA                        1
3DAG                              1
ECE                               1
IT                                1
ROBOTICS                          1

10 rows selected.

SQL> SELECT C.COURSE_NAME, MAX(E.GRADE)
  2  AS MAX_GRADE
  3  FROM COURSE C
  4  INNER JOIN ENROLLMENT E
  5  ON C.COURSE_ID = E.COURSE_ID
  6  GROUP BY C.COURSE_NAME;

COURSE_NAME                    MAX_G
------------------------------ -----
Database Management System     A
Computer Network               A++
Heat Transfer                  B+
Transportation Engineering     B
Control Systems                C+
Machine Learning               A
3D Texturing                   B
Digital Electronics            C
Operating System               A+
Artificial Intelligence        D

10 rows selected.