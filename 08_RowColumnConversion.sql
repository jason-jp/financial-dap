--02. Row Column Conversion SQL

DROP TABLE bank_db.trans_201801_6mo;
CREATE TABLE bank_db.trans_201801_6mo AS
SELECT
        a.acct_id
        , a.d_paid_1801
        , b.d_paid_1802
        , c.d_paid_1803
        , d.d_paid_1804
        , e.d_paid_1805
        , f.d_paid_1806
        , a.a_paid_1801
        , b.a_paid_1802
        , c.a_paid_1803
        , d.a_paid_1804
        , e.a_paid_1805
        , f.a_paid_1806
        , a.f_pdfl_1801
        , b.f_pdfl_1802
        , c.f_pdfl_1803
        , d.f_pdfl_1804
        , e.f_pdfl_1805
        , f.f_pdfl_1806
FROM
        bank_db.trans_201801_dedup a
        INNER JOIN
        bank_db.trans_201802_dedup b
        ON a.acct_id = b.acct_id
        INNER JOIN
        bank_db.trans_201803_dedup c
        ON a.acct_id = c.acct_id
        INNER JOIN
        bank_db.trans_201804_dedup d
        ON a.acct_id = d.acct_id
        INNER JOIN
        bank_db.trans_201805_dedup e
        ON a.acct_id = e.acct_id
        INNER JOIN
        bank_db.trans_201806_dedup f
        ON a.acct_id = f.acct_id
;
