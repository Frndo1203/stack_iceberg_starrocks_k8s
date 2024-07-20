

SELECT
    
    CAST(FLOOR(random() * (10000 - 1 + 1)) + 1 AS INTEGER)
 AS ride_id,
    CAST(
        user_id AS INT
    ) AS user_id,
    cpf AS cpf,
    CAST(
        vehicle_id AS INT
    ) AS vehicle_id,
    
    CAST(FLOOR(random() * (10000 - 1 + 1)) + 1 AS INTEGER)
 AS subscription_id,
    
    CAST(FLOOR(random() * (10000 - 1 + 1)) + 1 AS INTEGER)
 AS payment_id,
    
    CAST(FLOOR(random() * (10000 - 1 + 1)) + 1 AS INTEGER)
 AS stripe_id,
    source AS source,
    destination AS destination,
    CAST(
        price AS REAL
    ) AS estimated_price,
    surge_multiplier AS surge_multiplier,
    CASE
        WHEN surge_multiplier <> 1 THEN CAST(
            price AS REAL
        ) * surge_multiplier
        ELSE CAST(
            price AS REAL
        )
    END AS price,
    NAME AS car_type,
    cab_type AS service_type,
    CAST(
        dt_current_timestamp AS TIMESTAMP
    ) AS last_updated
FROM
    "minio"."landing"."mongodb_rides_parquet"