{{ config(
    materialized = 'table',
    database = 'iceberg',
    tags = ["mssql"]
) }}

SELECT
    DISTINCT CAST(
        user_id AS INT
    ) AS user_id,
    cpf AS cpf,
    CONCAT(
        first_name,
        ' ',
        last_name
    ) AS full_name,
    CAST(
        date_birth AS DATE
    ) AS date_of_birth,
    city AS city,
    country AS country,
    company_name AS company_name,
    job AS job,
    phone_number AS phone_number,
    time_zone AS time_zone,
    CAST(
        dt_current_timestamp AS TIMESTAMP
    ) AS last_updated
FROM
    {{ source(
        'minio',
        'mssql_users_parquet'
    ) }}
