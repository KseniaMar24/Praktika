USE [master]
GO
/****** Object:  Database [Практика_ХранительПРО_Мариничева]    Script Date: 15.04.2024 17:00:58 ******/
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
/****** Object:  Table [dbo].[Документ]    Script Date: 15.04.2024 17:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Документ](
	[ID_Документа] [int] NOT NULL,
	[Скан_Паспорта] [image] NULL,
 CONSTRAINT [PK_Документ] PRIMARY KEY CLUSTERED 
(
	[ID_Документа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявка]    Script Date: 15.04.2024 17:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявка](
	[ID_Заявки] [int] NOT NULL,
	[Дата_Начала] [date] NOT NULL,
	[Дата_Окончания] [date] NOT NULL,
	[Цель_Посещения] [nvarchar](50) NULL,
	[Статус] [varchar](50) NULL,
	[ID_Посетителя] [int] NOT NULL,
 CONSTRAINT [PK_Заявка] PRIMARY KEY CLUSTERED 
(
	[ID_Заявки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Подразделение]    Script Date: 15.04.2024 17:00:58 ******/
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
/****** Object:  Table [dbo].[Пользователь]    Script Date: 15.04.2024 17:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пользователь](
	[ID_Пользователя] [int] NOT NULL,
	[Логин] [varchar](50) NOT NULL,
	[Пароль] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Пользователь] PRIMARY KEY CLUSTERED 
(
	[ID_Пользователя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Посетитель]    Script Date: 15.04.2024 17:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Посетитель](
	[ID_Посетителя] [int] NOT NULL,
	[Фамилия] [varchar](50) NOT NULL,
	[Имя] [varchar](50) NOT NULL,
	[Отчество] [varchar](50) NOT NULL,
	[Телефон] [varchar](11) NOT NULL,
	[E-mail] [varchar](50) NULL,
	[Дата_Рождения] [date] NULL,
	[Организация] [nvarchar](50) NULL,
	[Примечание] [nvarchar](200) NULL,
	[Серия_Паспорта] [varchar](50) NOT NULL,
	[Номер_Паспорта] [varchar](50) NOT NULL,
	[Фотография_Посетителя] [image] NULL,
	[ID_Пользователя] [int] NOT NULL,
	[ID_Документа] [int] NOT NULL,
 CONSTRAINT [PK_Посетитель] PRIMARY KEY CLUSTERED 
(
	[ID_Посетителя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Посещение]    Script Date: 15.04.2024 17:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Посещение](
	[ID_Группы] [int] NOT NULL,
	[Тип_Группы] [varchar](50) NULL,
	[ID_Посетителя] [int] NOT NULL,
	[ID_Списка] [int] NULL,
	[Назначение] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Посещение] PRIMARY KEY CLUSTERED 
(
	[ID_Группы] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудник]    Script Date: 15.04.2024 17:00:58 ******/
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
	[ID_Пользователя] [int] NOT NULL,
	[ID_Подразделения] [int] NULL,
 CONSTRAINT [PK_Сотрудник] PRIMARY KEY CLUSTERED 
(
	[ID_Сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Список]    Script Date: 15.04.2024 17:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Список](
	[ID_Списка] [int] NOT NULL,
	[Группа] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Список] PRIMARY KEY CLUSTERED 
(
	[ID_Списка] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Посетитель] ADD  CONSTRAINT [DF_Посетитель_Паспортные_Данные]  DEFAULT (N'v') FOR [Номер_Паспорта]
GO
ALTER TABLE [dbo].[Посетитель]  WITH CHECK ADD  CONSTRAINT [FK_Посетитель_Документ] FOREIGN KEY([ID_Документа])
REFERENCES [dbo].[Документ] ([ID_Документа])
GO
ALTER TABLE [dbo].[Посетитель] CHECK CONSTRAINT [FK_Посетитель_Документ]
GO
ALTER TABLE [dbo].[Посетитель]  WITH CHECK ADD  CONSTRAINT [FK_Посетитель_Пользователь] FOREIGN KEY([ID_Пользователя])
REFERENCES [dbo].[Пользователь] ([ID_Пользователя])
GO
ALTER TABLE [dbo].[Посетитель] CHECK CONSTRAINT [FK_Посетитель_Пользователь]
GO
ALTER TABLE [dbo].[Посещение]  WITH CHECK ADD  CONSTRAINT [FK_Посещение_Посетитель] FOREIGN KEY([ID_Посетителя])
REFERENCES [dbo].[Посетитель] ([ID_Посетителя])
GO
ALTER TABLE [dbo].[Посещение] CHECK CONSTRAINT [FK_Посещение_Посетитель]
GO
ALTER TABLE [dbo].[Посещение]  WITH CHECK ADD  CONSTRAINT [FK_Посещение_Список] FOREIGN KEY([ID_Списка])
REFERENCES [dbo].[Список] ([ID_Списка])
GO
ALTER TABLE [dbo].[Посещение] CHECK CONSTRAINT [FK_Посещение_Список]
GO
ALTER TABLE [dbo].[Сотрудник]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудник_Подразделение] FOREIGN KEY([ID_Подразделения])
REFERENCES [dbo].[Подразделение] ([ID_Подразделения])
GO
ALTER TABLE [dbo].[Сотрудник] CHECK CONSTRAINT [FK_Сотрудник_Подразделение]
GO
ALTER TABLE [dbo].[Сотрудник]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудник_Пользователь] FOREIGN KEY([ID_Пользователя])
REFERENCES [dbo].[Пользователь] ([ID_Пользователя])
GO
ALTER TABLE [dbo].[Сотрудник] CHECK CONSTRAINT [FK_Сотрудник_Пользователь]
GO
USE [master]
GO
ALTER DATABASE [Практика_ХранительПРО_Мариничева] SET  READ_WRITE 
GO
