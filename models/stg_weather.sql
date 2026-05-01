WITH source AS (
    SELECT * FROM `big-pipe.raw.raw_weather`
)

SELECT
    city,
    CAST(dt_txt AS STRING)                    AS forecast_datetime,
    ROUND(CAST(temp AS FLOAT64), 1)           AS temperature,
    CAST(humidity AS INT64)                   AS humidity,
    ROUND(CAST(wind_speed AS FLOAT64), 2)     AS wind_speed,
    weather_main                              AS weather_condition,
    ROUND(CAST(pop AS FLOAT64), 2)            AS rain_probability
FROM source