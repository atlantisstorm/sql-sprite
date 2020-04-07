DROP PROCEDURE IF EXISTS people_pr_delete;
DELIMITER $$
CREATE PROCEDURE people_pr_delete(
    iId INTEGER
)
BEGIN
    UPDATE people p
    SET p.active = 0
    WHERE p.personid = iId;
END
$$
DELIMITER ;