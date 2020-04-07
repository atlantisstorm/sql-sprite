DROP FUNCTION IF EXISTS types_fn_getIdForName;
DELIMITER $$
CREATE FUNCTION types_fn_getIdForName( iName VARCHAR(64) ) RETURNS INTEGER
DETERMINISTIC
BEGIN
    DECLARE sId INTEGER;

    SELECT id INTO sId
      FROM types
     WHERE name = iName;
     
    RETURN sId;
END
$$
DELIMITER ;