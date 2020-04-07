DROP PROCEDURE IF EXISTS collections_pr_insert;
DELIMITER $$
CREATE PROCEDURE collections_pr_insert(
    iTitle       VARCHAR(255),
    iDescription VARCHAR(1024),
    iStatus      TINYINT
)
BEGIN    
    START TRANSACTION;

    INSERT INTO collections SET
        title       = iTitle,
        description = iDescription,
        status      = iStatus,
        created     = now(),
        updated     = now();

    SELECT last_insert_id() AS collectionid;    
    
    COMMIT;
END
$$
DELIMITER ;