USE [BLOGKADIR]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDEfNTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tCat]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCat](
	[IDCat] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[NumberOfUse] [int] NOT NULL CONSTRAINT [DF_tCat_NumberOfUse]  DEFAULT ((0)),
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_tCat] PRIMARY KEY CLUSTERED 
(
	[IDCat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tContent]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tContent](
	[IDContent] [int] IDENTITY(0,1) NOT NULL,
	[Header] [nvarchar](255) NOT NULL,
	[HeaderSub] [nvarchar](255) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tContent] PRIMARY KEY CLUSTERED 
(
	[IDContent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tImg]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tImg](
	[IDImg] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tImg] PRIMARY KEY CLUSTERED 
(
	[IDImg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPage]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPage](
	[IDPage] [int] IDENTITY(1,1) NOT NULL,
	[IDCat] [int] NOT NULL CONSTRAINT [DF_tPage_IDCat]  DEFAULT ((0)),
	[IDContent] [int] NOT NULL CONSTRAINT [DF_tPage_IDContent]  DEFAULT ((0)),
	[Name] [nvarchar](255) NOT NULL,
	[ShortName] [nvarchar](255) NOT NULL,
	[Url] [nvarchar](255) NOT NULL,
	[PageDate] [datetime] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[ShortText] [nvarchar](255) NOT NULL,
	[NumberOfUse] [int] NOT NULL CONSTRAINT [DF_tPage_NumberOfUse]  DEFAULT ((0)),
	[Status] [int] NOT NULL CONSTRAINT [DF_tPage_Status]  DEFAULT ((1)),
 CONSTRAINT [PK_tPage_IDPage] PRIMARY KEY CLUSTERED 
(
	[IDPage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPageImg]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPageImg](
	[IDPage] [int] NOT NULL,
	[IDImg] [int] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_tPageImg] PRIMARY KEY CLUSTERED 
(
	[IDPage] ASC,
	[IDImg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPageTag]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPageTag](
	[IDPage] [int] NOT NULL,
	[IDTag] [int] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[Code] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_tPageTag] PRIMARY KEY CLUSTERED 
(
	[IDPage] ASC,
	[IDTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tTag]    Script Date: 6/20/2019 11:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTag](
	[IDTag] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[NumberOfUse] [int] NOT NULL CONSTRAINT [DF_tTag_NumberOfUse]  DEFAULT ((0)),
 CONSTRAINT [PK_tTag] PRIMARY KEY CLUSTERED 
(
	[IDTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201901151923064_InitialCreate', N'UcarKadir.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A7738AD4CAE5EC624F60B7489DA427E8E68275529CB7052DD10EB112A54A543641D15FD687FEA4FE8533942859E245175BB19DA240118BC36F86C32167381CEE5F7FFC39FEE139F0AD271C2724A413FB6874685B98BAA147E87262A76CF1DD07FB87EFFFF1CDF8C20B9EAD5F0ABA134E073D6932B11F198B4E1D27711F7180925140DC384CC2051BB961E0202F748E0F0FFFE31C1D3918206CC0B2ACF1A7943212E0EC07FC9C86D4C5114B917F1D7AD84FC477689965A8D60D0A701221174FEC0717C53F238FC4A39CD6B6CE7C82408E19F617B685280D196220E5E94382672C0EE97216C107E4DFBF4418E816C84FB090FE7445DE752087C77C20CEAA6301E5A6090B839E80472742338EDC7D2DFDDAA5E6407717A063F6C2479DE96F625F7938FBF429F4410132C3D3A91F73E2897D5DB2384BA21BCC4645C7510E791903DCD730FE32AA221E589DFB1D9496743C3AE4FF1D58D3D467698C2714A72C46FE817597CE7DE2FE8C5FEEC32F984E4E8EE68B930FEFDE23EFE4FDBFF1C9BBEA4861AC4057FB009FEEE230C231C88617E5F86DCBA9F773E48E65B74A9F5C2B604BB0286CEB1A3D7FC474C91E61B91C7FB0AD4BF28CBDE28B30AE074A600D412716A7F0F326F57D34F771D9EE34F2E4FF6FE07AFCEEFD205C6FD0135966532FF1878513C3BAFA84FDAC35792451BEBC6AF3FD59905DC661C07FD7ED2B6FFD3C0BD3D8E583098D24F7285E6256976EECAC8CB7934973A8E1CDBA40DD7FD3E692AAE6AD25E5035A6725142CB6BD1A0A795F976F678B3B8B2298BCCCB4B8469A0C4E765523A9EF815552ACCCE6A8ABD95018CEDF7917BC0810F107D8063B7081F86341E20097A3FC3104A343B4B7CC7728496017F0FE8B92C706D1E1CF01449F61378DC138670C05D1AB73BB7B0C29BE498339B7F9EDF11A6C6AEEBF8697C865617C4179AF8DF13E86EE97306517D43B470C3F30B700E43FEF49D01D601071CE5C1727C9251833F6A62184D705E0156527C7BDE1F8F6B4EB3064EA2312E8E3106923FD5C90AE62113D85128F18C874314993A81FC325A1DD442D48CDA2E614ADA20AB2BEA272B06E920A4AB3A01941AB9C39D560515E3643C3877919ECFEC7799B396FD35E5051E30C7648FC13A638866DCCBB438CE198AE66A0CBBEB18B60219B3ECEF4D57D53C6E917E4A743B35A6B35649BC0F0AB2183DDFFD59089099F9F88C7A3920E879F8218E03BD1EBCF55ED6B4E926CDBCBA136CC6D33DFCE1E605A2E674912BA245B059AB497485AD4E58718CE6ACF60E4A391B32030303074C25D1E7C81B1D9B251DDD273EC6386AD33374F0B4E51E2224F55230CC8EB2158E1513582ADB22175E1BE557882A5E3987742FC1094C04A2594A9CB82509744C86FD592D4B3A30BE3632F79C82DE738C294336CD54417E6FAE40717A0E4234D4A9B86C64EC5E29A0DD110B59AE6BC2D845DCDBB9293D88A4DB6C4CE06BB14F1DBAB1866B3C6B6609CCD2AE922803191B70B03156795AE06201F5CF6CD40A51393C1404548B51503AD6B6C07065A57C99B33D0FC88DA75FEA5F3EABE9967FDA0BC7DB7DEA8AE1DD8664D1F7B669A79EC097D18F4C0B16A9EE773DE889F99E67006728AF35922425DD94438F80CB37ACA6615EF6AE350A7194436A226C095A1B5808A2B40054859503D842B72798DD28928A2076C91776B84157BBF045BB10115BB7A155A21345F98CAC6D9E9F4518EACB406C5C83B1D162A381A839037AFFAC03B28C594975515D32516EE130D57062626A341412D91AB4149C56006D752619AED5AD205647D42B28DB424854F062D1583195C4BC246DB95A4090A7A84051BA9A8EEC2075A6C45A6A3F43665DBD8C9EBA3C487B16328A41A5FA32822745929AC125FAC595E5535FD6ED6BFE028C8311C37D1D41D95D2969C5818A325965A8135487A49E2849D2386E688E779A65EA090697DAB61FB2F5856DDA73A89851F28A8F9DFC2ADC917F7354FAB862202E112C617F078264BA26B665FDFDDE2656EC847B1266F3F0DFD34A0E6F0CADC3BBFBDABF6CFBFA8086347925F099F145D29416E5DF19DA6455D12834C5119BBAC3F4D660893B28BC8B3AA6E53346A46299253551453C26A67D3660A627A4C951C1DF69FA95684D75953A224A50A203EF5C4A85435286095B6EEA8F5C2932A66BDA53BA2545D5285949A7A4859AD21A909596D580BCFA0513D45770E6AD548155D6DED8EACA91FA9426B9AD7C0D6C82CB77547D59498548135CDDDB157F526F216BAC75ECB786659D36DE587DACDFC9601E375F6C361DC5EE5EEBE0A54F9DC134BDCCE2B60E2FB5EDA92F164B7A62DE5998CCD6CC98061DE756A77DEF54DA7F1A2DE8C59BBC8AE6DEC4D17F966BC7E16FBAA76A11CEB6492927B79BC938E716371A46A7F34A39CB17212DB2AD4084EFD256138187182D1EC577FEA13CCB7F082E01A51B2C009CB8B37ECE3C3A363E9E5CDFEBC827192C4F3354752D35398FA9C6DA10E8B3EA1D87D44B15A15B1C14B9115A89270BEA21E7E9ED8BF65BD4EB3DC05FF2BFB7C605D250F94FC9A42C37D9C62EB77B5CA7398CAF90E6F354A417F7F138F20BAABFCEA7F9FF3AE07D66D0CCBE9D43A9414BDCEF4D79F46F49226EFBA81346B3F9878BBABADF622418B2AAD96F51F20CC091BE4F14121E53F03F4FCAFBEA2691F186C84A879443014DE202A343D125807CBF840C0839F2C7B20D06FB0FA0703EB88667C2C40687F30F9A940F76DA8E8B9433FA4392E6D634BCAF4DC5A6ABD51DDE5AE7D935291BDD14257ABAE7BC00D5A59BD5988F2C62A9607739D9A82E4C1B07769F7AF5E85BC2F85C7ABA07DB7F5C6DB2C316EB84AFA5B5516EF412D9CA6B667F7F5C3DBB63553FE77CF8B30FB5509EF99B10937BFFB5AE06D1B9B2941BCE7C6D6ABE277CF6C6D57FE73C796D6D985EEBC7E572D4532DCE3E8B2C86DF5B979CA1D8EFFF3108C208F28F36795FA82B0A662D616862B12335373259ACC5859380A5F85A2996DBFB10A87DF385841D3CCD650BFD9C45BECFF8DBC054D336F4355E42E2A8BB57589BA6AEF967DACA970EA2D5512D746D252B8DE16B3365ECABFA5C2E14194525B3D86DBE5B753273C884A865C3A3DEA82D58B62F09D957F8311FC7742962B08FE2F3252ECD6BC664973451761E1BC25890A122943738D19F2C0A59EC58C2C90CBA09927A0B377E159528F5F83CCB177456F5316A50C868C83B95F4B78F120A0897F56FC5C97797C1BF15FC910430031094FDCDFD21F53E27BA5DC979A9C900182471722DDCBE792F1B4EFF2A544BA09694720A1BE3228BAC741E40358724B67E809AF231B98DF47BC44EECB2A036802699F88BADAC7E7042D6314240263D51F7E820D7BC1F3F7FF07C2AA3BF38A540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8c738838-424d-41e2-bf7a-99e69ce0322a', N'ucarkadir@outlook.com', 0, N'AC7RSZ8vpiE3OguokTxqzGTUo5doKmkUVkhcCQ1qXRvg4plw7KHr57u/Ef8Rvqh+0g==', N'2101e955-81d3-4fe1-b616-cea4e2048184', NULL, 0, 0, NULL, 1, 0, N'ucarkadir@outlook.com')
GO
SET IDENTITY_INSERT [dbo].[tCat] ON 

GO
INSERT [dbo].[tCat] ([IDCat], [Name], [NumberOfUse], [Status]) VALUES (0, N'Cat', 0, 1)
GO
INSERT [dbo].[tCat] ([IDCat], [Name], [NumberOfUse], [Status]) VALUES (1, N'Dance', 3, 1)
GO
INSERT [dbo].[tCat] ([IDCat], [Name], [NumberOfUse], [Status]) VALUES (2, N'LifeStyle', 1, 1)
GO
INSERT [dbo].[tCat] ([IDCat], [Name], [NumberOfUse], [Status]) VALUES (3, N'Spor', 4, 1)
GO
INSERT [dbo].[tCat] ([IDCat], [Name], [NumberOfUse], [Status]) VALUES (4, N'Tech', 2, 1)
GO
INSERT [dbo].[tCat] ([IDCat], [Name], [NumberOfUse], [Status]) VALUES (5, N'Travel', 5, 1)
GO
SET IDENTITY_INSERT [dbo].[tCat] OFF
GO
SET IDENTITY_INSERT [dbo].[tContent] ON 

GO
INSERT [dbo].[tContent] ([IDContent], [Header], [HeaderSub], [Text]) VALUES (0, N'Content Header', N'Content Header', N'Content Text')
GO
INSERT [dbo].[tContent] ([IDContent], [Header], [HeaderSub], [Text]) VALUES (1, N'Lorem Ipsum', N'Lorem Ipsum', N'<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc condimentum dui magna, at sollicitudin mauris pretium a. Donec varius purus sit amet diam venenatis malesuada. Etiam at quam quis quam eleifend pharetra eget quis elit. Nulla leo odio, aliquet ut rhoncus pulvinar, mattis nec massa. Cras suscipit est felis, sit amet congue quam fermentum vel. Proin volutpat ut lectus eget egestas. In id arcu orci.
</p>
<p>
Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam tristique finibus ullamcorper. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vel auctor arcu, nec aliquet tortor. Pellentesque malesuada velit blandit, ultricies dui sed, sollicitudin est. Vivamus lacus nisi, tempus at bibendum ac, sollicitudin rhoncus tellus. Sed vulputate mi in aliquam porttitor. Suspendisse quis mauris imperdiet, scelerisque ex id, aliquet elit.
</p>
<p>
Etiam eu diam justo. Mauris vitae maximus mauris, id ullamcorper diam. Pellentesque euismod, nisi id tincidunt tincidunt, massa lorem tempus lorem, et dictum nunc libero in tortor. Mauris facilisis ac elit mollis sodales. Aenean dolor justo, pharetra malesuada sodales ac, viverra id ex. Donec non libero nec erat mollis sollicitudin. Aenean ipsum mi, molestie at massa vitae, iaculis maximus lacus. Quisque non tellus fermentum, vulputate dui eget, porttitor tortor.
</p>
<p>
Suspendisse congue felis justo, vitae ullamcorper dui ultricies quis. Etiam in sapien eu sem mollis molestie. Pellentesque id suscipit turpis. Vestibulum aliquet egestas cursus. Cras accumsan lobortis ex, elementum cursus nunc dignissim et. Sed non vehicula lorem. Fusce ac nunc felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec suscipit massa et nibh condimentum laoreet.
</p>
<p>
Aliquam nisi mi, condimentum sit amet odio ultricies, hendrerit euismod lorem. Curabitur vitae nisl diam. Duis tincidunt tempus turpis sit amet congue. Sed efficitur lacus lacus, et laoreet est luctus elementum. Donec vestibulum odio quis odio venenatis elementum. Vivamus a est vitae risus rutrum suscipit dapibus id enim. Donec dictum gravida sem in interdum. Sed semper turpis ante, non porttitor leo dignissim eget. Ut dolor eros, placerat vel libero at, mattis consectetur ligula. Phasellus condimentum elit vel placerat faucibus.
</p>')
GO
SET IDENTITY_INSERT [dbo].[tContent] OFF
GO
SET IDENTITY_INSERT [dbo].[tImg] ON 

GO
INSERT [dbo].[tImg] ([IDImg], [FileName]) VALUES (1, N'img-1.jpg')
GO
INSERT [dbo].[tImg] ([IDImg], [FileName]) VALUES (2, N'img-2.jpg')
GO
INSERT [dbo].[tImg] ([IDImg], [FileName]) VALUES (3, N'img-3.jpg')
GO
INSERT [dbo].[tImg] ([IDImg], [FileName]) VALUES (4, N'img-4.jpg')
GO
INSERT [dbo].[tImg] ([IDImg], [FileName]) VALUES (5, N'img-5.jpg')
GO
INSERT [dbo].[tImg] ([IDImg], [FileName]) VALUES (6, N'img-6.jpg')
GO
SET IDENTITY_INSERT [dbo].[tImg] OFF
GO
SET IDENTITY_INSERT [dbo].[tPage] ON 

GO
INSERT [dbo].[tPage] ([IDPage], [IDCat], [IDContent], [Name], [ShortName], [Url], [PageDate], [Text], [ShortText], [NumberOfUse], [Status]) VALUES (1, 0, 0, N'Who', N'Who', N'who', CAST(N'2019-01-22 23:36:23.340' AS DateTime), N'<h1 class="content-header font-weight-bold text-uppercase">kadir uçar</h1>
<p>Hi, I''m Kadir and I''m a software developer.</p>
<p>My motto: "Let''s make some mistakes, maybe we''ll learn something."</p>', N'', 1, 1)
GO
INSERT [dbo].[tPage] ([IDPage], [IDCat], [IDContent], [Name], [ShortName], [Url], [PageDate], [Text], [ShortText], [NumberOfUse], [Status]) VALUES (2, 4, 1, N'My First Text', N'My First Text', N'my-first-text', CAST(N'2019-01-22 23:39:58.583' AS DateTime), N'this is <b>my blog</b> content text', N'this is <b>my blog</b> content text', 1, 1)
GO
INSERT [dbo].[tPage] ([IDPage], [IDCat], [IDContent], [Name], [ShortName], [Url], [PageDate], [Text], [ShortText], [NumberOfUse], [Status]) VALUES (10, 0, 0, N'Contact', N'Contact', N'contact', CAST(N'2019-06-20 13:33:18.410' AS DateTime), N'<div class="row"> <div class="col-6"> <div class="social-bx d-flex justify-content-center align-items-center"> <i class="fab pr-3 pl-3 fa-facebook-square"></i> <a href="#">@ucarkadir</a> </div></div><div class="col-6"> <div class="social-bx d-flex justify-content-center align-items-center"> <i class="fab pr-3 pl-3 fa-github"></i> <a href="#">@ucarkadir</a> </div></div></div><div class="row"> <div class="col-6 "> <div class="social-bx d-flex justify-content-center align-items-center"> <i class="fab pr-3 pl-3 fa-twitter-square"></i> <a href="#">@ucarkadir</a> </div></div><div class="col-6"> <div class="social-bx d-flex justify-content-center align-items-center"> <i class="fab pr-3 pl-3 fa-medium"></i> <a href="#">@ucarkadir</a> </div></div></div><div class="row"> <div class="col-6"> <div class="social-bx d-flex justify-content-center align-items-center"> <i class="fab pr-3 pl-3 fa-linkedin"></i> <a href="#">@ucarkadir</a> </div></div><div class="col-6"> <div class="social-bx d-flex justify-content-center align-items-center"> <i class="fas pr-3 pl-3 fa-envelope-square"></i> <a href="#">@ucarkadir</a> </div></div></div>', N'short text', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[tPage] OFF
GO
INSERT [dbo].[tPageImg] ([IDPage], [IDImg], [OrderNo], [Status]) VALUES (2, 1, 1, 1)
GO
INSERT [dbo].[tPageImg] ([IDPage], [IDImg], [OrderNo], [Status]) VALUES (2, 2, 3, 1)
GO
INSERT [dbo].[tPageImg] ([IDPage], [IDImg], [OrderNo], [Status]) VALUES (2, 3, 2, 1)
GO
INSERT [dbo].[tPageImg] ([IDPage], [IDImg], [OrderNo], [Status]) VALUES (2, 5, 0, 1)
GO
INSERT [dbo].[tPageTag] ([IDPage], [IDTag], [OrderNo], [Code]) VALUES (2, 3, 1, N'')
GO
INSERT [dbo].[tPageTag] ([IDPage], [IDTag], [OrderNo], [Code]) VALUES (2, 9, 2, N'')
GO
SET IDENTITY_INSERT [dbo].[tTag] ON 

GO
INSERT [dbo].[tTag] ([IDTag], [Name], [NumberOfUse]) VALUES (1, N'Akyaka', 8)
GO
INSERT [dbo].[tTag] ([IDTag], [Name], [NumberOfUse]) VALUES (2, N'bicycle', 6)
GO
INSERT [dbo].[tTag] ([IDTag], [Name], [NumberOfUse]) VALUES (3, N'computer', 1)
GO
INSERT [dbo].[tTag] ([IDTag], [Name], [NumberOfUse]) VALUES (4, N'Gokova', 7)
GO
INSERT [dbo].[tTag] ([IDTag], [Name], [NumberOfUse]) VALUES (5, N'slackline', 5)
GO
INSERT [dbo].[tTag] ([IDTag], [Name], [NumberOfUse]) VALUES (6, N'tango', 3)
GO
INSERT [dbo].[tTag] ([IDTag], [Name], [NumberOfUse]) VALUES (7, N'TRX', 4)
GO
INSERT [dbo].[tTag] ([IDTag], [Name], [NumberOfUse]) VALUES (8, N'ucarkadir', 0)
GO
INSERT [dbo].[tTag] ([IDTag], [Name], [NumberOfUse]) VALUES (9, N'web', 2)
GO
SET IDENTITY_INSERT [dbo].[tTag] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/20/2019 11:20:14 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/20/2019 11:20:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/20/2019 11:20:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/20/2019 11:20:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/20/2019 11:20:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/20/2019 11:20:14 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tPage_Url]    Script Date: 6/20/2019 11:20:14 PM ******/
ALTER TABLE [dbo].[tPage] ADD  CONSTRAINT [IX_tPage_Url] UNIQUE NONCLUSTERED 
(
	[Url] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tPage]  WITH CHECK ADD  CONSTRAINT [FK_tPage_tCat] FOREIGN KEY([IDCat])
REFERENCES [dbo].[tCat] ([IDCat])
GO
ALTER TABLE [dbo].[tPage] CHECK CONSTRAINT [FK_tPage_tCat]
GO
ALTER TABLE [dbo].[tPageImg]  WITH CHECK ADD  CONSTRAINT [FK_tPageImg_tImg] FOREIGN KEY([IDImg])
REFERENCES [dbo].[tImg] ([IDImg])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tPageImg] CHECK CONSTRAINT [FK_tPageImg_tImg]
GO
ALTER TABLE [dbo].[tPageTag]  WITH CHECK ADD  CONSTRAINT [FK_tPageTag_tTag] FOREIGN KEY([IDTag])
REFERENCES [dbo].[tTag] ([IDTag])
GO
ALTER TABLE [dbo].[tPageTag] CHECK CONSTRAINT [FK_tPageTag_tTag]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 Pasif 1 Aktif' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tCat', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 Pasif, 1 Aktif, 2 Diğer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tPage', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 İptal, 1 Aktif, 2 Headar' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tPageImg', @level2type=N'COLUMN',@level2name=N'Status'
GO
