/* ------------------------------------------------------------

DESCRIPTION: Schema Synchronization Script for Object(s) \r\n
    tables:
        [dbo].[City], [dbo].[Contact], [dbo].[ContactType], [dbo].[Country], [dbo].[Project], [dbo].[ProjectType], [dbo].[PurchaseOrder], [dbo].[PurchaseOrderItem], [dbo].[Vendor]

     Make (local). Equal (local).DotErpDb

   AUTHOR:	Steve Mangelschots

   DATE:	20/03/2015 23:05:37

   LEGAL:	2015 OfficeSoft

   ------------------------------------------------------------ */

SET NOEXEC OFF
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET IMPLICIT_TRANSACTIONS OFF
SET ARITHABORT ON
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
GO

BEGIN TRAN
GO

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[ProjectType]
Print 'Create Table [dbo].[ProjectType]'
GO
CREATE TABLE [dbo].[ProjectType] (
		[Id]       [uniqueidentifier] NOT NULL,
		[Name]     [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_ProjectType to [dbo].[ProjectType]
Print 'Add Primary Key PK_ProjectType to [dbo].[ProjectType]'
GO
ALTER TABLE [dbo].[ProjectType]
	ADD
	CONSTRAINT [PK_ProjectType]
	PRIMARY KEY
	CLUSTERED
	([Id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[ContactType]
Print 'Create Table [dbo].[ContactType]'
GO
CREATE TABLE [dbo].[ContactType] (
		[Name]     [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Id]       [uniqueidentifier] NOT NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_ContactType to [dbo].[ContactType]
Print 'Add Primary Key PK_ContactType to [dbo].[ContactType]'
GO
ALTER TABLE [dbo].[ContactType]
	ADD
	CONSTRAINT [PK_ContactType]
	PRIMARY KEY
	CLUSTERED
	([Id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[Country]
Print 'Create Table [dbo].[Country]'
GO
CREATE TABLE [dbo].[Country] (
		[Id]                    [uniqueidentifier] NOT NULL,
		[Name]                  [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[IBAN]                  [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ISOCode]               [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[InternationalCode]     [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[EUCode]                [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Code]                  [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_Country to [dbo].[Country]
Print 'Add Primary Key PK_Country to [dbo].[Country]'
GO
ALTER TABLE [dbo].[Country]
	ADD
	CONSTRAINT [PK_Country]
	PRIMARY KEY
	CLUSTERED
	([Id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[Project]
Print 'Create Table [dbo].[Project]'
GO
CREATE TABLE [dbo].[Project] (
		[Id]                 [uniqueidentifier] NOT NULL,
		[Code]               [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Address]            [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CityId]             [uniqueidentifier] NULL,
		[EndDate]            [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[WorkingDays]        [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[StartDate]          [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Commercialname]     [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Name]               [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ProjectTypeId]      [uniqueidentifier] NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_Project to [dbo].[Project]
Print 'Add Primary Key PK_Project to [dbo].[Project]'
GO
ALTER TABLE [dbo].[Project]
	ADD
	CONSTRAINT [PK_Project]
	PRIMARY KEY
	CLUSTERED
	([Id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[City]
Print 'Create Table [dbo].[City]'
GO
CREATE TABLE [dbo].[City] (
		[Id]             [uniqueidentifier] NOT NULL,
		[Name]           [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CountryId]      [uniqueidentifier] NOT NULL,
		[PostalCode]     [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Province]       [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_City to [dbo].[City]
Print 'Add Primary Key PK_City to [dbo].[City]'
GO
ALTER TABLE [dbo].[City]
	ADD
	CONSTRAINT [PK_City]
	PRIMARY KEY
	CLUSTERED
	([Id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[Contact]
Print 'Create Table [dbo].[Contact]'
GO
CREATE TABLE [dbo].[Contact] (
		[Id]                    [uniqueidentifier] NOT NULL,
		[Surname]               [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Name]                  [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Address]               [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CityId]                [uniqueidentifier] NULL,
		[Phone]                 [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[TypeId]                [uniqueidentifier] NULL,
		[Email]                 [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Mobile]                [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Phone2]                [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Geodata]               [nvarchar](4000) NULL,
		[Website]               [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Fax]                   [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Photo]                 image NULL,
		[VatRegistrationNo]     [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_Contact to [dbo].[Contact]
Print 'Add Primary Key PK_Contact to [dbo].[Contact]'
GO
ALTER TABLE [dbo].[Contact]
	ADD
	CONSTRAINT [PK_Contact]
	PRIMARY KEY
	CLUSTERED
	([Id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[Vendor]
Print 'Create Table [dbo].[Vendor]'
GO
CREATE TABLE [dbo].[Vendor] (
		[Id]            [uniqueidentifier] NOT NULL,
		[ContactId]     [uniqueidentifier] NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_Vendor to [dbo].[Vendor]
Print 'Add Primary Key PK_Vendor to [dbo].[Vendor]'
GO
ALTER TABLE [dbo].[Vendor]
	ADD
	CONSTRAINT [PK_Vendor]
	PRIMARY KEY
	CLUSTERED
	([Id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[PurchaseOrder]
Print 'Create Table [dbo].[PurchaseOrder]'
GO
CREATE TABLE [dbo].[PurchaseOrder] (
		[Id]            [uniqueidentifier] NOT NULL,
		[ProjectId]     [uniqueidentifier] NULL,
		[VendorId]      [uniqueidentifier] NULL,
		[Name]          [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Date]          [datetime] NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_Order to [dbo].[PurchaseOrder]
Print 'Add Primary Key PK_Order to [dbo].[PurchaseOrder]'
GO
ALTER TABLE [dbo].[PurchaseOrder]
	ADD
	CONSTRAINT [PK_Order]
	PRIMARY KEY
	CLUSTERED
	([Id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[PurchaseOrderItem]
Print 'Create Table [dbo].[PurchaseOrderItem]'
GO
CREATE TABLE [dbo].[PurchaseOrderItem] (
		[Id]                  [uniqueidentifier] NOT NULL,
		[PurchaseOrderId]     [uniqueidentifier] NULL,
		[Description]         [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Amount]              [float] NULL,
		[UnitOfMeasure]       [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Price]               [money] NULL,
		[RowIndex]            [int] NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_PurcahseOrderItem to [dbo].[PurchaseOrderItem]
Print 'Add Primary Key PK_PurcahseOrderItem to [dbo].[PurchaseOrderItem]'
GO
ALTER TABLE [dbo].[PurchaseOrderItem]
	ADD
	CONSTRAINT [PK_PurcahseOrderItem]
	PRIMARY KEY
	CLUSTERED
	([Id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_Country_City_CountryId on [dbo].[City]
Print 'Create Foreign Key FK_Country_City_CountryId on [dbo].[City]'
GO
ALTER TABLE [dbo].[City]
	WITH CHECK
	ADD CONSTRAINT [FK_Country_City_CountryId]
	FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([Id])
ALTER TABLE [dbo].[City]
	CHECK CONSTRAINT [FK_Country_City_CountryId]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_City_Contact_CityId on [dbo].[Contact]
Print 'Create Foreign Key FK_City_Contact_CityId on [dbo].[Contact]'
GO
ALTER TABLE [dbo].[Contact]
	WITH CHECK
	ADD CONSTRAINT [FK_City_Contact_CityId]
	FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([Id])
ALTER TABLE [dbo].[Contact]
	CHECK CONSTRAINT [FK_City_Contact_CityId]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_ContactType_Contact_TypeId on [dbo].[Contact]
Print 'Create Foreign Key FK_ContactType_Contact_TypeId on [dbo].[Contact]'
GO
ALTER TABLE [dbo].[Contact]
	WITH CHECK
	ADD CONSTRAINT [FK_ContactType_Contact_TypeId]
	FOREIGN KEY ([TypeId]) REFERENCES [dbo].[ContactType] ([Id])
ALTER TABLE [dbo].[Contact]
	CHECK CONSTRAINT [FK_ContactType_Contact_TypeId]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_ProjectType_Project_ProjectTypeId on [dbo].[Project]
Print 'Create Foreign Key FK_ProjectType_Project_ProjectTypeId on [dbo].[Project]'
GO
ALTER TABLE [dbo].[Project]
	WITH CHECK
	ADD CONSTRAINT [FK_ProjectType_Project_ProjectTypeId]
	FOREIGN KEY ([ProjectTypeId]) REFERENCES [dbo].[ProjectType] ([Id])
ALTER TABLE [dbo].[Project]
	CHECK CONSTRAINT [FK_ProjectType_Project_ProjectTypeId]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_PurchaseOrder_Project on [dbo].[PurchaseOrder]
Print 'Create Foreign Key FK_PurchaseOrder_Project on [dbo].[PurchaseOrder]'
GO
ALTER TABLE [dbo].[PurchaseOrder]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrder_Project]
	FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Project] ([Id])
ALTER TABLE [dbo].[PurchaseOrder]
	CHECK CONSTRAINT [FK_PurchaseOrder_Project]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_PurchaseOrder_Vendor on [dbo].[PurchaseOrder]
Print 'Create Foreign Key FK_PurchaseOrder_Vendor on [dbo].[PurchaseOrder]'
GO
ALTER TABLE [dbo].[PurchaseOrder]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrder_Vendor]
	FOREIGN KEY ([VendorId]) REFERENCES [dbo].[Vendor] ([Id])
ALTER TABLE [dbo].[PurchaseOrder]
	CHECK CONSTRAINT [FK_PurchaseOrder_Vendor]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_PurchaseOrderItem_PurchaseOrder on [dbo].[PurchaseOrderItem]
Print 'Create Foreign Key FK_PurchaseOrderItem_PurchaseOrder on [dbo].[PurchaseOrderItem]'
GO
ALTER TABLE [dbo].[PurchaseOrderItem]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderItem_PurchaseOrder]
	FOREIGN KEY ([PurchaseOrderId]) REFERENCES [dbo].[PurchaseOrder] ([Id])
ALTER TABLE [dbo].[PurchaseOrderItem]
	CHECK CONSTRAINT [FK_PurchaseOrderItem_PurchaseOrder]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_Contact_Vendor_ContactId on [dbo].[Vendor]
Print 'Create Foreign Key FK_Contact_Vendor_ContactId on [dbo].[Vendor]'
GO
ALTER TABLE [dbo].[Vendor]
	WITH CHECK
	ADD CONSTRAINT [FK_Contact_Vendor_ContactId]
	FOREIGN KEY ([ContactId]) REFERENCES [dbo].[Contact] ([Id])
ALTER TABLE [dbo].[Vendor]
	CHECK CONSTRAINT [FK_Contact_Vendor_ContactId]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[City]
Print 'Create Extended Property id on [dbo].[City]'
GO
EXEC sp_addextendedproperty N'id', N'50922688-4541-434b-a52c-86fb72ccda0e', 'USER', N'dbo', 'TABLE', N'City', 'COLUMN', N'CountryId'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[City]
Print 'Create Extended Property id on [dbo].[City]'
GO
EXEC sp_addextendedproperty N'id', N'3634bc49-9e52-47ee-8984-df8face81bb0', 'USER', N'dbo', 'TABLE', N'City', 'COLUMN', N'Id'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[City]
Print 'Create Extended Property id on [dbo].[City]'
GO
EXEC sp_addextendedproperty N'id', N'9eb0ae80-42d1-48d1-8f2a-85db26d3452f', 'USER', N'dbo', 'TABLE', N'City', 'COLUMN', N'Name'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[City]
Print 'Create Extended Property id on [dbo].[City]'
GO
EXEC sp_addextendedproperty N'id', N'b620f901-b911-41c8-9fe0-962707ebe36e', 'USER', N'dbo', 'TABLE', N'City', 'COLUMN', N'PostalCode'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[City]
Print 'Create Extended Property id on [dbo].[City]'
GO
EXEC sp_addextendedproperty N'id', N'045a14e6-5fe1-407b-9d0a-cb19dc123ac6', 'USER', N'dbo', 'TABLE', N'City', 'COLUMN', N'Province'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[City]
Print 'Create Extended Property id on [dbo].[City]'
GO
EXEC sp_addextendedproperty N'id', N'00000000-0000-0000-0000-000000000000', 'USER', N'dbo', 'TABLE', N'City', 'CONSTRAINT', N'FK_Country_City_CountryId'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[City]
Print 'Create Extended Property id on [dbo].[City]'
GO
EXEC sp_addextendedproperty N'id', N'ff934986-5360-426c-8395-77b5464b1f1a', 'USER', N'dbo', 'TABLE', N'City', NULL, NULL
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'1cb7b012-4d69-4a15-a3e2-0d0e1d7e0496', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Address'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'6702b82e-9cf2-4e37-9022-d669c86fbc2d', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'CityId'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'9ffe3a74-42c0-41d6-9f1e-cb67827c46ce', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Email'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'8f0d6a7d-88ed-459e-a488-b1d6ba81ecc3', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Fax'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'c864e24f-26c3-49db-b97c-dc3439edf9b4', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Geodata'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'3634bc49-9e52-47ee-8984-df8face81bb0', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Id'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'c9e59e8a-9d95-49da-bdca-25fc15823c72', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Mobile'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'9eb0ae80-42d1-48d1-8f2a-85db26d3452f', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Name'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'1be7dd37-a6fd-4d77-a214-48d8d6f4d197', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Phone'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'5f78e5aa-b73a-408e-afa7-cbda45600435', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Phone2'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'9ea23e93-0dbb-4f5c-8c55-4479891973e5', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Photo'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'a4f96ac1-208c-4186-8eb1-bb95b65923e2', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Surname'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'4edddb84-8605-4780-b22a-4bc0cde8fcad', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'TypeId'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'a8ef524c-d231-4f09-8d78-c28067b2bb6c', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'VatRegistrationNo'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'79b33576-b7b8-423c-9266-1aaefc07e020', 'USER', N'dbo', 'TABLE', N'Contact', 'COLUMN', N'Website'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'00000000-0000-0000-0000-000000000000', 'USER', N'dbo', 'TABLE', N'Contact', 'CONSTRAINT', N'FK_City_Contact_CityId'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'00000000-0000-0000-0000-000000000000', 'USER', N'dbo', 'TABLE', N'Contact', 'CONSTRAINT', N'FK_ContactType_Contact_TypeId'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Contact]
Print 'Create Extended Property id on [dbo].[Contact]'
GO
EXEC sp_addextendedproperty N'id', N'57404244-6907-4dcf-93f5-6bee992436e9', 'USER', N'dbo', 'TABLE', N'Contact', NULL, NULL
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[ContactType]
Print 'Create Extended Property id on [dbo].[ContactType]'
GO
EXEC sp_addextendedproperty N'id', N'3634bc49-9e52-47ee-8984-df8face81bb0', 'USER', N'dbo', 'TABLE', N'ContactType', 'COLUMN', N'Id'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[ContactType]
Print 'Create Extended Property id on [dbo].[ContactType]'
GO
EXEC sp_addextendedproperty N'id', N'9eb0ae80-42d1-48d1-8f2a-85db26d3452f', 'USER', N'dbo', 'TABLE', N'ContactType', 'COLUMN', N'Name'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[ContactType]
Print 'Create Extended Property id on [dbo].[ContactType]'
GO
EXEC sp_addextendedproperty N'id', N'5c905196-0526-4aae-a7d6-aa7290178af3', 'USER', N'dbo', 'TABLE', N'ContactType', NULL, NULL
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Country]
Print 'Create Extended Property id on [dbo].[Country]'
GO
EXEC sp_addextendedproperty N'id', N'c9a13ece-c4e0-4bcb-9893-c97418187db0', 'USER', N'dbo', 'TABLE', N'Country', 'COLUMN', N'Code'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Country]
Print 'Create Extended Property id on [dbo].[Country]'
GO
EXEC sp_addextendedproperty N'id', N'f542b209-a418-47c9-adc1-3484e196cabe', 'USER', N'dbo', 'TABLE', N'Country', 'COLUMN', N'EUCode'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Country]
Print 'Create Extended Property id on [dbo].[Country]'
GO
EXEC sp_addextendedproperty N'id', N'07833e5e-f32b-45f1-9353-387fffaff696', 'USER', N'dbo', 'TABLE', N'Country', 'COLUMN', N'IBAN'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Country]
Print 'Create Extended Property id on [dbo].[Country]'
GO
EXEC sp_addextendedproperty N'id', N'3634bc49-9e52-47ee-8984-df8face81bb0', 'USER', N'dbo', 'TABLE', N'Country', 'COLUMN', N'Id'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Country]
Print 'Create Extended Property id on [dbo].[Country]'
GO
EXEC sp_addextendedproperty N'id', N'7c1314d3-d0a4-4940-80cd-598a0e5ccba4', 'USER', N'dbo', 'TABLE', N'Country', 'COLUMN', N'InternationalCode'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Country]
Print 'Create Extended Property id on [dbo].[Country]'
GO
EXEC sp_addextendedproperty N'id', N'76d6ab2c-8700-4405-b0ba-2be06bcd6fee', 'USER', N'dbo', 'TABLE', N'Country', 'COLUMN', N'ISOCode'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Country]
Print 'Create Extended Property id on [dbo].[Country]'
GO
EXEC sp_addextendedproperty N'id', N'9eb0ae80-42d1-48d1-8f2a-85db26d3452f', 'USER', N'dbo', 'TABLE', N'Country', 'COLUMN', N'Name'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Country]
Print 'Create Extended Property id on [dbo].[Country]'
GO
EXEC sp_addextendedproperty N'id', N'942d99af-671d-4b48-863a-25185b0c0cf4', 'USER', N'dbo', 'TABLE', N'Country', NULL, NULL
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Project]
Print 'Create Extended Property id on [dbo].[Project]'
GO
EXEC sp_addextendedproperty N'id', N'c9a13ece-c4e0-4bcb-9893-c97418187db0', 'USER', N'dbo', 'TABLE', N'Project', 'COLUMN', N'Code'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Project]
Print 'Create Extended Property id on [dbo].[Project]'
GO
EXEC sp_addextendedproperty N'id', N'9a2d3970-7d8a-41b8-b48a-80a02892d85d', 'USER', N'dbo', 'TABLE', N'Project', 'COLUMN', N'Commercialname'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Project]
Print 'Create Extended Property id on [dbo].[Project]'
GO
EXEC sp_addextendedproperty N'id', N'910517b5-bcd9-422a-bad3-8b74977f4ea9', 'USER', N'dbo', 'TABLE', N'Project', 'COLUMN', N'EndDate'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Project]
Print 'Create Extended Property id on [dbo].[Project]'
GO
EXEC sp_addextendedproperty N'id', N'3634bc49-9e52-47ee-8984-df8face81bb0', 'USER', N'dbo', 'TABLE', N'Project', 'COLUMN', N'Id'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Project]
Print 'Create Extended Property id on [dbo].[Project]'
GO
EXEC sp_addextendedproperty N'id', N'9eb0ae80-42d1-48d1-8f2a-85db26d3452f', 'USER', N'dbo', 'TABLE', N'Project', 'COLUMN', N'Name'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Project]
Print 'Create Extended Property id on [dbo].[Project]'
GO
EXEC sp_addextendedproperty N'id', N'97889940-c7ed-443d-9e60-d45b98566e1c', 'USER', N'dbo', 'TABLE', N'Project', 'COLUMN', N'ProjectTypeId'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Project]
Print 'Create Extended Property id on [dbo].[Project]'
GO
EXEC sp_addextendedproperty N'id', N'39b3d97a-7de0-45bb-b140-2060e8ff6dd3', 'USER', N'dbo', 'TABLE', N'Project', 'COLUMN', N'StartDate'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Project]
Print 'Create Extended Property id on [dbo].[Project]'
GO
EXEC sp_addextendedproperty N'id', N'7b4a183c-47eb-4582-ba9f-e5d6f346b801', 'USER', N'dbo', 'TABLE', N'Project', 'COLUMN', N'WorkingDays'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Project]
Print 'Create Extended Property id on [dbo].[Project]'
GO
EXEC sp_addextendedproperty N'id', N'00000000-0000-0000-0000-000000000000', 'USER', N'dbo', 'TABLE', N'Project', 'CONSTRAINT', N'FK_ProjectType_Project_ProjectTypeId'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Project]
Print 'Create Extended Property id on [dbo].[Project]'
GO
EXEC sp_addextendedproperty N'id', N'30162043-cfc2-400b-9461-24e62e85b958', 'USER', N'dbo', 'TABLE', N'Project', NULL, NULL
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[ProjectType]
Print 'Create Extended Property id on [dbo].[ProjectType]'
GO
EXEC sp_addextendedproperty N'id', N'3634bc49-9e52-47ee-8984-df8face81bb0', 'USER', N'dbo', 'TABLE', N'ProjectType', 'COLUMN', N'Id'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[ProjectType]
Print 'Create Extended Property id on [dbo].[ProjectType]'
GO
EXEC sp_addextendedproperty N'id', N'9eb0ae80-42d1-48d1-8f2a-85db26d3452f', 'USER', N'dbo', 'TABLE', N'ProjectType', 'COLUMN', N'Name'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[ProjectType]
Print 'Create Extended Property id on [dbo].[ProjectType]'
GO
EXEC sp_addextendedproperty N'id', N'f2e997aa-f169-42ab-a018-489622995b01', 'USER', N'dbo', 'TABLE', N'ProjectType', NULL, NULL
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[PurchaseOrder]
Print 'Create Extended Property id on [dbo].[PurchaseOrder]'
GO
EXEC sp_addextendedproperty N'id', N'3634bc49-9e52-47ee-8984-df8face81bb0', 'USER', N'dbo', 'TABLE', N'PurchaseOrder', 'COLUMN', N'Id'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[PurchaseOrder]
Print 'Create Extended Property id on [dbo].[PurchaseOrder]'
GO
EXEC sp_addextendedproperty N'id', N'9eb0ae80-42d1-48d1-8f2a-85db26d3452f', 'USER', N'dbo', 'TABLE', N'PurchaseOrder', 'COLUMN', N'Name'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[PurchaseOrder]
Print 'Create Extended Property id on [dbo].[PurchaseOrder]'
GO
EXEC sp_addextendedproperty N'id', N'195488f5-8569-4856-b5c1-95c0235eeb2a', 'USER', N'dbo', 'TABLE', N'PurchaseOrder', NULL, NULL
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Vendor]
Print 'Create Extended Property id on [dbo].[Vendor]'
GO
EXEC sp_addextendedproperty N'id', N'be8a9d71-313c-440c-baf7-c12d921662d7', 'USER', N'dbo', 'TABLE', N'Vendor', 'COLUMN', N'ContactId'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Vendor]
Print 'Create Extended Property id on [dbo].[Vendor]'
GO
EXEC sp_addextendedproperty N'id', N'3634bc49-9e52-47ee-8984-df8face81bb0', 'USER', N'dbo', 'TABLE', N'Vendor', 'COLUMN', N'Id'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Vendor]
Print 'Create Extended Property id on [dbo].[Vendor]'
GO
EXEC sp_addextendedproperty N'id', N'00000000-0000-0000-0000-000000000000', 'USER', N'dbo', 'TABLE', N'Vendor', 'CONSTRAINT', N'FK_Contact_Vendor_ContactId'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property id on [dbo].[Vendor]
Print 'Create Extended Property id on [dbo].[Vendor]'
GO
EXEC sp_addextendedproperty N'id', N'43a0f82c-6ff6-4fcf-85cc-eb6b36aea3e4', 'USER', N'dbo', 'TABLE', N'Vendor', NULL, NULL
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

IF @@TRANCOUNT>0
	COMMIT

SET NOEXEC OFF

