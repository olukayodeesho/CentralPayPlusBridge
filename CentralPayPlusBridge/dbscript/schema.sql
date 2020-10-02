USE [CentralPayBridge]
GO
/****** Object:  Table [dbo].[RequestResponseLog]    Script Date: 10/02/2020 10:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RequestResponseLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RequestBody] [varchar](5000) NULL,
	[RequestUrl] [varchar](1000) NULL,
	[HttpMethodType] [varchar](10) NULL,
	[RequestTime] [datetime] NULL,
	[ResponseBody] [varchar](5000) NULL,
	[ResponseTime] [datetime] NULL,
 CONSTRAINT [PK_RequestResponseLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MandateLog]    Script Date: 10/02/2020 10:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MandateLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountName] [varchar](500) NOT NULL,
	[AccountNumber] [varchar](20) NOT NULL,
	[BankCode] [varchar](10) NOT NULL,
	[TransType] [varchar](5) NOT NULL,
	[BillerId] [varchar](10) NULL,
	[BillerName] [varchar](200) NULL,
	[BillerTransId] [varchar](50) NULL,
	[HashValue] [text] NULL,
	[MandateCode] [varchar](50) NULL,
	[ResponseCode] [varchar](50) NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[IsCancelled] [bit] NOT NULL,
	[DateCancelled] [datetime] NULL,
 CONSTRAINT [PK_MandateLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExceptionLog]    Script Date: 10/02/2020 10:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExceptionLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ErrorMessage] [text] NULL,
	[ErrorStacktrace] [text] NULL,
	[ErrorSource] [text] NULL,
	[ErrorDatetime] [datetime] NULL,
 CONSTRAINT [PK_ExceptionLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CentralPayOtp]    Script Date: 10/02/2020 10:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentralPayOtp](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MandateCodeId] [bigint] NOT NULL,
	[ReferenceNumber] [nchar](10) NOT NULL,
	[otp] [text] NOT NULL,
	[DateGenerated] [datetime] NOT NULL,
	[IsUsed] [bit] NULL,
	[DateUsed] [datetime] NULL,
 CONSTRAINT [PK_CentralPayOtp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_CentralPayOtp_MandateLog]    Script Date: 10/02/2020 10:56:32 ******/
ALTER TABLE [dbo].[CentralPayOtp]  WITH CHECK ADD  CONSTRAINT [FK_CentralPayOtp_MandateLog] FOREIGN KEY([MandateCodeId])
REFERENCES [dbo].[MandateLog] ([Id])
GO
ALTER TABLE [dbo].[CentralPayOtp] CHECK CONSTRAINT [FK_CentralPayOtp_MandateLog]
GO
