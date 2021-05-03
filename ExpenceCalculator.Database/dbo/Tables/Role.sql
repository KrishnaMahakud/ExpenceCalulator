CREATE TABLE [dbo].[Role] (
    [RoleId]    INT           IDENTITY (1, 1) NOT NULL,
    [RoleName]  NVARCHAR (50) NULL,
    [IsActive]  BIT           NULL,
    [CreatedBy] INT           NULL,
    [CreatedOn] DATETIME      NULL,
    [UpdateBy]  INT           NULL,
    [UpdatedOn] DATETIME      NULL,
    CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED ([RoleId] ASC)
);

