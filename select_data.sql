-- SELECT no index
SELECT count(id) FROM `user` WHERE date_of_birth_no_index >= '2024-01-01' AND date_of_birth_no_index <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_no_index >= '2023-12-01' AND date_of_birth_no_index <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_no_index >= '2023-01-01' AND date_of_birth_no_index <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_no_index >= '2014-01-01' AND date_of_birth_no_index <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_no_index >= '1924-01-01' AND date_of_birth_no_index <= '2024-01-01';

-- SELECT Btree index
SELECT count(id) FROM `user` WHERE date_of_birth_btree >= '2024-01-01' AND date_of_birth_btree <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_btree >= '2023-12-01' AND date_of_birth_btree <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_btree >= '2023-01-01' AND date_of_birth_btree <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_btree >= '2014-01-01' AND date_of_birth_btree <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_btree >= '1924-01-01' AND date_of_birth_btree <= '2024-01-01';

-- SELECT Hash index
SELECT count(id) FROM `user` WHERE date_of_birth_hash >= '2024-01-01' AND date_of_birth_hash <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_hash >= '2023-12-01' AND date_of_birth_hash <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_hash >= '2023-01-01' AND date_of_birth_hash <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_hash >= '2014-01-01' AND date_of_birth_hash <= '2024-01-01';
SELECT count(id) FROM `user` WHERE date_of_birth_hash >= '1924-01-01' AND date_of_birth_hash <= '2024-01-01';
