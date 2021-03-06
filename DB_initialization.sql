USE [tstwesite1]
GO
/****** Object:  Table [dbo].[tst_prize]    Script Date: 2016/6/16 星期四 上午 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tst_prize](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prizename] [nvarchar](50) NULL,
	[prizelevel] [int] NULL,
	[prizenumber] [int] NULL,
	[createdate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tst_userinfo]    Script Date: 2016/6/16 星期四 上午 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tst_userinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usercode] [uniqueidentifier] ROWGUIDCOL  NULL,
	[tstcode] [nvarchar](50) NULL,
	[tstcount] [int] NULL,
	[cookiestate] [int] NULL,
	[createdate] [datetime] NULL,
	[cookiedate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tst_userrecord]    Script Date: 2016/6/16 星期四 上午 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tst_userrecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usercode] [uniqueidentifier] NULL,
	[winlevel] [int] NULL,
	[iswininfo] [int] NULL,
	[createdate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tst_winningrecord]    Script Date: 2016/6/16 星期四 上午 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tst_winningrecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usercode] [uniqueidentifier] NULL,
	[username] [nvarchar](50) NULL,
	[usermobilephone] [nvarchar](50) NULL,
	[useraddress] [nvarchar](500) NULL,
	[prizeid] [int] NULL,
	[createdate] [datetime] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tst_prize] ON 

GO
INSERT [dbo].[tst_prize] ([id], [prizename], [prizelevel], [prizenumber], [createdate]) VALUES (1, N'玫瑰金', 1, 0, CAST(0x0000A5970151EE98 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tst_prize] OFF
GO
SET IDENTITY_INSERT [dbo].[tst_userinfo] ON 

GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (518, N'bf9fee45-3d37-4c1b-9d18-f7b1e5de938b', N'OAH', 12, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (519, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', N'OAO', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598016B54CD AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (520, N'a9bc73f6-6b33-4fc1-80f9-f7b29ea01313', N'OAL', 16, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (521, N'3277689f-01a9-45b4-a939-5b2aa2262228', N'OAA202', 10, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (522, N'2e1d7c94-b0b1-4b69-add9-291148a2e046', N'OAP', 8, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (523, N'3dedfb89-9e46-45c8-8dc4-17a2e54efaec', N'OAI200', 7, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (524, N'0c73ba31-0a29-4dbb-bb96-c08a62658d7f', N'OAJ', 6, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (525, N'8409d600-fb0f-4c3a-9b4a-64cdcdaba6c3', N'OAE202015', 6, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (526, N'ae3e1baa-1c58-4d8e-ab35-0b6889a4093a', N'OAE106006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (527, N'ad2336d4-4f6e-4932-8a2f-7eab71d1f513', N'OAE105', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (528, N'51c0d23f-ea71-4d9d-8b72-d0af6e85d35a', N'OAQ', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (529, N'e827a64a-a255-482c-aa4c-5b2b0b5fb894', N'OAF', 5, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (530, N'8195a4b9-e17e-4a4f-b6a0-56a9bf871755', N'OAE203008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (531, N'140a994f-2ca2-4b43-aaad-d80dff4eaa1e', N'OAB', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (532, N'a18e0fab-6999-422a-9418-5cf0b0d83239', N'OAR201', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A59801572192 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (533, N'e4279b18-d856-4a50-9bf9-f01f0614d79f', N'OAG', 3, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (534, N'6b539868-2220-48b1-a757-05d0f2011114', N'OAK', 3, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (535, N'53c76f06-e244-4227-9358-e1fc6fd2ce5d', N'OAR300006', 2, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (536, N'deb0d22d-a247-4cbc-873a-6b058dc6e831', N'OAT', 2, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (537, N'e49419d0-2971-4558-812a-bb42ac436a92', N'OAG300049', 2, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (538, N'ed25bcde-c31c-4ffb-9acd-87d04774c0fb', N'OAR101', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598016AE2AC AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (539, N'47ba5b87-769a-43eb-a4ee-98c43bf44efc', N'OAE105003', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598014A00D6 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (540, N'235fc8d4-1fe1-4fc6-82b9-27135abf3619', N'OAR300013', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (541, N'744f8721-bedd-418e-b06d-fff3f602630e', N'OAE107', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598014D9A18 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (542, N'3ecb7a2d-e881-40bf-8e46-84093578eb74', N'OAE300016', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598014ED554 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (543, N'7eb82d62-b51c-48fc-8e08-54f971459a53', N'OAE106001', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598014A2703 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (544, N'148e7b4c-f9fd-4b9f-ba0a-88bdb3e9565b', N'OAE101', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (545, N'c9e88875-fdd8-4462-98b9-e261d76f4b28', N'OAU', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (546, N'5f127e53-5623-4af0-84be-35734efd341f', N'OAE105001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (547, N'da5cb181-614f-4fd3-8f84-ac6fd23b55e7', N'OAE102002', 1, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (548, N'31d080f0-0053-439c-b887-1353b5cdcc78', N'OAE104003', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598016DB1ED AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (549, N'4743a34b-d852-4a23-bb36-b8eeb7a0a59a', N'OAE109', 1, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (550, N'194d67d3-f46a-48e7-bf8d-267e3c5cdf24', N'OAA', 1, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (551, N'889e43c8-fd0a-4c1f-8223-9adbb3cf1318', N'OAE300022', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (552, N'caf5231d-b451-45e8-8f1e-9c5eecb5f403', N'OAE202014', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (553, N'd9b76a28-0801-450a-8e9c-fa20cf782201', N'OAE106002', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598014B0D66 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (554, N'9171a216-49d0-48ca-a053-6491a4dc21b9', N'OAE108007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (555, N'609972fc-b64b-480c-9a44-17eccf48b53e', N'OAE202009', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598015053E9 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (556, N'0a9c9d96-2a98-4f5a-9111-fa0787883183', N'OAE105004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (557, N'973d340d-e4ab-408b-869b-ed31609d0a6f', N'OAR300016', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (558, N'095a4378-de10-437c-a785-250abae61a37', N'OAE105005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (559, N'51d10677-c496-40c0-a0da-b0f3aa159c51', N'OAE103', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (560, N'2320421f-c377-4494-bb04-a46b0009abe7', N'OAE101002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (561, N'a36a69f2-7f94-457f-b775-f40de652678c', N'OAW201003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (562, N'bd5b00f5-06cb-43c2-97fb-4800b229e83d', N'OAE108001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (563, N'bce544aa-5e09-4b14-86e1-c2671d420303', N'OAE203013', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598016583F8 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (564, N'd7ec82bd-395c-4e6d-b33f-9b0bbca71f93', N'OAE', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (565, N'6ef2bd97-027d-4aff-b460-dcb882746092', N'OAY200', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (566, N'f675db1c-c26b-4e93-8057-ceccbfd9b68e', N'OAN300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (567, N'7e92de1b-d439-4a54-aecf-31cf785fc093', N'OAE106004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (568, N'52bd6552-964f-4408-b994-ae4ad8166d46', N'OAL202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (569, N'9b3dc716-87ca-419b-a38e-4850f83068c6', N'OAN200', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (570, N'9f88cd41-99d6-4b1d-99d3-7648b0487c5a', N'OAN202001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (571, N'0f92e6ac-59fd-41a4-b31c-5acc99b483dc', N'OAE300021', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (572, N'75fb1c87-5341-4d89-b4e4-4cb56a31232a', N'OAE201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (573, N'bbc586e3-69bb-4fa3-bae6-9e05aa8e692a', N'OAL201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (574, N'0df41cb0-9712-4f5a-8a6e-99c98efb5959', N'OAE108005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (575, N'99fc07a6-b5bd-4a85-a307-4bc3db577a8f', N'OAE106005', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A5980150B861 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (576, N'03dc3b54-5955-40ad-9540-1fbb09966045', N'OAE108004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (577, N'50534b5c-c3cd-4783-b830-8d0206021d74', N'OAE101004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (578, N'652dae1a-14a8-4da6-906b-bf7725f48f40', N'OAR', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (579, N'cf91680d-b8aa-4c41-8b07-795b789c260e', N'OAS101', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (580, N'3e229a47-4ff3-44ca-9318-c4a62967c18a', N'OAE203010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (581, N'0cf8a40c-faae-4340-997c-a5fe8df69e94', N'OAL203', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (582, N'4746296d-187a-48e1-927d-b352dcf64b55', N'OAR300017', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (583, N'1e5a168a-0f83-4320-8693-fc0e4a2a81e1', N'OAR300023', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (584, N'e7473a5d-e2f5-462f-b879-9d8fd5ebd84a', N'OAE104', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (585, N'c102c402-11b7-4768-a97a-f0d8c1c8b37d', N'OAM202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (586, N'4024775b-49cd-428a-8003-f984b01bc33d', N'OAR300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (587, N'40d1834c-41fd-4612-8d7b-b3764d92aeb4', N'OAH201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (588, N'473756a9-96fe-48dc-80ac-64d09a49d475', N'OAE203015', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (589, N'c71592ba-1824-4818-9acb-1b19fec33089', N'OWW801', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (590, N'4b507213-166f-4a54-8d36-5335ce9382ee', N'OAE203003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (591, N'db355827-ea21-48cd-8a09-c3c4a2c38724', N'OAE110', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (592, N'b8c68b17-609a-4e2e-bb37-0540d457714e', N'OAE101001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (593, N'f9d10807-9eab-4a5a-8879-5612376e69d1', N'OAE203002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (594, N'f436e534-7b01-4e49-b256-7c130ff84ff0', N'OAR300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (595, N'6b9c1cd8-1a48-4d5d-8fb7-01071cf2ee23', N'OAU104', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (596, N'654fe2b2-fb5a-41d7-878f-d9fdd66e5275', N'OAD101', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (597, N'78d6a491-3b25-4f7e-839e-a6f8a2e37bdf', N'OAE102', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (598, N'0c4a6060-b051-4a59-b9e0-8e2cb1b87cc9', N'OAD102', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (599, N'5b5555cf-e375-4e33-a44d-1695ee9cdadb', N'OAS201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (600, N'6c6c2e42-2380-474e-be21-94edc01d0f77', N'OAA201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (601, N'7fb39f4c-b37f-485e-b5c8-d35e521e4a33', N'OAW', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (602, N'e5fb1c61-8a32-4637-948b-4f465bf28c66', N'OAC', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (603, N'ecad7321-a0db-4076-a221-62a7650c3643', N'OAR300022', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (604, N'1671302d-0550-4205-9ac3-2a9618d155f2', N'OAE300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (605, N'10603138-15f9-47e1-b88a-b64d44230b01', N'OAM102', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (606, N'5d8e0f9e-9344-4bca-87e8-d91cf8f2c411', N'OAS201001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (607, N'fdc5bb39-c7f3-4922-8284-e700ba86d058', N'OAT201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (608, N'9af7f5de-6556-4718-9cce-dec4f8f2b56c', N'OAL205', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (609, N'bb50f6c7-3bf0-4384-b8d6-0ed22523056c', N'OAR300028', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (610, N'c299e606-8f22-44c5-ac61-6f515cce79b8', N'OAR300012', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (611, N'a9aeeb08-eca6-4477-af0a-42b04c1fc95c', N'OAX200', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (612, N'f684847c-49bc-4e87-a7ca-9f219ecd24e2', N'OAE300030', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (613, N'71ffb98a-986d-415d-98b7-4410702219ed', N'OWW801001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (614, N'cd2770b4-f540-48b3-92ce-4bb91b3c048d', N'OAP300006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (615, N'30e22877-3e80-43f1-8a26-ec7082911fc5', N'OAE300028', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (616, N'd1d09de7-f2c1-4952-baad-659a4917661c', N'OAL201002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (617, N'55665fa1-f7f1-41ee-8645-9fa140685557', N'OAU101', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (618, N'af83856f-4c5a-4ba8-ad34-041cf2c54bba', N'OAE108006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (619, N'c07de81a-60cb-44b8-a04a-c7752d590863', N'OAR300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (620, N'6154320f-f31f-485d-aba8-278104883a9b', N'OAD', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (621, N'ebae4bd5-c09c-4386-a8e0-5338bbbb206c', N'OAR300010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (622, N'b41fab94-7b63-468f-9b0f-83e8860c1a57', N'OAR300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (623, N'7f9b5f95-ce13-4ce0-baec-2660b8c239a1', N'OAN300006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (624, N'3b469381-d03e-4db1-b451-6e5e135f7374', N'OAS300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (625, N'990c4cf6-9c1d-4641-a30e-8df0331aa1f7', N'OAO101', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (626, N'fb0ea5a0-75b9-4eea-9fda-ddf1d6134ae2', N'OAE108', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (627, N'66701508-a7f5-4a06-be7a-f6e912a247de', N'OAE202003', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A5980156E30A AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (628, N'2147864e-bc6d-4c9b-8b88-63d8b7458826', N'OAE203009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (629, N'f658e434-9fd5-458a-93e4-456f7f325ab1', N'OAE202005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (630, N'217562e0-47fb-4be3-8b30-6d447c49da0c', N'OAN202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (631, N'95909ced-cccc-42e4-bdfd-777ca53402b1', N'OAS', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (632, N'5c8a91e0-6bab-4ccc-9a7c-4615d273d5b8', N'OAR201002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (633, N'9cbacf9c-2a8e-42a3-8ecd-be2480fae29f', N'OAE106', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (634, N'a818bfc0-e1e4-430d-88e4-635485e16993', N'OAE108002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (635, N'a77c0b8f-3aa9-479e-9a7e-ad1dd78edcc0', N'OAE300017', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (636, N'4031b6b4-661c-49aa-b462-cbb24263d67e', N'OAE203014', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (637, N'8380bf1e-1a10-4c8c-9b10-42beda6f7bb7', N'OAE202011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (638, N'09f02fa4-9bd1-4090-91f0-9378d9af788e', N'OAN300009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (639, N'44be7db6-5ea7-4e64-abb7-ec8905595cb9', N'OAV200', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (640, N'373f54b3-fe91-4175-96c6-7fee4a2bf10f', N'OAE108009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (641, N'4abe31a7-258f-43d7-a32d-67f0a2793ca9', N'OAH201005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (642, N'5910441d-22ce-4fa1-ada1-0576df4f5908', N'OAE203019', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (643, N'f7b33b2c-c279-4e0f-ad60-7cb844a24c2b', N'OAE104007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (644, N'aa5bc4f3-7132-4afc-b59c-d2fa47a63649', N'OAA300036', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (645, N'1a1ecdae-e2a0-4e41-b69b-ca65a0a9f20e', N'OAR300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (646, N'c6c576a5-80be-41b5-aed3-271db2f30c80', N'OAE102005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (647, N'925a6888-b5d7-4fe8-85c9-6e1936836324', N'OAR300014', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (648, N'15a940bb-81c2-4112-9931-79ce7e2a4b05', N'OAN300011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (649, N'1502d1e3-3cba-4090-9c33-12af71091683', N'OAE102001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (650, N'60cb3590-8dca-4572-9e8b-03d249560e39', N'OAE102006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (651, N'089e3205-e378-4ac7-91ce-ea837f81edc3', N'OAI201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (652, N'8d47ecef-2030-4417-9a23-5d4c44a3e1d2', N'OAE203012', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (653, N'0ebf8273-c9ba-49ce-9e6a-62a8c3ad029e', N'OAI201003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (654, N'a33d1872-a839-46d6-bb70-e4530c7c8c76', N'OAE106010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (655, N'e982c34a-8c7c-40c8-b23e-84fd3d60e02d', N'OAA300035', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (656, N'636abc45-3be6-4e90-9abf-fab25e0dc234', N'OAE102004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (657, N'7231a372-57c8-41ad-a40b-ab3e4e0f0e1d', N'OAR300018', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (658, N'ffe9ab4e-9999-46a6-b8c8-96eca8704a1e', N'OAE203001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (659, N'b4dbecc2-9a81-4f4d-a6b6-1f5e479f24d5', N'OAE300018', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A5980175FB89 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (660, N'73d2a571-cf0f-4c9a-8d59-fe82584b14a0', N'OAS201003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (661, N'032196cd-1b56-471a-81ab-a9404cd8f57d', N'OAH201001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (662, N'50e308b3-cd9e-4fa8-9ff5-71158c1c533f', N'OAP300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (663, N'bf72eb00-855f-4961-ab7e-12d47479d694', N'OAP300013', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (664, N'6261dd12-d893-4caf-886c-38c1bb2a0d4b', N'OAS103002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (665, N'49ee94f6-600c-4af1-94fe-13a4a3700717', N'OAH201010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (666, N'185c1f5c-9792-41eb-bd6a-6184b0595963', N'OAR300020', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (667, N'db312ac1-2fec-462c-9694-29d484ac8555', N'OAE106007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (668, N'6375fa37-0352-4810-8dfb-478202976b0a', N'OAI300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (669, N'57255ee0-d119-4c55-8067-b3a737c91dbb', N'OAA300023', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (670, N'21ad23e3-32dd-4a82-a910-0359e9ba1f6e', N'OAP300009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (671, N'568a2ed2-a64b-436c-84c1-d0ba5a896316', N'OAR102002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (672, N'bd30cb12-5c24-4cf4-abd9-4f1a48ad414d', N'OAF102', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (673, N'95335409-383d-4e58-9aba-e8bd38622d3a', N'OAF204', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (674, N'66f1a77b-c990-4f55-937a-5da4b473c7c6', N'OAA201005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (675, N'1947c794-908b-4bf3-9f07-1254586c0a74', N'OAR300015', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (676, N'322adbe9-c771-4f01-a961-9446aabf5768', N'OAI101', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (677, N'3decded5-18d3-4f03-a16e-e2e689aa2903', N'OAP300010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (678, N'07767099-fb0f-4cc1-97fe-a24dab80b338', N'OAN300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (679, N'c0e3a0c5-0abd-4b77-8e5c-64a73e59e6c8', N'OAE105002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (680, N'6d5a4283-0ae7-43f1-b7eb-ebc0db4774c4', N'OAP300014', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (681, N'f43a799f-6af6-4901-877d-1815816a72f3', N'OAL202001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (682, N'8bc41ee6-f53e-4336-a832-687428a07cd2', N'OAR300009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (683, N'c2654542-82f4-4844-9840-98814137fffb', N'OAK300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (684, N'a0530450-0032-4b66-90a9-cb4af35a6a43', N'OAE105006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (685, N'275ba492-7902-4711-b982-4ef6f48795ef', N'OAS201002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (686, N'64c28f03-0243-4a7e-bc4f-836218906c51', N'OAG101', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (687, N'24c2da8b-1d63-4e33-9e0d-21d18519ac71', N'OAG300039', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (688, N'c17d4fea-bf9e-4b22-b346-88de8eed059a', N'OAK300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (689, N'74b44e95-a3de-4bf4-b530-241baebe5aa4', N'OAE109002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (690, N'0257b40a-3429-44a1-8053-75ec67c9f7f0', N'OAE202012', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (691, N'3f9098be-faf0-4121-aa57-69a59ba98224', N'OAE105009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (692, N'0f292abc-14e4-4204-b668-054d9f15f048', N'OAB300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (693, N'8060e8d3-cffe-4251-ba21-3860334d839b', N'OAE201007', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598015057A5 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (694, N'92c5bd04-e446-4d0b-a80a-b81622a318f5', N'OAF202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (695, N'f755329c-b849-4c70-b6ec-f304165056f7', N'OAR300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (696, N'd3c8406d-a8fa-4b9a-bf83-0f9633a5c563', N'OAR102005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (697, N'3d080444-1d77-4317-8281-0b92cae396cf', N'OAE109004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (698, N'14da2e8d-d532-4966-b7da-676bdf826c3e', N'OAE300011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (699, N'5f6ef1d3-2531-4b4d-b215-65bd35533c68', N'OAE300012', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (700, N'2a17c1f4-2538-4e4a-9cd5-0bb3fdd7bc87', N'OAW300015', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (701, N'63c7a3f1-bb2a-49e4-8072-31ae428b2825', N'OAA300009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (702, N'730011b9-b64c-4314-a236-48ff4d6effaf', N'OAE300019', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (703, N'4223e644-09a4-46f5-bf7a-4b88a1d2eef0', N'OAL201001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (704, N'793f6251-9dd2-44a6-ba17-c26a111dfc42', N'OAG300025', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (705, N'c1e9907a-694c-451f-a937-615caea67e01', N'OAS103', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (706, N'ec39ef4d-3eb2-4084-ba28-a9a32f05bf32', N'OAA300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (707, N'e61edf38-8915-42ad-a170-0a8c8a410cf7', N'OAR300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (708, N'8dfb2482-449a-4b20-af86-55421cbf7c5e', N'OAG300031', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (709, N'ab86bfa6-dbb8-463b-ae57-0db04e4b5370', N'OAD300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (710, N'c141e460-fc6c-4a58-bf60-f79c530cb12c', N'OAG300019', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (711, N'd85c06ed-7646-444f-b655-7d7c3ce184ed', N'OAG300044', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (712, N'29463b4b-4692-4385-9d9b-d9d025049ef2', N'OAM101', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (713, N'c86e463d-24ba-4317-a265-9c717de75901', N'OAG300038', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (714, N'e771294c-83f6-4867-a84f-dbc253117e18', N'OAE203018', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (715, N'4b235ad2-2ac2-4e29-817b-6839c478acb7', N'OAA102', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (716, N'041421b3-5ff2-401f-83f5-9380c8b2b571', N'OAT203', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (717, N'7e6cbf06-8c34-4217-9a46-da9aec4221cf', N'OZZ801001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (718, N'bf848653-dbda-40b0-8384-e3f92faf5ce4', N'OAE202013', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (719, N'52d6badc-e5ef-4cca-b18d-49c583cb6f3f', N'OAH201004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (720, N'c151f692-f3ab-41d9-a4af-23de68aea035', N'OAN201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (721, N'1b5ef872-2cdf-4c64-8d06-7cd9c58c1315', N'OAH300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (722, N'166a6c70-9851-4a3e-82d1-2d334d9fa7b4', N'OAR300025', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (723, N'b749295f-06b9-4899-87ab-e2f47dede211', N'OAD300006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (724, N'7ec89b63-aa50-4570-8f85-cda9936d208e', N'OAL300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (725, N'f966a146-20dc-496c-93af-afa4f3fd9f93', N'OAE104004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (726, N'73e8c899-f3df-4ee2-a7e9-06ccfe076dfd', N'OAM201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (727, N'8b6e0cfc-abb6-4309-b47d-c5d54dc95d6a', N'OAE203005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (728, N'dcb1f862-7a81-435a-b909-b483fb920aee', N'OAN300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (729, N'4e272531-cdb9-40a2-abce-5635e7dccddd', N'OAE201009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (730, N'957986e7-2ea7-4326-bcc4-9c23345af6b1', N'OAG300041', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (731, N'a563560f-c8c7-46c2-b9be-ae762470c2b5', N'OAE109005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (732, N'1b80a0d2-2b8c-4153-b943-0a98ac7354a8', N'OAL201006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (733, N'4f92719f-948e-4624-8496-94da9bf22696', N'OAG300051', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (734, N'dcf019ba-9328-4588-9f70-a70abcde8f22', N'OAI300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (735, N'a0697c84-483d-464a-aca5-678298904b96', N'OAF201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (736, N'e7394ce7-12e0-482e-a043-57f11f7ba18f', N'OAW101', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (737, N'1c5b660e-527f-41dc-9e92-2a00da95f8e7', N'OAW203', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (738, N'4a1fe168-21ab-404f-84e8-7f22899cece2', N'OAG202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (739, N'ec70eb45-abb4-47c4-9326-b7c1f2662a94', N'OAK300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (740, N'd45a9178-a91d-4fcf-9c4b-68dcccd2709d', N'OAK300011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (741, N'2e4a2e52-14ba-49ec-ada9-fe0889a749ee', N'OAW201001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (742, N'2a746568-19bd-4e33-80d7-cb01964e3f69', N'OAP300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (743, N'020b62ed-c526-4f98-b35b-7c9ad4cdc886', N'OAU102', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (744, N'75bbccf2-0820-4682-b358-b79cc20715d8', N'OAS201004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (745, N'b23530b9-122f-4c5a-bc75-589e7dd9666b', N'OAC300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (746, N'4731bde1-136e-48ea-a7b5-b1497ff3e8e0', N'OAE201005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (747, N'd344f023-6336-4af9-b092-3e05ee17f749', N'OAA300019', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (748, N'e7519e9c-8757-40d3-97ef-fb4e6a3c42f7', N'OAL201004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (749, N'c5a268fd-301a-4be8-9318-3a72e6f342ca', N'OAR201001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (750, N'6a4049c8-c53d-4cd3-b1ec-1b024b9d7b8c', N'OAG300028', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (751, N'ea12df40-9116-4393-95e1-5e459d00703e', N'OAG300046', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (752, N'94e3b317-6092-419b-af0d-a84d421c2072', N'OAT202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (753, N'4e168207-916d-45b7-94fc-06a497041c9d', N'OAR300026', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598015A48C2 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (754, N'da47c753-7807-483a-80d5-5bdce0e16dc9', N'OAE202004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (755, N'6b441abe-171c-4c03-bd3a-f71ff5d2b692', N'OAE104010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (756, N'5da85297-6d40-4fcc-a131-96b42d354147', N'OAE105008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (757, N'356489c8-3876-48df-845b-93cac7b4074d', N'OAG300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (758, N'e52c0002-d99e-4348-bbfe-ba3eb36c6d35', N'OAE109001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (759, N'3046e985-5994-4edf-94fc-b021092f7718', N'OAX201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (760, N'a2744e92-0677-451b-9424-9742de5257ad', N'OAE106009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (761, N'b1f54d9d-5bc7-4fa5-9088-bb8413ba3cbe', N'OAR300011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (762, N'8d6f54f1-36ae-4eef-8b80-ad1caa254115', N'OAW203003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (763, N'60cadddd-46a2-4223-bee4-f509b19052a5', N'OAK300010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (764, N'03326652-f005-4d1a-aaab-91fe2a06dcea', N'OAE203016', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (765, N'9bb62b4a-c413-4b85-a6a4-066dc5e86ddb', N'OAA300010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (766, N'f453ee19-7c46-40da-9c34-998b5ad84321', N'OAA300031', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (767, N'd593e7c5-febc-45ec-84ac-69e82b59347d', N'OAE203', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (768, N'6345d600-3b7d-4a5d-a62b-37bfbbd697f0', N'OAP300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (769, N'61d3ca11-eb26-4f16-9e6d-06e9ac92b4c2', N'OAK300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (770, N'c697f56d-3103-40a2-bba6-c0d3ced408e7', N'OAE105010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (771, N'0384f866-a3df-4caa-a4fe-f51fbbfad2fe', N'OAG300024', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (772, N'e3e59daa-df45-4597-a7bc-4761c6e48810', N'OAE202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (773, N'326fca78-a9e9-499f-9794-f6805930a9ad', N'OAE202001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (774, N'aeefcb0a-6314-4ec1-a1f2-eed52a6644d0', N'OAG202001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (775, N'7cdb8dc1-92fa-4656-8e34-6f3cec803ebd', N'OAE109007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (776, N'037d65d1-5b2d-4e0b-bab7-ba57af49235d', N'OAP300011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (777, N'2eb6c6c6-bcdb-4366-806a-719996a49c60', N'OAI203', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (778, N'1421d4f2-a99e-45aa-9a55-9be485634931', N'OAH201002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (779, N'2aa8ae42-38c5-4907-ba5d-7f3f7abcc773', N'OAA300043', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (780, N'23af9320-df6f-4359-9a67-ce0e696f2eb3', N'OAE203011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (781, N'7f8d7e76-a3d5-41b8-9531-850f48ffd65b', N'OAR300024', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (782, N'b77f2d9d-8388-45d0-9321-96864656e1de', N'OAA300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (783, N'418b5dcd-cca5-4087-a025-8ffc74d96c87', N'OAG300016', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (784, N'96b5ee08-c027-4e84-be95-f4598b2e023d', N'OAH201008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (785, N'5fc5fcaf-d957-4f5b-b7fc-91167ad30427', N'OAX202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (786, N'77792cf1-f863-42c8-b39f-25adff557fe6', N'OAG300045', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (787, N'7b460f36-849a-4fec-b828-5a3ffa013627', N'OAE102003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (788, N'1c32a274-9562-488e-8d73-8cea5848c4a1', N'OAE201010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (789, N'a66dc474-3c95-4f8f-be71-083b59934189', N'OAA300042', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (790, N'11e1473a-9238-4f05-93ac-d5d4307a1bfd', N'OAE109003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (791, N'fd755944-843c-4f68-824c-a316f08406aa', N'OAP300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (792, N'87a3e258-90f8-4108-901d-f89157c5f675', N'OAG300020', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (793, N'722d55ea-a257-4af2-9862-473b683b0339', N'OAG201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (794, N'a6bcc0ea-32a7-4bd0-a375-2c670011a7cb', N'OAP300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (795, N'55dbbaca-92c1-4450-8f36-1fc4ab8a45c8', N'OAI202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (796, N'5c29a390-103d-422f-879b-9dba369a1cda', N'OAE109006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (797, N'89a7d7e1-47e2-4d22-ad5d-b049b3dc6847', N'OAG300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (798, N'96ffa132-4082-417b-a3d7-e2ff1782f9d2', N'OAE203017', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (799, N'bd68764b-76e0-41b3-a588-b55f4d1e0a98', N'OAE203007', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A598014DF098 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (800, N'129c39f5-1882-46eb-8a5d-01249666044e', N'OAE300025', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (801, N'042a92e9-c05c-4147-8366-62aa7125f574', N'OAE202007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (802, N'a8cfea58-4349-4866-9907-73f72b5da212', N'OAL201005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (803, N'bda53d6d-cb21-49fa-8839-438f38610784', N'OAA300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (804, N'5ca77b67-17ec-41d9-b096-3478d5f295a7', N'OAG300048', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (805, N'9b194f3b-cf15-4c89-898e-cea23a0607a3', N'OAP300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (806, N'97d50de3-72ec-4d6a-b11c-653d63838e80', N'OAE300027', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (807, N'ff699605-0d93-4d8e-8b22-b6392ef5deb0', N'OAP300016', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (808, N'ec8747ee-bb3d-4a19-bf00-291fea825601', N'OAK300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (809, N'06f657a9-77f9-4fb3-a4bc-d2e0cf4591c2', N'OAK300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (810, N'6c5f6462-2bd0-4d67-b91b-8b7690457e20', N'OAF203001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (811, N'58fcf723-9489-4b0f-9039-e69ef9d1b71a', N'OAN300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (812, N'17424d4d-bdfc-492c-b440-d931cbd8cc52', N'OAK300009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (813, N'8e436964-6668-43da-99b2-3065c7d44c1c', N'OAG300012', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (814, N'0e49bfcb-ff6c-46d0-8480-6dc13d25f6fb', N'OAG300010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (815, N'92397bc1-1d05-45c2-b400-a7a93671cd45', N'OAB300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (816, N'634cbe72-913f-45eb-adc5-523b8400de64', N'OAM103', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (817, N'dc7d55ef-112b-4a09-b11b-9b1c1afbc7fe', N'OAE202010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (818, N'ebba5fe1-6287-4e39-a0d2-3e33cb1f6105', N'OAK300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (819, N'7d53cb46-4df2-4180-8d71-3076e675e66f', N'OAE202016', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (820, N'78580f2c-33be-4bb4-91f9-1f65cf507ae6', N'OAG300033', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (821, N'e504ec14-8b0f-4156-8374-70d6b090865b', N'OAE106003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (822, N'b4841a8d-c40c-490b-84d3-afe4a8295881', N'OAA300044', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (823, N'724131a6-3bc3-420b-b82b-b47bae8aba73', N'OAN300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (824, N'384697c8-ff73-4335-8ac4-aa8bd81e956a', N'OAH201003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (825, N'8d4009d6-4f50-4356-a7bf-c9ef73b38a09', N'OAR102003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (826, N'27f000f9-433a-4322-b326-11d2d1ed2526', N'OAE108008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (827, N'5f69f6fd-37da-4036-a098-1e4ca28948aa', N'OAP300023', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (828, N'204d594e-e0b6-48f0-938b-cc25db1a86f7', N'OAI300010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (829, N'e23ca911-b2f2-4846-bc6a-74c2a7823b52', N'OAY300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (830, N'0614ac6f-6d7d-4701-94be-bd115a7742c3', N'OAW300009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (831, N'b19429e2-e5d6-4418-b9fb-17176f3bf367', N'OAE108010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (832, N'01c1d04b-9226-44bf-a27e-4b03d6544762', N'OAD300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (833, N'13b310d7-eb13-430c-9b28-4e785354777c', N'OAE108003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (834, N'1dc12c86-f0e2-4064-9a88-70bd92002f07', N'OAF300006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (835, N'ea4d8dbf-7ee2-4af8-bc0a-2f2f7a81e14b', N'OWW801002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (836, N'b78850c6-4722-425b-ac5e-770007a434b0', N'OAI300009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (837, N'5a12c900-dbe7-4c77-b89f-50282bcd86a9', N'OAG300047', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (838, N'39efd440-2c98-4539-a02b-805f91b8fe0f', N'OAZ202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (839, N'a0c9225c-2518-474c-bfcd-6285e84d62b1', N'OAW300010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (840, N'9e088811-37cd-4fea-8158-047b13a7e979', N'OAP300022', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (841, N'9b0c75bc-0179-4445-8281-e030bbf9e815', N'OAL300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (842, N'5f233b53-6563-40ef-9b2f-47fc6013213c', N'OAG300027', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (843, N'ebd8676e-62ea-4579-89c9-62f5e70da415', N'OAP300015', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (844, N'2ad70f17-e0e7-44ec-bf2b-7bc69e2a55d3', N'OAI201001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (845, N'c499c3d4-d9aa-40d8-8714-bc072a81cad1', N'OAP300018', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (846, N'533ccb7f-5ec5-4b98-912c-f18a56433137', N'OAM200', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (847, N'd6f9c1a3-7a71-4fd8-a9c3-146ab07bc2b6', N'OAL201003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (848, N'ac32b5e1-a06c-485e-803e-05806fa71034', N'OAE300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (849, N'c7cb99aa-a954-4f68-9f60-8389c6136e2c', N'OAG300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (850, N'1bd72fc0-9433-4d9d-a9f7-1c3fc82611ca', N'OAW300011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (851, N'eee766d4-b6fd-4f7d-930d-02e52d706144', N'OAR300030', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (852, N'eccc4bba-92c4-4be2-9404-0609079f4c4b', N'OAL300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (853, N'430c91cb-0bc4-42b5-b9ef-3034c76106d8', N'OAE202008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (854, N'00a1162e-f780-41a2-9a1d-49c211fc4712', N'OAE202017', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (855, N'd2fc425e-f6b5-4da8-a080-2eba8d1ca76f', N'OAK201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (856, N'838b079a-f2ec-40fb-924b-8921d39976a8', N'OAG300015', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (857, N'9fd88514-d65c-4f0b-aeb8-f955edf3a2d8', N'OAA300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (858, N'8d95d21c-b48b-43ed-8b78-915e1917c7b9', N'OAW201002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (859, N'e275057b-966c-45fe-87f6-f652ff7f30f4', N'OAG300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (860, N'9ac92626-eb87-4d4a-a335-2b2fda7ebc89', N'OAS300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (861, N'fef5a592-f881-48d0-a743-9b89fc12e069', N'OAX300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (862, N'cdaa2c58-bbc4-4dab-b93d-963dec054422', N'OAH300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (863, N'9c63834b-d34a-4a95-8f3f-d0c0e7e728e3', N'OAN300013', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (864, N'1b7b0743-516b-487c-ab26-6a42a77cbd67', N'OAD300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (865, N'ebe0df58-4ea9-41f3-b2ea-f596acdf0b0a', N'OAE105007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (866, N'69a4f974-80c8-459a-9038-208dc8329aa6', N'OAC300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (867, N'e3c4683c-ba20-4d84-9ef7-41f7c3ca8d3b', N'OAW300016', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (868, N'38f45df3-1d7d-457c-9abe-2fff7d123522', N'OAE300015', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (869, N'a10109e6-66c6-4662-abf7-c967d7492651', N'OAE101005', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A59801509FE1 AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (870, N'76173e7a-5514-4eb6-9092-845fd9175687', N'OAH300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (871, N'5061109b-c294-4a82-8d6e-69552a5d113b', N'OAM203', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (872, N'8093f952-1c84-4a97-89e7-7ded004543a1', N'OAG300023', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (873, N'4a273182-3e89-447e-99af-4ad9f1155d1e', N'OAW203002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (874, N'989ecfde-6475-4091-983b-031713db66c3', N'OAA300039', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (875, N'e6965cf7-9f9b-4d32-a392-b87747e78394', N'OAG300009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (876, N'f6008399-8594-43fd-81ce-5e82a5fe808a', N'OAF101', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (877, N'23c255bf-54d9-42b7-8c9f-d0df368a60dd', N'OAG300035', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (878, N'4c6d9f84-6929-49c5-86d1-29c07106424a', N'OAA300033', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (879, N'ef17d518-dc0f-40c9-a065-f04ff9cec9b5', N'OAP300020', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (880, N'5e4226ed-7da6-4cc1-b927-211b681f3094', N'OAD300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (881, N'82657d81-ea42-4a23-9043-8fdb77dc20d7', N'OAU300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (882, N'cd3a6a5e-8fef-44ff-a4a0-aa67f74e3ece', N'OAE300029', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (883, N'9c757777-2b26-49cc-a7a8-4b30348064c5', N'OAS103001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (884, N'5a631a8b-510d-4b1a-8c26-284b3dfb8590', N'OAW300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (885, N'5d3d68bb-4e71-419d-ac19-873dd0c56dba', N'OAP300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (886, N'fd79123e-4dbd-406a-a50b-e38d7fddb473', N'OAG300022', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (887, N'eead9800-7992-4ef1-8332-e28ced6cfeda', N'OAH300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (888, N'ea659d02-6bb7-4074-baa8-3d39d0731d7e', N'OAH201006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (889, N'2e169c7b-8ff9-4926-bf84-1cbaa88a7f35', N'OAZ', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (890, N'38149f25-0ba7-462d-b6e7-88cb86b264bc', N'OAG300006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (891, N'7a83c68f-3dd0-4566-8d3b-947951f1bfed', N'OAH300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (892, N'48a36006-f7d9-4a1d-b2a4-b28990c09dba', N'OAP300019', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (893, N'eb5481b1-ca82-462c-ad5a-11924d9d94b7', N'OAI201004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (894, N'c78f4738-1dee-498e-b41e-e766a54a111b', N'OAE300006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (895, N'2eefbf0b-4e81-49cd-a404-0994eb92006b', N'OAE104009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (896, N'79c35d88-6d1d-481b-b42d-44dc738ff448', N'OAW202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (897, N'0a5c7fcf-ed3a-4a6e-a418-56007d2b69f7', N'OAR300029', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (898, N'5d2c8c7d-5cf2-4fce-adc7-b3adeb7c0285', N'OAH300006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (899, N'a05afd3d-6b0b-4c4c-90f6-8a8000482036', N'OAN300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (900, N'c5a73746-0c43-45d6-b82a-a4c25b9e7be1', N'OAS102', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (901, N'b597886d-5abe-46f9-b016-8ee3010abf0b', N'OAW300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (902, N'1fce361b-3373-4ce3-bc07-a92b963330a6', N'OAE203006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (903, N'a4af4366-21e1-43f5-b910-09e6089cf427', N'OAG300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (904, N'ce32f3c2-0ff2-4d16-a64c-84f8a5e9e90b', N'OAG300043', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (905, N'3ec62d52-7e0b-470f-abfe-e09c1bbd658c', N'OAG300032', 0, 1, CAST(0x0000A59800A4FB1C AS DateTime), CAST(0x0000A5980168235D AS DateTime))
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (906, N'78349af3-d641-4428-98a3-cf39a1c92e89', N'OAG300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (907, N'839e81d7-9d83-4c7b-9f93-21c7880460db', N'OAE300010', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (908, N'd24ef3f2-c85b-4af2-8b24-87236820ff37', N'OAA300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (909, N'998965c6-667f-494c-825a-26edc6a22002', N'OAW300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (910, N'b66f9e71-07dc-42a3-a4b1-b4e6a1397609', N'OAF300013', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (911, N'41a70386-43db-4fba-aa5f-427e3cecdbc0', N'OAZ201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (912, N'ec6038c1-5016-49a9-87f3-f97c1c06387a', N'OAP300012', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (913, N'f0979f18-4e61-44e7-b87d-a76df35dbb03', N'OAE300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (914, N'11d55f94-3f3f-4948-aafa-cbe3d9976631', N'OZZ801', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (915, N'654a1754-33b3-422e-861a-0a1726f85cea', N'OAP300017', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (916, N'12127f7f-7e7d-44e8-a7a9-4d7e89dcabed', N'OAG300042', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (917, N'ba19372d-879e-4749-95b5-0c9d72fe61a6', N'OAG300026', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (918, N'04d0aeb5-db3b-4441-88c3-3d2f512af0e7', N'OAN300012', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (919, N'6b94dcc6-b345-4f72-ab41-03b6ce403970', N'OAG300052', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (920, N'a0f4993d-6ff3-4184-adee-f41c6a1eb56c', N'OAF300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (921, N'86b0c211-684c-41d8-b1e7-e5e86eb3e7b1', N'OAF300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (922, N'86881a6c-23ad-44e8-9317-8d4d0088995a', N'OAE300023', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (923, N'5f292a16-bd9b-4b23-80dc-abc8cb05113b', N'OAE300031', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (924, N'bdaf559e-858f-4fe8-a5cc-efbd1ba23f48', N'OAF102001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (925, N'84811320-7d01-4505-872b-501b8f757c88', N'OAL300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (926, N'04dd0158-08f7-4cae-874d-38602f742b03', N'OAA300041', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (927, N'018822dc-bd31-474e-a69a-add09e42556e', N'OAR102004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (928, N'bd508ed2-9aa1-4294-8e47-4e3ce6de376f', N'OAF300012', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (929, N'38d8ea0f-002c-4fa2-b6ac-06fc9dcb8ea2', N'OAG300036', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (930, N'fb41c4c8-2a93-4a05-89a9-7b54a84491e4', N'OAP300026', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (931, N'88c1a9e4-b182-433d-b06c-4a0eb8e0156a', N'OAA300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (932, N'4916ee98-666f-470f-9237-11fc065d1e78', N'OAK201001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (933, N'd1dea75d-fbf9-4648-83bb-c59475e933a0', N'OAA300021', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (934, N'cf6319af-e8bf-4f67-9089-687721a4d5c1', N'OAA201004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (935, N'ef1a34f3-6f62-4998-9a0a-0ef42beb5731', N'OAA300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (936, N'd9f05d34-7b5c-4e78-9083-24a7f7843a59', N'OAW300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (937, N'5ac4bf9d-520e-4f90-b90f-1fc3b77aeb20', N'OAE202006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (938, N'9f7a26c4-390f-48b0-b83d-ad21c23e1e70', N'OAD300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (939, N'43461ca4-d4a3-4971-9cc6-7de65584d0f1', N'OAE104005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (940, N'904494f4-fed6-4afd-9566-81029fd102df', N'OAG300050', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (941, N'a3998daf-b7e4-4f83-bb87-d8156329f3b0', N'OAA201003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (942, N'9c79fef5-212a-402c-898f-45b372997337', N'OAL300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (943, N'4bbff8c3-51af-460f-801c-6c37e303c588', N'OAG300053', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (944, N'4f57aba3-3099-4611-9b7a-94fd908621ec', N'OAA300029', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (945, N'c7acba80-c5d8-4996-a9c6-4ddbf84aeb9d', N'OAA300018', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (946, N'01ff5d87-9dd3-42d8-8bc1-14ce162a1a8c', N'OAB300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (947, N'6e1699ca-3961-4ed5-a906-b01a3a5e7ff4', N'OAA300025', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (948, N'1556826b-796d-4bad-86ee-0b570b5e162f', N'OAA300034', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (949, N'5fcbe0a2-a02a-468f-8658-95514f6f430e', N'OAE300013', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (950, N'a91ebdde-258e-4489-a5c9-6026029eb5de', N'OAW204', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (951, N'd2c0477d-4891-43ac-9e9d-5dfc273d8b3d', N'OAH201009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (952, N'b2b2d747-0b52-47f9-9cbd-b2300f35e72e', N'OAT300001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (953, N'5a8701d5-d1ae-485f-8e1b-c7465470903e', N'OAH300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (954, N'ff59040a-37be-4a05-b565-ac231cc959f7', N'OAZ201001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (955, N'233021db-4088-4b2e-a10b-ee9949e3f292', N'OAF203', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (956, N'fdaefaa3-a36b-4539-b729-70d245bd4bd8', N'OAA300012', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (957, N'3fc2957e-ad16-4566-a0a3-15c0d94213a7', N'OAF204001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (958, N'3e3a862c-6491-46c7-83e2-b6f1dab6410b', N'OAV300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (959, N'0e0c1ce6-bead-42ad-8e67-a9cac8e6c084', N'OAE101003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (960, N'3ec595b4-6369-4b79-920f-c7c8f6aa68f7', N'OAE104002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (961, N'53ac12df-0276-47be-8de3-2a03d6740cbe', N'OAW300014', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (962, N'a02083b5-6d79-423f-8f3e-1f7aee354706', N'OAD300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (963, N'08b72840-54f6-4f79-ba4d-fbf5bab21914', N'OAF300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (964, N'8ef1f569-e326-4d87-b9e8-e8b8daf37142', N'OAG300014', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (965, N'f995a485-ca23-4cb9-bd84-c95dabad4d1e', N'OAI300006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (966, N'ec760aac-fd56-43eb-9819-ed9caf1a664f', N'OAH300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (967, N'd59fc8a8-c8c8-42c1-bc84-ac50117af2bf', N'OAA201006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (968, N'38de30bd-8a02-41ff-9a20-b0cb8ef0d912', N'OAA300038', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (969, N'4f058ad7-1066-43b4-80a7-c76c9246bf8e', N'OAB300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (970, N'29691adf-2678-4b90-99dd-95b9cafd2c16', N'OWW801003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (971, N'03b27f15-13dc-4b24-afd9-71229a57c0a6', N'OAA300037', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (972, N'9802cde6-6f35-46ca-b653-3e3ddda08b70', N'OAI300011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (973, N'e50a7d42-82b3-4fc9-9995-48e894be3a21', N'OAX300004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (974, N'5cc44ce4-1b27-4e05-8e41-5482615fedff', N'OAI204', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (975, N'ef4ac411-cf9e-46e3-8b20-60e569d8dce6', N'OAF300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (976, N'7e391cc8-4d7c-43b8-a422-90e4174875f2', N'OAN300008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (977, N'fdc5daf2-26a7-4a9c-bac5-1a1c9349d058', N'OAI300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (978, N'eb155c3c-dd12-4cec-ae3f-9d57748114d5', N'OAR021019', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (979, N'723759ac-436e-4ca1-9169-8e693c86f6b8', N'OAW300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (980, N'156b2e87-5bae-46ad-b531-30f8a8b36278', N'OAA300026', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (981, N'daf645ff-c799-4127-8e69-f23cbd6049d8', N'OAR102001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (982, N'ab9b7547-3a43-4f00-b491-7b5101b3df32', N'OAW203001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (983, N'2c1e38b0-c9bd-46e1-b3c0-b025d4551104', N'OAX300006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (984, N'fb88104d-bb6e-4aa1-be37-e1adfb4499e9', N'OAI102', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (985, N'80698a17-171c-4e69-abdc-9bda0f0515c6', N'OAW300003', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (986, N'db536a52-4edf-4fc7-a7e6-16a0432de234', N'OAE201011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (987, N'e15a1d67-c3d2-41d0-ba58-bc2449420a80', N'OAE300020', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (988, N'f05f45f0-6ef1-4bac-9859-8b5abba3a162', N'OAW300018', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (989, N'0cc561c8-5d06-4f65-a7fc-5f9708ba960f', N'OAA201002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (990, N'2261ae1b-7ac4-4a77-a94e-a340b3cedded', N'OAA300015', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (991, N'740d2a2e-ea7d-4142-9a99-bd2dc8997382', N'OAE109009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (992, N'4ccd6f26-818b-4c30-a533-4592881d635e', N'OAL300009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (993, N'9b72682b-4a8e-42d7-9677-bad1c6307da5', N'OAE109008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (994, N'a076739b-f1e8-4ec1-83fa-213bee08a9be', N'OAV202', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (995, N'e6ca22da-06d4-49b9-8db4-9ebc6dce0f24', N'OAG300034', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (996, N'8681d371-198f-4129-b2db-83e1454391a8', N'OAM102001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (997, N'a3100fc9-99ab-4843-bebd-eefc13b6d85c', N'OAB300005', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (998, N'7415efeb-eddf-41ae-b2ba-2c03a7168817', N'OAX300007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (999, N'2749245d-e56c-4760-9b5b-bb9a1f0b27de', N'OAV201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1000, N'25b17f74-4845-4007-aa43-a6dac824a9bd', N'OAE104006', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1001, N'5d8ff2b5-0116-43ab-81b6-95a0528a35e7', N'OAW201', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1002, N'441af2b9-98a4-43ff-828e-7cebd66f1cae', N'OAA300028', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1003, N'd1795646-0426-438e-b9d6-fe9c4025159b', N'OAE300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1004, N'75822368-5f9d-422e-a11d-246469a895f3', N'OAF201001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1005, N'efb80b3b-2c95-493c-b822-6fd35cdfd248', N'OAT300002', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1006, N'6e11c818-f531-4aba-bb6f-1aa835ceab81', N'OAA300020', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1007, N'd64e8329-3f0e-4b79-9d97-b14eb7187195', N'OAA300014', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1008, N'83330b38-cc01-4941-800a-64220d1e4f6b', N'OAP300025', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1009, N'bea93f7c-78fc-4f6d-bda9-6cf45a2a24d8', N'OAA300017', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1010, N'616f37ce-7aa4-4a66-94ba-0e1bcb9abe29', N'OAG300018', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1011, N'89a03d3e-f3c3-4e44-9773-095891263071', N'OAP300024', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1012, N'672135e6-254e-42d9-9554-6a8b4071e144', N'OAW300017', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1013, N'e0b488f0-fc3c-449c-99c9-f5d1f68a2277', N'OAG300021', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1014, N'199af463-b82a-42b8-b8c2-9ed9202457a2', N'OAW202001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1015, N'7c83d1dd-5340-430f-a1f2-a806019c19dd', N'OAA300024', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1016, N'd8681a40-46ba-4595-92f5-cb4f015772e5', N'OAG300011', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1017, N'85053583-6e98-45e4-957b-1c98cf6d23cf', N'OAE203004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1018, N'7b3ed8e4-f7aa-45e5-bec6-4c4b1a51efc8', N'OAV201001', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1019, N'3d56be0c-195c-4e87-9b8e-5333f4fe71cf', N'OAP300021', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1020, N'be1447bf-cb4b-45ad-8717-718480076d71', N'OAW300013', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1021, N'9d32cae4-5814-4295-99c8-b03b6c5a70bb', N'OAD300009', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1022, N'63d53116-4569-40c3-adb6-891df2870822', N'OAG300013', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1023, N'dacff92c-b23a-4dab-b769-934d00cba3a8', N'OAG300017', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1024, N'd9c95b12-9c09-4d39-a338-5ae2382e50ec', N'OAE201008', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1025, N'beb5be74-18cc-41af-9e52-bfeb5140e9cd', N'OAH201007', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1026, N'6d9b8e37-efff-4059-9f0c-120ecacc4c63', N'OAW203004', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1027, N'2a1e245c-b7c1-4b0a-8096-abaf5c6858a7', N'OAM', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1028, N'0d8db516-ae49-4a6f-ba6a-429930549c2a', N'OAA300', 0, 0, CAST(0x0000A59800A4FB1C AS DateTime), NULL)
GO
INSERT [dbo].[tst_userinfo] ([id], [usercode], [tstcode], [tstcount], [cookiestate], [createdate], [cookiedate]) VALUES (1029, N'4cd5bbf5-7c43-44ed-88ec-c70f7a22e2b5', N'OAR103008', 0, 1, CAST(0x0000A5B7016837FB AS DateTime), CAST(0x0000A5B701683F49 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tst_userinfo] OFF
GO
SET IDENTITY_INSERT [dbo].[tst_userrecord] ON 

GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (332, N'5f127e53-5623-4af0-84be-35734efd341f', 0, 1, CAST(0x0000A598014F51B7 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (333, N'148e7b4c-f9fd-4b9f-ba0a-88bdb3e9565b', 0, 1, CAST(0x0000A598014FE0FF AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (334, N'140a994f-2ca2-4b43-aaad-d80dff4eaa1e', 0, 1, CAST(0x0000A5980150FC89 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (335, N'140a994f-2ca2-4b43-aaad-d80dff4eaa1e', 0, 1, CAST(0x0000A5980151006F AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (336, N'140a994f-2ca2-4b43-aaad-d80dff4eaa1e', 0, 1, CAST(0x0000A598015104EB AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (337, N'140a994f-2ca2-4b43-aaad-d80dff4eaa1e', 0, 1, CAST(0x0000A598015108C4 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (338, N'ae3e1baa-1c58-4d8e-ab35-0b6889a4093a', 0, 1, CAST(0x0000A59801517F04 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (339, N'ae3e1baa-1c58-4d8e-ab35-0b6889a4093a', 0, 1, CAST(0x0000A5980151879F AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (340, N'ae3e1baa-1c58-4d8e-ab35-0b6889a4093a', 0, 1, CAST(0x0000A59801518C82 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (341, N'ae3e1baa-1c58-4d8e-ab35-0b6889a4093a', 0, 1, CAST(0x0000A598015190E7 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (342, N'ae3e1baa-1c58-4d8e-ab35-0b6889a4093a', 0, 1, CAST(0x0000A59801519568 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (343, N'3ecb7a2d-e881-40bf-8e46-84093578eb74', 0, 1, CAST(0x0000A5980152C5AD AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (344, N'a18e0fab-6999-422a-9418-5cf0b0d83239', 0, 1, CAST(0x0000A59801566DFC AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (345, N'bf9fee45-3d37-4c1b-9d18-f7b1e5de938b', 0, 1, CAST(0x0000A5980156EDF5 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (346, N'bf9fee45-3d37-4c1b-9d18-f7b1e5de938b', 0, 1, CAST(0x0000A5980156F027 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (347, N'bf9fee45-3d37-4c1b-9d18-f7b1e5de938b', 0, 1, CAST(0x0000A5980156F399 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (348, N'bf9fee45-3d37-4c1b-9d18-f7b1e5de938b', 0, 1, CAST(0x0000A5980156FEFC AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (349, N'bf9fee45-3d37-4c1b-9d18-f7b1e5de938b', 0, 1, CAST(0x0000A598015707C6 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (350, N'bf9fee45-3d37-4c1b-9d18-f7b1e5de938b', 0, 1, CAST(0x0000A5980157137E AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (351, N'bf9fee45-3d37-4c1b-9d18-f7b1e5de938b', 0, 1, CAST(0x0000A59801571968 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (352, N'bf9fee45-3d37-4c1b-9d18-f7b1e5de938b', 0, 1, CAST(0x0000A59801571D29 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (353, N'a18e0fab-6999-422a-9418-5cf0b0d83239', 0, 1, CAST(0x0000A598015726A1 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (354, N'a18e0fab-6999-422a-9418-5cf0b0d83239', 0, 1, CAST(0x0000A59801573F67 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (362, N'ed25bcde-c31c-4ffb-9acd-87d04774c0fb', 0, 1, CAST(0x0000A598016AED1C AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (363, N'ed25bcde-c31c-4ffb-9acd-87d04774c0fb', 0, 1, CAST(0x0000A598016AF70D AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (364, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B58B4 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (365, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B5EDF AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (366, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B6551 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (367, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B681F AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (368, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B6BA3 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (369, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B6F0F AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (370, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B7256 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (371, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B75C8 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (372, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B7997 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (373, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B7D24 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (374, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B809F AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (375, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B83E1 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (376, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B8715 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (377, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B8A6A AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (378, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B8DB6 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (379, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B90E1 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (380, N'e559b1eb-e6d3-43a5-9396-4f5ccb29427f', 0, 1, CAST(0x0000A598016B949D AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (268, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B8196E AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (269, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B82021 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (270, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B8259F AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (271, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B82999 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (272, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B82CC4 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (273, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B82FA4 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (274, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B83247 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (275, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B83563 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (276, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B83814 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (277, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B83A13 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (278, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B83E3B AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (279, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B84227 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (280, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B84849 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (281, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B84A5F AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (282, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B84C71 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (283, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B84E4F AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (284, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B85053 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (285, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B85281 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (286, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B854C1 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (287, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B856B2 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (288, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B858E9 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (289, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B85B1C AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (290, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B85D49 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (291, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B85F85 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (292, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B861AE AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (293, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B863CE AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (294, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B865E5 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (295, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B8680E AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (296, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B86A37 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (297, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B86C36 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (298, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B86E43 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (299, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B87063 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (300, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B87261 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (301, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B8746A AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (302, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B8765B AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (303, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B87871 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (304, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B87A75 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (305, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B87C6A AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (306, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B87E77 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (307, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B88071 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (308, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B8827E AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (309, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B884A8 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (310, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B88801 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (311, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B889E9 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (312, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B88BDA AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (313, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B88F2A AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (314, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B89124 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (315, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B89357 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (316, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B89585 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (317, N'672135e6-254e-42d9-9554-6a8b4071e144', 0, 1, CAST(0x0000A59800B89796 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (318, N'ad2336d4-4f6e-4932-8a2f-7eab71d1f513', 0, 1, CAST(0x0000A5980149CB48 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (319, N'ad2336d4-4f6e-4932-8a2f-7eab71d1f513', 0, 1, CAST(0x0000A5980149D35B AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (320, N'ad2336d4-4f6e-4932-8a2f-7eab71d1f513', 0, 1, CAST(0x0000A5980149DA4B AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (321, N'ad2336d4-4f6e-4932-8a2f-7eab71d1f513', 0, 1, CAST(0x0000A5980149E195 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (322, N'ad2336d4-4f6e-4932-8a2f-7eab71d1f513', 0, 1, CAST(0x0000A5980149E796 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (323, N'7eb82d62-b51c-48fc-8e08-54f971459a53', 0, 1, CAST(0x0000A5980149FE00 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (324, N'47ba5b87-769a-43eb-a4ee-98c43bf44efc', 0, 1, CAST(0x0000A598014A0312 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (325, N'c9e88875-fdd8-4462-98b9-e261d76f4b28', 1, 1, CAST(0x0000A598014B95F1 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (326, N'8195a4b9-e17e-4a4f-b6a0-56a9bf871755', 0, 1, CAST(0x0000A598014C5260 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (327, N'8195a4b9-e17e-4a4f-b6a0-56a9bf871755', 0, 1, CAST(0x0000A598014C57E3 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (328, N'8195a4b9-e17e-4a4f-b6a0-56a9bf871755', 0, 1, CAST(0x0000A598014C60AD AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (329, N'8195a4b9-e17e-4a4f-b6a0-56a9bf871755', 0, 1, CAST(0x0000A598014C6740 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (330, N'8195a4b9-e17e-4a4f-b6a0-56a9bf871755', 0, 1, CAST(0x0000A598014C6C52 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (331, N'744f8721-bedd-418e-b06d-fff3f602630e', 0, 1, CAST(0x0000A598014DA971 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (355, N'235fc8d4-1fe1-4fc6-82b9-27135abf3619', 0, 1, CAST(0x0000A5980157FE20 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (356, N'31d080f0-0053-439c-b887-1353b5cdcc78', 0, 1, CAST(0x0000A598015880D3 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (357, N'51c0d23f-ea71-4d9d-8b72-d0af6e85d35a', 0, 1, CAST(0x0000A598015E4940 AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (358, N'51c0d23f-ea71-4d9d-8b72-d0af6e85d35a', 0, 1, CAST(0x0000A598015E617A AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (359, N'51c0d23f-ea71-4d9d-8b72-d0af6e85d35a', 0, 1, CAST(0x0000A598015E664F AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (360, N'51c0d23f-ea71-4d9d-8b72-d0af6e85d35a', 0, 1, CAST(0x0000A598015E6A1A AS DateTime))
GO
INSERT [dbo].[tst_userrecord] ([id], [usercode], [winlevel], [iswininfo], [createdate]) VALUES (361, N'51c0d23f-ea71-4d9d-8b72-d0af6e85d35a', 0, 1, CAST(0x0000A598015E73F8 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tst_userrecord] OFF
GO
SET IDENTITY_INSERT [dbo].[tst_winningrecord] ON 

GO
INSERT [dbo].[tst_winningrecord] ([id], [usercode], [username], [usermobilephone], [useraddress], [prizeid], [createdate]) VALUES (1, N'44a1be18-188b-4aa8-8fa9-2793a5bd6c10', N'贾怡涛', N'18686005399', N'内蒙古呼和浩特市新城区海东路丽苑阳光城领秀7号楼1单元1102', 1, CAST(0x0000A597016397AC AS DateTime))
GO
INSERT [dbo].[tst_winningrecord] ([id], [usercode], [username], [usermobilephone], [useraddress], [prizeid], [createdate]) VALUES (2, N'c9e88875-fdd8-4462-98b9-e261d76f4b28', N'方晶京', N'13818775285', N'上海市浦东新区松林路333弄香榭丽花园7号801室', 1, CAST(0x0000A598014BD478 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tst_winningrecord] OFF
GO
ALTER TABLE [dbo].[tst_prize] ADD  CONSTRAINT [DF_tst_prize_createdate]  DEFAULT (getdate()) FOR [createdate]
GO
ALTER TABLE [dbo].[tst_userinfo] ADD  CONSTRAINT [DF_tst_userinfo_usercode]  DEFAULT (newid()) FOR [usercode]
GO
ALTER TABLE [dbo].[tst_userinfo] ADD  CONSTRAINT [DF_tst_userinfo_Cookiestate]  DEFAULT (0) FOR [cookiestate]
GO
ALTER TABLE [dbo].[tst_userinfo] ADD  CONSTRAINT [DF_tst_userinfo_createdate]  DEFAULT (getdate()) FOR [createdate]
GO
ALTER TABLE [dbo].[tst_winningrecord] ADD  CONSTRAINT [DF_tst_winningrecord_createdate]  DEFAULT (getdate()) FOR [createdate]
GO
