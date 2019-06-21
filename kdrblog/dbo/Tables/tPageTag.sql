CREATE TABLE [dbo].[tPageTag] (
    [IDPage]  INT           NOT NULL,
    [IDTag]   INT           NOT NULL,
    [OrderNo] INT           NOT NULL,
    [Code]    NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_tPageTag] PRIMARY KEY CLUSTERED ([IDPage] ASC, [IDTag] ASC),
    CONSTRAINT [FK_tPageTag_tTag] FOREIGN KEY ([IDTag]) REFERENCES [dbo].[tTag] ([IDTag])
);

