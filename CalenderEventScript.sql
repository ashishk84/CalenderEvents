USE [master]
GO
/****** Object:  Database [CalenderEventsAPIContextDB]    Script Date: 2021-02-01 17:25:34 ******/
CREATE DATABASE [CalenderEventsAPIContextDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CalenderEventsAPIContextDB', FILENAME = N'G:\Software-Installations\MsSql-2019-Installation\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\CalenderEventsAPIContextDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CalenderEventsAPIContextDB_log', FILENAME = N'G:\Software-Installations\MsSql-2019-Installation\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\CalenderEventsAPIContextDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CalenderEventsAPIContextDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET RECOVERY FULL 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET  MULTI_USER 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET QUERY_STORE = OFF
GO
USE [CalenderEventsAPIContextDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2021-02-01 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 2021-02-01 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [tinyint] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[IsAllDay] [tinyint] NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210201055057_CalenderEventsAPIContextDB', N'5.0.2')
SET IDENTITY_INSERT [dbo].[Event] ON 

INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (1, N'meeting Team IT', N'meeting Team IT', 1, CAST(N'2021-02-01T14:31:00.0000000' AS DateTime2), CAST(N'2021-02-01T15:31:00.0000000' AS DateTime2), 0, N'meeting Team IT asper discuss')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (2, N'meeting Team IT next', N'meeting Team IT next', 1, CAST(N'2021-02-01T16:00:00.0000000' AS DateTime2), CAST(N'2021-02-01T17:00:00.0000000' AS DateTime2), 0, N'meeting Team IT next asper discuss')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (3, N'Standup Call', N'Standup Call Team IT', 1, CAST(N'2021-02-01T20:00:00.0000000' AS DateTime2), CAST(N'2021-02-01T21:00:00.0000000' AS DateTime2), 0, N'Standup Call Team IT for project X')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (4, N'Long Event', N'Long Event Management', 1, CAST(N'2021-03-01T11:00:00.0000000' AS DateTime2), CAST(N'2021-03-01T13:00:00.0000000' AS DateTime2), 0, N'Long Event Management to discuss agenda..')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (5, N'Conference', N'Conference', 1, CAST(N'2021-03-01T15:00:00.0000000' AS DateTime2), CAST(N'2021-03-01T16:00:00.0000000' AS DateTime2), 0, N'Conference..')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (6, N'prepare for the meeting pre-meet', N'prepare for the meeting pre-meet', 1, CAST(N'2021-03-01T18:00:00.0000000' AS DateTime2), CAST(N'2021-03-01T19:30:00.0000000' AS DateTime2), 0, N'prepare for the meeting pre-meet..')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (7, N'CTO meeting', N'CTO meeting', 1, CAST(N'2021-03-03T20:00:00.0000000' AS DateTime2), CAST(N'2021-03-01T21:30:00.0000000' AS DateTime2), 0, N'CTO meeting..')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (8, N'CEO meeting', N'CEO meeting', 1, CAST(N'2021-03-03T22:00:00.0000000' AS DateTime2), CAST(N'2021-03-01T23:00:00.0000000' AS DateTime2), 0, N'CEO meeting..')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (9, N'Morning StandUp Sales', N'Morning StandUp Sales', 1, CAST(N'2021-03-01T09:00:00.0000000' AS DateTime2), CAST(N'2021-03-01T09:30:00.0000000' AS DateTime2), 0, N'Morning StandUp Sales..')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (10, N'TownHall', N'Townhall', 1, CAST(N'2021-03-01T10:00:00.0000000' AS DateTime2), CAST(N'2021-03-01T11:00:00.0000000' AS DateTime2), 0, N'Townhall..')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (11, N'standup', N'standup', 1, CAST(N'2021-04-05T10:00:00.0000000' AS DateTime2), CAST(N'2021-04-05T11:00:00.0000000' AS DateTime2), 0, N'standup..')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (12, N'Team Lunch', N'Team Lunch', 1, CAST(N'2021-04-05T13:00:00.0000000' AS DateTime2), CAST(N'2021-04-05T14:00:00.0000000' AS DateTime2), 0, N'Team Lunch..')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (13, N'Meeting with Guest', N'Meeting with Guest', 1, CAST(N'2021-04-05T16:00:00.0000000' AS DateTime2), CAST(N'2021-04-05T16:30:00.0000000' AS DateTime2), 0, N'Meeting with Guest..')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (14, N'meeting with HR', N'meeting with HR', 1, CAST(N'2021-02-02T10:00:00.0000000' AS DateTime2), CAST(N'2021-02-02T11:00:00.0000000' AS DateTime2), 0, N'meeting with HR to discuss')
INSERT [dbo].[Event] ([Id], [Title], [Description], [IsActive], [StartDate], [EndDate], [IsAllDay], [Content]) VALUES (15, N'staff meeting', N'meeting with staff ', 1, CAST(N'2021-02-02T12:00:00.0000000' AS DateTime2), CAST(N'2021-02-02T13:00:00.0000000' AS DateTime2), 0, N'meeting with staff ...')
SET IDENTITY_INSERT [dbo].[Event] OFF
USE [master]
GO
ALTER DATABASE [CalenderEventsAPIContextDB] SET  READ_WRITE 
GO
