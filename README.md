# DBMS-lab-Assignments
Made The Practical assignments according to Day as Assignment 1 and so on....
where each assignments includes The question pdf and the solution of the questions
Name: Navin Kumar

Course: B.Tech

Subject: DBMS Lab

Topic: Data Retrieval Using SQL (Read-Only Queries)

Database: Oracle SQL


🏫 College Information

College Name: B.P. Mandal College of Engineering

Location: Madhepura, Bihar

Official Website: https://bpmce.ac.in


📊 Data Collection Sources All data is collected from authentic sources:

✅ Official College Website

✅ Department Webpages

✅ Class Timetable

✅ Academic Notices / Prospectus

⚠ Note: Student contact numbers are dummy numbers (9XXXXXXXXX) to protect privacy.

🏢 Tables Description 1️⃣ Department

Department_ID (Primary Key)

Department_Name

Block / Office Location

📌 Source: College Website

2️⃣ Faculty

Faculty_ID (Primary Key)

Faculty_Name

Designation

Official_Email

Department_ID (Foreign Key)

📌 Source: Department page / Timetable

3️⃣ Course

Course_ID (Primary Key)

Course_Name

Credits

Department_ID (Foreign Key)

Faculty_ID (Foreign Key)

📌 Source: Syllabus / Timetable

4️⃣ Student

Student_ID (Primary Key)

Student_Name

Date_of_Birth

Gender

Contact_Number (Dummy)

Department_ID (Foreign Key)

📌 Source: Roll list / Class record

5️⃣ Enrollment

Student_ID (Foreign Key)

Course_ID (Foreign Key)

Semester

Grade (Assumed: A, B+, etc.)

📌 Source: Academic Structure (Grades assumed)

🧾 Tasks Completed ✅ Part A – Data Insertion

Inserted minimum 10 records in:

Student

Course

Enrollment

No primary key duplication

All foreign key constraints satisfied

Used proper INSERT INTO SQL queries

✅ Part B – Verification Executed: SELECT * FROM Department; SELECT * FROM Faculty; SELECT * FROM Course; SELECT * FROM Student; SELECT * FROM Enrollment;

Screenshots of successful output are attached in the repository.


