DROP FUNCTION IF EXISTS addressType_fn_getIdForType;
DELIMITER $$
CREATE FUNCTION addressType_fn_getIdForType( iType VARCHAR(64) ) RETURNS INTEGER
BEGIN
    DECLARE tId INTEGER;

    SELECT id INTO tId
      FROM address_type
     WHERE `type` = tType;
     
    RETURN tId;
END
$$
DELIMITER ;