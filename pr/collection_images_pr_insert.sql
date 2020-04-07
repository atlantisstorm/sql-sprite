DROP PROCEDURE IF EXISTS collection_images_pr_insert;
DELIMITER $$
CREATE PROCEDURE collection_images_pr_insert(
    iCollectionid INTEGER,
    iImageid      INTEGER,
    iPosition     INTEGER
)
BEGIN    
    START TRANSACTION;

    INSERT INTO collection_images SET
        collectionid = iCollectionid,
        imageid      = iImageid,
        position     = iPosition;
    
    COMMIT;
END
$$
DELIMITER ;