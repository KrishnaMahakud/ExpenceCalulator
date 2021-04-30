CREATE TABLE [dbo].[UserDetails] (
    [UserDetailsId] INT            IDENTITY (1, 1) NOT NULL,
    [UserId]        INT            NULL,
    [Address1]      NVARCHAR (100) NULL,
    [Address2]      NVARCHAR (100) NULL,
    [CityId]        INT            NULL,
    CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED ([UserDetailsId] ASC),
    CONSTRAINT [FK_UserDetails_City] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([CityId]),
    CONSTRAINT [FK_UserDetails_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId])
);

