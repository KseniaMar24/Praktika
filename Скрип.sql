USE [master]
GO
/****** Object:  Database [Практика_ХранительПРО_Мариничева]    Script Date: 16.04.2024 15:01:49 ******/
CREATE DATABASE [Практика_ХранительПРО_Мариничева]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Практика_ХранительПРО_Мариничева', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Практика_ХранительПРО_Мариничева.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Практика_ХранительПРО_Мариничева_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Практика_ХранительПРО_Мариничева_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Практика_ХранительПРО_Мариничева].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET ARITHABORT OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET  MULTI_USER 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Практика_ХранительПРО_Мариничева]
GO
/****** Object:  Table [dbo].[Групповое_Посещение]    Script Date: 16.04.2024 15:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Групповое_Посещение](
	[ID_Групповое] [int] NOT NULL,
	[Назначение] [nvarchar](100) NULL,
	[Группа] [nvarchar](100) NULL,
	[ID_Пропуска] [int] NULL,
 CONSTRAINT [PK_Групповое_Посещение] PRIMARY KEY CLUSTERED 
(
	[ID_Групповое] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявка]    Script Date: 16.04.2024 15:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявка](
	[ID_Заявки] [int] NOT NULL,
	[Дата_Начала] [date] NOT NULL,
	[Дата_Окончания] [date] NOT NULL,
	[ID_Статус] [int] NULL,
	[ID_Пропуска] [int] NOT NULL,
 CONSTRAINT [PK_Заявка] PRIMARY KEY CLUSTERED 
(
	[ID_Заявки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Личное_Посещение]    Script Date: 16.04.2024 15:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Личное_Посещение](
	[ID_Личное] [int] NOT NULL,
	[Назначение] [nvarchar](100) NULL,
	[ID_Посетителя] [int] NULL,
	[ID_Пропуска] [int] NULL,
 CONSTRAINT [PK_Личное_Посещение] PRIMARY KEY CLUSTERED 
(
	[ID_Личное] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Подразделение]    Script Date: 16.04.2024 15:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Подразделение](
	[ID_Подразделения] [int] NOT NULL,
	[Наименование] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Подразделение] PRIMARY KEY CLUSTERED 
(
	[ID_Подразделения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Посетитель]    Script Date: 16.04.2024 15:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Посетитель](
	[ID_Посетителя] [int] NOT NULL,
	[Фамилия] [varchar](50) NOT NULL,
	[Имя] [varchar](50) NOT NULL,
	[Отчество] [varchar](50) NULL,
	[Телефон] [varchar](11) NULL,
	[E-mail] [varchar](50) NOT NULL,
	[Дата_Рождения] [date] NOT NULL,
	[Организация] [nvarchar](50) NULL,
	[Примечание] [nvarchar](200) NULL,
	[Серия_Паспорта] [varchar](50) NOT NULL,
	[Номер_Паспорта] [varchar](50) NOT NULL,
	[Фотография_Посетителя] [image] NULL,
	[Скан_Документа] [int] NULL,
	[Логин] [nvarchar](50) NULL,
	[Пароль] [nvarchar](50) NULL,
 CONSTRAINT [PK_Посетитель] PRIMARY KEY CLUSTERED 
(
	[ID_Посетителя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Посещение]    Script Date: 16.04.2024 15:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Посещение](
	[ID_Посещения] [int] NOT NULL,
	[ID_Посетителя] [int] NOT NULL,
	[ID_Заявки] [int] NOT NULL,
 CONSTRAINT [PK_Посещение] PRIMARY KEY CLUSTERED 
(
	[ID_Посещения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пропуск]    Script Date: 16.04.2024 15:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пропуск](
	[ID_Пропуска] [int] NOT NULL,
	[Цель_Посещения] [nvarchar](50) NULL,
 CONSTRAINT [PK_Пропуск] PRIMARY KEY CLUSTERED 
(
	[ID_Пропуска] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудник]    Script Date: 16.04.2024 15:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудник](
	[ID_Сотрудника] [int] NOT NULL,
	[Код_Сотрудника] [char](10) NULL,
	[Фамилия] [varchar](50) NOT NULL,
	[Имя] [varchar](50) NOT NULL,
	[Отчество] [varchar](50) NOT NULL,
	[Отдел] [varchar](50) NULL,
	[ID_Подразделения] [int] NULL,
 CONSTRAINT [PK_Сотрудник] PRIMARY KEY CLUSTERED 
(
	[ID_Сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус]    Script Date: 16.04.2024 15:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус](
	[ID_Статуса] [int] NOT NULL,
	[Одобрено] [bit] NULL,
	[ID_Сотрудника] [int] NULL,
 CONSTRAINT [PK_Статус] PRIMARY KEY CLUSTERED 
(
	[ID_Статуса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (1, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР1', 1001)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (2, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР1', 1002)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (3, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР1', 1003)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (4, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР1', 1004)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (5, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР1', 1005)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (6, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР1', 1006)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (7, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР1', 1007)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (8, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР2', 1008)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (9, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР2', 1007)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (10, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР2', 1001)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (11, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР2', 1002)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (12, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР2', 1003)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (13, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР2', 1004)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (14, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР2', 1005)
INSERT [dbo].[Групповое_Посещение] ([ID_Групповое], [Назначение], [Группа], [ID_Пропуска]) VALUES (15, N'24/04/2023_9367788', N'24/04/2023_Производство_Фомичева_9367788_ГР2', 1006)
GO
INSERT [dbo].[Заявка] ([ID_Заявки], [Дата_Начала], [Дата_Окончания], [ID_Статус], [ID_Пропуска]) VALUES (101, CAST(N'2024-03-05' AS Date), CAST(N'2024-03-15' AS Date), 1, 1001)
INSERT [dbo].[Заявка] ([ID_Заявки], [Дата_Начала], [Дата_Окончания], [ID_Статус], [ID_Пропуска]) VALUES (102, CAST(N'2023-12-13' AS Date), CAST(N'2023-12-14' AS Date), 2, 1002)
INSERT [dbo].[Заявка] ([ID_Заявки], [Дата_Начала], [Дата_Окончания], [ID_Статус], [ID_Пропуска]) VALUES (103, CAST(N'2023-10-12' AS Date), CAST(N'2023-10-16' AS Date), 3, 1003)
INSERT [dbo].[Заявка] ([ID_Заявки], [Дата_Начала], [Дата_Окончания], [ID_Статус], [ID_Пропуска]) VALUES (104, CAST(N'2023-09-24' AS Date), CAST(N'2023-09-29' AS Date), 4, 1004)
INSERT [dbo].[Заявка] ([ID_Заявки], [Дата_Начала], [Дата_Окончания], [ID_Статус], [ID_Пропуска]) VALUES (105, CAST(N'2023-12-03' AS Date), CAST(N'2023-12-13' AS Date), 5, 1005)
INSERT [dbo].[Заявка] ([ID_Заявки], [Дата_Начала], [Дата_Окончания], [ID_Статус], [ID_Пропуска]) VALUES (106, CAST(N'2024-02-02' AS Date), CAST(N'2024-02-12' AS Date), 6, 1006)
INSERT [dbo].[Заявка] ([ID_Заявки], [Дата_Начала], [Дата_Окончания], [ID_Статус], [ID_Пропуска]) VALUES (107, CAST(N'2023-12-02' AS Date), CAST(N'2023-12-27' AS Date), 7, 1007)
INSERT [dbo].[Заявка] ([ID_Заявки], [Дата_Начала], [Дата_Окончания], [ID_Статус], [ID_Пропуска]) VALUES (108, CAST(N'2023-10-14' AS Date), CAST(N'2023-10-24' AS Date), 8, 1008)
INSERT [dbo].[Заявка] ([ID_Заявки], [Дата_Начала], [Дата_Окончания], [ID_Статус], [ID_Пропуска]) VALUES (109, CAST(N'2024-02-12' AS Date), CAST(N'2024-02-20' AS Date), 9, 1001)
GO
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (105, N'24/04/2023_9367788', 1, 1001)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (106, N'24/04/2023_9788737', 2, 1005)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (107, N'24/04/2023_9736379', 3, 1001)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (108, N'25/04/2023_9367788', 4, 1002)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (109, N'25/04/2023_9788737', 5, 1004)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (110, N'25/04/2023_9736379', 6, 1006)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (111, N'26/04/2023_9367788', 7, 1008)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (112, N'26/04/2023_9788737', 8, 1002)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (113, N'26/04/2023_9736379', 9, 1002)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (114, N'27/04/2023_9367788', 10, 1004)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (115, N'27/04/2023_9788737', 11, 1005)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (116, N'27/04/2023_9736379', 12, 1004)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (117, N'28/04/2023_9367788', 13, 1001)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (118, N'28/04/2023_9788737', 14, 1008)
INSERT [dbo].[Личное_Посещение] ([ID_Личное], [Назначение], [ID_Посетителя], [ID_Пропуска]) VALUES (119, N'28/04/2023_9736379', 15, 1008)
GO
INSERT [dbo].[Подразделение] ([ID_Подразделения], [Наименование]) VALUES (1, N'Производство')
INSERT [dbo].[Подразделение] ([ID_Подразделения], [Наименование]) VALUES (2, N'Сбыт')
INSERT [dbo].[Подразделение] ([ID_Подразделения], [Наименование]) VALUES (3, N'Администрация')
INSERT [dbo].[Подразделение] ([ID_Подразделения], [Наименование]) VALUES (4, N'Служба безопасности')
INSERT [dbo].[Подразделение] ([ID_Подразделения], [Наименование]) VALUES (5, N'Планирование')
GO
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (1, N'Степанова', N'Радинка', N'Власовна', N'86132726062', N'Radinka100@yandex.ru', CAST(N'1986-10-18' AS Date), N'ОО Схема', N'ук', N'5208', N'530509', NULL, 1, N'Vlas86', N'b3uWS6#Thuvq')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (2, N'Шилов', N'Прохор', N'Герасимович', N'89457678567', N'Prohor156@list.ru', CAST(N'1977-10-09' AS Date), N'АОО Полная ситуация', N'куу', N'3036', N'796488', NULL, 2, N'Prohor156', N'zDdom}SIhWs?')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (3, N'Кононов', N'Юрин', N'Романович', N'89765745635', N'YUrin155@gmail.com', CAST(N'1971-10-08' AS Date), N'ОО Отменное колесо', N'екуеуке', N'2747', N'790512', NULL, 3, N'YUrin155', N'u@m*~ACBCqNQ')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (4, N'Елисеева', N'Альбина', N'Николаевна', N'89655465555', N'Aljbina33@lenta.ru', CAST(N'1983-02-15' AS Date), N'ПАО Закон', N'уке', N'5241', N'213304', NULL, 4, N'Aljbina33', N'Bu?BHCtwDFin')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (5, N'Шарова', N'Клавдия', N'Макаровна', N'89565363654', N'Klavdiya113@live.com', CAST(N'1980-07-22' AS Date), N'АО Минута', N'куу', N'8143', N'593309', NULL, 5, N'Klavdiya113', N'FjC#hNIJori}')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (6, N'Сидорова', N'Тамара', N'Григорьевна', N'89000346365', N'Tamara179@live.com', CAST(N'1995-11-22' AS Date), N'ООО Фактор', N'екуеуке', N'8143', N'905520', NULL, 6, N'Tamara179', N'TJxVqMXrbesI')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (7, N'Петухов', N'Тарас', N'Фадеевич', N'89536235466', N'Taras24@rambler.ru', CAST(N'1991-01-05' AS Date), N'АП Крепкий доктор', N'кеуе', N'1609', N'171096', NULL, 7, N'Taras24', N'07m5yspn3K~K')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (8, N'Родионов', N'Аркадий', N'Власович', N'89643543466', N'Arkadij123@inbox.ru', CAST(N'1993-08-11' AS Date), N'ОО Массовый командир', N'ук', N'3841', N'642594', NULL, 8, N'Arkadij123', N'vk2N7lxX}ck%')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (9, N'Горшкова', N'Глафира', N'Валентиновна', N'89423423333', N'Glafira73@outlook.com', CAST(N'1978-05-25' AS Date), N'АА Угол', N'екуеуке', N'9170', N'402601', NULL, 9, N'Glafira73', N'Zz8POQlP}M4~')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (10, N'Кириллова', N'Гавриила', N'Яковна', N'89643544444', N'Gavriila68@msn.com', CAST(N'1992-04-26' AS Date), N'АА Эпоха', N'ук', N'9438', N'379667', NULL, 10, N'Gavriila68', N'x4K5WthEe8ua')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (11, N'Овчинников', N'Кузьма', N'Ефимович', N'89600034644', N'Kuzjma124@yandex.ru', CAST(N'1993-04-02' AS Date), N'ОО Вид', N'екуеуке', N'766', N'647226', NULL, 11, N'Kuzjma124', N'OsByQJ}vYznW')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (12, N'Беляков', N'Роман', N'Викторович', N'89634643644', N'Roman89@gmail.com', CAST(N'1991-06-07' AS Date), N'ОО Настоящая надежда', N'куу', N'2411', N'478305', NULL, 12, N'Roman89', N'Xd?xP$2yICcG')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (13, N'Лыткин', N'Алексей', N'Максимович', N'89636543555', N'Aleksej43@gmail.com', CAST(N'1996-03-07' AS Date), N'АА Богатый год', N'екуеуке', N'2383', N'259825', NULL, 13, N'Aleksej43', N'~c%PlTY0?qgl')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (14, N'Шубина', N'Надежда', N'Викторовна', N'89653564656', N'Nadezhda137@outlook.com', CAST(N'1981-09-24' AS Date), N'ОПП Щедрый материал', N'куе', N'8844', N'708476', NULL, 14, N'Nadezhda137', N'QQ~0q~rXHb?p')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (15, N'Зиновьева', N'Бронислава', N'Викторовна', N'89464646466', N'Bronislava56@yahoo.com', CAST(N'1981-03-19' AS Date), N'ПАА Период', N'кеуе', N'6736', N'319423', NULL, 15, N'Bronislava56', N'LO}xyC~1S4l6')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (17, N'Самойлова', N'Таисия', N'Гермоновна', N'89456346545', N'Taisiya177@lenta.ru', CAST(N'2014-12-04' AS Date), N'', N'', N'5193', N'897719', NULL, NULL, N'Taisiya177', N'R94YGT3XFjgD')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (18, N'Ситникова', N'Аделаида', N'Гермоновна', N'89456245345', N'Adelaida20@hotmail.com', CAST(N'2013-07-11' AS Date), N'', N'', N'7561', N'148016', NULL, NULL, N'Adelaida20', N'LCY*{L*fEGYB')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (19, N'Исаев', N'Лев', N'Юлианович', N'89600064333', N'Lev131@rambler.ru', CAST(N'2008-06-20' AS Date), N'', N'', N'1860', N'680004', NULL, NULL, N'Lev131', N'~?oj2Lh@S7*T')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (20, N'Никифоров', N'Даниил', N'Степанович', N'89523534545', N'Daniil198@bk.ru', CAST(N'2008-08-11' AS Date), N'', N'', N'4557', N'999958', NULL, NULL, N'lzaihtvkdn', N'L2W#uo7z{EsO')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (21, N'Титова', N'Людмила', N'Якововна', N'89235454355', N'Lyudmila123@hotmail.com', CAST(N'2000-03-25' AS Date), N'', N'', N'7715', N'639425', NULL, NULL, N'Lyudmila123', N'@8mk9M?NBAGj')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (22, N'Абрамова', N'Таисия', N'Дмитриевна', N'89242142343', N'Taisiya176@hotmail.com', CAST(N'2002-03-11' AS Date), N'', N'', N'7310', N'893510', NULL, NULL, N'Taisiya176', N'~rIWfsnXA~7C')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (23, N'Кузьмина', N'Вера', N'Максимовна', N'89000666666', N'Vera195@list.ru', CAST(N'1999-02-05' AS Date), N'', N'', N'3537', N'982933', NULL, NULL, N'Vera195', N'B|5v$2r$7luL')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (24, N'Мартынов', N'Яков', N'Ростиславович', N'89523523535', N'YAkov196@rambler.ru', CAST(N'2016-04-25' AS Date), N'', N'', N'1793', N'986063', NULL, NULL, N'YAkov196', N'$6s5bggKP7aw')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (25, N'Евсеева', N'Нина', N'Павловна', N'89543064306', N'Nina145@msn.com', CAST(N'2007-06-03' AS Date), N'', N'', N'9323', N'745717', NULL, NULL, N'Nina145', N'Uxy6RtBXIcpT')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (26, N'Голубев', N'Леонтий', N'Вячеславович', N'89643463466', N'Leontij161@mail.ru', CAST(N'2008-01-01' AS Date), N'', N'', N'1059', N'822077', NULL, NULL, N'Leontij161', N'KkMY8yKw@oCa')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (27, N'Карпова', N'Серафима', N'Михаиловна', N'89643063463', N'Serafima169@yahoo.com', CAST(N'2007-12-19' AS Date), N'', N'', N'7034', N'858987', NULL, NULL, N'Serafima169', N'gNe3I9}8J3Z@')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (28, N'Орехов', N'Сергей', N'Емельянович', N'89634634564', N'Sergej35@inbox.ru', CAST(N'2000-09-16' AS Date), N'', N'', N'3844', N'223682', NULL, NULL, N'Sergej35', N'$39vc%ljqN%r')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (29, N'Исаев', N'Георгий', N'Павлович', N'89634634664', N'Georgij121@inbox.ru', CAST(N'2009-03-11' AS Date), N'', N'', N'4076', N'629809', NULL, NULL, N'Georgij121', N'bbx5H}f*BC?w')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (30, N'Богданов', N'Елизар', N'Артемович', N'89564364366', N'Elizar30@yandex.ru', CAST(N'2007-12-31' AS Date), N'', N'', N'573', N'198559', NULL, NULL, N'Elizar30', N'wJs1~r3RS~dr')
INSERT [dbo].[Посетитель] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Дата_Рождения], [Организация], [Примечание], [Серия_Паспорта], [Номер_Паспорта], [Фотография_Посетителя], [Скан_Документа], [Логин], [Пароль]) VALUES (31, N'Тихонова', N'Лана', N'Семеновна', N'89464364364', N'Lana117@outlook.com', CAST(N'2004-07-20' AS Date), N'', N'', N'8761', N'609740', NULL, NULL, N'Lana117', N'mFoG$jcS3c4~')
GO
INSERT [dbo].[Посещение] ([ID_Посещения], [ID_Посетителя], [ID_Заявки]) VALUES (15, 10, 101)
INSERT [dbo].[Посещение] ([ID_Посещения], [ID_Посетителя], [ID_Заявки]) VALUES (16, 11, 102)
INSERT [dbo].[Посещение] ([ID_Посещения], [ID_Посетителя], [ID_Заявки]) VALUES (17, 12, 103)
INSERT [dbo].[Посещение] ([ID_Посещения], [ID_Посетителя], [ID_Заявки]) VALUES (18, 13, 104)
INSERT [dbo].[Посещение] ([ID_Посещения], [ID_Посетителя], [ID_Заявки]) VALUES (19, 14, 105)
INSERT [dbo].[Посещение] ([ID_Посещения], [ID_Посетителя], [ID_Заявки]) VALUES (20, 15, 106)
INSERT [dbo].[Посещение] ([ID_Посещения], [ID_Посетителя], [ID_Заявки]) VALUES (22, 17, 108)
INSERT [dbo].[Посещение] ([ID_Посещения], [ID_Посетителя], [ID_Заявки]) VALUES (23, 18, 109)
GO
INSERT [dbo].[Пропуск] ([ID_Пропуска], [Цель_Посещения]) VALUES (1001, N'Бизнес')
INSERT [dbo].[Пропуск] ([ID_Пропуска], [Цель_Посещения]) VALUES (1002, N'Личное заинтересованность')
INSERT [dbo].[Пропуск] ([ID_Пропуска], [Цель_Посещения]) VALUES (1003, N'Встреча')
INSERT [dbo].[Пропуск] ([ID_Пропуска], [Цель_Посещения]) VALUES (1004, N'Игра')
INSERT [dbo].[Пропуск] ([ID_Пропуска], [Цель_Посещения]) VALUES (1005, N'Мероприятие')
INSERT [dbo].[Пропуск] ([ID_Пропуска], [Цель_Посещения]) VALUES (1006, N'Навыки')
INSERT [dbo].[Пропуск] ([ID_Пропуска], [Цель_Посещения]) VALUES (1007, N'Работа')
INSERT [dbo].[Пропуск] ([ID_Пропуска], [Цель_Посещения]) VALUES (1008, N'Скука')
GO
INSERT [dbo].[Сотрудник] ([ID_Сотрудника], [Код_Сотрудника], [Фамилия], [Имя], [Отчество], [Отдел], [ID_Подразделения]) VALUES (1, N'9404040   ', N'Фомичева', N'Авдотья', N'Трофимовна', N'', 1)
INSERT [dbo].[Сотрудник] ([ID_Сотрудника], [Код_Сотрудника], [Фамилия], [Имя], [Отчество], [Отдел], [ID_Подразделения]) VALUES (2, N'9367788   ', N'Гаврилова', N'Римма', N'Ефимовна', N'', 2)
INSERT [dbo].[Сотрудник] ([ID_Сотрудника], [Код_Сотрудника], [Фамилия], [Имя], [Отчество], [Отдел], [ID_Подразделения]) VALUES (3, N'9788737   ', N'Носкова', N'Наталия', N'Прохоровна', N'', 3)
INSERT [dbo].[Сотрудник] ([ID_Сотрудника], [Код_Сотрудника], [Фамилия], [Имя], [Отчество], [Отдел], [ID_Подразделения]) VALUES (4, N'9736379   ', N'Архипов', N'Тимофей', N'Васильевич', N'', 4)
INSERT [dbo].[Сотрудник] ([ID_Сотрудника], [Код_Сотрудника], [Фамилия], [Имя], [Отчество], [Отдел], [ID_Подразделения]) VALUES (5, N'9362832   ', N'Орехова', N'Вероника', N'Артемовна', N'', 5)
INSERT [dbo].[Сотрудник] ([ID_Сотрудника], [Код_Сотрудника], [Фамилия], [Имя], [Отчество], [Отдел], [ID_Подразделения]) VALUES (6, N'9737848   ', N'Савельев', N'Павел', N'Степанович', N'Общий отдел', NULL)
INSERT [dbo].[Сотрудник] ([ID_Сотрудника], [Код_Сотрудника], [Фамилия], [Имя], [Отчество], [Отдел], [ID_Подразделения]) VALUES (7, N'9768239   ', N'Чернов', N'Всеволод', N'Наумович', N'Охрана', NULL)
GO
INSERT [dbo].[Статус] ([ID_Статуса], [Одобрено], [ID_Сотрудника]) VALUES (1, 0, 1)
INSERT [dbo].[Статус] ([ID_Статуса], [Одобрено], [ID_Сотрудника]) VALUES (2, 1, 1)
INSERT [dbo].[Статус] ([ID_Статуса], [Одобрено], [ID_Сотрудника]) VALUES (3, 1, 2)
INSERT [dbo].[Статус] ([ID_Статуса], [Одобрено], [ID_Сотрудника]) VALUES (4, 1, 3)
INSERT [dbo].[Статус] ([ID_Статуса], [Одобрено], [ID_Сотрудника]) VALUES (5, 1, 4)
INSERT [dbo].[Статус] ([ID_Статуса], [Одобрено], [ID_Сотрудника]) VALUES (6, 1, 5)
INSERT [dbo].[Статус] ([ID_Статуса], [Одобрено], [ID_Сотрудника]) VALUES (7, 1, 6)
INSERT [dbo].[Статус] ([ID_Статуса], [Одобрено], [ID_Сотрудника]) VALUES (8, 1, 3)
INSERT [dbo].[Статус] ([ID_Статуса], [Одобрено], [ID_Сотрудника]) VALUES (9, 0, 3)
GO
ALTER TABLE [dbo].[Посетитель] ADD  CONSTRAINT [DF_Посетитель_Паспортные_Данные]  DEFAULT (N'v') FOR [Номер_Паспорта]
GO
ALTER TABLE [dbo].[Групповое_Посещение]  WITH CHECK ADD  CONSTRAINT [FK_Групповое_Посещение_Пропуск] FOREIGN KEY([ID_Пропуска])
REFERENCES [dbo].[Пропуск] ([ID_Пропуска])
GO
ALTER TABLE [dbo].[Групповое_Посещение] CHECK CONSTRAINT [FK_Групповое_Посещение_Пропуск]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Пропуск] FOREIGN KEY([ID_Пропуска])
REFERENCES [dbo].[Пропуск] ([ID_Пропуска])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Пропуск]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Статус] FOREIGN KEY([ID_Статус])
REFERENCES [dbo].[Статус] ([ID_Статуса])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Статус]
GO
ALTER TABLE [dbo].[Личное_Посещение]  WITH CHECK ADD  CONSTRAINT [FK_Личное_Посещение_Пропуск] FOREIGN KEY([ID_Пропуска])
REFERENCES [dbo].[Пропуск] ([ID_Пропуска])
GO
ALTER TABLE [dbo].[Личное_Посещение] CHECK CONSTRAINT [FK_Личное_Посещение_Пропуск]
GO
ALTER TABLE [dbo].[Посещение]  WITH CHECK ADD  CONSTRAINT [FK_Посещение_Заявка] FOREIGN KEY([ID_Заявки])
REFERENCES [dbo].[Заявка] ([ID_Заявки])
GO
ALTER TABLE [dbo].[Посещение] CHECK CONSTRAINT [FK_Посещение_Заявка]
GO
ALTER TABLE [dbo].[Посещение]  WITH CHECK ADD  CONSTRAINT [FK_Посещение_Посетитель] FOREIGN KEY([ID_Посетителя])
REFERENCES [dbo].[Посетитель] ([ID_Посетителя])
GO
ALTER TABLE [dbo].[Посещение] CHECK CONSTRAINT [FK_Посещение_Посетитель]
GO
ALTER TABLE [dbo].[Сотрудник]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудник_Подразделение] FOREIGN KEY([ID_Подразделения])
REFERENCES [dbo].[Подразделение] ([ID_Подразделения])
GO
ALTER TABLE [dbo].[Сотрудник] CHECK CONSTRAINT [FK_Сотрудник_Подразделение]
GO
ALTER TABLE [dbo].[Статус]  WITH CHECK ADD  CONSTRAINT [FK_Статус_Сотрудник] FOREIGN KEY([ID_Сотрудника])
REFERENCES [dbo].[Сотрудник] ([ID_Сотрудника])
GO
ALTER TABLE [dbo].[Статус] CHECK CONSTRAINT [FK_Статус_Сотрудник]
GO
USE [master]
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET  READ_WRITE 
GO
