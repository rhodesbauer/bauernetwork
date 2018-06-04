/*    ==Parâmetros de Script==

    Versão do Servidor de Origem : SQL Server 2016 (13.0.4001)
    Edição do Mecanismo de Banco de Dados de Origem : Microsoft SQL Server Express Edition
    Tipo do Mecanismo de Banco de Dados de Origem : SQL Server Autônomo

    Versão do Servidor de Destino : SQL Server 2017
    Edição de Mecanismo de Banco de Dados de Destino : Microsoft SQL Server Standard Edition
    Tipo de Mecanismo de Banco de Dados de Destino : SQL Server Autônomo
*/
USE [DB_A2BA2D_bauernetbr]
GO
/****** Object:  Table [entAccountDetails]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entAccountDetails](
	[adtID] [varchar](32) NOT NULL,
	[accID] [varchar](32) NOT NULL,
	[adtAgency] [varchar](50) NULL,
	[adtAccount] [varchar](50) NULL,
	[adtAdditionalInformation] [varchar](50) NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entAccountDetails] PRIMARY KEY CLUSTERED 
(
	[adtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entAccounts]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entAccounts](
	[accID] [varchar](32) NOT NULL,
	[accName] [varchar](50) NULL,
	[accCode] [int] IDENTITY(1,1) NOT NULL,
	[typID] [varchar](32) NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entAccounts] PRIMARY KEY CLUSTERED 
(
	[accID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entAddresses]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entAddresses](
	[addID] [varchar](32) NOT NULL,
	[addName] [varchar](50) NOT NULL,
	[addStreet] [nvarchar](max) NULL,
	[addNumber] [nvarchar](max) NULL,
	[addComplement] [nvarchar](max) NULL,
	[addZipCode] [varchar](50) NULL,
	[citID] [varchar](32) NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entAddresses] PRIMARY KEY CLUSTERED 
(
	[addID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [entArticleMetaData]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entArticleMetaData](
	[amdID] [varchar](32) NOT NULL,
	[artID] [varchar](32) NOT NULL,
	[amdPublishDate] [date] NULL,
	[artID_Parent] [varchar](32) NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entArticleMetaData] PRIMARY KEY CLUSTERED 
(
	[amdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entArticles]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entArticles](
	[artID] [varchar](32) NOT NULL,
	[artCode] [int] IDENTITY(1,1) NOT NULL,
	[catID] [varchar](32) NOT NULL,
	[conID] [varchar](32) NOT NULL,
	[artTitle] [varchar](max) NOT NULL,
	[artUnderTitle] [varchar](max) NULL,
	[artContent] [text] NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entArticles] PRIMARY KEY CLUSTERED 
(
	[artID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [entBill]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entBill](
	[bilID] [varchar](32) NOT NULL,
	[bilCode] [int] IDENTITY(1,1) NOT NULL,
	[bilValue] [numeric](18, 8) NULL,
	[bilMultiplicator] [numeric](1, 0) NULL,
	[conID] [varchar](32) NOT NULL,
	[bilDateExpiration] [datetime] NULL,
	[bilDateOfWarning] [datetime] NULL,
	[bilRecurrence] [int] NULL,
	[staID] [varchar](32) NOT NULL,
	[accID] [varchar](32) NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entBill] PRIMARY KEY CLUSTERED 
(
	[bilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entBillDetails]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entBillDetails](
	[bdtID] [varchar](32) NOT NULL,
	[bilID] [varchar](32) NOT NULL,
	[bdtTotalValue] [numeric](18, 8) NOT NULL,
	[bdtDiscount] [numeric](18, 8) NULL,
	[bdtInterest] [numeric](18, 8) NULL,
	[bdtFine] [numeric](18, 8) NULL,
	[bdtDateOfRegistration] [datetime] NOT NULL,
	[btdObservation] [varchar](max) NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entBillDetails] PRIMARY KEY CLUSTERED 
(
	[bdtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [entBillGroup]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entBillGroup](
	[bgrID] [varchar](32) NOT NULL,
	[bgrTotalInstallments] [int] NOT NULL,
	[bgrDateOfFirstInstallment] [datetime] NOT NULL,
	[bgrDateOfFinalInstallment] [datetime] NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entBillGroup] PRIMARY KEY CLUSTERED 
(
	[bgrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entCategories]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entCategories](
	[catID] [varchar](32) NOT NULL,
	[typID] [varchar](32) NOT NULL,
	[catName] [varchar](50) NOT NULL,
	[catCode] [int] IDENTITY(1,1) NOT NULL,
	[catFriendlyCode] [varchar](10) NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entCategories] PRIMARY KEY CLUSTERED 
(
	[catID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entCities]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entCities](
	[citID] [varchar](32) NOT NULL,
	[citName] [varchar](50) NOT NULL,
	[citState] [varchar](50) NULL,
	[citCountry] [varchar](50) NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entCities] PRIMARY KEY CLUSTERED 
(
	[citID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entContactDetails]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entContactDetails](
	[cdeID] [varchar](32) NOT NULL,
	[conID] [varchar](32) NOT NULL,
	[cdeEmail] [varchar](max) NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entContactDetails] PRIMARY KEY CLUSTERED 
(
	[cdeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [entContacts]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entContacts](
	[conID] [varchar](32) NOT NULL,
	[conCode] [int] IDENTITY(1,1) NOT NULL,
	[conFirstName] [varchar](50) NOT NULL,
	[conMidleName] [varchar](50) NULL,
	[conLastname] [varchar](50) NULL,
	[conObservation] [nvarchar](max) NULL,
	[isUser] [bit] NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entContacts] PRIMARY KEY CLUSTERED 
(
	[conID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [entFeatures]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entFeatures](
	[feaID] [varchar](32) NOT NULL,
	[feaName] [varchar](50) NOT NULL,
	[feaParent] [varchar](32) NULL,
	[feaController] [varchar](50) NULL,
	[shouldShow] [bit] NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entFeatures] PRIMARY KEY CLUSTERED 
(
	[feaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entPhoneNumbers]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entPhoneNumbers](
	[userIDLastChange] [varchar](32) NULL,
	[pnID] [varchar](32) NOT NULL,
	[pnType] [varchar](50) NULL,
	[pnNumber] [varchar](20) NULL,
	[pnName] [varchar](50) NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
 CONSTRAINT [PK_entPhoneNumbers] PRIMARY KEY CLUSTERED 
(
	[pnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entProfiles]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entProfiles](
	[proID] [varchar](32) NOT NULL,
	[proName] [varchar](50) NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entProfiles] PRIMARY KEY CLUSTERED 
(
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entQuickEntry]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entQuickEntry](
	[qenID] [varchar](32) NOT NULL,
	[qenGroupID] [varchar](32) NULL,
	[qenCode] [int] IDENTITY(1,1) NOT NULL,
	[catID] [varchar](32) NOT NULL,
	[accID] [varchar](32) NOT NULL,
	[qenValue] [numeric](18, 8) NOT NULL,
	[qenDateActivation] [datetime] NOT NULL,
	[qenInstallmentNumber] [int] NULL,
	[qenTotalInstallments] [int] NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entQuickEntry] PRIMARY KEY CLUSTERED 
(
	[qenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entStatus]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entStatus](
	[staID] [varchar](32) NOT NULL,
	[staCode] [int] IDENTITY(1,1) NOT NULL,
	[staName] [varchar](50) NOT NULL,
	[staDescription] [varchar](max) NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entStatus] PRIMARY KEY CLUSTERED 
(
	[staID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [entTypes]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entTypes](
	[typID] [varchar](32) NOT NULL,
	[typAllowChange] [bit] NOT NULL,
	[typCode] [int] IDENTITY(1,1) NOT NULL,
	[typName] [varchar](50) NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_entTypes] PRIMARY KEY CLUSTERED 
(
	[typID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [entUsers]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entUsers](
	[userIDLastChange] [varchar](32) NULL,
	[userID] [varchar](32) NOT NULL,
	[userCode] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NOT NULL,
	[userKey] [varchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
 CONSTRAINT [PK_entUsers] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [relBillGrouping]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [relBillGrouping](
	[bgrID] [varchar](32) NOT NULL,
	[bilID] [varchar](32) NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_relBillGrouping] PRIMARY KEY CLUSTERED 
(
	[bgrID] ASC,
	[bilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [relCategoryBill]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [relCategoryBill](
	[bilID] [varchar](32) NOT NULL,
	[catID] [varchar](32) NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_relCategoryBill] PRIMARY KEY CLUSTERED 
(
	[bilID] ASC,
	[catID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [relContactsAddresses]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [relContactsAddresses](
	[userIDCreation] [varchar](32) NOT NULL,
	[conID] [varchar](32) NOT NULL,
	[addID] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
 CONSTRAINT [PK_relContactsAddresses] PRIMARY KEY CLUSTERED 
(
	[conID] ASC,
	[addID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [relPhoneNumbersContacts]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [relPhoneNumbersContacts](
	[pnID] [varchar](32) NOT NULL,
	[conID] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
 CONSTRAINT [PK_relPhoneNumbersContacts] PRIMARY KEY CLUSTERED 
(
	[pnID] ASC,
	[conID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [relProfilesFeatures]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [relProfilesFeatures](
	[proID] [varchar](32) NOT NULL,
	[feaID] [varchar](32) NOT NULL,
	[permission] [int] NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_relProfilesFeatures] PRIMARY KEY CLUSTERED 
(
	[proID] ASC,
	[feaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [relUserContact]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [relUserContact](
	[userIDLastChange] [varchar](32) NULL,
	[userID] [varchar](32) NOT NULL,
	[conID] [varchar](32) NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
 CONSTRAINT [PK_relUserContact] PRIMARY KEY CLUSTERED 
(
	[userID] ASC,
	[conID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [relUserProfiles]    Script Date: 02/06/2018 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [relUserProfiles](
	[userID] [varchar](32) NOT NULL,
	[proID] [varchar](32) NOT NULL,
	[dtCreation] [datetime] NOT NULL,
	[dtLastChange] [datetime] NULL,
	[userIDCreation] [varchar](32) NOT NULL,
	[userIDLastChange] [varchar](32) NULL,
 CONSTRAINT [PK_relUserProfiles] PRIMARY KEY CLUSTERED 
(
	[userID] ASC,
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [entBill] ADD  CONSTRAINT [DF_entBill_bilValue_1]  DEFAULT ((0)) FOR [bilValue]
GO
ALTER TABLE [entBill] ADD  CONSTRAINT [DF_entBill_bilMultiplicator_1]  DEFAULT ((1)) FOR [bilMultiplicator]
GO
ALTER TABLE [entBill] ADD  CONSTRAINT [DF_entBill_bilRecurrence_1]  DEFAULT ((1)) FOR [bilRecurrence]
GO
ALTER TABLE [entTypes] ADD  CONSTRAINT [DF_entTypes_typAllowChange_1]  DEFAULT ((1)) FOR [typAllowChange]
GO
ALTER TABLE [entAccountDetails]  WITH CHECK ADD  CONSTRAINT [FK_entAccountDetails_entAccounts] FOREIGN KEY([accID])
REFERENCES [entAccounts] ([accID])
GO
ALTER TABLE [entAccountDetails] CHECK CONSTRAINT [FK_entAccountDetails_entAccounts]
GO
ALTER TABLE [entAccounts]  WITH CHECK ADD  CONSTRAINT [FK_entAccounts_entTypes] FOREIGN KEY([typID])
REFERENCES [entTypes] ([typID])
GO
ALTER TABLE [entAccounts] CHECK CONSTRAINT [FK_entAccounts_entTypes]
GO
ALTER TABLE [entAddresses]  WITH CHECK ADD  CONSTRAINT [FK_entAddresses_entCities] FOREIGN KEY([citID])
REFERENCES [entCities] ([citID])
GO
ALTER TABLE [entAddresses] CHECK CONSTRAINT [FK_entAddresses_entCities]
GO
ALTER TABLE [entArticleMetaData]  WITH CHECK ADD  CONSTRAINT [FK_entArticleMetaData_entArticles] FOREIGN KEY([artID])
REFERENCES [entArticles] ([artID])
GO
ALTER TABLE [entArticleMetaData] CHECK CONSTRAINT [FK_entArticleMetaData_entArticles]
GO
ALTER TABLE [entArticles]  WITH CHECK ADD  CONSTRAINT [FK_entArticles_entCategories] FOREIGN KEY([catID])
REFERENCES [entCategories] ([catID])
GO
ALTER TABLE [entArticles] CHECK CONSTRAINT [FK_entArticles_entCategories]
GO
ALTER TABLE [entArticles]  WITH CHECK ADD  CONSTRAINT [FK_entArticles_entContacts] FOREIGN KEY([conID])
REFERENCES [entContacts] ([conID])
GO
ALTER TABLE [entArticles] CHECK CONSTRAINT [FK_entArticles_entContacts]
GO
ALTER TABLE [entBill]  WITH CHECK ADD  CONSTRAINT [FK_entBill_entAccounts] FOREIGN KEY([accID])
REFERENCES [entAccounts] ([accID])
GO
ALTER TABLE [entBill] CHECK CONSTRAINT [FK_entBill_entAccounts]
GO
ALTER TABLE [entBill]  WITH CHECK ADD  CONSTRAINT [FK_entBill_entContacts] FOREIGN KEY([conID])
REFERENCES [entContacts] ([conID])
GO
ALTER TABLE [entBill] CHECK CONSTRAINT [FK_entBill_entContacts]
GO
ALTER TABLE [entBill]  WITH CHECK ADD  CONSTRAINT [FK_entBill_entStatus] FOREIGN KEY([staID])
REFERENCES [entStatus] ([staID])
GO
ALTER TABLE [entBill] CHECK CONSTRAINT [FK_entBill_entStatus]
GO
ALTER TABLE [entBillDetails]  WITH CHECK ADD  CONSTRAINT [FK_entBillDetails_entBill] FOREIGN KEY([bilID])
REFERENCES [entBill] ([bilID])
GO
ALTER TABLE [entBillDetails] CHECK CONSTRAINT [FK_entBillDetails_entBill]
GO
ALTER TABLE [entCategories]  WITH CHECK ADD  CONSTRAINT [FK_entCategories_entTypes] FOREIGN KEY([typID])
REFERENCES [entTypes] ([typID])
GO
ALTER TABLE [entCategories] CHECK CONSTRAINT [FK_entCategories_entTypes]
GO
ALTER TABLE [entContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_entContactDetails_entContacts] FOREIGN KEY([conID])
REFERENCES [entContacts] ([conID])
GO
ALTER TABLE [entContactDetails] CHECK CONSTRAINT [FK_entContactDetails_entContacts]
GO
ALTER TABLE [entQuickEntry]  WITH CHECK ADD  CONSTRAINT [FK_entQuickEntry_entAccounts] FOREIGN KEY([accID])
REFERENCES [entAccounts] ([accID])
GO
ALTER TABLE [entQuickEntry] CHECK CONSTRAINT [FK_entQuickEntry_entAccounts]
GO
ALTER TABLE [entQuickEntry]  WITH CHECK ADD  CONSTRAINT [FK_entQuickEntry_entCategories] FOREIGN KEY([catID])
REFERENCES [entCategories] ([catID])
GO
ALTER TABLE [entQuickEntry] CHECK CONSTRAINT [FK_entQuickEntry_entCategories]
GO
ALTER TABLE [relBillGrouping]  WITH CHECK ADD  CONSTRAINT [FK_relBillGrouping_entBill] FOREIGN KEY([bilID])
REFERENCES [entBill] ([bilID])
GO
ALTER TABLE [relBillGrouping] CHECK CONSTRAINT [FK_relBillGrouping_entBill]
GO
ALTER TABLE [relBillGrouping]  WITH CHECK ADD  CONSTRAINT [FK_relBillGrouping_entBillGroup] FOREIGN KEY([bgrID])
REFERENCES [entBillGroup] ([bgrID])
GO
ALTER TABLE [relBillGrouping] CHECK CONSTRAINT [FK_relBillGrouping_entBillGroup]
GO
ALTER TABLE [relCategoryBill]  WITH CHECK ADD  CONSTRAINT [FK_relCategoryBill_entBill] FOREIGN KEY([bilID])
REFERENCES [entBill] ([bilID])
GO
ALTER TABLE [relCategoryBill] CHECK CONSTRAINT [FK_relCategoryBill_entBill]
GO
ALTER TABLE [relCategoryBill]  WITH CHECK ADD  CONSTRAINT [FK_relCategoryBill_entCategories] FOREIGN KEY([catID])
REFERENCES [entCategories] ([catID])
GO
ALTER TABLE [relCategoryBill] CHECK CONSTRAINT [FK_relCategoryBill_entCategories]
GO
ALTER TABLE [relContactsAddresses]  WITH CHECK ADD  CONSTRAINT [FK_relContactsAddresses_entAddresses] FOREIGN KEY([addID])
REFERENCES [entAddresses] ([addID])
GO
ALTER TABLE [relContactsAddresses] CHECK CONSTRAINT [FK_relContactsAddresses_entAddresses]
GO
ALTER TABLE [relContactsAddresses]  WITH CHECK ADD  CONSTRAINT [FK_relContactsAddresses_entContacts] FOREIGN KEY([conID])
REFERENCES [entContacts] ([conID])
GO
ALTER TABLE [relContactsAddresses] CHECK CONSTRAINT [FK_relContactsAddresses_entContacts]
GO
ALTER TABLE [relPhoneNumbersContacts]  WITH CHECK ADD  CONSTRAINT [FK_relPhoneNumbersContacts_entContacts] FOREIGN KEY([conID])
REFERENCES [entContacts] ([conID])
GO
ALTER TABLE [relPhoneNumbersContacts] CHECK CONSTRAINT [FK_relPhoneNumbersContacts_entContacts]
GO
ALTER TABLE [relPhoneNumbersContacts]  WITH CHECK ADD  CONSTRAINT [FK_relPhoneNumbersContacts_entPhoneNumbers] FOREIGN KEY([pnID])
REFERENCES [entPhoneNumbers] ([pnID])
GO
ALTER TABLE [relPhoneNumbersContacts] CHECK CONSTRAINT [FK_relPhoneNumbersContacts_entPhoneNumbers]
GO
ALTER TABLE [relProfilesFeatures]  WITH CHECK ADD  CONSTRAINT [FK_relProfilesFeatures_entFeatures] FOREIGN KEY([feaID])
REFERENCES [entFeatures] ([feaID])
GO
ALTER TABLE [relProfilesFeatures] CHECK CONSTRAINT [FK_relProfilesFeatures_entFeatures]
GO
ALTER TABLE [relProfilesFeatures]  WITH CHECK ADD  CONSTRAINT [FK_relProfilesFeatures_entProfiles] FOREIGN KEY([proID])
REFERENCES [entProfiles] ([proID])
GO
ALTER TABLE [relProfilesFeatures] CHECK CONSTRAINT [FK_relProfilesFeatures_entProfiles]
GO
ALTER TABLE [relUserContact]  WITH CHECK ADD  CONSTRAINT [FK_relUserContact_entContacts] FOREIGN KEY([conID])
REFERENCES [entContacts] ([conID])
GO
ALTER TABLE [relUserContact] CHECK CONSTRAINT [FK_relUserContact_entContacts]
GO
ALTER TABLE [relUserContact]  WITH CHECK ADD  CONSTRAINT [FK_relUserContact_entUsers] FOREIGN KEY([userID])
REFERENCES [entUsers] ([userID])
GO
ALTER TABLE [relUserContact] CHECK CONSTRAINT [FK_relUserContact_entUsers]
GO
ALTER TABLE [relUserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_relUserProfiles_entProfiles] FOREIGN KEY([proID])
REFERENCES [entProfiles] ([proID])
GO
ALTER TABLE [relUserProfiles] CHECK CONSTRAINT [FK_relUserProfiles_entProfiles]
GO
ALTER TABLE [relUserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_relUserProfiles_entUsers] FOREIGN KEY([userID])
REFERENCES [entUsers] ([userID])
GO
ALTER TABLE [relUserProfiles] CHECK CONSTRAINT [FK_relUserProfiles_entUsers]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 for income / -1 for outcome' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'entBill', @level2type=N'COLUMN',@level2name=N'bilMultiplicator'
GO
