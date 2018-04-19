--02. FreqFreq SQL

CREATE INDEX idx_acctid_date ON bank_db.trans_201803(acct_id, d_paid_1803);

SELECT
  I.acct_id
  , I.NO
  , M.FREQFREQ
FROM
  (
    SELECT
        acct_id
        , idx_acctid_date as NO
    FROM
        bank_db.trans_201803
  ) I
  LEFT OUTER JOIN
  (
    SELECT
        acct_id
        , MAX(idx_acctid_date) AS FREQFREQ
    FROM
        bank_db.trans_201803
    GROUP BY
        1
  ) M
  ON I.acct_id = M.acct_id
  ;

SELECT
  FREQFREQ
, COUNT(DISTINCT ACCT_ID) AS FREQ
FROM
  (
  SELECT
    I.acct_id
    , I.NO
    , M.FREQFREQ
  FROM
    (
      SELECT
          acct_id
          , idx_acctid_date as NO
      FROM
          bank_db.trans_201803
    ) I
    LEFT OUTER JOIN
    (
      SELECT
          acct_id
          , MAX(idx_acctid_date) AS FREQFREQ
      FROM
          bank_db.trans_201803
      GROUP BY
          1
    ) M
    ON I.acct_id = M.acct_id
  ) F
GROUP BY
  1
ORDER BY
  1
;

ALTER TABLE bank_db.trans_201803 DROP idx_acctid_date;
