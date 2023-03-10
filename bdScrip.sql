USE [SegurosBD]
GO
/****** Object:  User [LuisJM]    Script Date: 08/03/2023 23:27:46 ******/
CREATE USER [LuisJM] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [LuisJM]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [LuisJM]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [LuisJM]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [LuisJM]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [LuisJM]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LuisJM]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [LuisJM]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [LuisJM]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [LuisJM]
GO
/****** Object:  Table [dbo].[tblUSER]    Script Date: 08/03/2023 23:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUSER](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[getUSer]    Script Date: 08/03/2023 23:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getUSer]
as
	SELECT * FROM tblUSER
GO
/****** Object:  StoredProcedure [dbo].[saveUSER]    Script Date: 08/03/2023 23:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[saveUSER]
@name varchar(50),
@lastname varchar(50),
@email varchar(50),
@password varchar(50)
as
	insert into tblUSER(name, lastname, email, password)
	values(@name, @lastname, @email, @password)
GO
/****** Object:  StoredProcedure [dbo].[updateUSER]    Script Date: 08/03/2023 23:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[updateUSER]
@name varchar(50),
@lastname varchar(50),
@email varchar(50),
@password varchar(50)
as
	update tblUSER set name=@name, lastname=@lastname, email=@email, password=@password where password=@password and email=@email
GO
/****** Object:  StoredProcedure [dbo].[Validar]    Script Date: 08/03/2023 23:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Validar]
@email varchar(50),
@password varchar(50)
as
	select * from tblUSER where email=@email and password = @password
GO
