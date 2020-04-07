DROP PROCEDURE IF EXISTS images_pr_insert;
DELIMITER $$
CREATE PROCEDURE images_pr_insert(
    iSupplierid  INTEGER,
    iTitle       VARCHAR(255),
    iDescription VARCHAR(32),
    iLocation    VARCHAR(1024),
    iStatus      TINYINT
)
BEGIN    
    START TRANSACTION;

    INSERT INTO images SET
        supplierid  = iSupplierid,
        title       = iTitle,
        description = iDescription,
        location    = iLocation,
        status      = iStatus,
        created     = now(),
        inserted    = now(),
        updated     = now();

    SELECT last_insert_id() AS imageid;    
    
    COMMIT;
END
$$
DELIMITER ;