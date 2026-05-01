SELECT
    _fivetran_synced,
    CAST(JSON_VALUE(value, '$.humidity')    AS FLOAT64)    AS humidity,
    CAST(JSON_VALUE(value, '$.temperature') AS FLOAT64)    AS temperature,
    CAST(JSON_VALUE(value, '$.timestamp')   AS TIMESTAMP)  AS timestamp,
    JSON_VALUE(value, '$.zone')                            AS zone
FROM `fivetran-007.logistics.student_rudy_tripier_entrepot_zone_temperature`