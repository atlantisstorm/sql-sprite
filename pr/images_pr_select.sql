DROP PROCEDURE IF EXISTS images_pr_select;
DELIMITER $$
CREATE PROCEDURE images_pr_select(
    iImageid INTEGER
)
BEGIN
    SELECT i.imageid,
           i.supplierid,
           i.created,
           i.inserted,
           i.updated,
           i.title,
           i.description,
           i.location,
           i.status
      FROM images i
      WHERE i.imageid = iImageid;
END
$$
DELIMITER ;