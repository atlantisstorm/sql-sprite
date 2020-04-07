DROP VIEW IF EXISTS clients_people;
CREATE VIEW clients_people AS 
SELECT p.personid,
       p.name,
       p.username,
       p.password,
       p.active,
       p.created,
       p.updated,
       p.clientid,
       c.name AS 'client_name'
  FROM people p
  INNER JOIN clients c ON c.clientid = p.clientid
  WHERE p.clientid > 0
 ORDER BY p.name, 
          p.username;