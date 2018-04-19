--05. Freq 2nd SQL

SELECT
      CASE WHEN d_paid_1803 = -9999 THEN -9999 ELSE YEARWEEK(d_paid_1803) END AS YEAR_WEEK
      , COUNT(*) AS CNT
FROM
      bank_db.trans_201803_dedup
GROUP BY
      1
ORDER BY
      1
;

SELECT
      CASE WHEN a_paid_1803 = -9999 THEN "-9999"
      WHEN a_paid_1803 < 0 THEN "<0"
      WHEN a_paid_1803 = 0 THEN "0"
      WHEN a_paid_1803 BETWEEN 1 AND 10 THEN "1-10"
      WHEN a_paid_1803 BETWEEN 11 AND 100 THEN "11-100"
      WHEN a_paid_1803 BETWEEN 101 AND 1000 THEN "101-1000"
      WHEN a_paid_1803 BETWEEN 1001 AND 2000 THEN "1001-2000"
      WHEN a_paid_1803 > 2000 THEN ">2000" END AS AMOUNT_SEGMENT
      , COUNT(*) AS CNT
FROM
      bank_db.trans_201803_dedup
GROUP BY
      1
ORDER BY
      1
;

SELECT
      f_pdfl_1803 AS PAID_FULL_FLAG
      , COUNT(*) AS CNT
FROM
      bank_db.trans_201803_dedup
GROUP BY
      1
ORDER BY
      1
;
