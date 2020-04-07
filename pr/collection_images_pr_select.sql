DROP PROCEDURE IF EXISTS collection_images_pr_select;
DELIMITER $$
CREATE PROCEDURE collection_images_pr_select(
    iCollectionid INTEGER,
    iImageid      INTEGER,
    iPosition     INTEGER    
)
BEGIN
    SELECT ci.collectionid,
           ci.imageid,
           ci.position,
           c.title,
           c.description,
           c.status,
           i.location
      FROM collection_images ci
      INNER JOIN collections c ON c.collectionid = ci.collectionid
      INNER JOIN images i ON i.imageid = ci.imageid
      WHERE ci.collectionid = iCollectionid AND 
            ci.imageid = iImageid AND
            ci.position = iPosition;

END
$$
DELIMITER ;