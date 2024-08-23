CREATE VIEW [dbo].[test_view] AS (select [_].[MyKeyField]
from [wh_tcph].[dbo].[TestTableSize] as [_]
where [_].[MyKeyField] = '123' and [_].[MyKeyField] is not null)