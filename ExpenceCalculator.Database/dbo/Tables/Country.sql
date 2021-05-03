CREATE TABLE [dbo].[Country] (
    [CountryId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (50) NULL,
    [IsActive]  BIT           NULL,
    [CreatedBy] INT           NULL,
    [CreatedOn] DATETIME      NULL,
    [UpdateBy]  INT           NULL,
    [UpdatedOn] DATETIME      NULL,
    CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([CountryId] ASC)
);

