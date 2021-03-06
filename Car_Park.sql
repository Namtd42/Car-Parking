USE [master]
GO
/****** Object:  Database [Car_Park]    Script Date: 03/20/2020 16:03:01 ******/
CREATE DATABASE [Car_Park] ON  PRIMARY 
( NAME = N'Car_Park', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Car_Park.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Car_Park_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Car_Park_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Car_Park] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Car_Park].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Car_Park] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Car_Park] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Car_Park] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Car_Park] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Car_Park] SET ARITHABORT OFF
GO
ALTER DATABASE [Car_Park] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Car_Park] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Car_Park] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Car_Park] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Car_Park] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Car_Park] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Car_Park] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Car_Park] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Car_Park] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Car_Park] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Car_Park] SET  DISABLE_BROKER
GO
ALTER DATABASE [Car_Park] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Car_Park] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Car_Park] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Car_Park] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Car_Park] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Car_Park] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Car_Park] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Car_Park] SET  READ_WRITE
GO
ALTER DATABASE [Car_Park] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Car_Park] SET  MULTI_USER
GO
ALTER DATABASE [Car_Park] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Car_Park] SET DB_CHAINING OFF
GO
USE [Car_Park]
GO
/****** Object:  Table [dbo].[Trip]    Script Date: 03/20/2020 16:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trip](
	[tripId] [bigint] IDENTITY(1,1) NOT NULL,
	[bookedTicketNumber] [int] NOT NULL,
	[carType] [varchar](50) NOT NULL,
	[departureDate] [date] NOT NULL,
	[departureTime] [time](7) NOT NULL,
	[destination] [varchar](50) NOT NULL,
	[driver] [varchar](50) NOT NULL,
	[maximumOnlineTicketNumber] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tripId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Trip] ON
INSERT [dbo].[Trip] ([tripId], [bookedTicketNumber], [carType], [departureDate], [departureTime], [destination], [driver], [maximumOnlineTicketNumber]) VALUES (1, 0, N'Mescedes', CAST(0x9C3F0B00 AS Date), CAST(0x0700000000000000 AS Time), N'Ninh B?nh', N'Nam', 9)
INSERT [dbo].[Trip] ([tripId], [bookedTicketNumber], [carType], [departureDate], [departureTime], [destination], [driver], [maximumOnlineTicketNumber]) VALUES (6, 0, N'Lexus', CAST(0xCC400B00 AS Date), CAST(0x070062244C4B0000 AS Time), N'Hà N&#7897;i', N'Thành', 10)
SET IDENTITY_INSERT [dbo].[Trip] OFF
/****** Object:  Table [dbo].[Parkinglot]    Script Date: 03/20/2020 16:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parkinglot](
	[parkId] [bigint] IDENTITY(1,1) NOT NULL,
	[parkArea] [bigint] NOT NULL,
	[parkName] [varchar](50) NOT NULL,
	[parkPlace] [varchar](50) NOT NULL,
	[parkPrice] [bigint] NOT NULL,
	[parkStatus] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[parkId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Parkinglot] ON
INSERT [dbo].[Parkinglot] ([parkId], [parkArea], [parkName], [parkPlace], [parkPrice], [parkStatus]) VALUES (2, 66, N'Bai so 6', N'Khu Nam', 666, N'Blank')
INSERT [dbo].[Parkinglot] ([parkId], [parkArea], [parkName], [parkPlace], [parkPrice], [parkStatus]) VALUES (14, 999, N'Bai so 2', N'Khu Tay', 25000000, N'Blank')
INSERT [dbo].[Parkinglot] ([parkId], [parkArea], [parkName], [parkPlace], [parkPrice], [parkStatus]) VALUES (15, 99, N'Bai so 3', N'Khu Bac', 2341234, N'Blank')
INSERT [dbo].[Parkinglot] ([parkId], [parkArea], [parkName], [parkPlace], [parkPrice], [parkStatus]) VALUES (16, 11, N'Bai so 4', N'Khu Dong', 2341234, N'Blank')
SET IDENTITY_INSERT [dbo].[Parkinglot] OFF
/****** Object:  Table [dbo].[Employee]    Script Date: 03/20/2020 16:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[employeeId] [bigint] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[department] [varchar](50) NOT NULL,
	[employeeAddress] [varchar](50) NULL,
	[employeeBirthdate] [date] NOT NULL,
	[employeeEmail] [varchar](50) NULL,
	[employeeName] [varchar](50) NOT NULL,
	[employeePhone] [varchar](50) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[sex] [bit] NOT NULL,
	[admin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([employeeId], [account], [department], [employeeAddress], [employeeBirthdate], [employeeEmail], [employeeName], [employeePhone], [password], [sex], [admin]) VALUES (12, N'namtd', N'Admin', N'Nho Quan', CAST(0x88210B00 AS Date), N'namtd6@fsoft.com.vn', N'Nam', N'0399919992', N'123', 1, 1)
INSERT [dbo].[Employee] ([employeeId], [account], [department], [employeeAddress], [employeeBirthdate], [employeeEmail], [employeeName], [employeePhone], [password], [sex], [admin]) VALUES (13, N'thanhnx', N'employee', N'&#272;&#7841;i h&#7885;c FPT', CAST(0xD8400B00 AS Date), N'thanhnx@fsoft.com', N'Nguyen Xuan Thanh', N'123123123', N'123456', 1, 0)
INSERT [dbo].[Employee] ([employeeId], [account], [department], [employeeAddress], [employeeBirthdate], [employeeEmail], [employeeName], [employeePhone], [password], [sex], [admin]) VALUES (14, N'tuanlx', N'service', N'&#272;&#7841;i h&#7885;c FPT', CAST(0xD9400B00 AS Date), N'tuanlx@gamil.com', N'Tuan', N'123123123', N'123123', 1, 0)
INSERT [dbo].[Employee] ([employeeId], [account], [department], [employeeAddress], [employeeBirthdate], [employeeEmail], [employeeName], [employeePhone], [password], [sex], [admin]) VALUES (15, N'ewqrer', N'service', N'&#272;&#7841;i h&#7885;c FPT', CAST(0xD8400B00 AS Date), N'gionhe00co@gmail.com', N'toan', N'123123123', N'123123', 1, 0)
INSERT [dbo].[Employee] ([employeeId], [account], [department], [employeeAddress], [employeeBirthdate], [employeeEmail], [employeeName], [employeePhone], [password], [sex], [admin]) VALUES (16, N'namtd1', N'employee', N'&#272;&#7841;i h&#7885;c FPT', CAST(0xD2400B00 AS Date), N'gionhe00co@gmail.com', N'nghia', N'123123123', N'123123', 1, 0)
INSERT [dbo].[Employee] ([employeeId], [account], [department], [employeeAddress], [employeeBirthdate], [employeeEmail], [employeeName], [employeePhone], [password], [sex], [admin]) VALUES (17, N'ewqrer', N'parking', N'&#272;&#7841;i h&#7885;c FPT', CAST(0xCC400B00 AS Date), N'gionhe00co@gmail.com', N'anh', N'12312312', N'123123', 1, 0)
INSERT [dbo].[Employee] ([employeeId], [account], [department], [employeeAddress], [employeeBirthdate], [employeeEmail], [employeeName], [employeePhone], [password], [sex], [admin]) VALUES (18, N'ewqrer', N'parking', N'&#272;&#7841;i h&#7885;c FPT', CAST(0xD9400B00 AS Date), N'gionhe00co@gmail.com', N'abc', N'123123', N'123123', 1, 0)
INSERT [dbo].[Employee] ([employeeId], [account], [department], [employeeAddress], [employeeBirthdate], [employeeEmail], [employeeName], [employeePhone], [password], [sex], [admin]) VALUES (19, N'tuanlx', N'employee', N'Ph&#7889; B&#7855;c S&#417;n', CAST(0xCC400B00 AS Date), N'gionhe00co@gmail.com', N'nguyenHa', N'123123', N'123123', 1, 0)
INSERT [dbo].[Employee] ([employeeId], [account], [department], [employeeAddress], [employeeBirthdate], [employeeEmail], [employeeName], [employeePhone], [password], [sex], [admin]) VALUES (20, N'tuanlx', N'employee', N'&#272;&#7841;i h&#7885;c FPT', CAST(0xD8400B00 AS Date), N'gionhe00co@gmail.com', N'tranNam', N'123123', N'123123', 1, 0)
INSERT [dbo].[Employee] ([employeeId], [account], [department], [employeeAddress], [employeeBirthdate], [employeeEmail], [employeeName], [employeePhone], [password], [sex], [admin]) VALUES (21, N'namtd1', N'parking', N'&#272;&#7841;i h&#7885;c FPT', CAST(0xD3400B00 AS Date), N'gionhe00co@gmail.com', N'LeTuan', N'123123', N'123123', 1, 0)
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Table [dbo].[Car]    Script Date: 03/20/2020 16:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car](
	[licensePlate] [varchar](50) NOT NULL,
	[carColor] [varchar](50) NULL,
	[carType] [varchar](50) NULL,
	[company] [varchar](50) NOT NULL,
	[parkId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[licensePlate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Car] ([licensePlate], [carColor], [carType], [company], [parkId]) VALUES (N'35h3-3951', N'red', N'huyn dai', N'Dai Nhat Nam', 14)
INSERT [dbo].[Car] ([licensePlate], [carColor], [carType], [company], [parkId]) VALUES (N'35h3-3955', N'While', N'Land Rover', N'Hoang Ha', 2)
/****** Object:  Table [dbo].[Bookingoffice]    Script Date: 03/20/2020 16:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bookingoffice](
	[officeId] [bigint] IDENTITY(1,1) NOT NULL,
	[endContractDeadline] [date] NOT NULL,
	[officeName] [varchar](50) NOT NULL,
	[officePhone] [varchar](50) NOT NULL,
	[officePlace] [varchar](50) NOT NULL,
	[officePrice] [bigint] NOT NULL,
	[startContractDeadline] [date] NOT NULL,
	[tripId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[officeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Bookingoffice] ON
INSERT [dbo].[Bookingoffice] ([officeId], [endContractDeadline], [officeName], [officePhone], [officePlace], [officePrice], [startContractDeadline], [tripId]) VALUES (1, CAST(0xD5400B00 AS Date), N'Hoang Ha', N'0915489796', N'Quay so 1', 100000, CAST(0xC53F0B00 AS Date), 1)
INSERT [dbo].[Bookingoffice] ([officeId], [endContractDeadline], [officeName], [officePhone], [officePlace], [officePrice], [startContractDeadline], [tripId]) VALUES (2, CAST(0xDF400B00 AS Date), N'vzxcv', N'0399919992', N'Quay so 3', 2341234, CAST(0xD7400B00 AS Date), 1)
INSERT [dbo].[Bookingoffice] ([officeId], [endContractDeadline], [officeName], [officePhone], [officePlace], [officePrice], [startContractDeadline], [tripId]) VALUES (3, CAST(0xE1400B00 AS Date), N'abc', N'0399919992', N'Quay so 4', 25000000, CAST(0xCC400B00 AS Date), 1)
INSERT [dbo].[Bookingoffice] ([officeId], [endContractDeadline], [officeName], [officePhone], [officePlace], [officePrice], [startContractDeadline], [tripId]) VALUES (4, CAST(0xE1400B00 AS Date), N'Nam', N'0399919992', N'Quay so 4', 121212, CAST(0xD2400B00 AS Date), 1)
INSERT [dbo].[Bookingoffice] ([officeId], [endContractDeadline], [officeName], [officePhone], [officePlace], [officePrice], [startContractDeadline], [tripId]) VALUES (5, CAST(0xCC400B00 AS Date), N'Thành', N'0123456123', N'Quay so 1', 123123, CAST(0xD2400B00 AS Date), 6)
INSERT [dbo].[Bookingoffice] ([officeId], [endContractDeadline], [officeName], [officePhone], [officePlace], [officePrice], [startContractDeadline], [tripId]) VALUES (6, CAST(0xDA400B00 AS Date), N'Nam', N'00000000', N'Quay so 1', 25000000, CAST(0xD2400B00 AS Date), 6)
INSERT [dbo].[Bookingoffice] ([officeId], [endContractDeadline], [officeName], [officePhone], [officePlace], [officePrice], [startContractDeadline], [tripId]) VALUES (7, CAST(0xCC400B00 AS Date), N'vzxcv', N'0399919992', N'Quay so 3', 9999, CAST(0xE8400B00 AS Date), 6)
SET IDENTITY_INSERT [dbo].[Bookingoffice] OFF
/****** Object:  Table [dbo].[Ticket]    Script Date: 03/20/2020 16:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket](
	[ticketId] [bigint] IDENTITY(1,1) NOT NULL,
	[bookingTime] [time](7) NOT NULL,
	[customerName] [varchar](50) NOT NULL,
	[licensePlate] [varchar](50) NOT NULL,
	[tripId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ticketId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket] ON
INSERT [dbo].[Ticket] ([ticketId], [bookingTime], [customerName], [licensePlate], [tripId]) VALUES (22, CAST(0x070089400C110000 AS Time), N'Nam', N'35h3-3951', 1)
SET IDENTITY_INSERT [dbo].[Ticket] OFF
/****** Object:  Default [fk]    Script Date: 03/20/2020 16:03:02 ******/
ALTER TABLE [dbo].[Parkinglot] ADD  CONSTRAINT [fk]  DEFAULT ('Blank') FOR [parkStatus]
GO
/****** Object:  ForeignKey [FK__Car__parkId__15502E78]    Script Date: 03/20/2020 16:03:02 ******/
ALTER TABLE [dbo].[Car]  WITH CHECK ADD FOREIGN KEY([parkId])
REFERENCES [dbo].[Parkinglot] ([parkId])
GO
/****** Object:  ForeignKey [FK__Bookingof__tripI__145C0A3F]    Script Date: 03/20/2020 16:03:02 ******/
ALTER TABLE [dbo].[Bookingoffice]  WITH CHECK ADD FOREIGN KEY([tripId])
REFERENCES [dbo].[Trip] ([tripId])
GO
/****** Object:  ForeignKey [FK__Ticket__licenseP__164452B1]    Script Date: 03/20/2020 16:03:02 ******/
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD FOREIGN KEY([licensePlate])
REFERENCES [dbo].[Car] ([licensePlate])
GO
/****** Object:  ForeignKey [FK__Ticket__tripId__173876EA]    Script Date: 03/20/2020 16:03:02 ******/
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD FOREIGN KEY([tripId])
REFERENCES [dbo].[Trip] ([tripId])
GO
