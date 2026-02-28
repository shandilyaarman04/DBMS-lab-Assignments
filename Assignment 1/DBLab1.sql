
SQL*Plus: Release 21.0.0.0.0 - Production on Sun Feb 22 10:46:36 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Sun Feb 22 2026 09:55:36 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Student (
  2  RollNo INT,
  3  Name VARCHAR(30),
  4  Dept VARCHAR(20),
  5  Age INT,
  6  Phone VARCHAR(15)
  7  );

Table created.

SQL> desc Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(30)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course (
  2  CourseID INT,
  3  CourseName VARCHAR(30),
  4  Credits INT
  5  );

Table created.

SQL> ALTER TABLE Student
  2  ADD City VARCHAR(30);

Table altered.

SQL> ALTER TABLE Student
  2  ADD Semester INT;

Table altered.

SQL> desc Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(30)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> ALTER TABLE Student
  2  RENAME COLUMN Phone To MobileNo;

Table altered.

SQL> desc Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(30)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> DROP TABLE Course;

Table dropped.

SQL> INSERT INTO Student VALUES (101,'Arman','CSE(AI_ML)',18,'9876543210','Patna',5);

1 row created.

SQL> INSERT INTO Student VALUES (102,'Ritika','CSE',21,'9876543211','Mumbai',3);

1 row created.

SQL> INSERT INTO Student VALUES (103,'Vijay','ME',23,'9876543212','Kolkata',4);

1 row created.

SQL> INSERT INTO Student VALUES (104,'Priya','CE',22,'9876543213','Chennai',3);

1 row created.

SQL> INSERT INTO Student VALUES (105,'Kunal','EE',19,'9876543214','Delhi',5);

1 row created.

SQL> SELECT * FROM Student;

    ROLLNO NAME                           DEPT                        AGE
---------- ------------------------------ -------------------- ----------
MOBILENO        CITY                             SEMESTER
--------------- ------------------------------ ----------
       101 Arman                          CSE(AI_ML)                   18
9876543210      Patna                                   5

       102 Ritika                         CSE                          21
9876543211      Mumbai                                  3

       103 Vijay                          ME                           23
9876543212      Kolkata                                 4


    ROLLNO NAME                           DEPT                        AGE
---------- ------------------------------ -------------------- ----------
MOBILENO        CITY                             SEMESTER
--------------- ------------------------------ ----------
       104 Priya                          CE                           22
9876543213      Chennai                                 3

       105 Kunal                          EE                           19
9876543214      Delhi                                   5


SQL> SELECT RollNo, Name FROM Student;

    ROLLNO NAME
---------- ------------------------------
       101 Arman
       102 Ritika
       103 Vijay
       104 Priya
       105 Kunal

SQL> SELECT * FROM Student
  2  WHERE Dept = 'CSE';

    ROLLNO NAME                           DEPT                        AGE
---------- ------------------------------ -------------------- ----------
MOBILENO        CITY                             SEMESTER
--------------- ------------------------------ ----------
       102 Ritika                         CSE                          21
9876543211      Mumbai                                  3


SQL> SELECT * FROM Student
  2  WHERE Age > 20;

    ROLLNO NAME                           DEPT                        AGE
---------- ------------------------------ -------------------- ----------
MOBILENO        CITY                             SEMESTER
--------------- ------------------------------ ----------
       102 Ritika                         CSE                          21
9876543211      Mumbai                                  3

       103 Vijay                          ME                           23
9876543212      Kolkata                                 4

       104 Priya                          CE                           22
9876543213      Chennai                                 3


SQL> UPDATE Student
  2  SET Dept = 'ECE'
  3  WHERE RollNo = 101;

1 row updated.

SQL> desc Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(30)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> SELECT * FROM Student;

    ROLLNO NAME                           DEPT                        AGE
---------- ------------------------------ -------------------- ----------
MOBILENO        CITY                             SEMESTER
--------------- ------------------------------ ----------
       101 Arman                          ECE                          18
9876543210      Patna                                   5

       102 Ritika                         CSE                          21
9876543211      Mumbai                                  3

       103 Vijay                          ME                           23
9876543212      Kolkata                                 4


    ROLLNO NAME                           DEPT                        AGE
---------- ------------------------------ -------------------- ----------
MOBILENO        CITY                             SEMESTER
--------------- ------------------------------ ----------
       104 Priya                          CE                           22
9876543213      Chennai                                 3

       105 Kunal                          EE                           19
9876543214      Delhi                                   5


SQL> UPDATE Student
  2  SET City = 'Patna'
  3  WHERE Name = 'Vijay';

1 row updated.

SQL> UPDATE Student
  2  SET Age = Age + 1;

5 rows updated.

SQL> SELECT * FROM Student;

    ROLLNO NAME                           DEPT                        AGE
---------- ------------------------------ -------------------- ----------
MOBILENO        CITY                             SEMESTER
--------------- ------------------------------ ----------
       101 Arman                          ECE                          19
9876543210      Patna                                   5

       102 Ritika                         CSE                          22
9876543211      Mumbai                                  3

       103 Vijay                          ME                           24
9876543212      Patna                                   4


    ROLLNO NAME                           DEPT                        AGE
---------- ------------------------------ -------------------- ----------
MOBILENO        CITY                             SEMESTER
--------------- ------------------------------ ----------
       104 Priya                          CE                           23
9876543213      Chennai                                 3

       105 Kunal                          EE                           20
9876543214      Delhi                                   5


SQL> DELETE FROM Student
  2  WHERE RollNo = 105;

1 row deleted.

SQL> SELECT * FROM Student;

    ROLLNO NAME                           DEPT                        AGE
---------- ------------------------------ -------------------- ----------
MOBILENO        CITY                             SEMESTER
--------------- ------------------------------ ----------
       101 Arman                          ECE                          19
9876543210      Patna                                   5

       102 Ritika                         CSE                          22
9876543211      Mumbai                                  3

       103 Vijay                          ME                           24
9876543212      Patna                                   4


    ROLLNO NAME                           DEPT                        AGE
---------- ------------------------------ -------------------- ----------
MOBILENO        CITY                             SEMESTER
--------------- ------------------------------ ----------
       104 Priya                          CE                           23
9876543213      Chennai                                 3


SQL> DELETE FROM Student;

4 rows deleted.

SQL> COMMIT;

Commit complete.

