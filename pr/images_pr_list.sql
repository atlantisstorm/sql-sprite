DROP PROCEDURE IF EXISTS images_pr_list;
DELIMITER $$
CREATE PROCEDURE images_pr_list(
    iSupplierid INTEGER  
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
      INNER JOIN suppliers s ON s.supplierid = i.supplierid
      WHERE i.supplierid = iSupplierid
    ORDER BY p.inserted;                     
END
$$
DELIMITER ;