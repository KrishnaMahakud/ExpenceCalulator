CREATE TABLE [dbo].[ManagementTypeList] (
    [ManagementTypeLIstId] INT            IDENTITY (1, 1) NOT NULL,
    [ManagementTypeId]     INT            NULL,
    [Name]                 NVARCHAR (100) NULL,
    [IsActive]             BIT            NULL,
    [CreatedBy]            INT            NULL,
    [CreatedOn]            DATETIME       NULL,
    [UpdateBy]             INT            NULL,
    [UpdatedOn]            DATETIME       NULL,
    CONSTRAINT [PK_ManagementTypeList] PRIMARY KEY CLUSTERED ([ManagementTypeLIstId] ASC),
    CONSTRAINT [FK_ManagementTypeList_ManagementType] FOREIGN KEY ([ManagementTypeId]) REFERENCES [dbo].[ManagementType] ([ManagementTypeId])
);

