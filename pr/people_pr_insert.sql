DROP PROCEDURE IF EXISTS people_pr_insert;
DELIMITER $$
CREATE PROCEDURE people_pr_insert(
    iName       VARCHAR(255),
    iUsername   VARCHAR(32),
    iPassword   VARCHAR(64),
    iClientid   INTEGER,
    iSupplierid INTEGER,
    iStaff      TINYINT,
    iActive     TINYINT
)
BEGIN    
    START TRANSACTION;

    INSERT INTO people SET
           name       = iName,
           username   = iUsername,
           password   = iPassword,
           clientid   = iClientid,
           supplierid = iSupplierid,
           staff      = iStaff,
           created    = now(),
           updated    = now(),
           active     = iActive;
    SELECT last_insert_id() AS personid;    
    
    COMMIT;
END
$$
DELIMITER ;