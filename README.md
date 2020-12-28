# Script-SqlServer 2019

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Departamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Pessoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[Salario] [decimal](18, 2) NOT NULL,
	[DeptId] [int] NULL,
CONSTRAINT [PK_Pessoa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Pessoa]  WITH CHECK ADD  CONSTRAINT [FK_Pessoa_Departamento_DeptId] FOREIGN KEY([DeptId])
REFERENCES [Departamento] ([Id])
GO

ALTER TABLE [Pessoa] CHECK CONSTRAINT [FK_Pessoa_Departamento_DeptId]
GO

INSERT INTO [Departamento]
           ([Nome])
     VALUES
           ('TI'),
		   ('Vendas'),
		   ('Financeiro'),
		   ('Cobrança'),
		   ('Marketing')
GO

INSERT INTO [Pessoa]
           ([Nome]
           ,[Salario]
           ,[DeptId])
     VALUES
           ('Alesandro'
           ,9000
           ,1),
		   ('Rodrigo'
           ,10000
           ,1),
		   ('Gabriel'
           ,3000
           ,1),
		   ('Murilo'
           ,6500
           ,2),
		   ('Werner'
           ,35000
           ,2),
		   ('Luciano'
           ,9000
           ,2),
		   ('Brenner'
           ,1047
           ,3),
		   ('Marlon'
           ,19000
           ,3),
		   ('Brenner'
           ,1047
           ,3),
		   ('Glaucio'
           ,1347
           ,4),
		   ('Sandro'
           ,2047
           ,4),
		   ('Otoniel'
           ,3047
           ,4),
		   ('Laercio'
           ,4000
           ,5),
		   ('Luan'
           ,25012
           ,5),
		   ('Vagner'
           ,990
           ,5)
