DROP PROCEDURE IF EXISTS people_pr_list;
DELIMITER $$
CREATE PROCEDURE people_pr_list()
BEGIN
    SELECT p.personid,
           p.name,
           p.username,
           p.password,
           p.clientid,
           p.supplierid,
           p.staff,
           p.created,
           p.updated,
           p.active
      FROM people p
    ORDER BY p.name, p.username;                     
END
$$
DELIMITER ;