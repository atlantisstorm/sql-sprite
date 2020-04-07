DROP PROCEDURE IF EXISTS clients_pr_insert;
DELIMITER $$
CREATE PROCEDURE clients_pr_insert(
    iName VARCHAR(255)
)
BEGIN    
    START TRANSACTION;

    INSERT INTO clients SET
                name     = iName,
                active    = 1,
                `created` = now(),
                `updated` = now();
    SELECT last_insert_id() AS clientid;    
    
    COMMIT;
END
$$
DELIMITER ;