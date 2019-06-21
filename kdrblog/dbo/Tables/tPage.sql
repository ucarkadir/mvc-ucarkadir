CREATE TABLE [dbo].[tPage] (
    [IDPage]      INT            IDENTITY (1, 1) NOT NULL,
    [IDCat]       INT            CONSTRAINT [DF_tPage_IDCat] DEFAULT ((0)) NOT NULL,
    [IDContent]   INT            CONSTRAINT [DF_tPage_IDContent] DEFAULT ((0)) NOT NULL,
    [Name]        NVARCHAR (255) NOT NULL,
    [ShortName]   NVARCHAR (255) NOT NULL,
    [Url]         NVARCHAR (255) NOT NULL,
    [PageDate]    DATETIME       NOT NULL,
    [Text]        NVARCHAR (MAX) NOT NULL,
    [ShortText]   NVARCHAR (255) NOT NULL,
    [NumberOfUse] INT            CONSTRAINT [DF_tPage_NumberOfUse] DEFAULT ((0)) NOT NULL,
    [Status]      INT            CONSTRAINT [DF_tPage_Status] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_tPage_IDPage] PRIMARY KEY CLUSTERED ([IDPage] ASC),
    CONSTRAINT [FK_tPage_tCat] FOREIGN KEY ([IDCat]) REFERENCES [dbo].[tCat] ([IDCat]),
    CONSTRAINT [IX_tPage_Url] UNIQUE NONCLUSTERED ([Url] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 Pasif, 1 Aktif, 2 Diğer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tPage', @level2type = N'COLUMN', @level2name = N'Status';

