DROP PROCEDURE IF EXISTS collection_images_pr_list;
DELIMITER $$
CREATE PROCEDURE collection_images_pr_list(
    iCollectionid INTEGER,
    iImageid      INTEGER
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
      WHERE ci.collectionid = iCollectionid AND ci.imageid = iImageid
    ORDER BY ci.position;                     
END
$$
DELIMITER ;