DROP PROCEDURE IF EXISTS clients_pr_select;
DELIMITER $$
CREATE PROCEDURE clients_pr_select(
    iId INTEGER
)
BEGIN
    SELECT c.clientid,
           c.name,
           c.created,
           c.updated,
           c.active
      FROM clients c
      WHERE clientid = iId;
END
$$
DELIMITER ;