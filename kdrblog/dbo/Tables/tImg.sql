CREATE TABLE [dbo].[tImg] (
    [IDImg]    INT            IDENTITY (1, 1) NOT NULL,
    [FileName] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_tImg] PRIMARY KEY CLUSTERED ([IDImg] ASC)
);

