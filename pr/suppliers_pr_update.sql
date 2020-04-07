DROP PROCEDURE IF EXISTS suppliers_pr_update;
DELIMITER $$
CREATE PROCEDURE suppliers_pr_update(
    iId     INTEGER,
    iName   VARCHAR(255),
    iActive TINYINT
)
BEGIN
    START TRANSACTION;
    
    UPDATE suppliers SET 
      name    = iName,
      active  = iActive,
      updated = now()
    WHERE supplierid = iId;
    
    COMMIT;
END
$$
DELIMITER ;