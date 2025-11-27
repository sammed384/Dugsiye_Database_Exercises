#1. How many students total?
select count(*) 'Total Student' from students;
#2. What’s the highest and lowest score?
select max(score) 'the highest score', min(score) 'the lowest score' from score;
#3. How many students per domain?
select substring_index(email, '@', -1) as domain , count(*) from students group by domain;
#4. What is the average score of each domain group?
select substring_index(email, '@', -1) as domain , avg(score) from students group by domain;