DROP PROCEDURE IF EXISTS clients_pr_update;
DELIMITER $$
CREATE PROCEDURE clients_pr_update(
    iId     INTEGER,
    iName   VARCHAR(255),
    iActive TINYINT
)
BEGIN
    START TRANSACTION;
    
    UPDATE clients SET 
      name    = iName,
      active  = iActive,
      updated = now()
    WHERE clientid = iId;
    
    COMMIT;
END
$$
DELIMITER ;