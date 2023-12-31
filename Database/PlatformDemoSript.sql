USE [PlatformDemo]
GO
DELETE FROM [dbo].[Order]
GO
DELETE FROM [dbo].[Customer]
GO
DELETE FROM [dbo].[__EFMigrationsHistory]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230904033327_InitialCreate', N'7.0.10')
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (1, N'Madshan', N'09976072182')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (2, N'Seyyit', N'05715085122')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (3, N'Sergo', N'93536740421')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (4, N'Sergo', N'08229550990')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (5, N'Shemayah', N'66854005731')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (6, N'Brendanus', N'42533620043')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (7, N'Jurou', N'54908277236')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (8, N'Aldwin', N'86756106722')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (9, N'Iosifu', N'77721520729')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (10, N'Dumuzi', N'88867032689')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (11, N'Oral', N'61269716087')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (1, 1, 5, 1)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (2, 2, 10, 1)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (3, 3, 15, 1)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (4, 4, 20, 1)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (5, 5, 25, 1)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (6, 6, 5, 2)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (7, 7, 10, 2)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (8, 8, 15, 2)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (9, 9, 20, 3)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (10, 10, 25, 3)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (11, 11, 5, 3)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (12, 12, 10, 3)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (13, 13, 15, 4)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (14, 14, 20, 4)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (15, 15, 25, 4)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (16, 16, 5, 4)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (17, 17, 10, 4)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (18, 18, 15, 5)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (19, 19, 15, 6)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (20, 20, 20, 8)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (21, 21, 25, 9)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (22, 22, 5, 9)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (23, 23, 10, 9)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (24, 24, 15, 10)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (25, 25, 20, 10)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (26, 26, 25, 11)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (27, 27, 5, 11)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (28, 28, 10, 11)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
