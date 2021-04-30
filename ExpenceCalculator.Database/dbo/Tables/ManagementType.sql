CREATE TABLE [dbo].[ManagementType] (
    [ManagementTypeId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]             NVARCHAR (100) NULL,
    CONSTRAINT [PK_ManagementType] PRIMARY KEY CLUSTERED ([ManagementTypeId] ASC)
);

