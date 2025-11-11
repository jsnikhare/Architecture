{{ config(
    materialized="view",
    database="DEV_GR_UDH_DB",
    schema = "COMMERCIAL_MITG"
) }}

SELECT *
FROM DEV_GR_FDH_DB.COMMERCIAL.WRK_PATIENT