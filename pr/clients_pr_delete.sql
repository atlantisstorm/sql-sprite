DROP PROCEDURE IF EXISTS clients_pr_delete;
DELIMITER $$
CREATE PROCEDURE clients_pr_delete(
    iId INTEGER
)
BEGIN
    UPDATE clients c
    SET c.active = 0
    WHERE c.clientid = iId;
END
$$
DELIMITER ;