DROP PROCEDURE IF EXISTS clients_pr_list;
DELIMITER $$
CREATE PROCEDURE clients_pr_list()
BEGIN
    SELECT c.clientid,
           c.name,
           c.created,
           c.updated,
           c.active
      FROM clients c
    ORDER BY c.name;                     
END
$$
DELIMITER ;