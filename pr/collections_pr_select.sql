DROP PROCEDURE IF EXISTS collections_pr_select;
DELIMITER $$
CREATE PROCEDURE collections_pr_select(
    iCollectionid INTEGER
)
BEGIN
    SELECT c.collectionid,
           c.created,
           c.updated,
           c.title,
           c.description,
           c.status
      FROM collections c
      WHERE c.collectionid = iCollectionid;
END
$$
DELIMITER ;