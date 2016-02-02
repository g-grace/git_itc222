

USE MASTER
GO
IF EXISTS
 (SELECT Name FROM sys.databases
 WHERE name='BitbyBitEBooks')
BEGIN
DROP DATABASE BitbyBitEBooks
END
GO
CREATE DATABASE BitbyBitEbooks

GO
USE [BitbyBitEbooks]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 02/12/2012 11:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
 [ProjectKEy] [int] IDENTITY(1,1) NOT NULL,
 [ProjectName] [nvarchar](255) NOT NULL,
 [ProjectStart] [date] NOT NULL,
 [ProjectEnd] [date] NULL,
 [ProjectDescription] [nvarchar](255) NOT NULL,
 [ProjectAdvance] [money] NULL,
 [ProjectAuthorPercent] [decimal](3, 2) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
 [ProjectKEy] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Project] ON
INSERT [dbo].[Project] ([ProjectKEy], [ProjectName], [ProjectStart], [ProjectEnd], [ProjectDescription], [ProjectAdvance], [ProjectAuthorPercent]) VALUES (1, N'WordPress', CAST(0xED300B00 AS Date), CAST(0xCF320B00 AS Date), N'Beginning WordPress', 2000.0000, CAST(0.07 AS Decimal(3, 2)))
INSERT [dbo].[Project] ([ProjectKEy], [ProjectName], [ProjectStart], [ProjectEnd], [ProjectDescription], [ProjectAdvance], [ProjectAuthorPercent]) VALUES (2, N'Snacks for Gamers', CAST(0x42310B00 AS Date), CAST(0x01330B00 AS Date), N'A recipe book for snacks', 800.0000, CAST(0.05 AS Decimal(3, 2)))
INSERT [dbo].[Project] ([ProjectKEy], [ProjectName], [ProjectStart], [ProjectEnd], [ProjectDescription], [ProjectAdvance], [ProjectAuthorPercent]) VALUES (4, N'SQL Server 2008 R2', CAST(0x6F320B00 AS Date), CAST(0x8A330B00 AS Date), N'Administering SQL Server', 2500.0000, CAST(0.07 AS Decimal(3, 2)))
INSERT [dbo].[Project] ([ProjectKEy], [ProjectName], [ProjectStart], [ProjectEnd], [ProjectDescription], [ProjectAdvance], [ProjectAuthorPercent]) VALUES (5, N'SQL', CAST(0x6E320B00 AS Date), CAST(0xE1330B00 AS Date), N'Basic SQL', 2500.0000, CAST(0.08 AS Decimal(3, 2)))
INSERT [dbo].[Project] ([ProjectKEy], [ProjectName], [ProjectStart], [ProjectEnd], [ProjectDescription], [ProjectAdvance], [ProjectAuthorPercent]) VALUES (6, N'Java for Android', CAST(0xA6320B00 AS Date), NULL, N'Introduction to Java for Android Development', 3000.0000, CAST(0.08 AS Decimal(3, 2)))
INSERT [dbo].[Project] ([ProjectKEy], [ProjectName], [ProjectStart], [ProjectEnd], [ProjectDescription], [ProjectAdvance], [ProjectAuthorPercent]) VALUES (7, N'WPF Development', CAST(0xC6320B00 AS Date), NULL, N'windows Presentation foundation and silverlight', 2800.0000, CAST(0.08 AS Decimal(3, 2)))
SET IDENTITY_INSERT [dbo].[Project] OFF
/****** Object:  Table [dbo].[Employee]    Script Date: 02/12/2012 11:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
 [EmployeeKey] [int] IDENTITY(1,1) NOT NULL,
 [EmployeeLastName] [nvarchar](50) NOT NULL,
 [EmployeeFirstName] [nvarchar](50) NOT NULL,
 [EmployeePosition] [nvarchar](50) NOT NULL,
 [EmployeeHireDate] [date] NOT NULL,
 [EmployeeLeaveDate] [date] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
 [EmployeeKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([EmployeeKey], [EmployeeLastName], [EmployeeFirstName], [EmployeePosition], [EmployeeHireDate], [EmployeeLeaveDate]) VALUES (1, N'Brown', N'Paul', N'Chief Editor', CAST(0x48270B00 AS Date), NULL)
INSERT [dbo].[Employee] ([EmployeeKey], [EmployeeLastName], [EmployeeFirstName], [EmployeePosition], [EmployeeHireDate], [EmployeeLeaveDate]) VALUES (2, N'Gardner', N'Susan', N'Copy Editor', CAST(0x48270B00 AS Date), NULL)
INSERT [dbo].[Employee] ([EmployeeKey], [EmployeeLastName], [EmployeeFirstName], [EmployeePosition], [EmployeeHireDate], [EmployeeLeaveDate]) VALUES (3, N'West', N'Melissa', N'Design Editor', CAST(0x352A0B00 AS Date), NULL)
INSERT [dbo].[Employee] ([EmployeeKey], [EmployeeLastName], [EmployeeFirstName], [EmployeePosition], [EmployeeHireDate], [EmployeeLeaveDate]) VALUES (4, N'Long', N'Mark', N' Design Editor', CAST(0x79280B00 AS Date), CAST(0xD9290B00 AS Date))
INSERT [dbo].[Employee] ([EmployeeKey], [EmployeeLastName], [EmployeeFirstName], [EmployeePosition], [EmployeeHireDate], [EmployeeLeaveDate]) VALUES (5, N'Peterson', N'Fred', N'Sales Manager', CAST(0xCA290B00 AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Table [dbo].[Customer]    Script Date: 02/12/2012 11:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
 [CustomerKey] [int] IDENTITY(1,1) NOT NULL,
 [CustomerLastName] [nvarchar](50) NULL,
 [CustomerFirstName] [nvarchar](50) NULL,
 [CustomerEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
 [CustomerKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([CustomerKey], [CustomerLastName], [CustomerFirstName], [CustomerEmail]) VALUES (1, N'Martin', N'Jeff', N'jMartin@yahoo.com')
INSERT [dbo].[Customer] ([CustomerKey], [CustomerLastName], [CustomerFirstName], [CustomerEmail]) VALUES (2, N'Lawrence', N'Larry', N'll@gmail.com')
INSERT [dbo].[Customer] ([CustomerKey], [CustomerLastName], [CustomerFirstName], [CustomerEmail]) VALUES (3, N'Towne', N'Peter', N'pTowne@msn.com')
INSERT [dbo].[Customer] ([CustomerKey], [CustomerLastName], [CustomerFirstName], [CustomerEmail]) VALUES (4, N'Bradely', N'Susan', N'sBradely@hotmail.com')
INSERT [dbo].[Customer] ([CustomerKey], [CustomerLastName], [CustomerFirstName], [CustomerEmail]) VALUES (5, N'Anderson', N'Laura', N'landerson@hotmail.com')
INSERT [dbo].[Customer] ([CustomerKey], [CustomerLastName], [CustomerFirstName], [CustomerEmail]) VALUES (6, N'Harding', N'Melanie', N'mHarding@gmail.com')
INSERT [dbo].[Customer] ([CustomerKey], [CustomerLastName], [CustomerFirstName], [CustomerEmail]) VALUES (7, N'Nelson', N'Sam', N'sNelson@harvard.edu')
INSERT [dbo].[Customer] ([CustomerKey], [CustomerLastName], [CustomerFirstName], [CustomerEmail]) VALUES (8, N'Smith', N'Jason', N'jSmith405@yahoo.com')
INSERT [dbo].[Customer] ([CustomerKey], [CustomerLastName], [CustomerFirstName], [CustomerEmail]) VALUES (9, N'Simpson', N'Maggie', N'mSimpson@hotmail.com')
INSERT [dbo].[Customer] ([CustomerKey], [CustomerLastName], [CustomerFirstName], [CustomerEmail]) VALUES (10, N'Zilla ', N'God', N'godzilla@gmail.com')
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[Author]    Script Date: 02/12/2012 11:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
 [AuthorKey] [int] IDENTITY(1,1) NOT NULL,
 [AuthorName] [nvarchar](50) NOT NULL,
 [AuthorEmail] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
 [AuthorKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON
INSERT [dbo].[Author] ([AuthorKey], [AuthorName], [AuthorEmail]) VALUES (1, N'Robert Jakobs', N'rj@hotmail.com')
INSERT [dbo].[Author] ([AuthorKey], [AuthorName], [AuthorEmail]) VALUES (2, N'Linda Manning', N'linda@manning.com')
INSERT [dbo].[Author] ([AuthorKey], [AuthorName], [AuthorEmail]) VALUES (3, N'Bradley Stevens', N'bradlys@yahoo.com')
INSERT [dbo].[Author] ([AuthorKey], [AuthorName], [AuthorEmail]) VALUES (4, N'Mark Lewis', N'ml@Lewis.org')
INSERT [dbo].[Author] ([AuthorKey], [AuthorName], [AuthorEmail]) VALUES (5, N'Tabitha King', N'King@gmail.com')
INSERT [dbo].[Author] ([AuthorKey], [AuthorName], [AuthorEmail]) VALUES (6, N'Neil Hart', N'harttohart@msn.com')
INSERT [dbo].[Author] ([AuthorKey], [AuthorName], [AuthorEmail]) VALUES (7, N'Melanie Dodge', N'melanie@gmail.com')
INSERT [dbo].[Author] ([AuthorKey], [AuthorName], [AuthorEmail]) VALUES (8, N'Beth Charity', N'charity@yahoo.com')
INSERT [dbo].[Author] ([AuthorKey], [AuthorName], [AuthorEmail]) VALUES (9, N'Gerald Norris', N'gnorris@hotmail.com')
INSERT [dbo].[Author] ([AuthorKey], [AuthorName], [AuthorEmail]) VALUES (10, N'Abby Kingston', N'ak@kingston.net')
SET IDENTITY_INSERT [dbo].[Author] OFF
/****** Object:  Table [dbo].[Sale]    Script Date: 02/12/2012 11:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
 [SaleKey] [int] IDENTITY(1,1) NOT NULL,
 [SaleDate] [date] NULL,
 [CustomerKey] [int] NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
 [SaleKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sale] ON
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (1, CAST(0xEE320B00 AS Date), 1)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (2, CAST(0xEF320B00 AS Date), 2)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (3, CAST(0x20330B00 AS Date), 3)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (4, CAST(0x0C330B00 AS Date), 4)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (5, CAST(0x0F330B00 AS Date), 1)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (6, CAST(0x2C330B00 AS Date), 5)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (7, CAST(0x8A330B00 AS Date), 6)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (8, CAST(0x93330B00 AS Date), 3)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (9, CAST(0xDC330B00 AS Date), 7)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (10, CAST(0xF6330B00 AS Date), 9)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (11, CAST(0x3D340B00 AS Date), 10)
INSERT [dbo].[Sale] ([SaleKey], [SaleDate], [CustomerKey]) VALUES (12, CAST(0x3F340B00 AS Date), 3)
SET IDENTITY_INSERT [dbo].[Sale] OFF
/****** Object:  Table [dbo].[ProjectDetail]    Script Date: 02/12/2012 11:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectDetail](
 [ProjectDetailKey] [int] IDENTITY(1,1) NOT NULL,
 [ProjectKey] [int] NOT NULL,
 [ProjectTask] [nvarchar](50) NOT NULL,
 [EmployeeKey] [int] NOT NULL,
 [ProjectChargedAmount] [money] NULL,
 [Notes] [nvarchar](max) NULL,
 [ProjectDetailDate] [date] NULL,
 CONSTRAINT [PK_ProjectDetail] PRIMARY KEY CLUSTERED 
(
 [ProjectDetailKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProjectDetail] ON
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (1, 1, N'Initial Review and Contract', 1, 300.0000, N'lunch and contract', CAST(0xED300B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (3, 1, N'First outline', 2, 150.0000, N'reviewed outline with author', CAST(0x07310B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (4, 2, N'Conceptual meeting', 1, 200.0000, N'reviewed outline and concpt', CAST(0x64310B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (5, 4, N'Initial review', 1, 120.0000, NULL, CAST(0xCD320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (6, 5, N'Initial Review', 1, 130.0000, N'Included dinner', CAST(0xAB320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (7, 1, N'Design review', 3, 85.0000, N'Discuss design Options', CAST(0x59310B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (8, 2, N'Copy Editing', 2, 1200.0000, N'editing text', CAST(0x5F320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (9, 1, N'Copy Editing', 2, 500.0000, NULL, CAST(0x6F320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (10, 4, N'Design Review', 4, 120.0000, N'Reviewed Layout', CAST(0x91320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (11, 1, N'Sales Plan', 5, 100.0000, N'Discussed price and sales plan', CAST(0xB7320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (12, 5, N'Copy editing', 2, 400.0000, NULL, CAST(0xB9320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (13, 5, N'Design Review', 4, 450.0000, N'Included hotel', CAST(0xC6320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (14, 6, N'Initial Review', 1, 300.0000, NULL, CAST(0xC6320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (15, 7, N'Initial Review', 1, 250.0000, N'Lunch and contract', CAST(0xD2320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (16, 2, N'Design Review', 3, 450.0000, NULL, CAST(0xCD320B00 AS Date))
INSERT [dbo].[ProjectDetail] ([ProjectDetailKey], [ProjectKey], [ProjectTask], [EmployeeKey], [ProjectChargedAmount], [Notes], [ProjectDetailDate]) VALUES (17, 4, N'Sales Plan', 4, 200.0000, NULL, CAST(0xCE320B00 AS Date))
SET IDENTITY_INSERT [dbo].[ProjectDetail] OFF
/****** Object:  Table [dbo].[ProjectAuthor]    Script Date: 02/12/2012 11:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectAuthor](
 [AuthorKey] [int] NOT NULL,
 [ProjectKey] [int] NOT NULL,
 CONSTRAINT [PK_ProjectAuthor] PRIMARY KEY CLUSTERED 
(
 [AuthorKey] ASC,
 [ProjectKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ProjectAuthor] ([AuthorKey], [ProjectKey]) VALUES (1, 1)
INSERT [dbo].[ProjectAuthor] ([AuthorKey], [ProjectKey]) VALUES (2, 2)
INSERT [dbo].[ProjectAuthor] ([AuthorKey], [ProjectKey]) VALUES (3, 2)
INSERT [dbo].[ProjectAuthor] ([AuthorKey], [ProjectKey]) VALUES (4, 4)
INSERT [dbo].[ProjectAuthor] ([AuthorKey], [ProjectKey]) VALUES (5, 4)
INSERT [dbo].[ProjectAuthor] ([AuthorKey], [ProjectKey]) VALUES (6, 4)
INSERT [dbo].[ProjectAuthor] ([AuthorKey], [ProjectKey]) VALUES (7, 5)
INSERT [dbo].[ProjectAuthor] ([AuthorKey], [ProjectKey]) VALUES (8, 6)
INSERT [dbo].[ProjectAuthor] ([AuthorKey], [ProjectKey]) VALUES (9, 7)
INSERT [dbo].[ProjectAuthor] ([AuthorKey], [ProjectKey]) VALUES (10, 7)
/****** Object:  Table [dbo].[EBook]    Script Date: 02/12/2012 11:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBook](
 [EBookKey] [int] IDENTITY(1,1) NOT NULL,
 [EbookTitle] [nvarchar](255) NOT NULL,
 [EbookPrice] [money] NOT NULL,
 [EbookDescription] [nvarchar](255) NOT NULL,
 [ProjectKey] [int] NOT NULL,
 CONSTRAINT [PK_EBook] PRIMARY KEY CLUSTERED 
(
 [EBookKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EBook] ON
INSERT [dbo].[EBook] ([EBookKey], [EbookTitle], [EbookPrice], [EbookDescription], [ProjectKey]) VALUES (1, N'Wordpress Made Easy', 33.5000, N'All you need to know to get started with word Press', 1)
INSERT [dbo].[EBook] ([EBookKey], [EbookTitle], [EbookPrice], [EbookDescription], [ProjectKey]) VALUES (2, N'Snacks for Gamers', 15.7000, N'How to keep from dying of malnutrition while beating Halo', 2)
INSERT [dbo].[EBook] ([EBookKey], [EbookTitle], [EbookPrice], [EbookDescription], [ProjectKey]) VALUES (3, N'SQL Server 2008 R2', 65.5000, N'A complete guide ', 4)
INSERT [dbo].[EBook] ([EBookKey], [EbookTitle], [EbookPrice], [EbookDescription], [ProjectKey]) VALUES (4, N'SQL', 35.7500, N'All the SQL you will ever need to know', 5)
SET IDENTITY_INSERT [dbo].[EBook] OFF
/****** Object:  Table [dbo].[SaleDetail]    Script Date: 02/12/2012 11:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleDetail](
 [SaleDetailKey] [int] IDENTITY(1,1) NOT NULL,
 [SaleKey] [int] NULL,
 [EbookKey] [int] NULL,
 [Quantity] [int] NULL,
 [Discount] [decimal](3, 2) NULL,
 CONSTRAINT [PK_SaleDetail] PRIMARY KEY CLUSTERED 
(
 [SaleDetailKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SaleDetail] ON
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (1, 1, 1, 3, NULL)
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (2, 2, 1, 1, NULL)
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (3, 3, 1, 30, CAST(0.05 AS Decimal(3, 2)))
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (4, 4, 1, 5, NULL)
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (5, 4, 2, 1, NULL)
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (6, 5, 2, 1, NULL)
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (7, 6, 1, 15, CAST(0.05 AS Decimal(3, 2)))
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (8, 7, 4, 1, NULL)
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (9, 8, 4, 25, CAST(0.05 AS Decimal(3, 2)))
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (10, 8, 1, 20, CAST(0.05 AS Decimal(3, 2)))
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (11, 9, 2, 5, CAST(0.03 AS Decimal(3, 2)))
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (12, 9, 1, 1, NULL)
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (15, 10, 4, 20, CAST(0.05 AS Decimal(3, 2)))
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (16, 10, 1, 20, CAST(0.05 AS Decimal(3, 2)))
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (17, 10, 2, 1, NULL)
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (18, 11, 3, 2, NULL)
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (19, 12, 3, 30, CAST(0.05 AS Decimal(3, 2)))
INSERT [dbo].[SaleDetail] ([SaleDetailKey], [SaleKey], [EbookKey], [Quantity], [Discount]) VALUES (20, 12, 1, 25, CAST(0.05 AS Decimal(3, 2)))
SET IDENTITY_INSERT [dbo].[SaleDetail] OFF
/****** Object:  ForeignKey [FK_EBook_Project]    Script Date: 02/12/2012 11:21:24 ******/
ALTER TABLE [dbo].[EBook]  WITH CHECK ADD  CONSTRAINT [FK_EBook_Project] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Project] ([ProjectKEy])
GO
ALTER TABLE [dbo].[EBook] CHECK CONSTRAINT [FK_EBook_Project]
GO
/****** Object:  ForeignKey [FK_ProjectAuthor_Author]    Script Date: 02/12/2012 11:21:24 ******/
ALTER TABLE [dbo].[ProjectAuthor]  WITH CHECK ADD  CONSTRAINT [FK_ProjectAuthor_Author] FOREIGN KEY([AuthorKey])
REFERENCES [dbo].[Author] ([AuthorKey])
GO
ALTER TABLE [dbo].[ProjectAuthor] CHECK CONSTRAINT [FK_ProjectAuthor_Author]
GO
/****** Object:  ForeignKey [FK_ProjectAuthor_Project]    Script Date: 02/12/2012 11:21:24 ******/
ALTER TABLE [dbo].[ProjectAuthor]  WITH CHECK ADD  CONSTRAINT [FK_ProjectAuthor_Project] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Project] ([ProjectKEy])
GO
ALTER TABLE [dbo].[ProjectAuthor] CHECK CONSTRAINT [FK_ProjectAuthor_Project]
GO
/****** Object:  ForeignKey [FK_ProjectDetail_Employee]    Script Date: 02/12/2012 11:21:24 ******/
ALTER TABLE [dbo].[ProjectDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDetail_Employee] FOREIGN KEY([EmployeeKey])
REFERENCES [dbo].[Employee] ([EmployeeKey])
GO
ALTER TABLE [dbo].[ProjectDetail] CHECK CONSTRAINT [FK_ProjectDetail_Employee]
GO
/****** Object:  ForeignKey [FK_ProjectDetail_Project]    Script Date: 02/12/2012 11:21:24 ******/
ALTER TABLE [dbo].[ProjectDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDetail_Project] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Project] ([ProjectKEy])
GO
ALTER TABLE [dbo].[ProjectDetail] CHECK CONSTRAINT [FK_ProjectDetail_Project]
GO
/****** Object:  ForeignKey [FK_Sale_Customer]    Script Date: 02/12/2012 11:21:24 ******/
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Customer] FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[Customer] ([CustomerKey])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Customer]
GO
/****** Object:  ForeignKey [FK_SaleDetail_EBook]    Script Date: 02/12/2012 11:21:24 ******/
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail_EBook] FOREIGN KEY([EbookKey])
REFERENCES [dbo].[EBook] ([EBookKey])
GO
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail_EBook]
GO
/****** Object:  ForeignKey [FK_SaleDetail_Sale]    Script Date: 02/12/2012 11:21:24 ******/
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail_Sale] FOREIGN KEY([SaleKey])
REFERENCES [dbo].[Sale] ([SaleKey])
GO
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail_Sale]
GO


