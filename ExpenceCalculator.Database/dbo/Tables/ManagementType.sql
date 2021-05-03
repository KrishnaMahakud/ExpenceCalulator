CREATE TABLE [dbo].[ManagementType] (
    [ManagementTypeId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]             NVARCHAR (100) NULL,
    [IsActive]         BIT            NULL,
    [CreatedBy]        INT            NULL,
    [CreatedOn]        DATETIME       NULL,
    [UpdateBy]         INT            NULL,
    [UpdatedOn]        DATETIME       NULL,
    CONSTRAINT [PK_ManagementType] PRIMARY KEY CLUSTERED ([ManagementTypeId] ASC)
);

