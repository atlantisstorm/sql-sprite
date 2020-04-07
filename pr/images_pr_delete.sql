DROP PROCEDURE IF EXISTS images_pr_delete;
DELIMITER $$
CREATE PROCEDURE images_pr_delete(
    iImageid INTEGER
)
BEGIN
    UPDATE images i
    SET i.active = 0
    WHERE i.imageid = iImageid;
END
$$
DELIMITER ;