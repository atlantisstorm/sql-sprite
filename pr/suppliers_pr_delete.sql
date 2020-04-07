DROP PROCEDURE IF EXISTS suppliers_pr_delete;
DELIMITER $$
CREATE PROCEDURE suppliers_pr_delete(
    iId INTEGER
)
BEGIN
    UPDATE suppliers s
    SET s.active = 0
    WHERE s.supplierid = iId;
END
$$
DELIMITER ;