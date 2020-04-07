DROP PROCEDURE IF EXISTS images_pr_update;
DELIMITER $$
CREATE PROCEDURE images_pr_update(
    iImageid INTEGER,
    iSupplierid INTEGER,
    iTitle VARCHAR(255),
    iDescription VARCHAR(32),
    iLocation VARCHAR(1024),
    iStatus TINYINT
)
BEGIN
    START TRANSACTION;
    
    UPDATE images SET 
        supplierid  = iSupplierid,
        updated     = now(),
        title       = iTitle,
        description = iDescription,
        location    = iLocation,
        status      = iStatus
    WHERE imageid = iImageid;
    
    COMMIT;
END
$$
DELIMITER ;