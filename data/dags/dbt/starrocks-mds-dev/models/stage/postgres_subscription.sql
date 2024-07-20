{{ config(
    materialized = 'table',
    database = 'iceberg',
    tags = ["postgres"]
) }}

SELECT
    DISTINCT CAST(
        id AS INT
    ) AS subscription_id,
    plan AS plan,
    status AS status,
    payment_method AS payment_method,
    subscription_term,
    payment_term,
    CAST(
        dt_current_timestamp AS TIMESTAMP
    ) AS last_updated
FROM
    {{ source(
        'minio',
        'postgres_subscription_parquet'
    ) }}
