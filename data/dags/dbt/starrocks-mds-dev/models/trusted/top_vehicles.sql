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
    trx.vehicle_name AS vehicle_name,
    COUNT(*) AS total_rides
FROM
    transactions AS trx
WHERE
    trx.payment_country IS NOT NULL
GROUP BY
    trx.vehicle_name
ORDER BY
    total_rides DESC
LIMIT
    10
