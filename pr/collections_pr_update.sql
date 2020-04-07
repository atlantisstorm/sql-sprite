DROP PROCEDURE IF EXISTS collections_pr_update;
DELIMITER $$
CREATE PROCEDURE collections_pr_update(
    iCollectionid INTEGER,
    iTitle        VARCHAR(255),
    iDescription  VARCHAR(32),
    iStatus       TINYINT
)
BEGIN
    START TRANSACTION;
    
    UPDATE collections SET
        title       = iTitle,
        description = iDescription,
        status      = iStatus,
        updated     = now()
    WHERE collectionid = iCollectionid;
    
    COMMIT;
END
$$
DELIMITER ;