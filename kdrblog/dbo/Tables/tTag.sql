CREATE TABLE [dbo].[tTag] (
    [IDTag]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (20) NOT NULL,
    [NumberOfUse] INT           CONSTRAINT [DF_tTag_NumberOfUse] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tTag] PRIMARY KEY CLUSTERED ([IDTag] ASC)
);

