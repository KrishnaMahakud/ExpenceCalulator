CREATE TABLE [dbo].[ManagementTypeList] (
    [ManagementTypeLIstId] INT            IDENTITY (1, 1) NOT NULL,
    [ManagementTypeId]     INT            NULL,
    [Name]                 NVARCHAR (100) NULL,
    CONSTRAINT [PK_ManagementTypeList] PRIMARY KEY CLUSTERED ([ManagementTypeLIstId] ASC),
    CONSTRAINT [FK_ManagementTypeList_ManagementType] FOREIGN KEY ([ManagementTypeId]) REFERENCES [dbo].[ManagementType] ([ManagementTypeId])
);

