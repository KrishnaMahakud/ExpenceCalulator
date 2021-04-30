CREATE TABLE [dbo].[UserLedger] (
    [UserLedgerId]         INT           IDENTITY (1, 1) NOT NULL,
    [UserId]               INT           NULL,
    [ManagementTypeListId] INT           NULL,
    [Amount]               NVARCHAR (50) NULL,
    [Date]                 DATE          NULL,
    CONSTRAINT [PK_UserLedger] PRIMARY KEY CLUSTERED ([UserLedgerId] ASC),
    CONSTRAINT [FK_UserLedger_ManagementTypeList] FOREIGN KEY ([ManagementTypeListId]) REFERENCES [dbo].[ManagementTypeList] ([ManagementTypeLIstId]),
    CONSTRAINT [FK_UserLedger_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId])
);

