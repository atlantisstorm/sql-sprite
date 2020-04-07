DROP PROCEDURE IF EXISTS images_purchased_pr_delete;
DELIMITER $$
CREATE PROCEDURE images_purchased_pr_delete(
    iImageid INTEGER,
    iClientid INTEGER
)
BEGIN
    DELETE FROM images_purchased
    WHERE imageid = iImageid AND clientid = iClientid;
END
$$
DELIMITER ;