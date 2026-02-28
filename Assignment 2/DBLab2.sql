
SQL*Plus: Release 21.0.0.0.0 - Production on Fri Feb 27 10:00:58 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Fri Feb 27 2026 07:13:10 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Department (
  2  Dept_ID VARCHAR(10) PRIMARY KEY,
  3  Department_Name VARCHAR(20) NOT NULL,
  4  Office_Location VARCHAR(50)
  5  );

Table created.

SQL> CREATE TABLE Faculty (
  2  Faculty_ID VARCHAR(10) PRIMARY KEY,
  3  Faculty_Name VARCHAR(50) NOT NULL,
  4  Designation VARCHAR(50),
  5  Email VARCHAR(40),
  6  Dept_ID VARCHAR(10),
  7  FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
  8  );

Table created.

SQL> CREATE TABLE Course (
  2  Course_ID VARCHAR(10) PRIMARY KEY,
  3  Course_Name VARCHAR(50) NOT NULL,
  4  Credits INT,
  5  Dept_ID VARCHAR(10),
  6  Faculty_ID VARCHAR(10),
  7  FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID),
  8  FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
  9  );

Table created.

SQL> CREATE TABLE Student (
  2  Student_ID VARCHAR(10) PRIMARY KEY,
  3  Student_Name VARCHAR(50) NOT NULL,
  4  Date_Of_Birth DATE,
  5  Gender VARCHAR(10),
  6  Contact_Number VARCHAR(15),
  7  Dept_ID VARCHAR(10),
  8  FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
  9  );

Table created.

SQL> CREATE TABLE Enrollment (
  2  Student_ID VARCHAR(10),
  3  Course_ID VARCHAR(10),
  4  Semester INT,
  5  Grade VARCHAR(5),
  6  PRIMARY KEY (Student_ID, Course_ID),
  7  FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
  8  FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
  9  );

Table created.