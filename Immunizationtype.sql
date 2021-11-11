use immunizations;
			


Delimiter $$ 



CREATE FUNCTION Immunizationtype(

	DESCRIPTION varchar(20)

	
)
RETURNS VARCHAR(20)
BEGIN
	DECLARE Immunizationtype VARCHAr(20);
    
	IF DESCRIPTION >= 140 THEN

    SET Immunizationtype = 'Flu vaccine';
    
ELSEIF (DESCRIPTION < 114 AND
			DESCRIPTION = 113) THEN
            
	SET Immunizationtype = 'TD';

ELSEIF DESCRIPTION < 50 then
	SET Immunizationtype = 'Hep B';
END IF;
	-- RETURN THE Immunizaitontype
    RETURN (Immunizationtype);
END$$

DELIMITER  ;


Delimiter $$ 



CREATE FUNCTION Immunizationtype(
	DESCRIPTION DECIMAL(10,2)
    )
RETURNS VARCHAR(20)
BEGIN
	DECLARE Immunizationtype VARCHAr(20);
    
	IF DESCRIPTION >= 140 THEN

    SET Immunizationtype = 'Flu vaccine';
    
ELSEIF (DESCRIPTION < 114 AND
			DESCRIPTION = 113) THEN
            
	SET Immunizationtype = 'TD';

ELSEIF DESCRIPTION < 50 then
	SET Immunizationtype = 'Hep B';
END IF;
	-- RETURN THE Immunizaitontype
    RETURN (Immunizationtype);
END$$

DELIMITER  ;


Select 
	PATIENT
	DESCRIPTION


    FROM
    immunizations
order by
	DESCRIPTION, immunizationtype;
	




