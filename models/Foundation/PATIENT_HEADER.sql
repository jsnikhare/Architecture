{{ config(
    materialized='view',
    database='DEV_GR_FDH_DB'
) }}

SELECT *
FROM DEV_SDH_DB.ARIBA.PATIENT_HEADER