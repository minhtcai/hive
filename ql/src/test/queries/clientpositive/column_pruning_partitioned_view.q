CREATE TABLE lv_table(c1 STRING) PARTITIONED BY(c2 STRING);
CREATE VIEW lv_view PARTITIONED ON (c2) AS SELECT c1, c2 FROM lv_table;
EXPLAIN SELECT * FROM lv_view;