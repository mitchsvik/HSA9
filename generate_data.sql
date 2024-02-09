-- Switch to designed database
USE hsa9;

-- Create table for users
CREATE TABLE `user` 
(
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `given_name` CHAR(8) NOT NULL,
    `date_of_birth_no_index` DATE NULL DEFAULT CURRENT_DATE,
    `date_of_birth_btree` DATE NULL DEFAULT NULL,
    `date_of_birth_hash` DATE DEFAULT NULL,

    PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- Insert 40M random users in the database
INSERT INTO `user` (`given_name`, `date_of_birth_no_index`, `date_of_birth_btree`, `date_of_birth_hash`)
SELECT 
    `gen`.`given_name` as `given_name`,
    `gen`.`date_of_birth` as `date_of_birth_no_index`,
    `gen`.`date_of_birth` as `date_of_birth_btree`,
    `gen`.`date_of_birth` as `date_of_birth_hash`
FROM (
    SELECT 
        SUBSTRING(MD5(RAND()), 1, 8) AS `given_name`,
        (CURRENT_DATE - INTERVAL FLOOR(RAND() * 100 * 365) DAY) AS `date_of_birth`
    FROM seq_1_to_40000000
) `gen`;

-- Create indexes on data
CREATE INDEX `dob_btree` ON `user` (`date_of_birth_btree`) USING BTREE;
CREATE INDEX `dob_hash` ON `user` (`date_of_birth_hash`) USING HASH;
