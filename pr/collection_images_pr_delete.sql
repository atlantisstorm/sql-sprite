DROP PROCEDURE IF EXISTS collection_images_pr_delete;
DELIMITER $$
CREATE PROCEDURE collection_images_pr_delete(
    iCollectionid INTEGER,
    iImageid INTEGER    
)
BEGIN
    DELETE FROM collection_images
    WHERE collectionid = iCollectionid AND imageid = iImageid;
END
$$
DELIMITER ;