#1. Create a sample table
CREATE TABLE students(id int primary key auto_increment, name varchar(100), email varchar(100));
#2. Insert 1000+ rows (manually, generator, or script)
INSERT INTO students (name, email)
SELECT 
    CONCAT('Student ', seq) AS name,
    CONCAT('student', seq, '@student.com') AS email
FROM (
    SELECT @row := @row + 1 AS seq
    FROM information_schema.columns, (SELECT @row := 0) r
    LIMIT 1000
) AS x;
#3. Run a query that benefits from an index
select * from students where email = "student2@student.com"
#4. Measure it with and without index using `EXPLAIN`
explain select * from students where email = "student2@student.com"
CREATE INDEX idx_email ON students(email);
explain select * from students where email = "student2@student.com"
#5. Write a summary of what changed and why
Without index it will scan all rows
With index it will scan one row 