#1. Create a relational schema (students, courses, enrollments)
create table students( id int primary key auto_increment, name varchar(100), email varchar(100));
create table courses( id int primary key auto_increment, title varchar(100));
create table enrollments( student_id int, course_id int,
 foreign key (student_id) references students(id), foreign key(course_id) references courses(id));
#2. Insert students, courses, and enrollments
insert into students (name, email) 
values('sam','sam@gmail.com'),('med','med@gmail.com'),('ali','ali@gmail.com'),('asma','asma@gmail.com');
insert into courses(title) values('html'),('css'),('javascript'),('reactjs'),('nodejs'),('nextjs');
insert into  enrollments(student_id,course_id) values(1,1),(2,2);
#3. Use INNER JOIN to find who is enrolled
select students.name , courses.title from enrollments join students on student_id= students.id join courses on course_id = courses.id;
#4. Use LEFT JOIN to list all students + their courses (NULL if none)
select students.name , courses.title from students
left join enrollments on students.id = enrollments.student_id left join courses on course_id = courses.id;
#5. BONUS: Count how many students per course using `GROUP BY`
select students.name, count(students.id)  from students
left join enrollments on students.id = enrollments.student_id left join courses on course_id = courses.id
group by courses.id;