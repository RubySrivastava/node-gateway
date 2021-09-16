-- Create a new database called 'temp_humidity_db'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'temp_humidity_db'
)
CREATE DATABASE temp_humidity_db
GO
-- Create a new table called 'temp1' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.temp1', 'U') IS NOT NULL
DROP TABLE dbo.temp1
GO
-- Create the table in the specified schema
CREATE TABLE dbo.temp1
(
    gatewayId CHAR(20) NOT NULL PRIMARY KEY, -- primary key column
    sensorID char(4) NOT NULL,
    TIMESTAMP TIMESTAMP NOT NULL
    -- specify more columns here
);
GO
INSERT INTO temp1
   ([gatewayId],[sensorID])
VALUES
   ( '465689090', '5768'),
   ( '87654987', '7654')
GO

SELECT * FROM dbo.temp1 
GO