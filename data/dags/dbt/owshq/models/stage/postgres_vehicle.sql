{{ config(
    materialized = 'table',
    database = 'iceberg',
    tags = ["postgres"]
) }}

SELECT
    DISTINCT CAST(
        id AS INT
    ) AS vehicle_id,
    user_id AS user_id,
    NAME AS NAME,
    YEAR AS YEAR,
    km_driven AS km_driven,
    fuel AS fuel,
    seller_type AS seller_type,
    transmission AS transmission,
    mileage AS mileage,
    engine AS engine,
    max_power AS max_power,
    torque AS torque,
    CAST(
        seats AS INT
    ) AS seats,
    CAST(
        dt_current_timestamp AS TIMESTAMP
    ) AS last_updated
FROM
    {{ source(
        'minio',
        'postgres_vehicle_parquet'
    ) }}
