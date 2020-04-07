DROP PROCEDURE IF EXISTS collection_images_pr_update;
DELIMITER $$
CREATE PROCEDURE collection_images_pr_update(
    iCollectionid INTEGER,
    iImageid      INTEGER,
    iPosition     INTEGER
)
BEGIN
    START TRANSACTION;
    
    UPDATE collection_images SET
        position = iPosition
    WHERE collectionid = iCollectionid AND imageid = iImageid;

    COMMIT;
END
$$
DELIMITER ;