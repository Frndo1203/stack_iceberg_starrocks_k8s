
  
    

    create table "iceberg"."landing"."mongodb_stripe__dbt_tmp"
      
      
    as (
      

SELECT
    DISTINCT CAST(
        id AS INT
    ) AS stripe_id,
    UID AS identifier,
    token AS card_type,
    ccv AS card_ccv,
    CAST(
        dt_current_timestamp AS TIMESTAMP
    ) AS last_updated
FROM
    "minio"."landing"."mongodb_stripe_parquet"
    );

  