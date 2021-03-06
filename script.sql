USE [master]
GO
/****** Object:  Database [MovieReservation]    Script Date: 10/11/2021 20:09:18 ******/
CREATE DATABASE [MovieReservation] ON  PRIMARY 
( NAME = N'MovieReservation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLSERVER\MSSQL\DATA\MovieReservation.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MovieReservation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLSERVER\MSSQL\DATA\MovieReservation_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MovieReservation] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MovieReservation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MovieReservation] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MovieReservation] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MovieReservation] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MovieReservation] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MovieReservation] SET ARITHABORT OFF
GO
ALTER DATABASE [MovieReservation] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [MovieReservation] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MovieReservation] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MovieReservation] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MovieReservation] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MovieReservation] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MovieReservation] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MovieReservation] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MovieReservation] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MovieReservation] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MovieReservation] SET  ENABLE_BROKER
GO
ALTER DATABASE [MovieReservation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MovieReservation] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MovieReservation] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MovieReservation] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MovieReservation] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MovieReservation] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [MovieReservation] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [MovieReservation] SET  READ_WRITE
GO
ALTER DATABASE [MovieReservation] SET RECOVERY FULL
GO
ALTER DATABASE [MovieReservation] SET  MULTI_USER
GO
ALTER DATABASE [MovieReservation] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MovieReservation] SET DB_CHAINING OFF
GO
USE [MovieReservation]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 10/11/2021 20:09:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[MovieTime] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TimeSlot] ON
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (1, 1, N'9:00 AM - 10:30AM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (5, 2, N'9:00 AM - 10:30AM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (6, 3, N'9:00 AM - 10:30AM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (8, 1, N'12:00 PM - 1:30PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (9, 2, N'12:00 PM - 1:30PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (10, 3, N'12:00 PM - 1:30PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (11, 1, N'3:00 PM - 4:30 PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (12, 2, N'3:00 PM - 4:30 PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (13, 3, N'3:00 PM - 4:30 PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (14, 1, N'6:00 PM - 7:30 PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (15, 2, N'6:00 PM - 7:30 PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (17, 3, N'6:00 PM - 7:30 PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (18, 1, N'8:00 PM - 9:30 PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (19, 2, N'8:00 PM - 9:30 PM')
INSERT [dbo].[TimeSlot] ([Id], [MovieId], [MovieTime]) VALUES (20, 3, N'8:00 PM - 9:30 PM')
SET IDENTITY_INSERT [dbo].[TimeSlot] OFF
/****** Object:  Table [dbo].[Seat]    Script Date: 10/11/2021 20:09:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SeatFloor] [nvarchar](max) NULL,
	[SeatNumber] [int] NULL,
	[IsAvailable] [bit] NULL,
	[MovieId] [int] NULL,
	[TimeSlotId] [int] NULL,
 CONSTRAINT [PK_Seat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Seat] ON
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (181, N'A', 1, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (182, N'A', 2, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (183, N'A', 3, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (184, N'A', 4, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (185, N'A', 5, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (186, N'A', 6, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (187, N'A', 7, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (188, N'A', 8, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (191, N'B', 1, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (192, N'B', 2, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (193, N'B', 3, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (194, N'B', 4, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (195, N'B', 5, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (196, N'B', 6, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (197, N'B', 7, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (198, N'B', 8, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (199, N'B', 9, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (200, N'B', 10, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (201, N'C', 1, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (202, N'C', 2, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (203, N'C', 3, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (204, N'C', 4, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (205, N'C', 5, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (206, N'C', 6, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (207, N'C', 7, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (208, N'C', 8, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (209, N'C', 9, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (210, N'C', 10, 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (211, N'A', 1, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (212, N'A', 2, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (213, N'A', 3, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (214, N'A', 4, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (215, N'A', 5, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (216, N'A', 6, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (217, N'A', 7, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (218, N'A', 8, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (221, N'B', 1, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (222, N'B', 2, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (223, N'B', 3, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (224, N'B', 4, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (225, N'B', 5, 0, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (226, N'B', 6, 0, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (227, N'B', 7, 0, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (228, N'B', 8, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (229, N'B', 9, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (230, N'B', 10, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (231, N'C', 1, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (232, N'C', 2, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (233, N'C', 3, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (234, N'C', 4, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (235, N'C', 5, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (236, N'C', 6, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (237, N'C', 7, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (238, N'C', 8, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (239, N'C', 9, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (240, N'C', 10, 1, 2, 5)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (241, N'A', 1, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (242, N'A', 2, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (243, N'A', 3, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (244, N'A', 4, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (245, N'A', 5, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (246, N'A', 6, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (247, N'A', 7, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (248, N'A', 8, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (251, N'B', 1, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (252, N'B', 2, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (253, N'B', 3, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (254, N'B', 4, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (255, N'B', 5, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (256, N'B', 6, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (257, N'B', 7, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (258, N'B', 8, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (259, N'B', 9, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (260, N'B', 10, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (261, N'C', 1, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (262, N'C', 2, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (263, N'C', 3, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (264, N'C', 4, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (265, N'C', 5, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (266, N'C', 6, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (267, N'C', 7, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (268, N'C', 8, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (269, N'C', 9, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (270, N'C', 10, 1, 3, 6)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (271, N'A', 1, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (272, N'A', 2, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (273, N'A', 3, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (274, N'A', 4, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (275, N'A', 5, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (276, N'A', 6, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (277, N'A', 7, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (278, N'A', 8, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (279, N'B', 1, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (280, N'B', 2, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (281, N'B', 3, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (282, N'B', 4, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (283, N'B', 5, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (284, N'B', 6, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (285, N'B', 7, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (286, N'B', 8, 1, 3, 10)
GO
print 'Processed 100 total records'
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (287, N'B', 9, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (288, N'B', 10, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (289, N'C', 1, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (290, N'C', 2, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (291, N'C', 3, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (292, N'C', 4, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (293, N'C', 5, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (294, N'C', 6, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (295, N'C', 7, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (296, N'C', 8, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (297, N'C', 9, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (298, N'C', 10, 1, 3, 10)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (299, N'A', 1, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (300, N'A', 2, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (301, N'A', 3, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (302, N'A', 4, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (303, N'A', 5, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (304, N'A', 6, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (305, N'A', 7, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (306, N'A', 8, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (307, N'B', 1, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (308, N'B', 2, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (309, N'B', 3, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (310, N'B', 4, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (311, N'B', 5, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (312, N'B', 6, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (313, N'B', 7, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (314, N'B', 8, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (315, N'B', 9, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (316, N'B', 10, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (317, N'C', 1, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (318, N'C', 2, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (319, N'C', 3, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (320, N'C', 4, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (321, N'C', 5, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (322, N'C', 6, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (323, N'C', 7, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (324, N'C', 8, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (325, N'C', 9, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (326, N'C', 10, 1, 2, 9)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (327, N'A', 1, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (328, N'A', 2, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (329, N'A', 3, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (330, N'A', 4, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (331, N'A', 5, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (332, N'A', 6, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (333, N'A', 7, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (334, N'A', 9, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (335, N'B', 1, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (336, N'B', 2, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (337, N'B', 3, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (338, N'B', 4, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (339, N'B', 5, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (340, N'B', 6, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (341, N'B', 7, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (342, N'B', 8, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (343, N'B', 9, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (344, N'B', 10, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (345, N'C', 1, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (346, N'C', 2, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (347, N'C', 3, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (348, N'C', 4, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (349, N'C', 5, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (350, N'C', 6, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (351, N'C', 7, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (352, N'C', 8, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (353, N'C', 9, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (354, N'C', 10, 1, 1, 8)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (355, N'A', 1, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (356, N'A', 2, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (357, N'A', 3, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (358, N'A', 4, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (359, N'A', 5, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (360, N'A', 6, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (361, N'A', 7, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (362, N'A', 9, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (363, N'B', 1, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (364, N'B', 2, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (365, N'B', 3, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (366, N'B', 4, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (367, N'B', 5, 0, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (368, N'B', 6, 0, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (369, N'B', 7, 0, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (370, N'B', 8, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (371, N'B', 9, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (372, N'B', 10, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (373, N'C', 1, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (374, N'C', 2, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (375, N'C', 3, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (376, N'C', 4, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (377, N'C', 5, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (378, N'C', 6, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (379, N'C', 7, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (380, N'C', 8, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (381, N'C', 9, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (382, N'C', 10, 1, 1, 11)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (383, N'A', 1, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (384, N'A', 2, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (385, N'A', 3, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (386, N'A', 4, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (387, N'A', 5, 1, 2, 12)
GO
print 'Processed 200 total records'
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (388, N'A', 6, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (389, N'A', 7, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (390, N'A', 9, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (391, N'B', 1, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (392, N'B', 2, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (393, N'B', 3, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (394, N'B', 4, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (395, N'B', 5, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (396, N'B', 6, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (397, N'B', 7, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (398, N'B', 8, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (399, N'B', 9, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (400, N'B', 10, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (401, N'C', 1, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (402, N'C', 2, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (403, N'C', 3, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (404, N'C', 4, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (405, N'C', 5, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (406, N'C', 6, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (407, N'C', 7, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (408, N'C', 8, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (409, N'C', 9, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (410, N'C', 10, 1, 2, 12)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (411, N'A', 1, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (412, N'A', 2, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (413, N'A', 3, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (414, N'A', 4, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (415, N'A', 5, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (416, N'A', 6, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (417, N'A', 7, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (418, N'A', 9, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (419, N'B', 1, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (420, N'B', 2, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (421, N'B', 3, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (422, N'B', 4, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (423, N'B', 5, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (424, N'B', 6, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (425, N'B', 7, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (426, N'B', 8, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (427, N'B', 9, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (428, N'B', 10, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (429, N'C', 1, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (430, N'C', 2, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (431, N'C', 3, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (432, N'C', 4, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (433, N'C', 5, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (434, N'C', 6, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (435, N'C', 7, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (436, N'C', 8, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (437, N'C', 9, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (438, N'C', 10, 1, 3, 13)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (439, N'A', 1, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (440, N'A', 2, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (441, N'A', 3, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (442, N'A', 4, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (443, N'A', 5, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (444, N'A', 6, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (445, N'A', 7, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (446, N'A', 9, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (447, N'B', 1, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (448, N'B', 2, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (449, N'B', 3, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (450, N'B', 4, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (451, N'B', 5, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (452, N'B', 6, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (453, N'B', 7, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (454, N'B', 8, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (455, N'B', 9, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (456, N'B', 10, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (457, N'C', 1, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (458, N'C', 2, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (459, N'C', 3, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (460, N'C', 4, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (461, N'C', 5, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (462, N'C', 6, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (463, N'C', 7, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (464, N'C', 8, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (465, N'C', 9, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (466, N'C', 10, 1, 3, 17)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (467, N'A', 1, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (468, N'A', 2, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (469, N'A', 3, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (470, N'A', 4, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (471, N'A', 5, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (472, N'A', 6, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (473, N'A', 7, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (474, N'A', 9, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (475, N'B', 1, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (476, N'B', 2, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (477, N'B', 3, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (478, N'B', 4, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (479, N'B', 5, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (480, N'B', 6, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (481, N'B', 7, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (482, N'B', 8, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (483, N'B', 9, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (484, N'B', 10, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (485, N'C', 1, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (486, N'C', 2, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (487, N'C', 3, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (488, N'C', 4, 1, 3, 20)
GO
print 'Processed 300 total records'
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (489, N'C', 5, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (490, N'C', 6, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (491, N'C', 7, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (492, N'C', 8, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (493, N'C', 9, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (494, N'C', 10, 1, 3, 20)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (495, N'A', 1, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (496, N'A', 2, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (497, N'A', 3, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (498, N'A', 4, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (499, N'A', 5, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (500, N'A', 6, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (501, N'A', 7, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (502, N'A', 9, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (503, N'B', 1, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (504, N'B', 2, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (505, N'B', 3, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (506, N'B', 4, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (507, N'B', 5, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (508, N'B', 6, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (509, N'B', 7, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (510, N'B', 8, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (511, N'B', 9, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (512, N'B', 10, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (513, N'C', 1, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (514, N'C', 2, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (515, N'C', 3, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (516, N'C', 4, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (517, N'C', 5, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (518, N'C', 6, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (519, N'C', 7, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (520, N'C', 8, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (521, N'C', 9, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (522, N'C', 10, 1, 2, 15)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (523, N'A', 1, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (524, N'A', 2, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (525, N'A', 3, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (526, N'A', 4, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (527, N'A', 5, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (528, N'A', 6, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (529, N'A', 7, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (530, N'A', 9, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (531, N'B', 1, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (532, N'B', 2, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (533, N'B', 3, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (534, N'B', 4, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (535, N'B', 5, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (536, N'B', 6, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (537, N'B', 7, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (538, N'B', 8, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (539, N'B', 9, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (540, N'B', 10, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (541, N'C', 1, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (542, N'C', 2, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (543, N'C', 3, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (544, N'C', 4, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (545, N'C', 5, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (546, N'C', 6, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (547, N'C', 7, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (548, N'C', 8, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (549, N'C', 9, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (550, N'C', 10, 1, 2, 19)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (551, N'A', 1, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (552, N'A', 2, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (553, N'A', 3, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (554, N'A', 4, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (555, N'A', 5, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (556, N'A', 6, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (557, N'A', 7, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (558, N'A', 9, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (559, N'B', 1, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (560, N'B', 2, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (561, N'B', 3, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (562, N'B', 4, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (563, N'B', 5, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (564, N'B', 6, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (565, N'B', 7, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (566, N'B', 8, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (567, N'B', 9, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (568, N'B', 10, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (569, N'C', 1, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (570, N'C', 2, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (571, N'C', 3, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (572, N'C', 4, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (573, N'C', 5, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (574, N'C', 6, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (575, N'C', 7, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (576, N'C', 8, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (577, N'C', 9, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (578, N'C', 10, 1, 1, 14)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (579, N'A', 1, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (580, N'A', 2, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (581, N'A', 3, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (582, N'A', 4, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (583, N'A', 5, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (584, N'A', 6, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (585, N'A', 7, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (586, N'A', 9, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (587, N'B', 1, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (588, N'B', 2, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (589, N'B', 3, 1, 1, 18)
GO
print 'Processed 400 total records'
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (590, N'B', 4, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (591, N'B', 5, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (592, N'B', 6, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (593, N'B', 7, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (594, N'B', 8, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (595, N'B', 9, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (596, N'B', 10, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (597, N'C', 1, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (598, N'C', 2, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (599, N'C', 3, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (600, N'C', 4, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (601, N'C', 5, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (602, N'C', 6, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (603, N'C', 7, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (604, N'C', 8, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (605, N'C', 9, 1, 1, 18)
INSERT [dbo].[Seat] ([Id], [SeatFloor], [SeatNumber], [IsAvailable], [MovieId], [TimeSlotId]) VALUES (606, N'C', 10, 1, 1, 18)
SET IDENTITY_INSERT [dbo].[Seat] OFF
/****** Object:  Table [dbo].[Movie]    Script Date: 10/11/2021 20:09:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Movie_Name] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Image] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Movie] ON
INSERT [dbo].[Movie] ([Id], [Movie_Name], [Description], [Image]) VALUES (1, N'Movie 1', N'Comedy', NULL)
INSERT [dbo].[Movie] ([Id], [Movie_Name], [Description], [Image]) VALUES (2, N'Movie 2', N'Love Story', NULL)
INSERT [dbo].[Movie] ([Id], [Movie_Name], [Description], [Image]) VALUES (3, N'Movie 3', N'Horror', NULL)
SET IDENTITY_INSERT [dbo].[Movie] OFF
/****** Object:  Table [dbo].[Client]    Script Date: 10/11/2021 20:09:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [varchar](100) NULL,
	[Seats] [varchar](max) NULL,
	[DateReserve] [datetime] NULL,
	[MovieId] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON
INSERT [dbo].[Client] ([Id], [ClientName], [Seats], [DateReserve], [MovieId]) VALUES (1, N'Testing', N'B5, B6, B7, ', CAST(0x0000ADBE013A3E0B AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Client] OFF
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/11/2021 20:09:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211006114416_AddSeatToDb', N'3.1.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211006134951_AddIsAvailableToSeatModel', N'3.1.19')
