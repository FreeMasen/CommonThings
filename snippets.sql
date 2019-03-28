--MSSQLS Snippets

-- Find all tables with a specified column name

SELECT t.name as TableName, c.name as ColumnName, ty.name as DataType, c.max_length as Size
FROM sys.columns c
	JOIN sys.tables  t 
	ON c.object_id = t.object_id
	join sys.types ty
	on c.user_type_id = ty.user_type_id
WHERE       c.name LIKE '%%'
ORDER BY TableName, ColumnName
