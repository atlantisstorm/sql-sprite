DROP FUNCTION IF EXISTS settings_fn_calculateTotalValue;
DELIMITER $$
CREATE FUNCTION settings_fn_calculateTotalValue(net_value DECIMAL(19,2), shipping_cost DECIMAL(19,2)) RETURNS DECIMAL(19,2)
BEGIN
    DECLARE vat_rate DECIMAL(19,2);
    DECLARE vat_already_included TEXT;
    DECLARE total_value DECIMAL(19,2);    

    SET vat_rate = 0;
    SET vat_already_included = "0";
    
    SELECT CAST(value AS DECIMAL(19,2)) INTO vat_rate
      FROM settings
     WHERE name = "site_vat_rate";

    SELECT value INTO vat_already_included 
      FROM settings
     WHERE name = "site_vat_already_included";

    SET total_value = net_value + shipping_cost;
    IF vat_already_included = "0" THEN
       SET total_value = total_value + ( (total_value / 100) * vat_rate);
    END IF;
     
    RETURN total_value;
END
$$
DELIMITER ;