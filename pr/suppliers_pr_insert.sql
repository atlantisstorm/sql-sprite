DROP PROCEDURE IF EXISTS suppliers_pr_insert;
DELIMITER $$
CREATE PROCEDURE suppliers_pr_insert(
    iName VARCHAR(255)
)
BEGIN    
    START TRANSACTION;

    INSERT INTO suppliers SET
                name     = iName,
                active    = 1,
                `created` = now(),
                `updated` = now();
    SELECT last_insert_id() AS supplierid;    
    
    COMMIT;
END
$$
DELIMITER ;