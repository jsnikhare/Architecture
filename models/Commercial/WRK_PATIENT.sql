{{ config(
    materialized="table",
    database="DEV_GR_FDH_DB",
    schema = "COMMERCIAL"
) }}

with PATIENT_HEADER_FILTERED as (
    select * from {{ ref('PATIENT_HEADER') }}
),
PATIENT_DETAILS_FILTERED as (
    select * from {{ ref('PATIENT_DETAILS') }}
)
select
	e.PATIENT_ID as PATIENT_ID, 
	FIRST_NAME ,
    LAST_NAME ,
    DOB  ,
    GENDER ,
	CITY ,
    ADDRESS ,
    PHONE_NUMBER ,
    EMAIL ,
    INSURANCE_PROVIDER ,
    INSURANCE_POLICY_NUMBER ,
    ALLERGIES ,
    MEDICAL_HISTORY,
	RECORD_ID ,
	DIAGNOSIS ,
	TREATMENT ,
	ADMISSIONDATE ,
	DISCHARGEDATE ,
	DEVICE ,
	CATEGORY ,
	OU ,
	BU ,
	APPLICANT ,
	STATUS ,
	BILL_AMOUNT ,
	BILL_DATE ,
	PAYMENT 	
from PATIENT_HEADER_FILTERED e
join PATIENT_DETAILS_FILTERED d 
on e.PATIENT_ID = d.PATIENT_ID
and STATUS = 'Active'
and ADMISSIONDATE > '01-Jan-2000'
