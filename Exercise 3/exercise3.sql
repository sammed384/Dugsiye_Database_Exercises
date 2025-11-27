#1. Show the last 2 students who registered.
select * from students order by id desc limit 2;
#2. Show only students with Gmail, sorted by name.
select * from students where email like '%@gmail.com' order by name asc;
#3. Limit results to 1 row and rename the columns to `Student` and `Email Address`.
select name as 'Student', email as 'Email Address' from students limit 1;
#4. Create your own variation that uses all 3: `ORDER BY`, `LIMIT`, and `AS`.
select name as 'Student', email as 'Email Address' from students order by name desc limit 5;