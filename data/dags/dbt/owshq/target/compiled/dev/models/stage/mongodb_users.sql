

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
    
    CASE
        WHEN email IS NULL THEN NULL
        ELSE CONCAT(SUBSTRING(email, 1, 1), '*****', SUBSTRING(email, strpos(email, '@')))
    END
 AS email,
    gender AS gender,
    phone_number AS phone_number,
    
    CONCAT('xxx-xx-', SUBSTRING(social_insurance_number, 8, 4))
 AS social_security_number,
    date_of_birth AS date_of_birth,
    CAST(
        dt_current_timestamp AS TIMESTAMP
    ) AS last_updated
FROM
    "minio"."landing"."mongodb_users_parquet"