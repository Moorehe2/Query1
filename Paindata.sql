use synthea;


CREATE TABLE Mardispt_data
id INT AUTO_INCREMENT PRIMARY KEY,
puserid INT NOT NULL,
lastname VARCHAR (32) NOT NULL,
pain INT NOT NULL
);


INSERT INTO Mardispt_data (puserid,lastname, pain) VALUES(1010111,'KNIGHT', 12);

INSERT INTO Mardispt_data (puserid,lastname, pain) VALUES(1010222,'BOOKER', 11);


select * from Mardispt_data;

delimiter $$

CREATE Trigger qpainlevel BEFORE INSERT ON Mardispt_data
FOR EACH ROW
BEGIN
	IF NEW.pain >= 11 THEN
		SIGNAL SQLSTATE '35000'
		SET MESSAGE_TEXT = 'ERROR PAIN LEVEL EXCEED 10!';
	END IF;
END; $$
delimiter ;


