CREATE TABLE [dbo].[FrequencyType] (
    [FrequencyTypeId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]            NVARCHAR (100) NULL,
    [IsActive]        BIT            NULL,
    CONSTRAINT [PK_FrequencyType] PRIMARY KEY CLUSTERED ([FrequencyTypeId] ASC)
);

