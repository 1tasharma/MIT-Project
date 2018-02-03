--Schema for store User Details and validate the active users.
DROP TABLE IF EXISTS [dbo].[tblUserDetails]
CREATE TABLE tblUserDetails(
Id INT IDENTITY(1,1) NOT NULL,
[UserName] VARCHAR(100) NOT NULL,
[Password] VARCHAR(100) NOT NULL,
[Status] BIT NOT NULL,
[Description] varchar(256) NULL,
[CreatedDate] DATETIME NOT NULL,
[UpdatedDate] DATETIME NOT NULL
primary key (Id)
)

--Insert Script for First USer, you guys can add further user from database directly instead of HTML page.
USE [MIT]
GO
INSERT INTO [dbo].[tblUserDetails] ([UserName],[Password],[Status],[Description],[CreatedDate],[UpdatedDate]) VALUES ('ekta', 'sharma',1 , 'developer',CONVERT(DATETIME, GETDATE()), CONVERT(DATETIME, GETDATE()))
GO


 