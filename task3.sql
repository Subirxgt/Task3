use nhe;
select *from marksheet where maths>85;

select * from marksheet 
order by Maths
limit 6;

select section, count(*) as total_students
from marksheet 
group by section
order by section;

select name , section ,Maths from marksheet 
where maths>(select avg(Maths) from marksheet)
limit 5;

SELECT a.name AS marksheet1, b.name AS marksheet2, a.section
FROM marksheet a
INNER JOIN marksheet b
  ON a.section = b.section AND a.id < b.id
  limit 5;
  
SELECT a.name AS male_student, b.name AS female_student, a.science AS male_score, b.science AS female_score
FROM marksheet a
JOIN marksheet b
  ON a.gender = 'Male' AND b.gender = 'Female'
 AND a.science = b.science
 limit 5;
 
 CREATE VIEW extra_mk AS
SELECT Name, 
       (Science + English + History + Maths) AS total_marks
FROM marksheet
limit 10;


CREATE VIEW average_marks_by_section AS
SELECT Section, 
       AVG(Science) AS avg_science,
       AVG(English) AS avg_english,
       AVG(History) AS avg_history,
       AVG(Maths) AS avg_maths
FROM marksheet
GROUP BY Section
order by Section;

CREATE INDEX idx_science ON marksheet(Science);
CREATE INDEX idx_english ON marksheet(English);
CREATE INDEX idx_history ON marksheet(History);
CREATE INDEX idx_maths ON marksheet(Maths);

SELECT * FROM marksheet WHERE Science > 50
limit 7;
SELECT * FROM marksheet ORDER BY Maths DESC
limit 6;








