# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "4a32c036-a68e-4c66-9439-e386164e0b05",
# META       "default_lakehouse_name": "lh_curated_datasets",
# META       "default_lakehouse_workspace_id": "3d3277ab-76bb-4bdf-8f97-cb42d696a5bc"
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC drop table if exists lh_curated_datasets.join_1;
# MAGIC 
# MAGIC create table lh_curated_datasets.join_1 as
# MAGIC select c.*, o.orderkey, o.orderstatus, o.totalprice, 
# MAGIC o.orderdate, o.orderpriority, o.clearkdate, o.shippriority, 
# MAGIC o.comment as ordercomment, l.partkey, l.suppkey, l.linenumber, l.quantity, l.extendedprice,
# MAGIC l.discount, l.tax, l.returnflag, l.linestatus, l.shipdate, l.commitdate, l.receiptdate,
# MAGIC l.shipinstruct, l.shipmode, l.comment as itemcomment, p.name as partname, p.mfgr, p.brand, p.type, p.size, p.container, p.retailprice, p.comment as partcomment,
# MAGIC  n.name as nationname, n.comment as nationcomment, n.regionkey, r.name as regionname, r.comment as regioncomment
# MAGIC from lh_tpch13.customer c
# MAGIC left join lh_tpch13.orders o on o.custkey = c.custkey
# MAGIC left join lh_tpch13.lineitem l on l.orderkey = o.orderkey
# MAGIC left join lh_tpch13.part p on p.partkey = l.partkey
# MAGIC left join lh_tpch13.nation n on n.nationkey = c.nationkey
# MAGIC left join lh_tpch13.region r on r.regionkey = n.regionkey;

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
