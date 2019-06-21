CREATE TABLE [dbo].[tPageImg] (
    [IDPage]  INT     NOT NULL,
    [IDImg]   INT     NOT NULL,
    [OrderNo] INT     NOT NULL,
    [Status]  TINYINT NOT NULL,
    CONSTRAINT [PK_tPageImg] PRIMARY KEY CLUSTERED ([IDPage] ASC, [IDImg] ASC),
    CONSTRAINT [FK_tPageImg_tImg] FOREIGN KEY ([IDImg]) REFERENCES [dbo].[tImg] ([IDImg]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 İptal, 1 Aktif, 2 Headar', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tPageImg', @level2type = N'COLUMN', @level2name = N'Status';

