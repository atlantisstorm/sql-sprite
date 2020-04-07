DROP PROCEDURE IF EXISTS suppliers_pr_select;
DELIMITER $$
CREATE PROCEDURE suppliers_pr_select(
    iId INTEGER
)
BEGIN
    SELECT s.clientid,
           s.name,
           s.created,
           s.updated,
           s.active
      FROM suppliers s
      WHERE supplierid = iId;
END
$$
DELIMITER ;