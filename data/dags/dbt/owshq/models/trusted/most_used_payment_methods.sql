{{ config(
    materialized = 'table',
    database = 'iceberg'
) }}

WITH transactions AS (

    SELECT
        *
    FROM
        {{ ref('ride_transactions') }}
)
SELECT
    trx.subscription_payment_method AS payment_method,
    COUNT(*) AS total_transactions,
    SUM(
        trx.payment_price
    ) AS total_price
FROM
    transactions AS trx
WHERE
    trx.payment_country IS NOT NULL
GROUP BY
    trx.subscription_payment_method
ORDER BY
    total_price DESC
LIMIT
    10
