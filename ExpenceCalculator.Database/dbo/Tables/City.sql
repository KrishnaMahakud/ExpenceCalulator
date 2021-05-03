CREATE TABLE [dbo].[City] (
    [CityId]    INT           IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (50) NULL,
    [StateId]   INT           NULL,
    [IsActive]  BIT           NULL,
    [CreatedBy] INT           NULL,
    [CreatedOn] DATETIME      NULL,
    [UpdateBy]  INT           NULL,
    [UpdatedOn] DATETIME      NULL,
    CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED ([CityId] ASC),
    CONSTRAINT [FK_City_State] FOREIGN KEY ([StateId]) REFERENCES [dbo].[State] ([StateId])
);

