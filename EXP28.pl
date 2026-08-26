% Student-Teacher-Subject Database

student(rahul).
student(anu).
student(kumar).
student(priya).

teacher(ravi).
teacher(geetha).
teacher(arun).

subject(cse101, python).
subject(cse102, ai).
subject(cse103, dbms).

teaches(ravi, cse101).
teaches(geetha, cse102).
teaches(arun, cse103).

studies(rahul, cse101).
studies(anu, cse102).
studies(kumar, cse103).
studies(priya, cse101).

% Find teacher of a student's subject
student_teacher(Student, Teacher) :-
    studies(Student, Subject),
    teaches(Teacher, Subject).

% Find subject studied by a student
student_subject(Student, SubjectName) :-
    studies(Student, Code),
    subject(Code, SubjectName).