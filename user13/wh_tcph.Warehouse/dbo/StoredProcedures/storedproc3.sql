CREATE PROC [dbo].[storedproc3]
@param1 int,
@param2 int
AS
BEGIN
select [_].[MyKeyField]
from [wh_tcph].[dbo].[TestTableSize] as [_]
where [_].[MyKeyField] = '123' and [_].[MyKeyField] is not null;
END