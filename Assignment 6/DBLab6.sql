
SQL*Plus: Release 21.0.0.0.0 - Production on Wed Mar 25 07:17:02 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Tue Mar 24 2026 14:13:33 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> SELECT COUNT(*)
  2  AS Total_Students
  3  FROM Student;

TOTAL_STUDENTS
--------------
            10

SQL> SELECT COUNT(*)
  2  AS Total_Faculty
  3  FROM Faculty;

TOTAL_FACULTY
-------------
           10

SQL> SELECT COUNT(*)
  2  AS Total_Courses
  3  FROM Course;

TOTAL_COURSES
-------------
           10

SQL> SELECT MAX(CREDITS)
  2  AS Max_Credits
  3  FROM Course;

MAX_CREDITS
-----------
          5

SQL> SELECT MIN(CREDITS)
  2  AS Min_Credits
  3  FROM Course;

MIN_CREDITS
-----------
          3

SQL> SELECT DEPT_ID, COUNT(*)
  2  AS Total_Students
  3  FROM Student
  4  GROUP BY DEPT_ID;

DEPT_ID    TOTAL_STUDENTS
---------- --------------
D101                    1
D102                    1
D103                    1
D104                    1
D105                    1
D106                    1
D107                    1
D108                    1
D109                    1
D110                    1

10 rows selected.

SQL> SELECT DEPT_ID, COUNT(*)
  2  AS Total_Faculty
  3  FROM Faculty
  4  GROUP BY DEPT_ID;

DEPT_ID    TOTAL_FACULTY
---------- -------------
D101                   1
D102                   1
D103                   1
D104                   1
D105                   1
D106                   1
D107                   1
D108                   1
D109                   1
D110                   1

10 rows selected.

SQL> SELECT DEPT_ID, COUNT(*)
  2  AS Total_Courses
  3  FROM Course
  4  GROUP BY DEPT_ID;

DEPT_ID    TOTAL_COURSES
---------- -------------
D101                   1
D102                   1
D103                   1
D104                   1
D105                   1
D106                   1
D107                   1
D108                   1
D109                   1
D110                   1

10 rows selected.

SQL> SELECT SEMESTER, COUNT(*)
  2  AS Total_Enrollments
  3  FROM Enrollment
  4  GROUP BY SEMESTER;

  SEMESTER TOTAL_ENROLLMENTS
---------- -----------------
         4                 2
         5                 3
         3                 2
         7                 2
         2                 1

SQL> SELECT GRADE, COUNT(*)
  2  AS Total_Students
  3  FROM Enrollment
  4  GROUP BY GRADE;

GRADE TOTAL_STUDENTS
----- --------------
A                  2
A++                1
B+                 1
B                  2
C+                 1
C                  1
A+                 1
D                  1

8 rows selected.

SQL> SELECT DEPT_ID, COUNT(*)
  2  AS Total_Students
  3  FROM Student
  4  GROUP BY DEPT_ID
  5  HAVING COUNT(*) > 3;

no rows selected

SQL> SELECT SEMESTER, COUNT(*)
  2  AS Total_Enrollments
  3  FROM Enrollment
  4  GROUP BY SEMESTER
  5  HAVING COUNT(*) > 2;

  SEMESTER TOTAL_ENROLLMENTS
---------- -----------------
         5                 3

SQL> SELECT GRADE, COUNT(*)
  2  AS Total
  3  FROM Enrollment
  4  GROUP BY GRADE
  5  HAVING COUNT(*) > 1;

GRADE      TOTAL
----- ----------
A              2
B              2

SQL> SELECT DEPT_ID, COUNT(*)
  2  AS Total_Courses
  3  FROM Course
  4  GROUP BY DEPT_ID
  5  HAVING COUNT(*) > 1;

no rows selected

SQL> SELECT COURSE_ID, COUNT(STUDENT_ID)
  2  AS Total_Students
  3  FROM Enrollment
  4  GROUP BY COURSE_ID;

