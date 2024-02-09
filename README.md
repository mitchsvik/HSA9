# HSA9
SQL Indexes

This examples use `mariadb` as a variant of MySQL server to check performace of indexes and write strategies

## Prerequisites 

Use `generate_data.sql` to create a table and insert 40M of random users

## Compare the performance of selections by date of birth: 

On 40M records using `select_data.sql`:
Compared performance of columns
- Without index
- With BTREE index
- With HASH index

The difference in performance (in seconds): while selecting 1 Day, 1 Month, 1 Year, 10 Years, and 100 Years

| |Amount|No Index|BTree|Hash|
|-|------|--------|-----|----|
1 day|1060|6.012|0.005|0.004
1 month|35130|5.968|0.012|0.013
1 year|401567|6.229|0.065|0.065
10 years|4001109|6.728|0.584|0.575
100 years|39959368|6.995|5.715|5.691

![Select chart](./image1.png?raw=true "Select chart")

## Check insert speed difference

Writing extra records using `insert_data.sql`;
Compared performance with `innodb_flush_log_at_trx_commit` values of 1, 2 and 0

The difference in performance: while writing 10, 100, 1000, 10000 inserts:

|Amount|1|2|0|
|------|-|-|-|
10|0.032|0.018|0.017
100|0.163|0.087|0.066
1000|1.452|0.805|0.516
10000|13.613|8.544|6.104

![Insert chart](./image2.png?raw=true "Insert chart")
