--07. Dump 2nd SQL

SELECT
  *
FROM
  bank_db.trans_201803_dedup
ORDER BY
  acct_id
LIMIT 10
;
