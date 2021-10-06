create DATABASE TestDB

USE TestDB

create TABLE dbo.testTable
(
    id INTEGER IDENTITY PRIMARY KEY,
    dataval NVARCHAR(50)
);
go


INSERT INTO dbo.testTable
VALUES
(newid());
GO 10

SELECT [id]
      ,[dataval]
  FROM [TestDB].[dbo].[testTable]