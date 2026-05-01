WITH base AS (
    SELECT * FROM {{ ref('stg_weather') }}
)

SELECT
    city,
    ROUND(AVG(temperature), 1)                                    AS avg_temp,
    ROUND(MIN(temperature), 1)                                    AS min_temp,
    ROUND(MAX(temperature), 1)                                    AS max_temp,
    ROUND(STDDEV(temperature), 2)                                 AS stddev_temp,
    ROUND(AVG(wind_speed), 2)                                     AS avg_wind_speed,
    ROUND(AVG(humidity), 1)                                       AS avg_humidity,
    ROUND(COUNTIF(rain_probability > 0.5) / COUNT(*) * 100, 1)   AS rain_rate_pct,
    COUNTIF(temperature > 35 OR wind_speed > 10)                  AS extreme_conditions
FROM base
GROUP BY city