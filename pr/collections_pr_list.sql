DROP PROCEDURE IF EXISTS collections_pr_list;
DELIMITER $$
CREATE PROCEDURE collections_pr_list(
    iFrom DATETIME,
    iTo   DATETIME  
)
BEGIN
    SELECT c.collectionid,
           c.created,
           c.updated,
           c.title,
           c.description,
           c.status
      FROM collections c
      WHERE c.created >= iFrom AND c.created <= iTo
    ORDER BY p.inserted;                     
END
$$
DELIMITER ;