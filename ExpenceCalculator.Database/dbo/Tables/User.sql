CREATE TABLE [dbo].[User] (
    [UserId]    INT            IDENTITY (1, 1) NOT NULL,
    [UserName]  NVARCHAR (100) NULL,
    [Password]  NVARCHAR (100) NULL,
    [DOB]       DATE           NULL,
    [Gender]    NVARCHAR (50)  NULL,
    [IsActive]  BIT            NULL,
    [CreatedBy] INT            NULL,
    [CreatedOn] DATETIME       NULL,
    [UpdateBy]  INT            NULL,
    [UpdatedOn] DATETIME       NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

