-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "synapse_pyspark"
-- META   },
-- META   "dependencies": {
-- META     "lakehouse": {
-- META       "default_lakehouse": "de5de379-7aea-45a1-b22f-d784ae1f540c",
-- META       "default_lakehouse_name": "lh_tpch16",
-- META       "default_lakehouse_workspace_id": "e9f29407-14e1-4eb4-ace3-3e536fd9225a"
-- META     }
-- META   }
-- META }

-- CELL ********************

SELECT * FROM lh_tpch16.customer c
LEFT JOIN lh_tpch16.nation n
ON n.nationkey = c.nationkey
LEFT JOIN lh_tpch16.region r 
ON r.regionkey = n.regionkey
WHERE c.mktsegment = 'AUTOMOBILE'
    AND r.name != 'A%'
LIMIT 10000
 

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }
