#1. Find all students whose name ends with “d”.
select * from students where name like '%d';
#2. Find all students with Gmail addresses.
select * from students where email like '%gmail.com';
#3. Find all students whose email contains the letter “o”.
select * from students where email like '%o%';
#4. Find all students whose names are exactly 4 letters long (hint: use `_ _ _ _`).
select * from students where name like '____';
#5. Create your own search: maybe by domain, or name pattern.
select * from students where name like 'M%';






