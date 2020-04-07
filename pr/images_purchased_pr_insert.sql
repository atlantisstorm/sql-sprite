DROP PROCEDURE IF EXISTS images_purchased_pr_insert;
DELIMITER $$
CREATE PROCEDURE images_purchased_pr_insert(
    iImageid  INTEGER,    
    iClientid INTEGER
)
BEGIN    
    START TRANSACTION;

    INSERT INTO images_purchased SET
        imageid        = iImageid,
        clientid       = iClientid,
        purchased_date = now();

    COMMIT;
END
$$
DELIMITER ;