--Create a view that shows the ebook title, its author(s) and its price.

Create view vw_EbookTitleView
As
Select EbookTitle[Book Title], EbookPrice[Book Price] from EBook eb
inner join Author a
on eb.ProjectKey=a.AuthorKey
go

Select * from vw_EbookTitleView

--What was the total cost of producing the book Wordpess made easy?"

Select * from ProjectDetail

Select ProjectChargedAmount[Total Cost] from ProjectDetail pd
inner join EBook eb
on pd.ProjectKey=eb.ProjectKey
where EbookTitle='Wordpress Made Easy'

--What, if any, royalties are due the author Robert Jakobs? Royalties are based on the author's percent of sales, but all advances must be paid back before they receive any additional money). 

Select sum(EbookPrice * Quantity)[Total Sales of Robert Jacobs]  from SaleDetail sd
inner join EBook eb on eb.EBookKey = sd.EbookKey
where eb.EBookKey = 1
select 4187.50*ProjectAuthorPercent[Author's Percent of Sales] from Project
where ProjectKey=1
select 293.12 - ProjectAdvance[Recouped Amount before Author Payment] from Project
where ProjectKey = 1


--What is the average time in months for a project from start date to completion?
--select * from project
--select count(Projectkey) from project

select ProjectName,(datepart(mm,ProjectEnd) - datepart(mm,ProjectStart))[Average Month] from Project
select (sum((datepart(mm,ProjectEnd) - datepart(mm,ProjectStart))))/(select count(Projectkey) from project)
from Project


--Are there any customers who have never purchased a book? If there are, delete that customer

select c.CustomerLastName, c.CustomerFirstName,eb.EbookTitle
from Customer c
left outer join sale s
on c.CustomerKey = s.Customerkey
left outer join SaleDetail sd
on s.SaleKey =sd.SaleKey
left outer join Ebook eb
on eb.EBookKey = sd.EbookKey

begin transaction
delete from customer
where CustomerFirstName = 'Jason' and CustomerLastName = 'Smith'
commit tran

--Increase the price of the ebook "Snacks for Gamers" by 3%.

Select EbookTitle[Book Increase], EbookPrice[Book Price], (EbookPrice*.03)[3% of Book Price], (EbookPrice + (EbookPrice*.03))[3% Added to Price] from EBook
where EbookTitle = 'Snacks for Gamers'

--How many copies of the ebook "SQL Server 2008 R2" have been sold?

Select EbookTitle, sum(Quantity)[Total Sold]  from Ebook eb
inner join SaleDetail sd 
on sd.EbookKey=eb.EbookKey
where EbookTitle = 'SQL Server 2008 R2'
group by EbookTitle

--What is the average charge for services by the editorial staff?

--select EmployeePosition from Employee
--select EmployeePosition ,ProjectChargedAmount from Employee e
--inner join ProjectDetail pd
--on e.employeeKey = pd.EmployeeKey
--where EmployeePosition in ('Chief Editor', 'Copy Editor', 'Design Editor')
--select count(EmployeePosition) from Employee
--where EmployeePosition in ('Chief Editor', 'Copy Editor', 'Design Editor')

select (avg(ProjectChargedAmount))[Average Cost of Charges by Editorial Staff]  from Employee e
inner join ProjectDetail pd
on e.employeeKey = pd.EmployeeKey
where EmployeePosition in ('Chief Editor', 'Copy Editor', 
'Design Editor')


--what is the total charged by each editor?

select EmployeeLastName, (sum(ProjectChargedAmount))[Total Charges by Each Editor]  from Employee e
inner join ProjectDetail pd
on e.employeeKey = pd.EmployeeKey
where EmployeePosition in ('Chief Editor', 'Copy Editor', 
'Design Editor')
group by  EmployeeLastName



--Which employees have charged more than 1000 dollars total?

		select EmployeeLastName, EmployeeFirstName, sum(ProjectChargedAmount) from Employee e
		inner join ProjectDetail pd
		on e.employeeKey = pd.EmployeeKey
		group by EmployeeLastName, EmployeeFirstName
		having sum(ProjectChargedAmount) > 1000

		--Add a new customer and a purchase to the database.

		Insert into 
		Customer(CustomerLastName,CustomerFirstName,CustomerEmail)
		Values('Melvin','Curtiss','csm@gmail.com')

		insert into
		Sale(CustomerKey,SaleDate)
		Values(IDENT_CURRENT('Customer'), GetDate())

		insert into
		SaleDetail(EbookKey,SaleKey,Quantity,Discount)
		Values(2, IDENT_CURRENT('Sale'), 2, 0.05)

--Create a function that can be used to determine the total amount for a sale detail.

			--select sum(quantity) from SaleDetail
			--select distinct fx_TotalSaleDetail(quantity) from saledetail where EbookKey=1

		GO
		create function fx_TotalSaleDetail
		(@quantity int)
		returns int
		AS
		Begin
		  declare @numberOfBooks int
		  select @numberOfBooks = sum(quantity) from SaleDetail
		  return @numberOfBooks

		end

		insert into SaleDetail(EBookKey, Quantity, Discount )
		values(1, 5, 0.05)


--Create a stored procedure that takes the sale key for a parameter and returns a reciept with the sale information, the details and totals.

		select CustomerFirstName, SaleDate, Quantity, Discount, EBookTitle, EBookPrice, EbookDescription, EBookPrice * 0.05
		from Customer c
		inner join Sale s
		on c.CustomerKey = s.CustomerKey
		inner join SaleDetail sd
		on s.SaleKey = sd.SaleKey
		inner join Ebook eb
		on eb.EBookKey = sd.EbookKey

		Create proc usp_SaleReceipt
		@SaleKey int
		--@Discount decimal(3,2)
		As
		begin

		  select distinct CustomerFirstName, SaleDate, Quantity, EBookTitle, EBookPrice, EbookDescription,  
		  (EBookPrice + EBookPrice* Discount)[Unit Price], Quantity * (EBookPrice + EBookPrice* Discount)[Total Price]
		   from Customer c
		   inner join Sale s
		   on c.CustomerKey = s.CustomerKey
		   inner join SaleDetail sd
		   on s.SaleKey = sd.SaleKey
		   inner join Ebook eb
		   on eb.EBookKey = sd.EbookKey
		   where s.salekey = @SaleKey
		   end

		exec usp_SaleReceipt @SaleKey = 1


		--It is a business rule of the database that any sale item with a quantity of 15 or above gets a 5% discount. Create a trigger to				enforce this.

				--Select EbookTitle,quantity from EBook eb
				--inner join SaleDetail sd
				--on eb.EBookKey = sd.EbookKey
				--where Quantity >= 15

				--begin transaction
				--drop trigger tr_DiscountProvider
		Go
		Create trigger tr_DiscountProvider on SaleDetail
		after insert
		As
		begin
		  declare @quantity int
		  select @quantity = quantity from inserted
		  if(@quantity >= 15)
		  begin
			 --@discount decimal(3,2)
			 --select @discount = 0.05
			 --return @discount decimal(3,2)
			 Declare @SaleKey int
			 Select @Salekey=SaleKey from inserted

			 --insert into SaleDetail(Discount)
			 --values(0.05)

			 update SaleDetail
			 set Discount = 0.05
			 where @quantity >= 15
			 and saleKey=@saleKey
		  end
		  else
		  begin
			 print 'You can not get discount because your purchase is less than 15'
		  end

		end

		--inserting data for further checking of the effect of the trigger

		Insert into 
		Customer(CustomerLastName,CustomerFirstName,CustomerEmail)
		Values('Melvin','Curtiss','csm@gmail.com')

		insert into
		Sale(CustomerKey,SaleDate)
		Values(IDENT_CURRENT('Customer'), GetDate())

		insert into
		SaleDetail(EbookKey,SaleKey,Quantity,Discount)
		Values(2, IDENT_CURRENT('Sale'), 2, 0.05)

		-- checking the result of the effect of the trigger

			select CustomerFirstName, SaleDate, Quantity, Discount, EBookTitle, EBookPrice, EbookDescription
			from Customer c
			inner join Sale s
			on c.CustomerKey = s.CustomerKey
			inner join SaleDetail sd
			on s.SaleKey = sd.SaleKey
			inner join Ebook eb
			on eb.EBookKey = sd.EbookKey
			where CustomerFirstName = 'Curtiss'



--add a table that is a child to project. Its purpose is to record meetings among the staff concerning project status. The table should have an	 identity for a key, a date and a topic line, and an xml column with this structure. Below is an example of the xml document and a schema	for it. Before creating the table create a new schema collection to validate the xml field.

				--The xml document
				--<?xml version="1.0" encoding="utf-8"?>
				--'<meeting xmlns="http://www.BitbyBitEbooks.com/meeting">
				-- <head>
				--  <present>Brown</present>
				--  <present>Garner</present>
				--  <present>Peterson</present>
				-- </head>
				-- <body>
				--  <discussion>
				--   The book has a lot of grammatical and writing errors.
				--   It is going to take work and time to clear them
				--   up.
				--  </discussion>
				--  <issues>
				--   <issue>Grammatical Errors</issue>
				--   <issue>timeLine</issue>
				--  </issues>
				--  <tasks>
				--   <task>contact author</task>
				--   <task>Revise timeline</task>
				--  </tasks>
				-- </body>
				--</meeting>'

				--The schema
				--<?xml version="1.0" encoding="utf-8"?>
				--<xs:schema attributeFormDefault="unqualified"
				--elementFormDefault="qualified"
				--targetNamespace="http://www.BitbyBitEbooks.com/meeting"
				--xmlns:xs="http://www.w3.org/2001/XMLSchema">
				--<xs:element name="meeting">
				--<xs:complexType>
				--<xs:sequence>
				--<xs:element name="head">
				--<xs:complexType>
				--<xs:sequence>
				--<xs:element maxOccurs="unbounded"
				--name="present" type="xs:string" />
				--</xs:sequence>
				--</xs:complexType>
				--</xs:element>
				--<xs:element name="body">
				--<xs:complexType>
				--<xs:sequence>
				--<xs:element name="discussion" type="xs:string" />
				--<xs:element name="issues">
				--<xs:complexType>
				--<xs:sequence>
				--<xs:element maxOccurs="unbounded" name="issue" type="xs:string" />
				--</xs:sequence>
				--</xs:complexType>
				--</xs:element>
				--<xs:element name="tasks">
				--<xs:complexType>
				--<xs:sequence>
				--<xs:element maxOccurs="unbounded" name="task" type="xs:string" />
				--</xs:sequence>
				--</xs:complexType>
				--</xs:element>
				--</xs:sequence>
				--</xs:complexType>
				--</xs:element>
				--</xs:sequence>
				--</xs:complexType>
				--</xs:element>
				--</xs:schema>

			
			Create xml Schema Collection schemaMeeting
					As
					'<?xml version="1.0" encoding="utf-8"?>
					<xs:schema attributeFormDefault="unqualified"
					elementFormDefault="qualified"
					targetNamespace="http://www.BitbyBitEbooks.com/meeting"
					xmlns:xs="http://www.w3.org/2001/XMLSchema">
					<xs:element name="meeting">
					<xs:complexType>
					<xs:sequence>
					<xs:element name="head">
					<xs:complexType>
					<xs:sequence>
					<xs:element maxOccurs="unbounded"
					name="present" type="xs:string" />
					</xs:sequence>
					</xs:complexType>
					</xs:element>
					<xs:element name="body">
					<xs:complexType>
					<xs:sequence>
					<xs:element name="discussion" type="xs:string" />
					<xs:element name="issues">
					<xs:complexType>
					<xs:sequence>
					<xs:element maxOccurs="unbounded" name="issue" type="xs:string" />
					</xs:sequence>
					</xs:complexType>
					</xs:element>
					<xs:element name="tasks">
					<xs:complexType>
					<xs:sequence>
					<xs:element maxOccurs="unbounded" name="task" type="xs:string" />
					</xs:sequence>
					</xs:complexType>
					</xs:element>
					</xs:sequence>
					</xs:complexType>
					</xs:element>
					</xs:sequence>
					</xs:complexType>
					</xs:element>
					</xs:schema>'

					Create table Meeting
					(
						MeetingKey int identity(1,1) primary key,
						MeetingDate date not null default GetDate(),
						MeetingTopic xml(schemaMeeting)
					 )

					Insert into Meeting(MeetingTopic)
					Values('<?xml version="1.0" encoding="utf-8"?>
					<meeting xmlns="http://www.BitbyBitEbooks.com/meeting">
					<head>
					<present>Brown</present>
					<present>Garner</present>
					<present>Peterson</present>
					</head>
					<body>
					<discussion>
					 The book has a lot of grammatical and writing errors.
					 It is going to take work and time to clear them
					 up.
					</discussion>
					<issues>
					 <issue>Grammatical Errors</issue>
					 <issue>timeLine</issue>
					</issues>
					<tasks>
					 <task>contact author</task>
					 <task>Revise timeline</task>
					</tasks>
					</body>
					</meeting>')

		Select * From Meeting
			

--Make a login and role for authors.

		Create Login AuthorLogin with password='Author', default_database=BitbyBitEbooks
		Create user AuthorUser for Login AuthorLogin

--Create an Author role. authors should be able see projects, but not project details. They should be able to see the list of ebooks,
--and sale and sale detail information. But they shouldn't be able to add or change anything. Add --th eauthor user to the role.

		Create role AuthorRole

--Grant Select, Update on ServiceGrant to EmployeeRole
--Grant Insert, Select, Update on GrantReview to EmployeeRole

			Grant select on Project to AuthorRole
			Grant select on EBook to AuthorRole
			Grant select on Sale to AuthorRole
			Grant select on SaleDetail to AuthorRole

			exec sp_addrolemember 'AuthorRole', 'AuthorUser'

			select * from EBook
			begin transaction
			delete from EBook
			where EbookTitle = 'XYZ'
			commit transaction


