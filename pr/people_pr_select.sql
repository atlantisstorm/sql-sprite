DROP PROCEDURE IF EXISTS people_pr_select;
DELIMITER $$
CREATE PROCEDURE people_pr_select(
    iId INTEGER
)
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
      WHERE personid = iId;
END
$$
DELIMITER ;