CREATE TABLE [dbo].[tCat] (
    [IDCat]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (20) NOT NULL,
    [NumberOfUse] INT           CONSTRAINT [DF_tCat_NumberOfUse] DEFAULT ((0)) NOT NULL,
    [Status]      BIT           NOT NULL,
    CONSTRAINT [PK_tCat] PRIMARY KEY CLUSTERED ([IDCat] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 Pasif 1 Aktif', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tCat', @level2type = N'COLUMN', @level2name = N'Status';

