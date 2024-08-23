# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "462fb7ae-b762-4b36-a690-05cd527b5232",
# META       "default_lakehouse_name": "lh_nhs_open_data",
# META       "default_lakehouse_workspace_id": "8fe40bbb-ca75-4743-948c-f527f765f011"
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!

df = spark.sql("SELECT * FROM lh_nhs_open_data.Clinics LIMIT 1000")
display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
