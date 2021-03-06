CREATE DATABASE [_AmicoDb]
 
GO
USE [_AmicoDb]
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



CREATE TABLE [dbo].[Areas](
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[AuthorId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Observations] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.Areas] PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
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

CREATE TABLE [dbo].[AuthorPlanOptions](
	[AuthorPlanOptionId] [int] IDENTITY(1,1) NOT NULL,
	[AuthorPlanId] [int] NOT NULL,
	[OptionId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AuthorPlanOptions] PRIMARY KEY CLUSTERED 
(
	[AuthorPlanOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[AuthorPlans](
	[AuthorPlanId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CurrencyId] [int] NOT NULL,
	[PeriodicityId] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_dbo.AuthorPlans] PRIMARY KEY CLUSTERED 
(
	[AuthorPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Authors](
	[AuthorId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](15) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Imagen] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[StatusId] [int] NOT NULL,
	[AuthorPlanId] [int] NOT NULL,
	[AuthorTypeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[AuthorTypes](
	[AuthorTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.AuthorTypes] PRIMARY KEY CLUSTERED 
(
	[AuthorTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BloodTypes](
	[BloodTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.BloodTypes] PRIMARY KEY CLUSTERED 
(
	[BloodTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BusinessTypes](
	[BusinessTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.BusinessTypes] PRIMARY KEY CLUSTERED 
(
	[BusinessTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[AuthorId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Continents]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continents](
	[ContinentId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Demonym] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_dbo.Continents] PRIMARY KEY CLUSTERED 
(
	[ContinentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Demonym] [nvarchar](25) NULL,
	[Imagen] [nvarchar](max) NULL,
	[Continent_ContinentId] [int] NULL,
 CONSTRAINT [PK_dbo.Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[CurrencyId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Currencies] PRIMARY KEY CLUSTERED 
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Doctors](
	[DoctorId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Record] [nvarchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[Especialidad] [nvarchar](max) NULL,
	[Cmd] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Prefix] [nvarchar](3) NULL,
 CONSTRAINT [PK_dbo.Doctors] PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Genders](
	[GenderId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.Genders] PRIMARY KEY CLUSTERED 
(
	[GenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[LabClasifications](
	[LabClasificationId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Comentary] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.LabClasifications] PRIMARY KEY CLUSTERED 
(
	[LabClasificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MaritalSituations](
	[MaritalSituationId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.MaritalSituations] PRIMARY KEY CLUSTERED 
(
	[MaritalSituationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeasureEquivalences]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasureEquivalences](
	[MeasureEquivalenceId] [int] IDENTITY(1,1) NOT NULL,
	[MeasureMasterId] [int] NOT NULL,
	[MeasureSlaveId] [int] NOT NULL,
	[Equivalence] [decimal](18, 2) NOT NULL,
	[AuthorId] [int] NOT NULL,
	[MeasureMaster_MeasureId] [int] NULL,
	[MeasureSlave_MeasureId] [int] NULL,
	[Measure_MeasureId] [int] NULL,
	[Measure_MeasureId1] [int] NULL,
 CONSTRAINT [PK_dbo.MeasureEquivalences] PRIMARY KEY CLUSTERED 
(
	[MeasureEquivalenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Measures]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measures](
	[MeasureId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[AuthorId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Measures] PRIMARY KEY CLUSTERED 
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Ocupations](
	[OcupationId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Ocupations] PRIMARY KEY CLUSTERED 
(
	[OcupationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Operations](
	[OperationId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[OriginId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[AccountId2] [int] NULL,
	[TagId] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Recurrent] [bit] NOT NULL,
	[PeriodicityId] [int] NOT NULL,
	[Observations] [nvarchar](500) NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Operations] PRIMARY KEY CLUSTERED 
(
	[OperationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OptionRols]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OptionRols](
	[OptionRolId] [int] IDENTITY(1,1) NOT NULL,
	[OptionId] [int] NOT NULL,
	[RolId] [int] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[Undefined] [bit] NOT NULL,
	[Index] [bit] NOT NULL,
	[Delete] [bit] NOT NULL,
	[Create] [bit] NOT NULL,
	[Edit] [bit] NOT NULL,
	[Details] [bit] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OptionRols] PRIMARY KEY CLUSTERED 
(
	[OptionRolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[ParentOptionId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Link] [nvarchar](100) NULL,
	[Area] [nvarchar](25) NULL,
	[Controller] [nvarchar](25) NULL,
	[Action] [nvarchar](25) NULL,
	[Order] [int] NULL,
	[Class] [nvarchar](100) NULL,
	[Icon] [nvarchar](max) NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Options] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Origins]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Origins](
	[OriginId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](2) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](25) NOT NULL,
	[Simbol] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Origins] PRIMARY KEY CLUSTERED 
(
	[OriginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[ParentOptions](
	[ParentOptionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Link] [nvarchar](100) NULL,
	[Order] [int] NULL,
	[Class] [nvarchar](100) NULL,
	[Icon] [nvarchar](max) NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ParentOptions] PRIMARY KEY CLUSTERED 
(
	[ParentOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[Record] [int] NOT NULL,
	[Record2] [nvarchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[InsuranceId] [int] NOT NULL,
	[InsuranceNumber] [nvarchar](15) NULL,
	[BloodTypeId] [int] NOT NULL,
	[Age] [nvarchar](30) NULL,
 CONSTRAINT [PK_dbo.Patients] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[PaymentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[PaymentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[People](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[Rnc] [nvarchar](15) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BornDate] [datetime] NULL,
	[GenderId] [int] NOT NULL,
	[SchoolLevelId] [int] NULL,
	[CountryId] [int] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Tel] [nvarchar](15) NULL,
	[Cel] [nvarchar](15) NULL,
	[MaritalSituationId] [int] NOT NULL,
	[OcupationId] [int] NOT NULL,
	[ReligionId] [int] NOT NULL,
	[Address] [nvarchar](200) NULL,
	[StatusId] [int] NOT NULL,
	[Imagen] [nvarchar](max) NULL,
	[AuthorId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.People] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Periodicities](
	[PeriodicityId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Periodicities] PRIMARY KEY CLUSTERED 
(
	[PeriodicityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[PlaceId] [int] IDENTITY(1,1) NOT NULL,
	[AreaId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Observations] [nvarchar](500) NULL,
	[Ext] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.Places] PRIMARY KEY CLUSTERED 
(
	[PlaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[BarCode] [int] NOT NULL,
	[BarcodeImage] [varbinary](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[MeasureId] [int] NOT NULL,
	[Observations] [nvarchar](200) NULL,
	[BuyPrice] [decimal](18, 2) NOT NULL,
	[SellPrice] [decimal](18, 2) NOT NULL,
	[Itbis] [decimal](18, 2) NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[AuthorId] [int] NOT NULL,
	[ServiceTypeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Religions](
	[ReligionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Religions] PRIMARY KEY CLUSTERED 
(
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Rols](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[AuthorId] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Level] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Rols] PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SchoolLevels](
	[SchoolLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.SchoolLevels] PRIMARY KEY CLUSTERED 
(
	[SchoolLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceTypes]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceTypes](
	[ServiceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ServiceTypes] PRIMARY KEY CLUSTERED 
(
	[ServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Table] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[AuthorId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [nvarchar](50) NULL,
	[Tel] [nvarchar](15) NULL,
	[DebAmount] [decimal](18, 2) NOT NULL,
	[CreditAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[UserEmailSettings](
	[UserEmailSettingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[HostNameSmtp] [nvarchar](max) NULL,
	[Port] [int] NOT NULL,
 CONSTRAINT [PK_dbo.UserEmailSettings] PRIMARY KEY CLUSTERED 
(
	[UserEmailSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRols]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRols](
	[UserRolId] [int] IDENTITY(1,1) NOT NULL,
	[RolId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Undefined] [bit] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Option_OptionId] [int] NULL,
 CONSTRAINT [PK_dbo.UserRols] PRIMARY KEY CLUSTERED 
(
	[UserRolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[UserTypeId] [int] NOT NULL,
	[Picture] [nvarchar](max) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[StatusId] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 16/8/2018 7:55:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[UserTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.UserTypes] PRIMARY KEY CLUSTERED 
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
 
/****** Object:  Index [AccountingAccount_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AccountingAccount_Code_Index] ON [dbo].[AccountingAccounts]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountingSubClassificationId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AccountingSubClassificationId] ON [dbo].[AccountingAccounts]
(
	[AccountingSubClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AccountingAuxiliary_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AccountingAuxiliary_Code_Index] ON [dbo].[AccountingAuxiliaries]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AccountingAuxiliary_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AccountingAuxiliary_Name_Index] ON [dbo].[AccountingAuxiliaries]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountingAccountId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AccountingAccountId] ON [dbo].[AccountingAuxiliaries]
(
	[AccountingAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AccountingClassification_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AccountingClassification_Code_Index] ON [dbo].[AccountingClassifications]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AccountingClassification_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AccountingClassification_Name_Index] ON [dbo].[AccountingClassifications]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AccountingSubAuxiliary_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AccountingSubAuxiliary_Code_Index] ON [dbo].[AccountingSubAuxiliaries]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AccountingSubAuxiliary_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AccountingSubAuxiliary_Name_Index] ON [dbo].[AccountingSubAuxiliaries]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountingAuxiliaryId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AccountingAuxiliaryId] ON [dbo].[AccountingSubAuxiliaries]
(
	[AccountingAuxiliaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AccountingSubClassification_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AccountingSubClassification_Name_Index] ON [dbo].[AccountingSubClassifications]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountingClassificationId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AccountingClassificationId] ON [dbo].[AccountingSubClassifications]
(
	[AccountingClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountTypeId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AccountTypeId] ON [dbo].[Accounts]
(
	[AccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CurrencyId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CurrencyId] ON [dbo].[Accounts]
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Periodicity_PeriodicityId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Periodicity_PeriodicityId] ON [dbo].[Accounts]
(
	[Periodicity_PeriodicityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Accounts]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WalletId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_WalletId] ON [dbo].[Accounts]
(
	[WalletId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OriginId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_OriginId] ON [dbo].[AccountTypes]
(
	[OriginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[AccountTypes]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Admisions]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlaceId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PlaceId] ON [dbo].[Admisions]
(
	[PlaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Admisions]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AnalyticalId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AnalyticalId] ON [dbo].[AnalyticalDetails]
(
	[AnalyticalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LaboratoryDetailId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_LaboratoryDetailId] ON [dbo].[AnalyticalDetails]
(
	[LaboratoryDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Analyticals]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Analyticals]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[AnalyticalSheets]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Anesthetics]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DoctorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_DoctorId] ON [dbo].[Appointments]
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Appointments]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Areas]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Areas]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorPlanId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorPlanId] ON [dbo].[AuthorPlanOptions]
(
	[AuthorPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OptionId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_OptionId] ON [dbo].[AuthorPlanOptions]
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AuthorPlan_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AuthorPlan_Code_Index] ON [dbo].[AuthorPlans]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AuthorPlan_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AuthorPlan_Name_Index] ON [dbo].[AuthorPlans]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CurrencyId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CurrencyId] ON [dbo].[AuthorPlans]
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PeriodicityId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PeriodicityId] ON [dbo].[AuthorPlans]
(
	[PeriodicityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[AuthorPlans]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Author_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Author_Code_Index] ON [dbo].[Authors]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Author_Email_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Author_Email_Index] ON [dbo].[Authors]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Author_Tel_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Author_Tel_Index] ON [dbo].[Authors]
(
	[Tel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorPlanId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorPlanId] ON [dbo].[Authors]
(
	[AuthorPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorTypeId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorTypeId] ON [dbo].[Authors]
(
	[AuthorTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Authors]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AuthorType_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [AuthorType_Name_Index] ON [dbo].[AuthorTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Bariatrics]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BariatricId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BariatricId] ON [dbo].[BariatricVisits]
(
	[BariatricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[BariatricVisits]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [BloodType_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [BloodType_Code_Index] ON [dbo].[BloodTypes]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [BloodType_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [BloodType_Name_Index] ON [dbo].[BloodTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Brands]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BudgetId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BudgetId] ON [dbo].[BudgetDetails]
(
	[BudgetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OriginId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_OriginId] ON [dbo].[BudgetDetails]
(
	[OriginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PeriodicityId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PeriodicityId] ON [dbo].[BudgetDetails]
(
	[PeriodicityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[BudgetDetails]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TagId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_TagId] ON [dbo].[BudgetDetails]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Budgets]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[Budgets]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessSubClassificationId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BusinessSubClassificationId] ON [dbo].[BusinessAccounts]
(
	[BusinessSubClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessAccountId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BusinessAccountId] ON [dbo].[BusinessAuxiliaries]
(
	[BusinessAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Businesses]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessTypeId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BusinessTypeId] ON [dbo].[Businesses]
(
	[BusinessTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CountryId] ON [dbo].[Businesses]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Businesses]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_MeasureId] ON [dbo].[BusinessInventories]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessAuxiliaryId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BusinessAuxiliaryId] ON [dbo].[BusinessSubAuxiliaries]
(
	[BusinessAuxiliaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountingClassificationId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AccountingClassificationId] ON [dbo].[BusinessSubClassifications]
(
	[AccountingClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BusinessId] ON [dbo].[BusinessSubClassifications]
(
	[BusinessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [BusinessType_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [BusinessType_Name_Index] ON [dbo].[BusinessTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Cardiologies]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CashierId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CashierId] ON [dbo].[CashierDetails]
(
	[CashierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[CashierDetails]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Cashiers]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShopId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ShopId] ON [dbo].[Cashiers]
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Cashiers]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Categories]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Continent_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Continent_Code_Index] ON [dbo].[Continents]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Continent_Demonym_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Continent_Demonym_Index] ON [dbo].[Continents]
(
	[Demonym] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Continent_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Continent_Name_Index] ON [dbo].[Continents]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Country_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Country_Code_Index] ON [dbo].[Countries]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Country_Demonym_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Country_Demonym_Index] ON [dbo].[Countries]
(
	[Demonym] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Country_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Country_Name_Index] ON [dbo].[Countries]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Continent_ContinentId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Continent_ContinentId] ON [dbo].[Countries]
(
	[Continent_ContinentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Currency_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Currency_Code_Index] ON [dbo].[Currencies]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Currency_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Currency_Name_Index] ON [dbo].[Currencies]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PersonId] ON [dbo].[Customers]
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[Doctors]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Endocrines]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Gender_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Gender_Name_Index] ON [dbo].[Genders]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[GeneralAfections]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Generals]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GeneralAfectionId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_GeneralAfectionId] ON [dbo].[GeneralVisits]
(
	[GeneralAfectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[GeneralVisits]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Gynecologies]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GynecologyId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_GynecologyId] ON [dbo].[GynecologyVisits]
(
	[GynecologyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Obstetric_ObstetricId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Obstetric_ObstetricId] ON [dbo].[GynecologyVisits]
(
	[Obstetric_ObstetricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[GynecologyVisits]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Inmunizations]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VaccineId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_VaccineId] ON [dbo].[Inmunizations]
(
	[VaccineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Insurance_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Insurance_Code_Index] ON [dbo].[Insurances]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Insurance_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Insurance_Name_Index] ON [dbo].[Insurances]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[Inventories]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PurchaseId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PurchaseId] ON [dbo].[Inventories]
(
	[PurchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShopId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ShopId] ON [dbo].[Inventories]
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Laboratories]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LabClasificationId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_LabClasificationId] ON [dbo].[Laboratories]
(
	[LabClasificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LaboratoryId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_LaboratoryId] ON [dbo].[LaboratoryDetails]
(
	[LaboratoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[LaboratoryResults]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[LaboratoryTests]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MaritalSituation_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [MaritalSituation_Name_Index] ON [dbo].[MaritalSituations]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[MeasureEquivalences]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Measure_MeasureId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Measure_MeasureId] ON [dbo].[MeasureEquivalences]
(
	[Measure_MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Measure_MeasureId1]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Measure_MeasureId1] ON [dbo].[MeasureEquivalences]
(
	[Measure_MeasureId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureMaster_MeasureId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_MeasureMaster_MeasureId] ON [dbo].[MeasureEquivalences]
(
	[MeasureMaster_MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureSlave_MeasureId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_MeasureSlave_MeasureId] ON [dbo].[MeasureEquivalences]
(
	[MeasureSlave_MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Measures]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Measure_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Measure_Code_Index] ON [dbo].[Measures]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[MedicalCertificates]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Nutritions]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NutritionId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_NutritionId] ON [dbo].[NutritionVisits]
(
	[NutritionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[NutritionVisits]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Obstetrics]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ObstetricId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ObstetricId] ON [dbo].[ObstetricVisits]
(
	[ObstetricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[ObstetricVisits]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Ocupation_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Ocupation_Name_Index] ON [dbo].[Ocupations]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AccountId] ON [dbo].[Operations]
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OriginId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_OriginId] ON [dbo].[Operations]
(
	[OriginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PeriodicityId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PeriodicityId] ON [dbo].[Operations]
(
	[PeriodicityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Operations]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TagId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_TagId] ON [dbo].[Operations]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OptionId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_OptionId] ON [dbo].[OptionRols]
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RolId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_RolId] ON [dbo].[OptionRols]
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[OptionRols]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentOptionId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ParentOptionId] ON [dbo].[Options]
(
	[ParentOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Options]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Orthopedics]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[ParentOptions]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BloodTypeId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BloodTypeId] ON [dbo].[Patients]
(
	[BloodTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InsuranceId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_InsuranceId] ON [dbo].[Patients]
(
	[InsuranceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PersonId] ON [dbo].[Patients]
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PaymentType_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [PaymentType_Code_Index] ON [dbo].[PaymentTypes]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PaymentType_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [PaymentType_Name_Index] ON [dbo].[PaymentTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[PediatricGrowths]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PediatricId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PediatricId] ON [dbo].[PediatricGrowths]
(
	[PediatricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Pediatrics]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[PediatricVisits]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PediatricId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PediatricId] ON [dbo].[PediatricVisits]
(
	[PediatricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[People]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CountryId] ON [dbo].[People]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GenderId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_GenderId] ON [dbo].[People]
(
	[GenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaritalSituationId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_MaritalSituationId] ON [dbo].[People]
(
	[MaritalSituationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OcupationId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_OcupationId] ON [dbo].[People]
(
	[OcupationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReligionId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ReligionId] ON [dbo].[People]
(
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SchoolLevelId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_SchoolLevelId] ON [dbo].[People]
(
	[SchoolLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[People]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Periodicity_Code_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Periodicity_Code_Index] ON [dbo].[Periodicities]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Periodicity_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Periodicity_Name_Index] ON [dbo].[Periodicities]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AreaId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AreaId] ON [dbo].[Places]
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Places]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Products]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BrandId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_MeasureId] ON [dbo].[Products]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ServiceTypeId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ServiceTypeId] ON [dbo].[Products]
(
	[ServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Psychiatries]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_MeasureId] ON [dbo].[PurchaseDetails]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[PurchaseDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PurchaseId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PurchaseId] ON [dbo].[PurchaseDetails]
(
	[PurchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShopId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ShopId] ON [dbo].[Purchases]
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Purchases]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SupplierId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_SupplierId] ON [dbo].[Purchases]
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Recipes]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Religion_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Religion_Name_Index] ON [dbo].[Religions]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Reports]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_User_UserId] ON [dbo].[Reports]
(
	[User_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Rols]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Rols]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AccountId] ON [dbo].[SaleAsosiations]
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[SaleAsosiations]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OriginId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_OriginId] ON [dbo].[SaleAsosiations]
(
	[OriginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentTypeId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PaymentTypeId] ON [dbo].[SaleAsosiations]
(
	[PaymentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CashierId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CashierId] ON [dbo].[Sales]
(
	[CashierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Sales]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentTypeId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PaymentTypeId] ON [dbo].[Sales]
(
	[PaymentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Sales]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[Sales]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_MeasureId] ON [dbo].[SalesDetails]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[SalesDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SalesId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_SalesId] ON [dbo].[SalesDetails]
(
	[SalesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SchoolLevel_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [SchoolLevel_Name_Index] ON [dbo].[SchoolLevels]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Shops]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShopId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ShopId] ON [dbo].[ShopUsers]
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[ShopUsers]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Suppliers]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Surgeries]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Tags]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[Tags]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessAccountId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BusinessAccountId] ON [dbo].[Transactions]
(
	[BusinessAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessAuxiliaryId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BusinessAuxiliaryId] ON [dbo].[Transactions]
(
	[BusinessAuxiliaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BusinessId] ON [dbo].[Transactions]
(
	[BusinessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessSubAuxiliaryId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BusinessSubAuxiliaryId] ON [dbo].[Transactions]
(
	[BusinessSubAuxiliaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessSubClassificationId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BusinessSubClassificationId] ON [dbo].[Transactions]
(
	[BusinessSubClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Treatments]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[TreatmentVisits]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TreatmentId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_TreatmentId] ON [dbo].[TreatmentVisits]
(
	[TreatmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PatientId] ON [dbo].[Urologies]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UserEmailSettings]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Option_OptionId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Option_OptionId] ON [dbo].[UserRols]
(
	[Option_OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RolId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_RolId] ON [dbo].[UserRols]
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[UserRols]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UserRols]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Users]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Users]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserTypeId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_UserTypeId] ON [dbo].[Users]
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserType_Name_Index]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserType_Name_Index] ON [dbo].[UserTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Wallets]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 16/8/2018 7:55:36 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Wallets]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountingAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountingAccounts_dbo.AccountingSubClassifications_AccountingSubClassificationId] FOREIGN KEY([AccountingSubClassificationId])
REFERENCES [dbo].[AccountingSubClassifications] ([AccountingSubClassificationId])
GO
ALTER TABLE [dbo].[AccountingAccounts] CHECK CONSTRAINT [FK_dbo.AccountingAccounts_dbo.AccountingSubClassifications_AccountingSubClassificationId]
GO
ALTER TABLE [dbo].[AccountingAuxiliaries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountingAuxiliaries_dbo.AccountingAccounts_AccountingAccountId] FOREIGN KEY([AccountingAccountId])
REFERENCES [dbo].[AccountingAccounts] ([AccountingAccountId])
GO
ALTER TABLE [dbo].[AccountingAuxiliaries] CHECK CONSTRAINT [FK_dbo.AccountingAuxiliaries_dbo.AccountingAccounts_AccountingAccountId]
GO
ALTER TABLE [dbo].[AccountingSubAuxiliaries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountingSubAuxiliaries_dbo.AccountingAuxiliaries_AccountingAuxiliaryId] FOREIGN KEY([AccountingAuxiliaryId])
REFERENCES [dbo].[AccountingAuxiliaries] ([AccountingAuxiliaryId])
GO
ALTER TABLE [dbo].[AccountingSubAuxiliaries] CHECK CONSTRAINT [FK_dbo.AccountingSubAuxiliaries_dbo.AccountingAuxiliaries_AccountingAuxiliaryId]
GO
ALTER TABLE [dbo].[AccountingSubClassifications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountingSubClassifications_dbo.AccountingClassifications_AccountingClassificationId] FOREIGN KEY([AccountingClassificationId])
REFERENCES [dbo].[AccountingClassifications] ([AccountingClassificationId])
GO
ALTER TABLE [dbo].[AccountingSubClassifications] CHECK CONSTRAINT [FK_dbo.AccountingSubClassifications_dbo.AccountingClassifications_AccountingClassificationId]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.AccountTypes_AccountTypeId] FOREIGN KEY([AccountTypeId])
REFERENCES [dbo].[AccountTypes] ([AccountTypeId])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.AccountTypes_AccountTypeId]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.Currencies_CurrencyId] FOREIGN KEY([CurrencyId])
REFERENCES [dbo].[Currencies] ([CurrencyId])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.Currencies_CurrencyId]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.Periodicities_Periodicity_PeriodicityId] FOREIGN KEY([Periodicity_PeriodicityId])
REFERENCES [dbo].[Periodicities] ([PeriodicityId])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.Periodicities_Periodicity_PeriodicityId]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.Wallets_WalletId] FOREIGN KEY([WalletId])
REFERENCES [dbo].[Wallets] ([WalletId])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.Wallets_WalletId]
GO
ALTER TABLE [dbo].[AccountTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountTypes_dbo.Origins_OriginId] FOREIGN KEY([OriginId])
REFERENCES [dbo].[Origins] ([OriginId])
GO
ALTER TABLE [dbo].[AccountTypes] CHECK CONSTRAINT [FK_dbo.AccountTypes_dbo.Origins_OriginId]
GO
ALTER TABLE [dbo].[AccountTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountTypes_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[AccountTypes] CHECK CONSTRAINT [FK_dbo.AccountTypes_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Admisions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Admisions_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Admisions] CHECK CONSTRAINT [FK_dbo.Admisions_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Admisions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Admisions_dbo.Places_PlaceId] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Places] ([PlaceId])
GO
ALTER TABLE [dbo].[Admisions] CHECK CONSTRAINT [FK_dbo.Admisions_dbo.Places_PlaceId]
GO
ALTER TABLE [dbo].[Admisions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Admisions_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Admisions] CHECK CONSTRAINT [FK_dbo.Admisions_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[AnalyticalDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AnalyticalDetails_dbo.Analyticals_AnalyticalId] FOREIGN KEY([AnalyticalId])
REFERENCES [dbo].[Analyticals] ([AnalyticalId])
GO
ALTER TABLE [dbo].[AnalyticalDetails] CHECK CONSTRAINT [FK_dbo.AnalyticalDetails_dbo.Analyticals_AnalyticalId]
GO
ALTER TABLE [dbo].[AnalyticalDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AnalyticalDetails_dbo.LaboratoryDetails_LaboratoryDetailId] FOREIGN KEY([LaboratoryDetailId])
REFERENCES [dbo].[LaboratoryDetails] ([LaboratoryDetailId])
GO
ALTER TABLE [dbo].[AnalyticalDetails] CHECK CONSTRAINT [FK_dbo.AnalyticalDetails_dbo.LaboratoryDetails_LaboratoryDetailId]
GO
ALTER TABLE [dbo].[Analyticals]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Analyticals_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Analyticals] CHECK CONSTRAINT [FK_dbo.Analyticals_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Analyticals]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Analyticals_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Analyticals] CHECK CONSTRAINT [FK_dbo.Analyticals_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[AnalyticalSheets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AnalyticalSheets_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[AnalyticalSheets] CHECK CONSTRAINT [FK_dbo.AnalyticalSheets_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Anesthetics]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Anesthetics_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Anesthetics] CHECK CONSTRAINT [FK_dbo.Anesthetics_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Appointments_dbo.Doctors_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([DoctorId])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_dbo.Appointments_dbo.Doctors_DoctorId]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Appointments_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_dbo.Appointments_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Areas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Areas_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Areas] CHECK CONSTRAINT [FK_dbo.Areas_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Areas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Areas_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Areas] CHECK CONSTRAINT [FK_dbo.Areas_dbo.Status_StatusId]
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
ALTER TABLE [dbo].[AuthorPlanOptions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuthorPlanOptions_dbo.AuthorPlans_AuthorPlanId] FOREIGN KEY([AuthorPlanId])
REFERENCES [dbo].[AuthorPlans] ([AuthorPlanId])
GO
ALTER TABLE [dbo].[AuthorPlanOptions] CHECK CONSTRAINT [FK_dbo.AuthorPlanOptions_dbo.AuthorPlans_AuthorPlanId]
GO
ALTER TABLE [dbo].[AuthorPlanOptions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuthorPlanOptions_dbo.Options_OptionId] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Options] ([OptionId])
GO
ALTER TABLE [dbo].[AuthorPlanOptions] CHECK CONSTRAINT [FK_dbo.AuthorPlanOptions_dbo.Options_OptionId]
GO
ALTER TABLE [dbo].[AuthorPlans]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuthorPlans_dbo.Currencies_CurrencyId] FOREIGN KEY([CurrencyId])
REFERENCES [dbo].[Currencies] ([CurrencyId])
GO
ALTER TABLE [dbo].[AuthorPlans] CHECK CONSTRAINT [FK_dbo.AuthorPlans_dbo.Currencies_CurrencyId]
GO
ALTER TABLE [dbo].[AuthorPlans]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuthorPlans_dbo.Periodicities_PeriodicityId] FOREIGN KEY([PeriodicityId])
REFERENCES [dbo].[Periodicities] ([PeriodicityId])
GO
ALTER TABLE [dbo].[AuthorPlans] CHECK CONSTRAINT [FK_dbo.AuthorPlans_dbo.Periodicities_PeriodicityId]
GO
ALTER TABLE [dbo].[AuthorPlans]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuthorPlans_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[AuthorPlans] CHECK CONSTRAINT [FK_dbo.AuthorPlans_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Authors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Authors_dbo.AuthorPlans_AuthorPlanId] FOREIGN KEY([AuthorPlanId])
REFERENCES [dbo].[AuthorPlans] ([AuthorPlanId])
GO
ALTER TABLE [dbo].[Authors] CHECK CONSTRAINT [FK_dbo.Authors_dbo.AuthorPlans_AuthorPlanId]
GO
ALTER TABLE [dbo].[Authors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Authors_dbo.AuthorTypes_AuthorTypeId] FOREIGN KEY([AuthorTypeId])
REFERENCES [dbo].[AuthorTypes] ([AuthorTypeId])
GO
ALTER TABLE [dbo].[Authors] CHECK CONSTRAINT [FK_dbo.Authors_dbo.AuthorTypes_AuthorTypeId]
GO
ALTER TABLE [dbo].[Authors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Authors_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Authors] CHECK CONSTRAINT [FK_dbo.Authors_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Bariatrics]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Bariatrics_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Bariatrics] CHECK CONSTRAINT [FK_dbo.Bariatrics_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[BariatricVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BariatricVisits_dbo.Bariatrics_BariatricId] FOREIGN KEY([BariatricId])
REFERENCES [dbo].[Bariatrics] ([BariatricId])
GO
ALTER TABLE [dbo].[BariatricVisits] CHECK CONSTRAINT [FK_dbo.BariatricVisits_dbo.Bariatrics_BariatricId]
GO
ALTER TABLE [dbo].[BariatricVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BariatricVisits_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[BariatricVisits] CHECK CONSTRAINT [FK_dbo.BariatricVisits_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Brands]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Brands_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Brands] CHECK CONSTRAINT [FK_dbo.Brands_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[BudgetDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BudgetDetails_dbo.Budgets_BudgetId] FOREIGN KEY([BudgetId])
REFERENCES [dbo].[Budgets] ([BudgetId])
GO
ALTER TABLE [dbo].[BudgetDetails] CHECK CONSTRAINT [FK_dbo.BudgetDetails_dbo.Budgets_BudgetId]
GO
ALTER TABLE [dbo].[BudgetDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BudgetDetails_dbo.Origins_OriginId] FOREIGN KEY([OriginId])
REFERENCES [dbo].[Origins] ([OriginId])
GO
ALTER TABLE [dbo].[BudgetDetails] CHECK CONSTRAINT [FK_dbo.BudgetDetails_dbo.Origins_OriginId]
GO
ALTER TABLE [dbo].[BudgetDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BudgetDetails_dbo.Periodicities_PeriodicityId] FOREIGN KEY([PeriodicityId])
REFERENCES [dbo].[Periodicities] ([PeriodicityId])
GO
ALTER TABLE [dbo].[BudgetDetails] CHECK CONSTRAINT [FK_dbo.BudgetDetails_dbo.Periodicities_PeriodicityId]
GO
ALTER TABLE [dbo].[BudgetDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BudgetDetails_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[BudgetDetails] CHECK CONSTRAINT [FK_dbo.BudgetDetails_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[BudgetDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BudgetDetails_dbo.Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([TagId])
GO
ALTER TABLE [dbo].[BudgetDetails] CHECK CONSTRAINT [FK_dbo.BudgetDetails_dbo.Tags_TagId]
GO
ALTER TABLE [dbo].[Budgets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Budgets_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Budgets] CHECK CONSTRAINT [FK_dbo.Budgets_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Budgets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Budgets_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Budgets] CHECK CONSTRAINT [FK_dbo.Budgets_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[BusinessAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BusinessAccounts_dbo.BusinessSubClassifications_BusinessSubClassificationId] FOREIGN KEY([BusinessSubClassificationId])
REFERENCES [dbo].[BusinessSubClassifications] ([BusinessSubClassificationId])
GO
ALTER TABLE [dbo].[BusinessAccounts] CHECK CONSTRAINT [FK_dbo.BusinessAccounts_dbo.BusinessSubClassifications_BusinessSubClassificationId]
GO
ALTER TABLE [dbo].[BusinessAuxiliaries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BusinessAuxiliaries_dbo.BusinessAccounts_BusinessAccountId] FOREIGN KEY([BusinessAccountId])
REFERENCES [dbo].[BusinessAccounts] ([BusinessAccountId])
GO
ALTER TABLE [dbo].[BusinessAuxiliaries] CHECK CONSTRAINT [FK_dbo.BusinessAuxiliaries_dbo.BusinessAccounts_BusinessAccountId]
GO
ALTER TABLE [dbo].[Businesses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Businesses_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Businesses] CHECK CONSTRAINT [FK_dbo.Businesses_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Businesses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Businesses_dbo.BusinessTypes_BusinessTypeId] FOREIGN KEY([BusinessTypeId])
REFERENCES [dbo].[BusinessTypes] ([BusinessTypeId])
GO
ALTER TABLE [dbo].[Businesses] CHECK CONSTRAINT [FK_dbo.Businesses_dbo.BusinessTypes_BusinessTypeId]
GO
ALTER TABLE [dbo].[Businesses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Businesses_dbo.Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[Businesses] CHECK CONSTRAINT [FK_dbo.Businesses_dbo.Countries_CountryId]
GO
ALTER TABLE [dbo].[Businesses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Businesses_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Businesses] CHECK CONSTRAINT [FK_dbo.Businesses_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[BusinessInventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BusinessInventories_dbo.Measures_MeasureId] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[Measures] ([MeasureId])
GO
ALTER TABLE [dbo].[BusinessInventories] CHECK CONSTRAINT [FK_dbo.BusinessInventories_dbo.Measures_MeasureId]
GO
ALTER TABLE [dbo].[BusinessSubAuxiliaries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BusinessSubAuxiliaries_dbo.BusinessAuxiliaries_BusinessAuxiliaryId] FOREIGN KEY([BusinessAuxiliaryId])
REFERENCES [dbo].[BusinessAuxiliaries] ([BusinessAuxiliaryId])
GO
ALTER TABLE [dbo].[BusinessSubAuxiliaries] CHECK CONSTRAINT [FK_dbo.BusinessSubAuxiliaries_dbo.BusinessAuxiliaries_BusinessAuxiliaryId]
GO
ALTER TABLE [dbo].[BusinessSubClassifications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BusinessSubClassifications_dbo.AccountingClassifications_AccountingClassificationId] FOREIGN KEY([AccountingClassificationId])
REFERENCES [dbo].[AccountingClassifications] ([AccountingClassificationId])
GO
ALTER TABLE [dbo].[BusinessSubClassifications] CHECK CONSTRAINT [FK_dbo.BusinessSubClassifications_dbo.AccountingClassifications_AccountingClassificationId]
GO
ALTER TABLE [dbo].[BusinessSubClassifications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BusinessSubClassifications_dbo.Businesses_BusinessId] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[Businesses] ([BusinessId])
GO
ALTER TABLE [dbo].[BusinessSubClassifications] CHECK CONSTRAINT [FK_dbo.BusinessSubClassifications_dbo.Businesses_BusinessId]
GO
ALTER TABLE [dbo].[Cardiologies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cardiologies_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Cardiologies] CHECK CONSTRAINT [FK_dbo.Cardiologies_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[CashierDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CashierDetails_dbo.Cashiers_CashierId] FOREIGN KEY([CashierId])
REFERENCES [dbo].[Cashiers] ([CashierId])
GO
ALTER TABLE [dbo].[CashierDetails] CHECK CONSTRAINT [FK_dbo.CashierDetails_dbo.Cashiers_CashierId]
GO
ALTER TABLE [dbo].[CashierDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CashierDetails_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[CashierDetails] CHECK CONSTRAINT [FK_dbo.CashierDetails_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Cashiers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cashiers_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Cashiers] CHECK CONSTRAINT [FK_dbo.Cashiers_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Cashiers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cashiers_dbo.Shops_ShopId] FOREIGN KEY([ShopId])
REFERENCES [dbo].[Shops] ([ShopId])
GO
ALTER TABLE [dbo].[Cashiers] CHECK CONSTRAINT [FK_dbo.Cashiers_dbo.Shops_ShopId]
GO
ALTER TABLE [dbo].[Cashiers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cashiers_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Cashiers] CHECK CONSTRAINT [FK_dbo.Cashiers_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Categories_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_dbo.Categories_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Countries_dbo.Continents_Continent_ContinentId] FOREIGN KEY([Continent_ContinentId])
REFERENCES [dbo].[Continents] ([ContinentId])
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_dbo.Countries_dbo.Continents_Continent_ContinentId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.People_PersonId] FOREIGN KEY([PersonId])
REFERENCES [dbo].[People] ([PersonId])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.People_PersonId]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Doctors_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_dbo.Doctors_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Endocrines]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Endocrines_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Endocrines] CHECK CONSTRAINT [FK_dbo.Endocrines_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[GeneralAfections]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GeneralAfections_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[GeneralAfections] CHECK CONSTRAINT [FK_dbo.GeneralAfections_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Generals]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Generals_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Generals] CHECK CONSTRAINT [FK_dbo.Generals_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[GeneralVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GeneralVisits_dbo.GeneralAfections_GeneralAfectionId] FOREIGN KEY([GeneralAfectionId])
REFERENCES [dbo].[GeneralAfections] ([GeneralAfectionId])
GO
ALTER TABLE [dbo].[GeneralVisits] CHECK CONSTRAINT [FK_dbo.GeneralVisits_dbo.GeneralAfections_GeneralAfectionId]
GO
ALTER TABLE [dbo].[GeneralVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GeneralVisits_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[GeneralVisits] CHECK CONSTRAINT [FK_dbo.GeneralVisits_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Gynecologies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Gynecologies_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Gynecologies] CHECK CONSTRAINT [FK_dbo.Gynecologies_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[GynecologyVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GynecologyVisits_dbo.Gynecologies_GynecologyId] FOREIGN KEY([GynecologyId])
REFERENCES [dbo].[Gynecologies] ([GynecologyId])
GO
ALTER TABLE [dbo].[GynecologyVisits] CHECK CONSTRAINT [FK_dbo.GynecologyVisits_dbo.Gynecologies_GynecologyId]
GO
ALTER TABLE [dbo].[GynecologyVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GynecologyVisits_dbo.Obstetrics_Obstetric_ObstetricId] FOREIGN KEY([Obstetric_ObstetricId])
REFERENCES [dbo].[Obstetrics] ([ObstetricId])
GO
ALTER TABLE [dbo].[GynecologyVisits] CHECK CONSTRAINT [FK_dbo.GynecologyVisits_dbo.Obstetrics_Obstetric_ObstetricId]
GO
ALTER TABLE [dbo].[GynecologyVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GynecologyVisits_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[GynecologyVisits] CHECK CONSTRAINT [FK_dbo.GynecologyVisits_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Inmunizations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inmunizations_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Inmunizations] CHECK CONSTRAINT [FK_dbo.Inmunizations_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Inmunizations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inmunizations_dbo.Vaccines_VaccineId] FOREIGN KEY([VaccineId])
REFERENCES [dbo].[Vaccines] ([VaccineId])
GO
ALTER TABLE [dbo].[Inmunizations] CHECK CONSTRAINT [FK_dbo.Inmunizations_dbo.Vaccines_VaccineId]
GO
ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.Purchases_PurchaseId] FOREIGN KEY([PurchaseId])
REFERENCES [dbo].[Purchases] ([PurchaseId])
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.Purchases_PurchaseId]
GO
ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.Shops_ShopId] FOREIGN KEY([ShopId])
REFERENCES [dbo].[Shops] ([ShopId])
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.Shops_ShopId]
GO
ALTER TABLE [dbo].[Laboratories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Laboratories_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Laboratories] CHECK CONSTRAINT [FK_dbo.Laboratories_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Laboratories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Laboratories_dbo.LabClasifications_LabClasificationId] FOREIGN KEY([LabClasificationId])
REFERENCES [dbo].[LabClasifications] ([LabClasificationId])
GO
ALTER TABLE [dbo].[Laboratories] CHECK CONSTRAINT [FK_dbo.Laboratories_dbo.LabClasifications_LabClasificationId]
GO
ALTER TABLE [dbo].[LaboratoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LaboratoryDetails_dbo.Laboratories_LaboratoryId] FOREIGN KEY([LaboratoryId])
REFERENCES [dbo].[Laboratories] ([LaboratoryId])
GO
ALTER TABLE [dbo].[LaboratoryDetails] CHECK CONSTRAINT [FK_dbo.LaboratoryDetails_dbo.Laboratories_LaboratoryId]
GO
ALTER TABLE [dbo].[LaboratoryResults]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LaboratoryResults_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[LaboratoryResults] CHECK CONSTRAINT [FK_dbo.LaboratoryResults_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[LaboratoryTests]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LaboratoryTests_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[LaboratoryTests] CHECK CONSTRAINT [FK_dbo.LaboratoryTests_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[MeasureEquivalences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MeasureEquivalences_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[MeasureEquivalences] CHECK CONSTRAINT [FK_dbo.MeasureEquivalences_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[MeasureEquivalences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MeasureEquivalences_dbo.Measures_Measure_MeasureId] FOREIGN KEY([Measure_MeasureId])
REFERENCES [dbo].[Measures] ([MeasureId])
GO
ALTER TABLE [dbo].[MeasureEquivalences] CHECK CONSTRAINT [FK_dbo.MeasureEquivalences_dbo.Measures_Measure_MeasureId]
GO
ALTER TABLE [dbo].[MeasureEquivalences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MeasureEquivalences_dbo.Measures_Measure_MeasureId1] FOREIGN KEY([Measure_MeasureId1])
REFERENCES [dbo].[Measures] ([MeasureId])
GO
ALTER TABLE [dbo].[MeasureEquivalences] CHECK CONSTRAINT [FK_dbo.MeasureEquivalences_dbo.Measures_Measure_MeasureId1]
GO
ALTER TABLE [dbo].[MeasureEquivalences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MeasureEquivalences_dbo.Measures_MeasureMaster_MeasureId] FOREIGN KEY([MeasureMaster_MeasureId])
REFERENCES [dbo].[Measures] ([MeasureId])
GO
ALTER TABLE [dbo].[MeasureEquivalences] CHECK CONSTRAINT [FK_dbo.MeasureEquivalences_dbo.Measures_MeasureMaster_MeasureId]
GO
ALTER TABLE [dbo].[MeasureEquivalences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MeasureEquivalences_dbo.Measures_MeasureSlave_MeasureId] FOREIGN KEY([MeasureSlave_MeasureId])
REFERENCES [dbo].[Measures] ([MeasureId])
GO
ALTER TABLE [dbo].[MeasureEquivalences] CHECK CONSTRAINT [FK_dbo.MeasureEquivalences_dbo.Measures_MeasureSlave_MeasureId]
GO
ALTER TABLE [dbo].[Measures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Measures_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Measures] CHECK CONSTRAINT [FK_dbo.Measures_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[MedicalCertificates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicalCertificates_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[MedicalCertificates] CHECK CONSTRAINT [FK_dbo.MedicalCertificates_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Nutritions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Nutritions_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Nutritions] CHECK CONSTRAINT [FK_dbo.Nutritions_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[NutritionVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NutritionVisits_dbo.Nutritions_NutritionId] FOREIGN KEY([NutritionId])
REFERENCES [dbo].[Nutritions] ([NutritionId])
GO
ALTER TABLE [dbo].[NutritionVisits] CHECK CONSTRAINT [FK_dbo.NutritionVisits_dbo.Nutritions_NutritionId]
GO
ALTER TABLE [dbo].[NutritionVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NutritionVisits_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[NutritionVisits] CHECK CONSTRAINT [FK_dbo.NutritionVisits_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Obstetrics]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Obstetrics_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Obstetrics] CHECK CONSTRAINT [FK_dbo.Obstetrics_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[ObstetricVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ObstetricVisits_dbo.Obstetrics_ObstetricId] FOREIGN KEY([ObstetricId])
REFERENCES [dbo].[Obstetrics] ([ObstetricId])
GO
ALTER TABLE [dbo].[ObstetricVisits] CHECK CONSTRAINT [FK_dbo.ObstetricVisits_dbo.Obstetrics_ObstetricId]
GO
ALTER TABLE [dbo].[ObstetricVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ObstetricVisits_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[ObstetricVisits] CHECK CONSTRAINT [FK_dbo.ObstetricVisits_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Operations_dbo.Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([AccountId])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_dbo.Operations_dbo.Accounts_AccountId]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Operations_dbo.Origins_OriginId] FOREIGN KEY([OriginId])
REFERENCES [dbo].[Origins] ([OriginId])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_dbo.Operations_dbo.Origins_OriginId]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Operations_dbo.Periodicities_PeriodicityId] FOREIGN KEY([PeriodicityId])
REFERENCES [dbo].[Periodicities] ([PeriodicityId])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_dbo.Operations_dbo.Periodicities_PeriodicityId]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Operations_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_dbo.Operations_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Operations_dbo.Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([TagId])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_dbo.Operations_dbo.Tags_TagId]
GO
ALTER TABLE [dbo].[OptionRols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OptionRols_dbo.Options_OptionId] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Options] ([OptionId])
GO
ALTER TABLE [dbo].[OptionRols] CHECK CONSTRAINT [FK_dbo.OptionRols_dbo.Options_OptionId]
GO
ALTER TABLE [dbo].[OptionRols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OptionRols_dbo.Rols_RolId] FOREIGN KEY([RolId])
REFERENCES [dbo].[Rols] ([RolId])
GO
ALTER TABLE [dbo].[OptionRols] CHECK CONSTRAINT [FK_dbo.OptionRols_dbo.Rols_RolId]
GO
ALTER TABLE [dbo].[OptionRols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OptionRols_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[OptionRols] CHECK CONSTRAINT [FK_dbo.OptionRols_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Options]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Options_dbo.ParentOptions_ParentOptionId] FOREIGN KEY([ParentOptionId])
REFERENCES [dbo].[ParentOptions] ([ParentOptionId])
GO
ALTER TABLE [dbo].[Options] CHECK CONSTRAINT [FK_dbo.Options_dbo.ParentOptions_ParentOptionId]
GO
ALTER TABLE [dbo].[Options]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Options_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Options] CHECK CONSTRAINT [FK_dbo.Options_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Orthopedics]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Orthopedics_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Orthopedics] CHECK CONSTRAINT [FK_dbo.Orthopedics_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[ParentOptions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ParentOptions_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[ParentOptions] CHECK CONSTRAINT [FK_dbo.ParentOptions_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Patients_dbo.BloodTypes_BloodTypeId] FOREIGN KEY([BloodTypeId])
REFERENCES [dbo].[BloodTypes] ([BloodTypeId])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_dbo.Patients_dbo.BloodTypes_BloodTypeId]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Patients_dbo.Insurances_InsuranceId] FOREIGN KEY([InsuranceId])
REFERENCES [dbo].[Insurances] ([InsuranceId])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_dbo.Patients_dbo.Insurances_InsuranceId]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Patients_dbo.People_PersonId] FOREIGN KEY([PersonId])
REFERENCES [dbo].[People] ([PersonId])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_dbo.Patients_dbo.People_PersonId]
GO
ALTER TABLE [dbo].[PediatricGrowths]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PediatricGrowths_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[PediatricGrowths] CHECK CONSTRAINT [FK_dbo.PediatricGrowths_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[PediatricGrowths]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PediatricGrowths_dbo.Pediatrics_PediatricId] FOREIGN KEY([PediatricId])
REFERENCES [dbo].[Pediatrics] ([PediatricId])
GO
ALTER TABLE [dbo].[PediatricGrowths] CHECK CONSTRAINT [FK_dbo.PediatricGrowths_dbo.Pediatrics_PediatricId]
GO
ALTER TABLE [dbo].[Pediatrics]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pediatrics_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Pediatrics] CHECK CONSTRAINT [FK_dbo.Pediatrics_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[PediatricVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PediatricVisits_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[PediatricVisits] CHECK CONSTRAINT [FK_dbo.PediatricVisits_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[PediatricVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PediatricVisits_dbo.Pediatrics_PediatricId] FOREIGN KEY([PediatricId])
REFERENCES [dbo].[Pediatrics] ([PediatricId])
GO
ALTER TABLE [dbo].[PediatricVisits] CHECK CONSTRAINT [FK_dbo.PediatricVisits_dbo.Pediatrics_PediatricId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_dbo.People_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_dbo.People_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_dbo.People_dbo.Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_dbo.People_dbo.Countries_CountryId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_dbo.People_dbo.Genders_GenderId] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Genders] ([GenderId])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_dbo.People_dbo.Genders_GenderId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_dbo.People_dbo.MaritalSituations_MaritalSituationId] FOREIGN KEY([MaritalSituationId])
REFERENCES [dbo].[MaritalSituations] ([MaritalSituationId])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_dbo.People_dbo.MaritalSituations_MaritalSituationId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_dbo.People_dbo.Ocupations_OcupationId] FOREIGN KEY([OcupationId])
REFERENCES [dbo].[Ocupations] ([OcupationId])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_dbo.People_dbo.Ocupations_OcupationId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_dbo.People_dbo.Religions_ReligionId] FOREIGN KEY([ReligionId])
REFERENCES [dbo].[Religions] ([ReligionId])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_dbo.People_dbo.Religions_ReligionId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_dbo.People_dbo.SchoolLevels_SchoolLevelId] FOREIGN KEY([SchoolLevelId])
REFERENCES [dbo].[SchoolLevels] ([SchoolLevelId])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_dbo.People_dbo.SchoolLevels_SchoolLevelId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_dbo.People_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_dbo.People_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Places_dbo.Areas_AreaId] FOREIGN KEY([AreaId])
REFERENCES [dbo].[Areas] ([AreaId])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_dbo.Places_dbo.Areas_AreaId]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Places_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_dbo.Places_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([BrandId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Measures_MeasureId] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[Measures] ([MeasureId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Measures_MeasureId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ServiceTypes_ServiceTypeId] FOREIGN KEY([ServiceTypeId])
REFERENCES [dbo].[ServiceTypes] ([ServiceTypeId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ServiceTypes_ServiceTypeId]
GO
ALTER TABLE [dbo].[Psychiatries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Psychiatries_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Psychiatries] CHECK CONSTRAINT [FK_dbo.Psychiatries_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[PurchaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PurchaseDetails_dbo.Measures_MeasureId] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[Measures] ([MeasureId])
GO
ALTER TABLE [dbo].[PurchaseDetails] CHECK CONSTRAINT [FK_dbo.PurchaseDetails_dbo.Measures_MeasureId]
GO
ALTER TABLE [dbo].[PurchaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PurchaseDetails_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[PurchaseDetails] CHECK CONSTRAINT [FK_dbo.PurchaseDetails_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[PurchaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PurchaseDetails_dbo.Purchases_PurchaseId] FOREIGN KEY([PurchaseId])
REFERENCES [dbo].[Purchases] ([PurchaseId])
GO
ALTER TABLE [dbo].[PurchaseDetails] CHECK CONSTRAINT [FK_dbo.PurchaseDetails_dbo.Purchases_PurchaseId]
GO
ALTER TABLE [dbo].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Purchases_dbo.Shops_ShopId] FOREIGN KEY([ShopId])
REFERENCES [dbo].[Shops] ([ShopId])
GO
ALTER TABLE [dbo].[Purchases] CHECK CONSTRAINT [FK_dbo.Purchases_dbo.Shops_ShopId]
GO
ALTER TABLE [dbo].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Purchases_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Purchases] CHECK CONSTRAINT [FK_dbo.Purchases_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Purchases_dbo.Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([SupplierId])
GO
ALTER TABLE [dbo].[Purchases] CHECK CONSTRAINT [FK_dbo.Purchases_dbo.Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recipes_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [FK_dbo.Recipes_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reports_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_dbo.Reports_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reports_dbo.Users_User_UserId] FOREIGN KEY([User_UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_dbo.Reports_dbo.Users_User_UserId]
GO
ALTER TABLE [dbo].[Rols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rols_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Rols] CHECK CONSTRAINT [FK_dbo.Rols_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Rols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rols_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Rols] CHECK CONSTRAINT [FK_dbo.Rols_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[SaleAsosiations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleAsosiations_dbo.Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([AccountId])
GO
ALTER TABLE [dbo].[SaleAsosiations] CHECK CONSTRAINT [FK_dbo.SaleAsosiations_dbo.Accounts_AccountId]
GO
ALTER TABLE [dbo].[SaleAsosiations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleAsosiations_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[SaleAsosiations] CHECK CONSTRAINT [FK_dbo.SaleAsosiations_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[SaleAsosiations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleAsosiations_dbo.Origins_OriginId] FOREIGN KEY([OriginId])
REFERENCES [dbo].[Origins] ([OriginId])
GO
ALTER TABLE [dbo].[SaleAsosiations] CHECK CONSTRAINT [FK_dbo.SaleAsosiations_dbo.Origins_OriginId]
GO
ALTER TABLE [dbo].[SaleAsosiations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleAsosiations_dbo.PaymentTypes_PaymentTypeId] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypes] ([PaymentTypeId])
GO
ALTER TABLE [dbo].[SaleAsosiations] CHECK CONSTRAINT [FK_dbo.SaleAsosiations_dbo.PaymentTypes_PaymentTypeId]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sales_dbo.Cashiers_CashierId] FOREIGN KEY([CashierId])
REFERENCES [dbo].[Cashiers] ([CashierId])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_dbo.Sales_dbo.Cashiers_CashierId]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sales_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_dbo.Sales_dbo.Customers_CustomerId]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sales_dbo.PaymentTypes_PaymentTypeId] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypes] ([PaymentTypeId])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_dbo.Sales_dbo.PaymentTypes_PaymentTypeId]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sales_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_dbo.Sales_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sales_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_dbo.Sales_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[SalesDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalesDetails_dbo.Measures_MeasureId] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[Measures] ([MeasureId])
GO
ALTER TABLE [dbo].[SalesDetails] CHECK CONSTRAINT [FK_dbo.SalesDetails_dbo.Measures_MeasureId]
GO
ALTER TABLE [dbo].[SalesDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalesDetails_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[SalesDetails] CHECK CONSTRAINT [FK_dbo.SalesDetails_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[SalesDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalesDetails_dbo.Sales_SalesId] FOREIGN KEY([SalesId])
REFERENCES [dbo].[Sales] ([SalesId])
GO
ALTER TABLE [dbo].[SalesDetails] CHECK CONSTRAINT [FK_dbo.SalesDetails_dbo.Sales_SalesId]
GO
ALTER TABLE [dbo].[Shops]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Shops_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Shops] CHECK CONSTRAINT [FK_dbo.Shops_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[ShopUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopUsers_dbo.Shops_ShopId] FOREIGN KEY([ShopId])
REFERENCES [dbo].[Shops] ([ShopId])
GO
ALTER TABLE [dbo].[ShopUsers] CHECK CONSTRAINT [FK_dbo.ShopUsers_dbo.Shops_ShopId]
GO
ALTER TABLE [dbo].[ShopUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopUsers_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[ShopUsers] CHECK CONSTRAINT [FK_dbo.ShopUsers_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Suppliers_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_dbo.Suppliers_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Surgeries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Surgeries_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Surgeries] CHECK CONSTRAINT [FK_dbo.Surgeries_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Tags_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_dbo.Tags_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Tags_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_dbo.Tags_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Transactions_dbo.BusinessAccounts_BusinessAccountId] FOREIGN KEY([BusinessAccountId])
REFERENCES [dbo].[BusinessAccounts] ([BusinessAccountId])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_dbo.Transactions_dbo.BusinessAccounts_BusinessAccountId]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Transactions_dbo.BusinessAuxiliaries_BusinessAuxiliaryId] FOREIGN KEY([BusinessAuxiliaryId])
REFERENCES [dbo].[BusinessAuxiliaries] ([BusinessAuxiliaryId])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_dbo.Transactions_dbo.BusinessAuxiliaries_BusinessAuxiliaryId]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Transactions_dbo.Businesses_BusinessId] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[Businesses] ([BusinessId])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_dbo.Transactions_dbo.Businesses_BusinessId]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Transactions_dbo.BusinessSubAuxiliaries_BusinessSubAuxiliaryId] FOREIGN KEY([BusinessSubAuxiliaryId])
REFERENCES [dbo].[BusinessSubAuxiliaries] ([BusinessSubAuxiliaryId])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_dbo.Transactions_dbo.BusinessSubAuxiliaries_BusinessSubAuxiliaryId]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Transactions_dbo.BusinessSubClassifications_BusinessSubClassificationId] FOREIGN KEY([BusinessSubClassificationId])
REFERENCES [dbo].[BusinessSubClassifications] ([BusinessSubClassificationId])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_dbo.Transactions_dbo.BusinessSubClassifications_BusinessSubClassificationId]
GO
ALTER TABLE [dbo].[Treatments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Treatments_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Treatments] CHECK CONSTRAINT [FK_dbo.Treatments_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[TreatmentVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TreatmentVisits_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[TreatmentVisits] CHECK CONSTRAINT [FK_dbo.TreatmentVisits_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[TreatmentVisits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TreatmentVisits_dbo.Treatments_TreatmentId] FOREIGN KEY([TreatmentId])
REFERENCES [dbo].[Treatments] ([TreatmentId])
GO
ALTER TABLE [dbo].[TreatmentVisits] CHECK CONSTRAINT [FK_dbo.TreatmentVisits_dbo.Treatments_TreatmentId]
GO
ALTER TABLE [dbo].[Urologies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Urologies_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Urologies] CHECK CONSTRAINT [FK_dbo.Urologies_dbo.Patients_PatientId]
GO
ALTER TABLE [dbo].[UserEmailSettings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserEmailSettings_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserEmailSettings] CHECK CONSTRAINT [FK_dbo.UserEmailSettings_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[UserRols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRols_dbo.Options_Option_OptionId] FOREIGN KEY([Option_OptionId])
REFERENCES [dbo].[Options] ([OptionId])
GO
ALTER TABLE [dbo].[UserRols] CHECK CONSTRAINT [FK_dbo.UserRols_dbo.Options_Option_OptionId]
GO
ALTER TABLE [dbo].[UserRols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRols_dbo.Rols_RolId] FOREIGN KEY([RolId])
REFERENCES [dbo].[Rols] ([RolId])
GO
ALTER TABLE [dbo].[UserRols] CHECK CONSTRAINT [FK_dbo.UserRols_dbo.Rols_RolId]
GO
ALTER TABLE [dbo].[UserRols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRols_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[UserRols] CHECK CONSTRAINT [FK_dbo.UserRols_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[UserRols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRols_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserRols] CHECK CONSTRAINT [FK_dbo.UserRols_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.UserTypes_UserTypeId] FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserTypes] ([UserTypeId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.UserTypes_UserTypeId]
GO
ALTER TABLE [dbo].[Wallets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Wallets_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Wallets] CHECK CONSTRAINT [FK_dbo.Wallets_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Wallets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Wallets_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Wallets] CHECK CONSTRAINT [FK_dbo.Wallets_dbo.Status_StatusId]
GO
USE [master]
GO
ALTER DATABASE [_AmicoDb] SET  READ_WRITE 
GO
