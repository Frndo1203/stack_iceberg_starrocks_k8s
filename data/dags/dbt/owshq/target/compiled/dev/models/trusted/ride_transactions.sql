

WITH user AS (

    SELECT
        *
    FROM
        "iceberg"."landing"."users"
),
vehicle AS (
    SELECT
        *
    FROM
        "iceberg"."landing"."postgres_vehicle"
),
subscription AS (
    SELECT
        *
    FROM
        "iceberg"."landing"."postgres_subscription"
),
stripe AS (
    SELECT
        *
    FROM
        "iceberg"."landing"."mongodb_stripe"
),
payment AS (
    SELECT
        *
    FROM
        "iceberg"."landing"."postgres_payments"
)
SELECT
    rides.ride_id AS ride_id,
    rides.user_id AS user_id,
    rides.vehicle_id AS vehicle_id,
    rides.subscription_id AS subscription_id,
    rides.stripe_id AS stripe_id,
    rides.payment_id AS payment_id,
    user.full_name AS user_full_name,
    user.cpf AS user_cpf,
    rides.source AS source,
    rides.destination AS destination,
    rides.estimated_price AS estimated_price,
    rides.surge_multiplier AS dynamic_fare,
    rides.price AS price,
    vehicle.name AS vehicle_name,
    vehicle.year AS vehicle_year,
    vehicle.km_driven AS vehicle_km_driven,
    vehicle.seats AS vehicle_seats,
    subscription.plan AS subscription_plan,
    subscription.status AS subscription_status,
    subscription.payment_method AS subscription_payment_method,
    stripe.identifier AS stripe_identifier,
    stripe.card_type AS stripe_card_type,
    payment.city AS payment_city,
    payment.country AS payment_country,
    payment.currency AS payment_currency,
    payment.credit_card_type AS payment_credit_card_type,
    payment.price AS payment_price
FROM
    "iceberg"."landing"."mongodb_rides" AS rides
    LEFT OUTER JOIN USER AS USER
    ON rides.user_id = USER.user_id
    LEFT OUTER JOIN vehicle AS vehicle
    ON rides.vehicle_id = vehicle.vehicle_id
    LEFT OUTER JOIN subscription AS subscription
    ON rides.subscription_id = subscription.subscription_id
    LEFT OUTER JOIN stripe AS stripe
    ON rides.stripe_id = stripe.stripe_id
    LEFT OUTER JOIN payment AS payment
    ON rides.payment_id = payment.payment_id