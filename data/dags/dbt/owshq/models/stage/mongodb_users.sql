{{ config(
    materialized = 'table',
    database = 'iceberg',
    tags = ["mongodb"]
) }}

SELECT
    DISTINCT CAST(
        id AS INT
    ) AS id,
    CAST(
        user_id AS INT
    ) AS user_id,
    cpf AS cpf,
    CONCAT(
        first_name,
        ' ',
        last_name
    ) AS full_name,
    {{ mask_email('email') }} AS email,
    gender AS gender,
    phone_number AS phone_number,
    {{ mask_ssn('social_insurance_number') }} AS social_security_number,
    date_of_birth AS date_of_birth,
    CAST(
        dt_current_timestamp AS TIMESTAMP
    ) AS last_updated
FROM
    {{ source(
        'minio',
        'mongodb_users_parquet'
    ) }}
