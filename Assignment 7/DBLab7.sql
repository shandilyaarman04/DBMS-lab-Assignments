
SQL*Plus: Release 21.0.0.0.0 - Production on Mon Apr 6 15:13:42 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Mon Apr 06 2026 15:12:25 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE DEPT_ID = (
  4        SELECT DEPT_ID
  5        FROM Student
  6        WHERE STUDENT_ID = 'S401'
  7  );

no rows selected

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE GENDER = (
  4        SELECT GENDER
  5        FROM Student
  6        WHERE STUDENT_ID = 'S402'
  7  );

no rows selected

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE DEPT_ID = (
  4        SELECT DEPT_ID
  5        FROM Student
  6        WHERE STUDENT_ID = 'S403'
  7  );

no rows selected

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE DEPT_ID IN (
  4        SELECT DEPT_ID
  5        FROM Student
  6        WHERE GENDER = 'Female'
  7  );

STUDENT_NAME
--------------------------------------------------
Asha Kumari
Ritika Raj
Shivangi Kumari
Manisha Kumari

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE STUDENT_ID IN (
  4        SELECT STUDENT_ID
  5        FROM Enrollment
  6  );

STUDENT_NAME
--------------------------------------------------
Asha Kumari
Arman Shandilya
Vijay Kumar
Ritika Raj
Piyush Kumar
Kunal Kumar
Shivangi Kumari
Navin Kumar
Manisha Kumari
Sahil Choudhary

10 rows selected.

SQL> SELECT STUDENT_NAME
  2  FROM Student S
  3  WHERE EXISTS (
  4        SELECT 1
  5        FROM Enrollment E
  6        WHERE S.STUDENT_ID = E.STUDENT_ID
  7  );

STUDENT_NAME
--------------------------------------------------
Asha Kumari
Arman Shandilya
Vijay Kumar
Ritika Raj
Piyush Kumar
Kunal Kumar
Shivangi Kumari
Navin Kumar
Manisha Kumari
Sahil Choudhary

10 rows selected.

SQL> SELECT COURSE_NAME
  2  FROM Course
  3  WHERE CREDITS > (
  4        SELECT AVG(CREDITS)
  5        FROM Course
  6  );

COURSE_NAME
--------------------------------------------------
Database Management System
Computer Network
Heat Transfer
Control Systems
Machine Learning
3D Texturing
Operating System

7 rows selected.

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE TO_NUMBER(SUBSTR(STUDENT_ID,2)) > (
  4        SELECT
  5  AVG(TO_NUMBER(SUBSTR(STUDENT_ID,2)))
  6        FROM Student
  7  );

STUDENT_NAME
--------------------------------------------------
Kunal Kumar
Shivangi Kumari
Navin Kumar
Manisha Kumari
Sahil Choudhary

SQL> SELECT DEPT_ID
  2  FROM Student
  3  GROUP BY DEPT_ID
  4  HAVING COUNT(*) > (
  5         SELECT AVG(cnt)
  6         FROM (
  7              SELECT COUNT(*) cnt
  8              FROM Student
  9              GROUP BY DEPT_ID
 10         )
 11  );

no rows selected

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE STUDENT_ID IN (
  4      SELECT STUDENT_ID
  5      FROM Enrollment
  6  );

STUDENT_NAME
--------------------------------------------------
Asha Kumari
Arman Shandilya
Vijay Kumar
Ritika Raj
Piyush Kumar
Kunal Kumar
Shivangi Kumari
Navin Kumar
Manisha Kumari
Sahil Choudhary

10 rows selected.

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE DEPT_ID IS NOT NULL;

STUDENT_NAME
--------------------------------------------------
Asha Kumari
Arman Shandilya
Vijay Kumar
Ritika Raj
Piyush Kumar
Kunal Kumar
Shivangi Kumari
Navin Kumar
Manisha Kumari
Sahil Choudhary

10 rows selected.

SQL> SELECT COURSE_NAME
  2  FROM Course
  3  WHERE COURSE_ID IN (
  4      SELECT COURSE_ID
  5      FROM Enrollment
  6  );

COURSE_NAME
--------------------------------------------------
Database Management System
Computer Network
Heat Transfer
Transportation Engineering
Control Systems
Machine Learning
3D Texturing
Digital Electronics
Operating System
Artificial Intelligence

10 rows selected.

SQL> SELECT COURSE_NAME
  2  FROM Course
  3  WHERE CREDITS = (
  4     SELECT MAX(CREDITS)
  5     FROM Course
  6  );

COURSE_NAME
--------------------------------------------------
Database Management System
Control Systems

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE STUDENT_ID IN (
  4      SELECT STUDENT_ID
  5      FROM Enrollment
  6      GROUP BY STUDENT_ID
  7      HAVING COUNT(*) > 1
  8  );

no rows selected

SQL> SELECT DEPT_ID
  2  FROM Student
  3  GROUP BY DEPT_ID
  4  HAVING COUNT(*) = (
  5      SELECT MAX(cnt)
  6      FROM Student
  7      GROUP BY DEPT_ID
  8
SQL> SELECT DEPT_ID
  2  FROM Student
  3  GROUP BY DEPT_ID
  4  HAVING COUNT(*) = (
  5      SELECT MAX(cnt)
  6      FROM (
  7          SELECT COUNT(*) cnt
  8          FROM Student
  9          GROUP BY DEPT_ID
 10      )
 11  );

DEPT_ID
----------
D101
D102
D103
D104
D105
D106
D107
D108
D109
D110

10 rows selected.

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE STUDENT_ID IN (
  4      SELECT STUDENT_ID
  5      FROM Enrollment
  6      WHERE COURSE_ID IN (
  7          SELECT COURSE_ID
  8          FROM Enrollment
  9          WHERE STUDENT_ID = 'S401'
 10      )
 11  )
 12  AND STUDENT_ID <> 'S401';

no rows selected

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE STUDENT_ID NOT IN (
  4     SELECT STUDENT_ID
  5     FROM Enrollment
  6  );

no rows selected

SQL> SELECT COURSE_NAME
  2  FROM Course
  3  WHERE COURSE_ID NOT IN (
  4     SELECT COURSE_ID
  5     FROM Enrollment
  6  );

no rows selected
