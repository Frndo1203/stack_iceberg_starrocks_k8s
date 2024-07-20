{{ config(
    materialized = 'table',
    database = 'iceberg',
    tags = ["postgres"]
) }}

SELECT
    DISTINCT CAST(
        user_id AS INT
    ) AS payment_id,
    CASE
        WHEN gender = 'm' THEN 'male'
        ELSE 'female'
    END AS gender,
    LANGUAGE AS LANGUAGE,
    race AS race,
    job_title AS job_title,
    city AS city,
    country AS country,
    currency AS currency,
    credit_card_type AS credit_card_type,
    CAST(REPLACE(subscription_price, '$', '') AS REAL) AS price,
    TIME AS issued_at,
    CAST(
        dt_current_timestamp AS TIMESTAMP
    ) AS last_updated
FROM
    {{ source(
        'minio',
        'postgres_payments_parquet'
    ) }}
