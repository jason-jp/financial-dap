--04. Dedup SQL

DROP TABLE bank_db.trans_201806_dedup;
CREATE TABLE bank_db.trans_201806_dedup AS
SELECT DISTINCT
      *
FROM
      bank_db.trans_201806
;
