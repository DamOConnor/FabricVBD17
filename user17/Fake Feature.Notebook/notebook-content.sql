-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "synapse_pyspark"
-- META   },
-- META   "dependencies": {
-- META     "lakehouse": {
-- META       "default_lakehouse": "35817fc6-488b-47bf-a2bc-2e415ba665a7",
-- META       "default_lakehouse_name": "fake_pole_data",
-- META       "default_lakehouse_workspace_id": "6870952c-1ae9-4199-a9c4-cb885f0873ea"
-- META     }
-- META   }
-- META }

-- MARKDOWN ********************

-- 1. **<u>Load in the parquet file</u>**

-- CELL ********************

CREATE OR REPLACE TEMP VIEW event
AS
SELECT *
FROM parquet.`Files/fake_data.parquet`;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- MARKDOWN ********************

-- 2. **<u>Filter out expiry dates in the past</u>**

-- CELL ********************

-- Query to filter rows where expiry_date is in the future
SELECT *
FROM event
WHERE expiry_date > current_date();

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

CREATE OR REPLACE TEMP VIEW service
AS
SELECT *
FROM parquet.`Files/service.parquet`;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- Perform a left join between events and service tables on service_delivery_id
SELECT
    event.*,       -- Select all columns from the events table
    service.*       -- Select all columns from the service table
FROM
    event
LEFT JOIN
    service
ON
    event.service_delivery_id = service.service_delivery_id;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- Perform a left join between events and service tables on service_delivery_id
SELECT
    event.*,       -- Select all columns from the events table
    service.*       -- Select all columns from the service table
FROM
    event
LEFT JOIN
    service
ON
    event.service_delivery_id = service.service_delivery_id;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }
