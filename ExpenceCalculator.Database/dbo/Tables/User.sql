CREATE TABLE [dbo].[User] (
    [UserId]   INT            IDENTITY (1, 1) NOT NULL,
    [UserName] NVARCHAR (100) NULL,
    [Password] NVARCHAR (100) NULL,
    [DOB]      DATE           NULL,
    [Gender]   NVARCHAR (50)  NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

