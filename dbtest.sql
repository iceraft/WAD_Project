/****** Object:  Table [dbo].[PARTICIPANT]    Script Date: 11/23/2017 14:38:50 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PARTICIPANT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PARTICIPANT](
	[part_ID] [int] IDENTITY(1,1) NOT NULL,
	[part_icno] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[part_name] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[part_email] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[part_phoneno] [nchar](10) COLLATE Latin1_General_CI_AI NULL,
	[part_paid] [bit] NULL,
 CONSTRAINT [PK_PARTICIPANT] PRIMARY KEY CLUSTERED 
(
	[part_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END

/****** Object:  Table [dbo].[PACKAGE]    Script Date: 11/23/2017 14:38:50 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PACKAGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PACKAGE](
	[pack_ID] [int] NOT NULL,
	[pack_price] [int] NOT NULL,
	[pack_shirt] [bit] NOT NULL,
	[shirt_size] [nchar](10) COLLATE Latin1_General_CI_AI NULL,
	[pack_food] [nchar](10) COLLATE Latin1_General_CI_AI NULL,
	[pack_discount] [int] NULL,
	[pack_medal] [bit] NOT NULL,
	[pack_category] [nchar](10) COLLATE Latin1_General_CI_AI NOT NULL,
	[pack_reciept] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_PACKAGE] PRIMARY KEY CLUSTERED 
(
	[pack_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END

/****** Object:  Table [dbo].[ADMIN]    Script Date: 11/23/2017 14:38:50 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ADMIN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ADMIN](
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[password] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END

ALTER TABLE [dbo].[ADMIN] SET (LOCK_ESCALATION = AUTO)

INSERT [dbo].[ADMIN] ([username], [password], [name]) VALUES (N'admin', N'1234', N'Zuriani')
INSERT [dbo].[ADMIN] ([username], [password], [name]) VALUES (N'admin1', N'1234', N'Fuyu')
INSERT [dbo].[ADMIN] ([username], [password], [name]) VALUES (N'admin2', N'1234', N'Acap')
INSERT [dbo].[ADMIN] ([username], [password], [name]) VALUES (N'admin3', N'1234', N'Erin')
INSERT [dbo].[ADMIN] ([username], [password], [name]) VALUES (N'admin4', N'1234', N'Anis')
