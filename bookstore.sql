USE [bookstore]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 28/11/2024 09:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[product_id] [int] NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[category]    Script Date: 28/11/2024 09:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image_name] [varchar](1000) NULL,
	[is_active] [bit] NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order_address]    Script Date: 28/11/2024 09:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[order_address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[first_name] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
	[mobile_no] [varchar](255) NULL,
	[pincode] [varchar](255) NULL,
	[state] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 28/11/2024 09:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](5000) NULL,
	[discount] [int] NOT NULL,
	[discount_price] [float] NULL,
	[image] [varchar](1000) NULL,
	[is_active] [bit] NULL,
	[price] [float] NULL,
	[stock] [int] NOT NULL,
	[title] [varchar](500) NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product_order]    Script Date: 28/11/2024 09:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product_order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [datetime2](6) NULL,
	[order_id] [varchar](255) NULL,
	[payment_type] [varchar](255) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[status] [varchar](255) NULL,
	[order_address_id] [int] NULL,
	[product_id] [int] NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_dtls]    Script Date: 28/11/2024 09:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_dtls](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_non_locked] [bit] NULL,
	[address] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[failed_attempt] [int] NULL,
	[is_enable] [bit] NULL,
	[lock_time] [datetime2](6) NULL,
	[mobile_number] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[pincode] [varchar](255) NULL,
	[profile_image] [varchar](255) NULL,
	[reset_token] [varchar](255) NULL,
	[role] [varchar](255) NULL,
	[state] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cart] ON 

