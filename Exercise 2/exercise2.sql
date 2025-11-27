#1. Use `AND` to select students who are Gmail users with ID > 2.
select * from students where email like "%gmail.com" and id > 2;
#2. Use `OR` to select students named Ayaan or Max.
select * from students where name="Ayaan" or name="Max";
#3. Use parentheses to fix this query:
select * from students where (name="Ayaan" or name="Max") and id < 3;
#4. Write your own query combining `LIKE`, `AND`, and `OR`.
select * from students where (email like "%gmail.com" or name ="Layla Ahmed") and id > 3;
#5. Use `SELECT`, then turn it into a safe `UPDATE` or `DELETE`.
delete from students where email like "%gmail.com" and id = 6;
update students set name="Ayaan1"  where id = 4;
 