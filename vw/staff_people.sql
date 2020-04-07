DROP VIEW IF EXISTS staff_people;
CREATE VIEW staff_people AS 
SELECT p.personid,
       p.name,
       p.username,
       p.password,
       p.active,
       p.created,
       p.updated
  FROM people p
  WHERE p.staff = 1
 ORDER BY p.name, 
          p.username;