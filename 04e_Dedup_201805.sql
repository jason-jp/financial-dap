--04. Dedup SQL

DROP TABLE bank_db.trans_201805_dedup;
CREATE TABLE bank_db.trans_201805_dedup AS
SELECT DISTINCT
      *
FROM
      bank_db.trans_201805
;
