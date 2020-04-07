DROP PROCEDURE IF EXISTS people_pr_update;
DELIMITER $$
CREATE PROCEDURE people_pr_update(
    iPersonid   INTEGER,
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
    
    UPDATE people SET 
           name       = iName,
           username   = iUsername,
           password   = iPassword,
           clientid   = iClientid,
           supplierid = iSupplierid,
           staff      = iStaff,
           updated    = now(),
           active     = iActive
    WHERE personid = iId;
    
    COMMIT;
END
$$
DELIMITER ;