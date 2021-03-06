CREATE TABLE [dbo].[UserRole] (
    [UserRoleId] INT      IDENTITY (1, 1) NOT NULL,
    [UserId]     INT      NULL,
    [RoleId]     INT      NULL,
    [IsActive]   BIT      NULL,
    [CreatedBy]  INT      NULL,
    [CreatedOn]  DATETIME NULL,
    [UpdateBy]   INT      NULL,
    [UpdatedOn]  DATETIME NULL,
    CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED ([UserRoleId] ASC),
    CONSTRAINT [FK_UserRole_Role] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([RoleId]),
    CONSTRAINT [FK_UserRole_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId])
);

