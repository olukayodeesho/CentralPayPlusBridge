USE [CentralPayBridge]
GO
/****** Object:  Table [dbo].[RequestResponseLog]    Script Date: 11/13/2020 10:37:42 ******/
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
SET IDENTITY_INSERT [dbo].[RequestResponseLog] ON
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (1, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><CreateMandateRequest><AcctNumber>1020021016</AcctNumber><AcctName>JOHN SMITH</AcctName><TransType>1</TransType><BankCode>XXXXXXX</BankCode><BillerID>123</BillerID><BillerName>NIBSS Online Merchant</BillerName><BillerTransId>1045621</BillerTransId><HashValue>XXXXXXXXX</HashValue></CreateMandateRequest>', N'', N'ASMX', CAST(0x0000AC71008138A4 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<CreateMandateResponse xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <AcctNumber>1020021016</AcctNumber>
  <AcctName>JOHN SMITH</AcctName>
  <TransType>1</TransType>
  <BankCode>XXXXXXX</BankCode>
  <BillerID>123</BillerID>
  <BillerName>NIBSS Online Merchant</BillerName>
  <BillerTransId>1045621</BillerTransId>
  <MandateCode />
  <ResponseCode>07</ResponseCode>
</CreateMandateResponse>', CAST(0x0000AC7100817933 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (2, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><CreateMandateRequest><AcctNumber>1020021016</AcctNumber><AcctName>JOHN SMITH</AcctName><TransType>1</TransType><BankCode>XXXXXXX</BankCode><BillerID>123</BillerID><BillerName>NIBSS Online Merchant</BillerName><BillerTransId>1045621</BillerTransId><HashValue>XXXXXXXXX</HashValue></CreateMandateRequest>', N'', N'ASMX', CAST(0x0000AC7100839033 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<CreateMandateResponse xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <AcctNumber>1020021016</AcctNumber>
  <AcctName>JOHN SMITH</AcctName>
  <TransType>1</TransType>
  <BankCode>XXXXXXX</BankCode>
  <BillerID>123</BillerID>
  <BillerName>NIBSS Online Merchant</BillerName>
  <BillerTransId>1045621</BillerTransId>
  <MandateCode />
  <ResponseCode>07</ResponseCode>
</CreateMandateResponse>', CAST(0x0000AC71008392DA AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (3, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><CreateMandateRequest><AcctNumber>1020021016</AcctNumber><AcctName>JOHN SMITH</AcctName><TransType>1</TransType><BankCode>XXXXXXX</BankCode><BillerID>123</BillerID><BillerName>NIBSS Online Merchant</BillerName><BillerTransId>1045621</BillerTransId><HashValue>XXXXXXXXX</HashValue></CreateMandateRequest>', N'', N'ASMX', CAST(0x0000AC710083FE57 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<CreateMandateResponse xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <AcctNumber>1020021016</AcctNumber>
  <AcctName>JOHN SMITH</AcctName>
  <TransType>1</TransType>
  <BankCode>XXXXXXX</BankCode>
  <BillerID>123</BillerID>
  <BillerName>NIBSS Online Merchant</BillerName>
  <BillerTransId>1045621</BillerTransId>
  <MandateCode />
  <ResponseCode>07</ResponseCode>
</CreateMandateResponse>', CAST(0x0000AC710084FFEB AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (4, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><CreateMandateRequest><AcctNumber>1020021016</AcctNumber><AcctName>JOHN SMITH</AcctName><TransType>1</TransType><BankCode>XXXXXXX</BankCode><BillerID>123</BillerID><BillerName>NIBSS Online Merchant</BillerName><BillerTransId>1045621</BillerTransId><HashValue>XXXXXXXXX</HashValue></CreateMandateRequest>', N'', N'ASMX', CAST(0x0000AC7100854AEF AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<CreateMandateResponse xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <AcctNumber>1020021016</AcctNumber>
  <AcctName>JOHN SMITH</AcctName>
  <TransType>1</TransType>
  <BankCode>XXXXXXX</BankCode>
  <BillerID>123</BillerID>
  <BillerName>NIBSS Online Merchant</BillerName>
  <BillerTransId>1045621</BillerTransId>
  <MandateCode />
  <ResponseCode>07</ResponseCode>
</CreateMandateResponse>', CAST(0x0000AC7100858A41 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (5, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><CreateMandateRequest><AcctNumber>1020021016</AcctNumber><AcctName>JOHN SMITH</AcctName><TransType>1</TransType><BankCode>XXXXXXX</BankCode><BillerID>123</BillerID><BillerName>NIBSS Online Merchant</BillerName><BillerTransId>1045621</BillerTransId><HashValue>XXXXXXXXX</HashValue></CreateMandateRequest>', N'', N'ASMX', CAST(0x0000AC710087157C AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<CreateMandateResponse xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <AcctNumber>1020021016</AcctNumber>
  <AcctName>JOHN SMITH</AcctName>
  <TransType>1</TransType>
  <BankCode>XXXXXXX</BankCode>
  <BillerID>123</BillerID>
  <BillerName>NIBSS Online Merchant</BillerName>
  <BillerTransId>1045621</BillerTransId>
  <MandateCode />
  <ResponseCode>07</ResponseCode>
</CreateMandateResponse>', CAST(0x0000AC71008760A7 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (6, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><CreateMandateRequest><AcctNumber>1020021016</AcctNumber><AcctName>JOHN SMITH</AcctName><TransType>1</TransType><BankCode>XXXXXXX</BankCode><BillerID>123</BillerID><BillerName>NIBSS Online Merchant</BillerName><BillerTransId>1045621</BillerTransId><HashValue>XXXXXXXXX</HashValue></CreateMandateRequest>', N'', N'ASMX', CAST(0x0000AC710087D22B AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<CreateMandateResponse xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <AcctNumber>1020021016</AcctNumber>
  <AcctName>JOHN SMITH</AcctName>
  <TransType>1</TransType>
  <BankCode>XXXXXXX</BankCode>
  <BillerID>123</BillerID>
  <BillerName>NIBSS Online Merchant</BillerName>
  <BillerTransId>1045621</BillerTransId>
  <MandateCode>CpayMD00000003</MandateCode>
  <ResponseCode>00</ResponseCode>
</CreateMandateResponse>', CAST(0x0000AC710087D56B AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (7, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><CreateMandateRequest><AcctNumber>1020021016</AcctNumber><AcctName>JOHN SMITH</AcctName><TransType>1</TransType><BankCode>XXXXXXX</BankCode><BillerID>123</BillerID><BillerName>NIBSS Online Merchant</BillerName><BillerTransId>1045621</BillerTransId><HashValue>XXXXXXXXX</HashValue></CreateMandateRequest>', N'', N'ASMX', CAST(0x0000AC71008A89B4 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<CreateMandateResponse>
  <AcctNumber>1020021016</AcctNumber>
  <AcctName>JOHN SMITH</AcctName>
  <TransType>1</TransType>
  <BankCode>XXXXXXX</BankCode>
  <BillerID>123</BillerID>
  <BillerName>NIBSS Online Merchant</BillerName>
  <BillerTransId>1045621</BillerTransId>
  <MandateCode>CpayMD00000004</MandateCode>
  <ResponseCode>00</ResponseCode>
</CreateMandateResponse>', CAST(0x0000AC71008A8A8D AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (8, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><GenerateOTPRequest><MandateCode>0000000001</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></GenerateOTPRequest>', N'', N'ASMX', CAST(0x0000AC710099D77D AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<GenerateOTPResponse>
  <ResponseCode>09</ResponseCode>
</GenerateOTPResponse>', CAST(0x0000AC710099F971 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (9, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><GenerateOTPRequest><MandateCode>0000000001</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></GenerateOTPRequest>', N'', N'ASMX', CAST(0x0000AC71009A5B18 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<GenerateOTPResponse>
  <ResponseCode>09</ResponseCode>
</GenerateOTPResponse>', CAST(0x0000AC71009AA05B AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (10, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><GenerateOTPRequest><MandateCode>0000000001</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></GenerateOTPRequest>', N'', N'ASMX', CAST(0x0000AC71009B46A2 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<GenerateOTPResponse>
  <ResponseCode>09</ResponseCode>
</GenerateOTPResponse>', CAST(0x0000AC71009B9324 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (11, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><GenerateOTPRequest><MandateCode>CpayMD00000004</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></GenerateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100A78E81 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<GenerateOTPResponse>
  <TransType>2</TransType>
  <BankCode>000017</BankCode>
  <BillerID>1239032</BillerID>
  <BillerName>Konga</BillerName>
  <BillerTransId>10926172</BillerTransId>
  <MandateCode>CpayMD00000004</MandateCode>
  <ResponseCode>07</ResponseCode>
</GenerateOTPResponse>', CAST(0x0000AC7100A7EB01 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (12, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><GenerateOTPRequest><MandateCode>CpayMD00000004</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></GenerateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100A8DEF1 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<GenerateOTPResponse>
  <TransType>2</TransType>
  <BankCode>000017</BankCode>
  <BillerID>1239032</BillerID>
  <BillerName>Konga</BillerName>
  <BillerTransId>10926172</BillerTransId>
  <MandateCode>CpayMD00000004</MandateCode>
  <ResponseCode>00</ResponseCode>
</GenerateOTPResponse>', CAST(0x0000AC7100A915D3 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (13, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><GenerateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></GenerateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100A9AB0F AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<GenerateOTPResponse>
  <TransType>2</TransType>
  <BankCode>000017</BankCode>
  <BillerID>1239032</BillerID>
  <BillerName>Konga</BillerName>
  <BillerTransId>10926172</BillerTransId>
  <MandateCode>CpayMD00000003</MandateCode>
  <ResponseCode>00</ResponseCode>
</GenerateOTPResponse>', CAST(0x0000AC7100A9B3B2 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (14, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><GenerateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></GenerateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100B9C6AA AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<GenerateOTPResponse>
  <TransType>2</TransType>
  <BankCode>000017</BankCode>
  <BillerID>1239032</BillerID>
  <BillerName>Konga</BillerName>
  <BillerTransId>10926172</BillerTransId>
  <MandateCode>CpayMD00000003</MandateCode>
  <ResponseCode>00</ResponseCode>
</GenerateOTPResponse>', CAST(0x0000AC7100B9D7EE AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (15, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><ValidateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><OTP>996156</OTP><Amount>100</Amount><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></ValidateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100C9986B AS DateTime), N'', CAST(0x0000AC7100CACE00 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (16, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><ValidateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><OTP>996156</OTP><Amount>100</Amount><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></ValidateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100CB2A9B AS DateTime), N'', CAST(0x0000AC7100CB4A56 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (17, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><ValidateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><OTP>996156</OTP><Amount>100</Amount><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></ValidateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100CB8452 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<ValidateOTPResponse>
  <MandateCode>CpayMD00000003</MandateCode>
  <TransType>2</TransType>
  <BankCode>000017</BankCode>
  <BillerID>1239032</BillerID>
  <BillerName>Konga</BillerName>
  <BillerTransId>10926172</BillerTransId>
  <Amount>100</Amount>
  <HashValue>XXXXXXXXX</HashValue>
  <ResponseCode>19</ResponseCode>
</ValidateOTPResponse>', CAST(0x0000AC7100D0D2BF AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (18, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><ValidateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><OTP>996156</OTP><Amount>100</Amount><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></ValidateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100D1501E AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<ValidateOTPResponse>
  <MandateCode>CpayMD00000003</MandateCode>
  <TransType>2</TransType>
  <BankCode>000017</BankCode>
  <BillerID>1239032</BillerID>
  <BillerName>Konga</BillerName>
  <BillerTransId>10926172</BillerTransId>
  <Amount>100</Amount>
  <HashValue>XXXXXXXXX</HashValue>
  <ResponseCode>19</ResponseCode>
</ValidateOTPResponse>', CAST(0x0000AC7100D1B112 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (19, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><ValidateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><OTP>996156</OTP><Amount>100</Amount><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></ValidateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100D1C804 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<ValidateOTPResponse>
  <MandateCode>CpayMD00000003</MandateCode>
  <TransType>2</TransType>
  <BankCode>000017</BankCode>
  <BillerID>1239032</BillerID>
  <BillerName>Konga</BillerName>
  <BillerTransId>10926172</BillerTransId>
  <Amount>100</Amount>
  <HashValue>XXXXXXXXX</HashValue>
  <ResponseCode>19</ResponseCode>
</ValidateOTPResponse>', CAST(0x0000AC7100D22B18 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (20, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><ValidateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><OTP>996156</OTP><Amount>100</Amount><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></ValidateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100D2F1AF AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<ValidateOTPResponse>
  <MandateCode>CpayMD00000003</MandateCode>
  <TransType>2</TransType>
  <BankCode>000017</BankCode>
  <BillerID>1239032</BillerID>
  <BillerName>Konga</BillerName>
  <BillerTransId>10926172</BillerTransId>
  <Amount>100</Amount>
  <HashValue>XXXXXXXXX</HashValue>
  <ResponseCode>19</ResponseCode>
</ValidateOTPResponse>', CAST(0x0000AC7100D33682 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (21, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><ValidateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><OTP>996156</OTP><Amount>100</Amount><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></ValidateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100D37F27 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<ValidateOTPResponse>
  <MandateCode>CpayMD00000003</MandateCode>
  <TransType>2</TransType>
  <BankCode>000017</BankCode>
  <BillerID>1239032</BillerID>
  <BillerName>Konga</BillerName>
  <BillerTransId>10926172</BillerTransId>
  <Amount>100</Amount>
  <HashValue>XXXXXXXXX</HashValue>
  <ResponseCode>19</ResponseCode>
</ValidateOTPResponse>', CAST(0x0000AC7100D3CBF6 AS DateTime))
INSERT [dbo].[RequestResponseLog] ([Id], [RequestBody], [RequestUrl], [HttpMethodType], [RequestTime], [ResponseBody], [ResponseTime]) VALUES (22, N'<?xml version="1.0" encoding="UTF-8" standalone="yes" ?><ValidateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><OTP>996156</OTP><Amount>100</Amount><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></ValidateOTPRequest>', N'', N'ASMX', CAST(0x0000AC7100D4DDB2 AS DateTime), N'<?xml version="1.0" encoding="utf-16"?>
<ValidateOTPResponse>
  <MandateCode>CpayMD00000003</MandateCode>
  <TransType>2</TransType>
  <BankCode>000017</BankCode>
  <BillerID>1239032</BillerID>
  <BillerName>Konga</BillerName>
  <BillerTransId>10926172</BillerTransId>
  <Amount>100</Amount>
  <HashValue>XXXXXXXXX</HashValue>
  <ResponseCode>00</ResponseCode>
</ValidateOTPResponse>', CAST(0x0000AC7100D50B1A AS DateTime))
SET IDENTITY_INSERT [dbo].[RequestResponseLog] OFF
/****** Object:  Table [dbo].[MandateLog]    Script Date: 11/13/2020 10:37:42 ******/
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
	[DateUpdated] [datetime] NULL,
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
SET IDENTITY_INSERT [dbo].[MandateLog] ON
INSERT [dbo].[MandateLog] ([Id], [AccountName], [AccountNumber], [BankCode], [TransType], [BillerId], [BillerName], [BillerTransId], [HashValue], [MandateCode], [ResponseCode], [DateCreated], [DateUpdated], [IsCancelled], [DateCancelled]) VALUES (3, N'JOHN SMITH', N'1020021016', N'XXXXXXX', N'1', N'123', N'NIBSS Online Merchant', N'1045621', N'XXXXXXXXX', N'CpayMD00000003', NULL, CAST(0x0000AC710087D24B AS DateTime), NULL, 0, NULL)
INSERT [dbo].[MandateLog] ([Id], [AccountName], [AccountNumber], [BankCode], [TransType], [BillerId], [BillerName], [BillerTransId], [HashValue], [MandateCode], [ResponseCode], [DateCreated], [DateUpdated], [IsCancelled], [DateCancelled]) VALUES (4, N'JOHN SMITH', N'1020021016', N'XXXXXXX', N'1', N'123', N'NIBSS Online Merchant', N'1045621', N'XXXXXXXXX', N'CpayMD00000004', NULL, CAST(0x0000AC71008A89DA AS DateTime), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[MandateLog] OFF
/****** Object:  Table [dbo].[ExceptionLog]    Script Date: 11/13/2020 10:37:42 ******/
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
SET IDENTITY_INSERT [dbo].[ExceptionLog] ON
INSERT [dbo].[ExceptionLog] ([Id], [ErrorMessage], [ErrorStacktrace], [ErrorSource], [ErrorDatetime]) VALUES (1, N'An error occurred while updating the entries. See the inner exception for details.', N'   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at CentralPayPlusBridge.DAO.MandateRepo.SaveMandate(MandateLog mandate) in C:\AppCenter\projects\CentralPayPlusBridge\CentralPayPlusBridge\CentralPayPlusBridge\DAO\MandateRepo.cs:line 19', N'EntityFramework', CAST(0x0000AC7100817786 AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [ErrorMessage], [ErrorStacktrace], [ErrorSource], [ErrorDatetime]) VALUES (2, N'The conversion of a datetime2 data type to a datetime data type resulted in an out-of-range value.
The statement has been terminated.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<Reader>b__c(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.Reader(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()', N'.Net SqlClient Data Provider', CAST(0x0000AC7100872F75 AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [ErrorMessage], [ErrorStacktrace], [ErrorSource], [ErrorDatetime]) VALUES (3, N'Validation failed for one or more entities. See ''EntityValidationErrors'' property for more details.', N'   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at CentralPayPlusBridge.DAO.MandateRepo.SaveCentralPayOtp(CentralPayOtp otp) in C:\AppCenter\projects\CentralPayPlusBridge\CentralPayPlusBridge\CentralPayPlusBridge\DAO\MandateRepo.cs:line 106', N'EntityFramework', CAST(0x0000AC7100A7BEC0 AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [ErrorMessage], [ErrorStacktrace], [ErrorSource], [ErrorDatetime]) VALUES (4, N'<ValidateOTPRequest xmlns=''''> was not expected.', N'   at Microsoft.Xml.Serialization.GeneratedAssembly.XmlSerializationReaderGenerateOTPRequest.Read3_GenerateOTPRequest()', N'Microsoft.GeneratedCode', CAST(0x0000AC7100CACD3E AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [ErrorMessage], [ErrorStacktrace], [ErrorSource], [ErrorDatetime]) VALUES (5, N'<ValidateOTPRequest xmlns=''''> was not expected.', N'   at Microsoft.Xml.Serialization.GeneratedAssembly.XmlSerializationReaderGenerateOTPRequest.Read3_GenerateOTPRequest()', N'Microsoft.GeneratedCode', CAST(0x0000AC7100CB4A3A AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [ErrorMessage], [ErrorStacktrace], [ErrorSource], [ErrorDatetime]) VALUES (6, N'LINQ to Entities does not recognize the method ''System.Decimal ToDecimal(System.String)'' method, and this method cannot be translated into a store expression.', N'   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.DefaultTranslator.Translate(ExpressionConverter parent, MethodCallExpression call)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.TypedTranslate(ExpressionConverter parent, MethodCallExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.UnaryTranslator.TypedTranslate(ExpressionConverter parent, UnaryExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.EqualsTranslator.TypedTranslate(ExpressionConverter parent, BinaryExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.BinaryTranslator.TypedTranslate(ExpressionConverter parent, BinaryExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input, DbExpressionBinding& binding)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.OneLambdaTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, DbExpression& source, DbExpressionBinding& sourceBinding, DbExpression& lambda)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.FirstPredicateTranslatorBase.Translate(ExpressionConverter parent, MethodCallExpression call)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.SequenceMethodTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, SequenceMethod sequenceMethod)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.TypedTranslate(ExpressionConverter parent, MethodCallExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.Convert()
   at System.Data.Entity.Core.Objects.ELinq.ELinqQueryState.GetExecutionPlan(Nullable`1 forMergeOption)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   at System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__1[TResult](IEnumerable`1 sequence)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   at System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   at System.Linq.Queryable.FirstOrDefault[TSource](IQueryable`1 source, Expression`1 predicate)
   at CentralPayPlusBridge.DAO.MandateRepo.ValidateOtp(String mandateCode, String otp, String amount) in C:\AppCenter\projects\CentralPayPlusBridge\CentralPayPlusBridge\CentralPayPlusBridge\DAO\MandateRepo.cs:line 128', N'EntityFramework', CAST(0x0000AC7100CBBBFE AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [ErrorMessage], [ErrorStacktrace], [ErrorSource], [ErrorDatetime]) VALUES (7, N'DbComparisonExpression requires arguments with comparable types.', N'   at System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder.DbExpressionBuilder.CreateComparison(DbExpressionKind kind, DbExpression left, DbExpression right)
   at System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder.DbExpressionBuilder.Equal(DbExpression left, DbExpression right)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.ImplementEqualityUnknownArguments(DbExpression left, DbExpression right, EqualsPattern pattern)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.ImplementEquality(DbExpression left, DbExpression right, EqualsPattern pattern)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.RecursivelyRewriteEqualsExpression(DbExpression left, DbExpression right, EqualsPattern pattern)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.CreateEqualsExpression(DbExpression left, DbExpression right, EqualsPattern pattern, Type leftClrType, Type rightClrType)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.EqualsTranslator.TypedTranslate(ExpressionConverter parent, BinaryExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.BinaryTranslator.TypedTranslate(ExpressionConverter parent, BinaryExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input, DbExpressionBinding& binding)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.OneLambdaTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, DbExpression& source, DbExpressionBinding& sourceBinding, DbExpression& lambda)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.FirstPredicateTranslatorBase.Translate(ExpressionConverter parent, MethodCallExpression call)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.SequenceMethodTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, SequenceMethod sequenceMethod)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.TypedTranslate(ExpressionConverter parent, MethodCallExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.Convert()
   at System.Data.Entity.Core.Objects.ELinq.ELinqQueryState.GetExecutionPlan(Nullable`1 forMergeOption)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   at System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__1[TResult](IEnumerable`1 sequence)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   at System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   at System.Linq.Queryable.FirstOrDefault[TSource](IQueryable`1 source, Expression`1 predicate)
   at CentralPayPlusBridge.DAO.MandateRepo.ValidateOtp(String mandateCode, String otp, String amount) in C:\AppCenter\projects\CentralPayPlusBridge\CentralPayPlusBridge\CentralPayPlusBridge\DAO\MandateRepo.cs:line 128', N'EntityFramework', CAST(0x0000AC7100D16BE2 AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [ErrorMessage], [ErrorStacktrace], [ErrorSource], [ErrorDatetime]) VALUES (8, N'DbComparisonExpression requires arguments with comparable types.', N'   at System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder.DbExpressionBuilder.CreateComparison(DbExpressionKind kind, DbExpression left, DbExpression right)
   at System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder.DbExpressionBuilder.Equal(DbExpression left, DbExpression right)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.ImplementEqualityUnknownArguments(DbExpression left, DbExpression right, EqualsPattern pattern)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.ImplementEquality(DbExpression left, DbExpression right, EqualsPattern pattern)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.RecursivelyRewriteEqualsExpression(DbExpression left, DbExpression right, EqualsPattern pattern)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.CreateEqualsExpression(DbExpression left, DbExpression right, EqualsPattern pattern, Type leftClrType, Type rightClrType)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.EqualsTranslator.TypedTranslate(ExpressionConverter parent, BinaryExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.BinaryTranslator.TypedTranslate(ExpressionConverter parent, BinaryExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input, DbExpressionBinding& binding)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.OneLambdaTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, DbExpression& source, DbExpressionBinding& sourceBinding, DbExpression& lambda)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.FirstPredicateTranslatorBase.Translate(ExpressionConverter parent, MethodCallExpression call)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.SequenceMethodTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, SequenceMethod sequenceMethod)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.TypedTranslate(ExpressionConverter parent, MethodCallExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.Convert()
   at System.Data.Entity.Core.Objects.ELinq.ELinqQueryState.GetExecutionPlan(Nullable`1 forMergeOption)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   at System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__1[TResult](IEnumerable`1 sequence)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   at System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   at System.Linq.Queryable.FirstOrDefault[TSource](IQueryable`1 source, Expression`1 predicate)
   at CentralPayPlusBridge.DAO.MandateRepo.ValidateOtp(String mandateCode, String otp, String amount) in C:\AppCenter\projects\CentralPayPlusBridge\CentralPayPlusBridge\CentralPayPlusBridge\DAO\MandateRepo.cs:line 128', N'EntityFramework', CAST(0x0000AC7100D22B0A AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [ErrorMessage], [ErrorStacktrace], [ErrorSource], [ErrorDatetime]) VALUES (9, N'Unable to create a constant value of type ''System.Object''. Only primitive types or enumeration types are supported in this context.', N'   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.ConstantTranslator.TypedTranslate(ExpressionConverter parent, ConstantExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.EqualsTranslator.TypedTranslate(ExpressionConverter parent, BinaryExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.BinaryTranslator.TypedTranslate(ExpressionConverter parent, BinaryExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input, DbExpressionBinding& binding)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.OneLambdaTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, DbExpression& source, DbExpressionBinding& sourceBinding, DbExpression& lambda)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.FirstPredicateTranslatorBase.Translate(ExpressionConverter parent, MethodCallExpression call)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.SequenceMethodTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, SequenceMethod sequenceMethod)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.TypedTranslate(ExpressionConverter parent, MethodCallExpression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   at System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.Convert()
   at System.Data.Entity.Core.Objects.ELinq.ELinqQueryState.GetExecutionPlan(Nullable`1 forMergeOption)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   at System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__1[TResult](IEnumerable`1 sequence)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   at System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   at System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   at System.Linq.Queryable.FirstOrDefault[TSource](IQueryable`1 source, Expression`1 predicate)
   at CentralPayPlusBridge.DAO.MandateRepo.ValidateOtp(String mandateCode, String otp, Nullable`1 amount) in C:\AppCenter\projects\CentralPayPlusBridge\CentralPayPlusBridge\CentralPayPlusBridge\DAO\MandateRepo.cs:line 128', N'EntityFramework', CAST(0x0000AC7100D3341B AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [ErrorMessage], [ErrorStacktrace], [ErrorSource], [ErrorDatetime]) VALUES (10, N'The data types text and varchar are incompatible in the equal to operator.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<Reader>b__c(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.Reader(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.ExecuteStoreCommands(EntityCommand entityCommand, CommandBehavior behavior)', N'.Net SqlClient Data Provider', CAST(0x0000AC7100D3CAB8 AS DateTime))
SET IDENTITY_INSERT [dbo].[ExceptionLog] OFF
/****** Object:  Table [dbo].[CentralPayOtp]    Script Date: 11/13/2020 10:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CentralPayOtp](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MandateCodeId] [bigint] NOT NULL,
	[ReferenceNumber] [varchar](500) NOT NULL,
	[otp] [varchar](500) NOT NULL,
	[DateGenerated] [datetime] NOT NULL,
	[IsUsed] [bit] NULL,
	[DateUsed] [datetime] NULL,
	[Amount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_CentralPayOtp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CentralPayOtp] ON
INSERT [dbo].[CentralPayOtp] ([Id], [MandateCodeId], [ReferenceNumber], [otp], [DateGenerated], [IsUsed], [DateUsed], [Amount]) VALUES (1, 4, N'014f9a50-1b14-4fe3-88e8-fe355316ae70', N'154398', CAST(0x0000AC7100A906D2 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[CentralPayOtp] ([Id], [MandateCodeId], [ReferenceNumber], [otp], [DateGenerated], [IsUsed], [DateUsed], [Amount]) VALUES (2, 3, N'fd482360-fe1e-4d93-a61e-6698333bf3c1', N'298483', CAST(0x0000AC7100A9B3A9 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[CentralPayOtp] ([Id], [MandateCodeId], [ReferenceNumber], [otp], [DateGenerated], [IsUsed], [DateUsed], [Amount]) VALUES (3, 3, N'09d79f99-6b58-42a4-8e12-c413509e483e', N'996156', CAST(0x0000AC7100B9D707 AS DateTime), 0, NULL, CAST(100.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[CentralPayOtp] OFF
/****** Object:  ForeignKey [FK_CentralPayOtp_MandateLog]    Script Date: 11/13/2020 10:37:42 ******/
ALTER TABLE [dbo].[CentralPayOtp]  WITH CHECK ADD  CONSTRAINT [FK_CentralPayOtp_MandateLog] FOREIGN KEY([MandateCodeId])
REFERENCES [dbo].[MandateLog] ([Id])
GO
ALTER TABLE [dbo].[CentralPayOtp] CHECK CONSTRAINT [FK_CentralPayOtp_MandateLog]
GO