COURSE_ID  TOTAL_STUDENTS
---------- --------------
C101                    1
C102                    1
C103                    1
C104                    1
C105                    1
C106                    1
C107                    1
C108                    1
C109                    1
C110                    1

10 rows selected.

SQL> SELECT c.COURSE_NAME, COUNT(e.STUDENT_ID)
  2  AS Total_Students
  3  FROM Course c
  4  JOIN Enrollment e
  5  ON c.COURSE_ID = e.COURSE_ID
  6  GROUP BY c.COURSE_NAME;

COURSE_NAME                                        TOTAL_STUDENTS
-------------------------------------------------- --------------
Database Management System                                      1
Computer Network                                                1
Heat Transfer                                                   1
Transportation Engineering                                      1
Control Systems                                                 1
Machine Learning                                                1
3D Texturing                                                    1
Digital Electronics                                             1
Operating System                                                1
Artificial Intelligence                                         1

10 rows selected.

SQL> SELECT DEPT_ID, COUNT(*)
  2  AS Total_Students
  3  FROM Student
  4  GROUP BY DEPT_ID;

DEPT_ID    TOTAL_STUDENTS
---------- --------------
D101                    1
D102                    1
D103                    1
D104                    1
D105                    1
D106                    1
D107                    1
D108                    1
D109                    1
D110                    1

10 rows selected.

SQL> SELECT f.FACULTY_NAME, COUNT(c.COURSE_ID)
  2  AS Total_Courses
  3  FROM Faculty f
  4  JOIN Course c
  5  ON f.FACULTY_ID = c.FACULTY_ID
  6  GROUP BY f.FACULTY_NAME;

FACULTY_NAME                                       TOTAL_COURSES
-------------------------------------------------- -------------
Prof. Murlidhar Prasad Singh                                   1
Prof. Md. Ehtashamoul Haque(HoD)                               1
Prof. Arbind Kumar Amar                                        1
Prof. Kunal Kumar(HoD)                                         1
Prof. Hare Krishna Mishra                                      1
Prof. Akhilesh Kumar(HoD)                                      1
Prof. Murlidhar Prasad Singh(HoD)                              1
Prof. Md. Izhar                                                1
Prof. Manisha Kumari Singh                                     1
Prof. Sujeet Kumar                                             1

10 rows selected.

SQL> SELECT c.COURSE_NAME, MAX(e.GRADE)
  2  AS Max_Grade
  3  FROM Course c
  4  JOIN Enrollment e
  5  ON c.COURSE_ID = e.COURSE_ID
  6  GROUP BY c.COURSE_NAME;

COURSE_NAME                                        MAX_G
-------------------------------------------------- -----
Database Management System                         A
Computer Network                                   A++
Heat Transfer                                      B+
Transportation Engineering                         B
Control Systems                                    C+
Machine Learning                                   A
3D Texturing                                       B
Digital Electronics                                C
Operating System                                   A+
Artificial Intelligence                            D

10 rows selected.

SQL> SELECT DEPT_ID, COUNT(*)
  2  AS Total_Courses
  3  FROM Course
  4  GROUP BY DEPT_ID;

DEPT_ID    TOTAL_COURSES
---------- -------------
D101                   1
D102                   1
D103                   1
D104                   1
D105                   1
D106                   1
D107                   1
D108                   1
D109                   1
D110                   1

10 rows selected.

SQL> SELECT SEMESTER, COUNT(STUDENT_ID)
  2  AS Total_Students
  3  FROM Enrollment
  4  GROUP BY SEMESTER;

  SEMESTER TOTAL_STUDENTS
---------- --------------
         4              2
         5              3
         3              2
         7              2
         2              1

SQL> SELECT c.COURSE_NAME, COUNT(e.STUDENT_ID)
  2  AS Total_Students
  3  FROM Course c
  4  JOIN Enrollment e
  5  ON c.COURSE_ID = e.COURSE_ID
  6  GROUP BY c.COURSE_NAME
  7  HAVING COUNT(e.STUDENT_ID) > 2;

no rows selected
