DROP PROCEDURE IF EXISTS images_purchased_pr_select;
DELIMITER $$
CREATE PROCEDURE images_purchased_pr_select(
    iImageid  INTEGER,
    iClientid INTEGER
)
BEGIN
    SELECT ip.imageid,
           ip.clientid,
           c.name AS client_name,
           i.created,
           i.inserted,
           i.updated,
           i.title,
           i.description,
           i.location,
           i.status
      FROM images_purchased ip
      INNER JOIN clients c ON c.clientid = ip.clientid
      INNER JOIN images i ON i.imageid = ip.imageid
      WHERE ip.imageid = iImageid AND ip.clientid = iClientid;

END
$$
DELIMITER ;