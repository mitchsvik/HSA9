-- Insertion procedure
DROP PROCEDURE IF EXISTS INSERT_DATA;

DELIMITER //
CREATE PROCEDURE INSERT_DATA(IN max_i INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE ts DATE DEFAULT CURRENT_DATE;
    WHILE i < max_i DO
        SET ts = (CURRENT_DATE - INTERVAL FLOOR(RAND() * 100 * 365) DAY);
        INSERT INTO `user` (`given_name`, `date_of_birth_no_index`, `date_of_birth_btree`, `date_of_birth_hash`)
        VALUES (SUBSTRING(MD5(RAND()), 1, 8), ts, ts, ts);
        SET i = i + 1;
    END WHILE;
END//
DELIMITER ;

-- Call procedure

CALL INSERT_DATA(10);
CALL INSERT_DATA(100);
CALL INSERT_DATA(1000);
CALL INSERT_DATA(10000);

-- Change parameter

-- Drop procedure
DROP PROCEDURE INSERT_DATA;