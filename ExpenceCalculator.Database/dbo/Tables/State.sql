CREATE TABLE [dbo].[State] (
    [StateId]   INT           IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (50) NULL,
    [CountryId] INT           NULL,
    [IsActive]  BIT           NULL,
    [CreatedBy] INT           NULL,
    [CreatedOn] DATETIME      NULL,
    [UpdateBy]  INT           NULL,
    [UpdatedOn] DATETIME      NULL,
    CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED ([StateId] ASC),
    CONSTRAINT [FK_State_Country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([CountryId])
);

