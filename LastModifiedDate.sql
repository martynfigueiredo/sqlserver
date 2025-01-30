-- LastModifiedDate.sql
-- Change Database Name

USE [AdventureWorks2022]
GO
SELECT 
    name AS ObjectName, 
    type_desc AS ObjectType, 
    modify_date AS LastModified
FROM sys.objects
WHERE type IN ('U', 'P', 'FN', 'V', 'TR') -- U = Table, P = Stored Proc, FN = Function, V = View, TR = Trigger
ORDER BY modify_date DESC;
