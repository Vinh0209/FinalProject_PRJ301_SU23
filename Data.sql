SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role], [token]) VALUES (1, N'vinh@gmail.com', N'1234', N'Phxvinh', N'1234567', 1, 0, N'0.023600097323833058')
INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role], [token]) VALUES (2, N'zinh@gmail.com', N'1234', N'Zinh', N'123456', 1, 1, N'0.012102480485736145')
INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role], [token]) VALUES (29, N'vinhpv@gmail.com', N'1', N'Van Vinh', N'1234567', 0, 0, N'0.04698833148757231')
INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role], [token]) VALUES (25, N'Hi@gmail.com', N'444', N'Hi', N'1234567', 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO

SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (1, N'long')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (2, N'short')

SET IDENTITY_INSERT [dbo].[Categories] OFF
GO

SET IDENTITY_INSERT [dbo].[DoraemonComics] ON 
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (1, N'LAC VAO XU QUY', 20, N'images/lacvaoxuquy.jpg', N'LVXQ', 1, 1)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (2, N'BA CHANG HIEP SI MONG MO', 20, N'images/bachanghiepsimongmo.jpg', N'BCHSMM', 1, 1)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (3, N'CHIEN THANG QUY KAMAT', 20, N'images/chienthangquykamat.jpg', N'CTQK', 1, 1)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (4, N'DI TIM MIEN DAT MOI', 20, N'images/ditimmiendatmoi.jpg', N'DTMDM', 1, 1)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (5, N'NGOI SAO CAM', 20, N'images/ngoisaocam.jpg', N'NSC', 0, 1)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (6, N'TRUYEN NGAN TAP 1', 10, N'images/tap1.jpg', N'TAP1', 1, 2)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (7, N'TRUYEN NGAN TAP 26', 10, N'images/tap26.jpg', N'TAP26', 1, 2)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (8, N'TRUYEN NGAN TAP 32', 10, N'images/tap32.jpg', N'TAP32', 1, 2)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (9, N'TRUYEN NGAN TAP 39', 10, N'images/tap39.jpg', N'TAP39', 0, 2)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (10, N'TRUYEN NGAN TAP 42', 10, N'images/tap42.jpg', N'TAP42', 1, 2)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (11, N'TRUYEN NGAN TAP 45', 10, N'images/tap45.jpg', N'TAP45', 1, 2)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (12, N'TEN DOC TAI VU TRU', 20, N'images/tendoctaivutru.jpg', N'TDTVT', 1, 1)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (13, N'THANH PHO THU NHOI BONG', 20, N'images/thanhphothunhoibong.jpg', N'TPTNB', 1, 1)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (14, N'TRUYEN THUYET VE VUA MAT TROI', 20, N'images/vuamattroi.jpg', N'TTVVMT', 1, 1)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (15, N'NOBITA O VUONG QUOC CHO MEO', 20, N'images/vuongquocchomeo.jpg', N'NOVQCM', 1, 1)
INSERT [dbo].[DoraemonComics] ([DoID], [DoName], [price], [imgPath], [description], [status], [CateID]) VALUES (16, N'VUONG QUOC TREN MAY', 20, N'images/vuongquoctrenmay.jpg', N'VQTM', 1, 1)

SET IDENTITY_INSERT [dbo].[DoraemonComics] OFF
GO

SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (1, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-14' AS Date), 2, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (2, CAST(N'2023-12-13' AS Date), NULL, 3, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (3, CAST(N'2023-12-07' AS Date), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (1, 1, 1, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (2, 1, 2, 2)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (5, 2, 5, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO