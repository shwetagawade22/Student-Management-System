

create table  Students(
student_id int auto_increment primary key,
First_name varchar(100),
Last_name varchar(100),
Gender varchar(10),
Date_Of_Birth date,
email varchar(100));


create table Courses(
course_id int auto_increment primary key,
course_name varchar(100),
credits int 
);


reate table Enrollments(
enrollment_id  int  auto_increment  primary key,
student_id int,
course_id int,
enroll_date date,
foreign key (student_id) references Students(student_id),
foreign key (course_id) references Courses(course_id)
);



CREATE TABLE Grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);



CREATE TABLE Attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


