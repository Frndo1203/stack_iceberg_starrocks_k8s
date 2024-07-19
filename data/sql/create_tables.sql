-- mssql_users_parquet
DROP TABLE minio.landing.mssql_users_parquet;
CREATE TABLE IF NOT EXISTS minio.landing.mssql_users_parquet (
    user_id INT,
    uuid VARCHAR,
    first_name VARCHAR,
    last_name VARCHAR,
    date_birth VARCHAR,
    city VARCHAR,
    country VARCHAR,
    company_name VARCHAR,
    job VARCHAR,
    phone_number VARCHAR,
    last_access_time VARCHAR,
    time_zone VARCHAR,
    dt_current_timestamp VARCHAR,
    cpf VARCHAR
) WITH (
    external_location = 's3a://landing/com.owshq.data/mssql/users/parquet',
    format = 'PARQUET'
);

-- mssql_credit_card_parquet
DROP TABLE minio.landing.mssql_credit_card_parquet;
CREATE TABLE minio.landing.mssql_credit_card_parquet (
    id BIGINT,
    uid VARCHAR,
    credit_card_number VARCHAR,
    credit_card_expiry_date VARCHAR,
    credit_card_type VARCHAR,
    user_id BIGINT,
    dt_current_timestamp VARCHAR
) WITH (
    external_location = 's3a://landing/com.owshq.data/mssql/credit_card/parquet',
    format = 'PARQUET'
);

-- postgres_payments_parquet
DROP TABLE minio.landing.postgres_payments_parquet;
CREATE TABLE minio.landing.postgres_payments_parquet (
    user_id BIGINT,
    gender VARCHAR(1),
    language VARCHAR,
    race VARCHAR,
    job_title VARCHAR,
    city VARCHAR,
    country VARCHAR,
    currency VARCHAR,
    currency_mode VARCHAR(3),
    credit_card_type VARCHAR,
    subscription_price VARCHAR,
    time VARCHAR,
    dt_current_timestamp VARCHAR
) WITH (
    external_location = 's3a://landing/com.owshq.data/postgres/payments/parquet',
    format = 'PARQUET'
);

-- postgres_subscription_parquet
DROP TABLE minio.landing.postgres_subscription_parquet;
CREATE TABLE minio.landing.postgres_subscription_parquet (
    id BIGINT,
    uid VARCHAR,
    plan VARCHAR,
    status VARCHAR,
    payment_method VARCHAR,
    subscription_term VARCHAR,
    payment_term VARCHAR,
    user_id BIGINT,
    dt_current_timestamp VARCHAR
) WITH (
    external_location = 's3a://landing/com.owshq.data/postgres/subscription/parquet',
    format = 'PARQUET'
);

-- postgres_vehicle_parquet
DROP TABLE minio.landing.postgres_vehicle_parquet;
CREATE TABLE minio.landing.postgres_vehicle_parquet (
    id BIGINT,
    name VARCHAR,
    year INT,
    km_driven BIGINT,
    fuel VARCHAR,
    seller_type VARCHAR,
    transmission VARCHAR,
    mileage VARCHAR,
    engine VARCHAR,
    max_power VARCHAR,
    torque VARCHAR,
    seats DOUBLE,
    dt_current_timestamp VARCHAR,
    user_id BIGINT
) WITH (
    external_location = 's3a://landing/com.owshq.data/postgres/vehicle/parquet',
    format = 'PARQUET'
);

-- mongodb_rides_parquet
DROP TABLE minio.landing.mongodb_rides_parquet;
CREATE TABLE minio.landing.mongodb_rides_parquet (
    user_id BIGINT,
    vehicle_id BIGINT,
    time_stamp BIGINT,
    source VARCHAR,
    destination VARCHAR,
    distance DOUBLE,
    price DOUBLE,
    surge_multiplier DOUBLE,
    id VARCHAR,
    product_id VARCHAR,
    name VARCHAR,
    cab_type VARCHAR,
    dt_current_timestamp VARCHAR,
    cpf VARCHAR
) WITH (
    external_location = 's3a://landing/com.owshq.data/mongodb/rides/parquet',
    format = 'PARQUET'
);

-- mongodb_stripe_parquet
DROP TABLE minio.landing.mongodb_stripe_parquet;
CREATE TABLE minio.landing.mongodb_stripe_parquet (
    id BIGINT,
    uid VARCHAR,
    valid_card VARCHAR,
    token VARCHAR,
    invalid_card VARCHAR,
    month VARCHAR(2),
    year VARCHAR(4),
    ccv VARCHAR(3),
    ccv_amex VARCHAR(4),
    user_id BIGINT,
    dt_current_timestamp VARCHAR
) WITH (
    external_location = 's3a://landing/com.owshq.data/mongodb/stripe/parquet',
    format = 'PARQUET'
);

-- mongodb_users_parquet
DROP TABLE minio.landing.mongodb_users_parquet;
CREATE TABLE minio.landing.mongodb_users_parquet (
    id BIGINT,
    uid VARCHAR,
    password VARCHAR,
    first_name VARCHAR,
    last_name VARCHAR,
    username VARCHAR,
    email VARCHAR,
    avatar VARCHAR,
    gender VARCHAR,
    phone_number VARCHAR,
    social_insurance_number VARCHAR,
    date_of_birth VARCHAR,
    employment ROW(key_skill VARCHAR, title VARCHAR),
    address ROW(
        city VARCHAR,
        coordinates ROW(lat DOUBLE, lng DOUBLE),
        country VARCHAR,
        state VARCHAR,
        street_address VARCHAR,
        street_name VARCHAR,
        zip_code VARCHAR
    ),
    credit_card ROW(cc_number VARCHAR),
    subscription ROW(payment_method VARCHAR, plan VARCHAR, status VARCHAR, term VARCHAR),
    user_id BIGINT,
    dt_current_timestamp VARCHAR,
    cpf VARCHAR
) WITH (
    external_location = 's3a://landing/com.owshq.data/mongodb/users/parquet',
    format = 'PARQUET'
);