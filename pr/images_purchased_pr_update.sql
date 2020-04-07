DROP PROCEDURE IF EXISTS images_purchased_pr_update;
DELIMITER $$
CREATE PROCEDURE images_purchased_pr_update(
    iImageid INTEGER,
    iClientid INTEGER
)
BEGIN
    START TRANSACTION;
    
    UPDATE images_purchased SET 
        purchased_date = now()
    WHERE imageid = iImageid AND clientid = iClientid;
    
    COMMIT;
END
$$
DELIMITER ;