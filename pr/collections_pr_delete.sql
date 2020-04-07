DROP PROCEDURE IF EXISTS collections_pr_delete;
DELIMITER $$
CREATE PROCEDURE collections_pr_delete(
    iCollectionid INTEGER
)
BEGIN
    UPDATE collections c
    SET c.status = 0
    WHERE c.collectionid = iCollectionid;
END
$$
DELIMITER ;