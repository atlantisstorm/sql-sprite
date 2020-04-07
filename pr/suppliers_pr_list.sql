DROP PROCEDURE IF EXISTS suppliers_pr_list;
DELIMITER $$
CREATE PROCEDURE suppliers_pr_list()
BEGIN
    SELECT s.supplierid,
           s.name,
           s.created,
           s.updated,
           s.active
      FROM suppliers s
    ORDER BY s.name;                     
END
$$
DELIMITER ;