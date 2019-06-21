CREATE TABLE [dbo].[tContent] (
    [IDContent] INT            IDENTITY (0, 1) NOT NULL,
    [Header]    NVARCHAR (255) NOT NULL,
    [HeaderSub] NVARCHAR (255) NOT NULL,
    [Text]      NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_tContent] PRIMARY KEY CLUSTERED ([IDContent] ASC)
);

