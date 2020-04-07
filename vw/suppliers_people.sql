DROP VIEW IF EXISTS suppliers_people;
CREATE VIEW suppliers_people AS 
SELECT p.personid,
       p.name,
       p.username,
       p.password,
       p.active,
       p.created,
       p.updated,
       p.supplierid,
       s.name AS 'supplier_name'
  FROM people p
  INNER JOIN suppliers s ON s.supplierid = p.supplierid
  WHERE p.supplierid > 0
 ORDER BY p.name,
          p.username;