INSERT [dbo].[cart] ([id], [quantity], [product_id], [user_id]) VALUES (4, 1, 18, 4)
INSERT [dbo].[cart] ([id], [quantity], [product_id], [user_id]) VALUES (9, 1, 7, 1)
INSERT [dbo].[cart] ([id], [quantity], [product_id], [user_id]) VALUES (10, 1, 13, 1)
SET IDENTITY_INSERT [dbo].[cart] OFF
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [image_name], [is_active], [name]) VALUES (1, N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935244866957_thanh_ly.jpg', 1, N'Science Fiction')
INSERT [dbo].[category] ([id], [image_name], [is_active], [name]) VALUES (2, N'https://cdn0.fahasa.com/media/catalog/product/i/m/image_244718_1_52.jpg', 1, N'English Learning')
INSERT [dbo].[category] ([id], [image_name], [is_active], [name]) VALUES (3, N'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', 1, N'Science')
INSERT [dbo].[category] ([id], [image_name], [is_active], [name]) VALUES (4, N'https://cdn0.fahasa.com/media/catalog/product/9/7/9786040392435.jpg', 1, N'Technology')
INSERT [dbo].[category] ([id], [image_name], [is_active], [name]) VALUES (5, N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935280916470.jpg', 1, N'Education')
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[order_address] ON 

INSERT [dbo].[order_address] ([id], [address], [city], [email], [first_name], [last_name], [mobile_no], [pincode], [state]) VALUES (1, N'Address', N'HCMCity', N'baothong15082003@gmail.com', N'Dang', N'Thong', N'1211221121', N'111111', N'GoVap')
INSERT [dbo].[order_address] ([id], [address], [city], [email], [first_name], [last_name], [mobile_no], [pincode], [state]) VALUES (2, N'Address', N'HCMCity', N'baothong15082003@gmail.com', N'Dang', N'Thong', N'1211221121', N'111111', N'GoVap')
INSERT [dbo].[order_address] ([id], [address], [city], [email], [first_name], [last_name], [mobile_no], [pincode], [state]) VALUES (3, N'Address', N'HCMCity', N'baothong15082003@gmail.com', N'Dang', N'Thong', N'1211221121', N'111111', N'GoVap')
INSERT [dbo].[order_address] ([id], [address], [city], [email], [first_name], [last_name], [mobile_no], [pincode], [state]) VALUES (4, N'Admin Address', N'AdminCity', N'admin@admin.com', N'Admin', N'Admin', N'0000000000', N'000000', N'Admin State')
INSERT [dbo].[order_address] ([id], [address], [city], [email], [first_name], [last_name], [mobile_no], [pincode], [state]) VALUES (5, N'Admin Address', N'AdminCity', N'admin@admin.com', N'Admin', N'Admin', N'0000000000', N'000000', N'Admin State')
INSERT [dbo].[order_address] ([id], [address], [city], [email], [first_name], [last_name], [mobile_no], [pincode], [state]) VALUES (6, N'Admin Address', N'AdminCity', N'admin@admin.com', N'Admin', N'Thong', N'0000000000', N'000000', N'Admin State')
INSERT [dbo].[order_address] ([id], [address], [city], [email], [first_name], [last_name], [mobile_no], [pincode], [state]) VALUES (7, N'Admin Address', N'AdminCity', N'admin@admin.com', N'Admin', N'Thong', N'0000000000', N'000000', N'Admin State')
SET IDENTITY_INSERT [dbo].[order_address] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (6, N'The term "artificial intelligence" was proposed much earlier than we know - in the summer of 1956, by computer scientist John McCarthy at the Dartmouth Conference.', 10, 539100, N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935244866957_thanh_ly.jpg', 1, 599000, 50, N'AI 2041 - For The Future', 4)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (7, N'Data science is a new artificial ecosystem in the modern information age, ranging from crime detection to disease prediction. But did you know it''s not just about the massive amount of information collected by computers, smartphones, and credit cards?', 5, 332500, N'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', 1, 350000, 23, N'Data Science', 3)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (8, N'Dive into the fascinating world of quantum mechanics with this easy-to-understand book.', 10, 269100, N'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', 1, 299000, 20, N'Quantum Physics Explained', 3)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (9, N'Understand the fundamentals of artificial intelligence and its applications in real-world problems.', 12, 351120, N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935244866957_thanh_ly.jpg', 1, 399000, 35, N'Learning AI Basics', 4)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (10, N'A comprehensive guide to start learning English effectively, with plenty of examples and exercises.', 15, 170000, N'https://cdn0.fahasa.com/media/catalog/product/i/m/image_244718_1_52.jpg', 1, 200000, 49, N'English for Beginners', 2)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (11, N'This book covers advanced concepts in electronics technology for engineering students.', 18, 451000, N'https://cdn0.fahasa.com/media/catalog/product/9/7/9786040392435.jpg', 1, 550000, 30, N'Advanced Electronics', 4)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (12, N'An excellent resource for educators to improve their teaching methods.', 5, 285000, N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935280916470.jpg', 1, 300000, 39, N'Teaching Strategies', 5)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (13, N'Explore the mysteries of the cosmos with this thrilling science book.', 8, 386400, N'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', 1, 420000, 25, N'Physics of the Universe', 3)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (14, N'Discover how AI is transforming industries and creating new possibilities.', 10, 441000, N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935244866957_thanh_ly.jpg', 1, 490000, 20, N'Innovating with AI', 4)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (15, N'Improve your English communication skills for daily conversations.', 12, 158400, N'https://cdn0.fahasa.com/media/catalog/product/i/m/image_244718_1_52.jpg', 1, 180000, 45, N'Practical English Skills', 2)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (16, N'A beginner-friendly introduction to designing electrical circuits.', 20, 280000, N'https://cdn0.fahasa.com/media/catalog/product/9/7/9786040392435.jpg', 1, 350000, 29, N'Basic Circuits Design', 4)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (17, N'A look at modern trends and challenges in education today.', 10, 243000, N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935280916470.jpg', 1, 270000, 54, N'Modern Education Trends', 5)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (18, N'Destination B1 - Grammar And Vocabulary With Answer Key', 0, 270000, N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935246945001.jpg', 1, 270000, 997, N'Destination B1 - Grammar And Vocabulary With Answer Key', 2)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (19, N'The Witches', 0, 191700, N'https://cdn0.fahasa.com/media/catalog/product/9/7/9780241677667.jpg', 1, 191700, 5, N'The Witches', 1)
INSERT [dbo].[product] ([id], [description], [discount], [discount_price], [image], [is_active], [price], [stock], [title], [category_id]) VALUES (20, N'Maya And The Robot', 0, 156600, N'https://cdn0.fahasa.com/media/catalog/product/9/7/9781984814654.jpg', 1, 156600, 5, N'Maya And The Robot', 1)
SET IDENTITY_INSERT [dbo].[product] OFF
SET IDENTITY_INSERT [dbo].[product_order] ON 

INSERT [dbo].[product_order] ([id], [order_date], [order_id], [payment_type], [price], [quantity], [status], [order_address_id], [product_id], [user_id]) VALUES (1, CAST(N'2024-10-28 19:39:56.7870620' AS DateTime2), N'fc4288d1-5f8a-4878-a055-d8d10604bc89', N'COD', 332500, 1, N'Delivered', 1, 7, 4)
INSERT [dbo].[product_order] ([id], [order_date], [order_id], [payment_type], [price], [quantity], [status], [order_address_id], [product_id], [user_id]) VALUES (2, CAST(N'2024-11-28 19:39:56.8031480' AS DateTime2), N'd2e9fab1-f1f8-420d-a0ca-7c8a6cbd34c6', N'COD', 285000, 1, N'Delivered', 2, 12, 4)
INSERT [dbo].[product_order] ([id], [order_date], [order_id], [payment_type], [price], [quantity], [status], [order_address_id], [product_id], [user_id]) VALUES (3, CAST(N'2024-10-28 19:40:59.3388240' AS DateTime2), N'be0edd11-f100-4e8e-9e72-8b065f3ac897', N'COD', 270000, 2, N'Delivered', 3, 18, 4)
INSERT [dbo].[product_order] ([id], [order_date], [order_id], [payment_type], [price], [quantity], [status], [order_address_id], [product_id], [user_id]) VALUES (4, CAST(N'2024-11-28 19:54:46.7608240' AS DateTime2), N'51ccfea3-ac59-4edd-884f-638c6a7e9202', N'COD', 332500, 1, N'Delivered', 4, 7, 1)
INSERT [dbo].[product_order] ([id], [order_date], [order_id], [payment_type], [price], [quantity], [status], [order_address_id], [product_id], [user_id]) VALUES (5, CAST(N'2024-11-28 19:54:46.7795550' AS DateTime2), N'b17d1599-536b-4eb0-aa86-fcf34fbe9b52', N'COD', 170000, 1, N'Delivered', 5, 10, 1)
INSERT [dbo].[product_order] ([id], [order_date], [order_id], [payment_type], [price], [quantity], [status], [order_address_id], [product_id], [user_id]) VALUES (6, CAST(N'2024-11-28 19:55:25.4450090' AS DateTime2), N'92c46d40-f085-4bb8-9662-e97e50c1dac3', N'COD', 280000, 1, N'Order Received', 6, 16, 1)
INSERT [dbo].[product_order] ([id], [order_date], [order_id], [payment_type], [price], [quantity], [status], [order_address_id], [product_id], [user_id]) VALUES (7, CAST(N'2024-11-28 19:55:25.4499930' AS DateTime2), N'd93c575e-7968-4c22-a3ae-65424f999f39', N'COD', 243000, 1, N'Order Received', 7, 17, 1)
SET IDENTITY_INSERT [dbo].[product_order] OFF
SET IDENTITY_INSERT [dbo].[user_dtls] ON 

INSERT [dbo].[user_dtls] ([id], [account_non_locked], [address], [city], [email], [failed_attempt], [is_enable], [lock_time], [mobile_number], [name], [password], [pincode], [profile_image], [reset_token], [role], [state]) VALUES (1, 1, N'Admin Address', N'AdminCity', N'admin@admin.com', 1, 1, NULL, N'0000000000', N'Administrator', N'$2a$10$cC/mfFReSMLSGgLown2pC.KtzWDDP.tou7hVETvnW/1qBoRXhfvbq', N'000000', N'default.jpg', NULL, N'ROLE_ADMIN', N'Admin State')
INSERT [dbo].[user_dtls] ([id], [account_non_locked], [address], [city], [email], [failed_attempt], [is_enable], [lock_time], [mobile_number], [name], [password], [pincode], [profile_image], [reset_token], [role], [state]) VALUES (2, 1, N'User Address 1', N'Hanoi', N'user1@example.com', 0, 1, NULL, N'0123456789', N'User One', N'$2a$10$yourEncodedPasswordHash', N'100000', N'default.jpg', NULL, N'ROLE_USER', N'Dong Da')
INSERT [dbo].[user_dtls] ([id], [account_non_locked], [address], [city], [email], [failed_attempt], [is_enable], [lock_time], [mobile_number], [name], [password], [pincode], [profile_image], [reset_token], [role], [state]) VALUES (3, 1, N'User Address 2', N'Hanoi', N'user2@example.com', 0, 1, NULL, N'0987654321', N'User Two', N'$2a$10$yourEncodedPasswordHash', N'100000', N'default.jpg', NULL, N'ROLE_USER', N'Ba Dinh')
INSERT [dbo].[user_dtls] ([id], [account_non_locked], [address], [city], [email], [failed_attempt], [is_enable], [lock_time], [mobile_number], [name], [password], [pincode], [profile_image], [reset_token], [role], [state]) VALUES (4, 1, N'Address', N'HCMCity', N'baothong15082003@gmail.com', 0, 1, NULL, N'1211221121', N'BaoThong', N'$2a$10$q1pVWPKmR3boL7IVDfvr7.2.SRBPM7gI0pF6Ll3ieFSAFkGnvJiqS', N'111111', N'Java-programming.png', NULL, N'ROLE_USER', N'GoVap')
SET IDENTITY_INSERT [dbo].[user_dtls] OFF
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK3d704slv66tw6x5hmbm6p2x3u] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK3d704slv66tw6x5hmbm6p2x3u]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK9x4wn098i53ikun1ynxet2ynj] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_dtls] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK9x4wn098i53ikun1ynxet2ynj]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK1mtsbur82frn64de7balymq9s] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK1mtsbur82frn64de7balymq9s]
GO
ALTER TABLE [dbo].[product_order]  WITH CHECK ADD  CONSTRAINT [FK4f2ycr32kigtux5ag3tv0xu5m] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_dtls] ([id])
GO
ALTER TABLE [dbo].[product_order] CHECK CONSTRAINT [FK4f2ycr32kigtux5ag3tv0xu5m]
GO
ALTER TABLE [dbo].[product_order]  WITH CHECK ADD  CONSTRAINT [FK8frxalwc79tpxo7hgqp3hsjck] FOREIGN KEY([order_address_id])
REFERENCES [dbo].[order_address] ([id])
GO
ALTER TABLE [dbo].[product_order] CHECK CONSTRAINT [FK8frxalwc79tpxo7hgqp3hsjck]
GO
ALTER TABLE [dbo].[product_order]  WITH CHECK ADD  CONSTRAINT [FKh73acsd9s5wp6l0e55td6jr1m] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_order] CHECK CONSTRAINT [FKh73acsd9s5wp6l0e55td6jr1m]
GO
