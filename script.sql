USE [finalprojectsa]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 30/06/2020 12:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID_LoaiSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
	[DonViTinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID_LoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 30/06/2020 12:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ID_SanPham] [int] NOT NULL,
	[ID_HoaDon] [int] NOT NULL,
	[SoLuongMua] [int] NULL,
	[TongTien] [int] NULL,
	[ID_SPCTHD] [int] NULL,
	[Name_CT] [nvarchar](50) NULL,
	[Giaban] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID_SanPham] ASC,
	[ID_HoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 30/06/2020 12:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID_KhachHang] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](100) NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID_KhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 30/06/2020 12:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID_HoaDon] [int] IDENTITY(1,1) NOT NULL,
	[Ngay] [datetime] NULL,
	[DiaChiGiaoHang] [nvarchar](50) NULL,
	[TongTien] [int] NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[DatNuoc] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID_HoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 30/06/2020 12:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Detail] [nvarchar](50) NULL,
	[Imange] [nvarchar](150) NULL,
	[CategoryByID] [int] NULL,
	[Quanlity] [int] NULL,
	[Sale] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID_LoaiSanPham], [TenLoaiSanPham], [DonViTinh]) VALUES (1, N'Áo', N'Cái')
INSERT [dbo].[Category] ([ID_LoaiSanPham], [TenLoaiSanPham], [DonViTinh]) VALUES (2, N'Quần', N'Cái')
INSERT [dbo].[Category] ([ID_LoaiSanPham], [TenLoaiSanPham], [DonViTinh]) VALUES (3, N'Giày', N'Đôi')
INSERT [dbo].[Category] ([ID_LoaiSanPham], [TenLoaiSanPham], [DonViTinh]) VALUES (4, N'Đầm', N'Cái')
INSERT [dbo].[Category] ([ID_LoaiSanPham], [TenLoaiSanPham], [DonViTinh]) VALUES (5, N'Bộ', N'Bộ')
INSERT [dbo].[Category] ([ID_LoaiSanPham], [TenLoaiSanPham], [DonViTinh]) VALUES (6, N'Phụ kiện', N'Cái')
SET IDENTITY_INSERT [dbo].[Category] OFF
INSERT [dbo].[ChiTietHoaDon] ([ID_SanPham], [ID_HoaDon], [SoLuongMua], [TongTien], [ID_SPCTHD], [Name_CT], [Giaban]) VALUES (11, 8, 1, 55, NULL, N'Áo trắng xòe', NULL)
INSERT [dbo].[ChiTietHoaDon] ([ID_SanPham], [ID_HoaDon], [SoLuongMua], [TongTien], [ID_SPCTHD], [Name_CT], [Giaban]) VALUES (11, 13, 1, 55, NULL, N'Áo trắng xòe', NULL)
INSERT [dbo].[ChiTietHoaDon] ([ID_SanPham], [ID_HoaDon], [SoLuongMua], [TongTien], [ID_SPCTHD], [Name_CT], [Giaban]) VALUES (12, 3, 1, 666, NULL, N'Quần Jean nam', NULL)
INSERT [dbo].[ChiTietHoaDon] ([ID_SanPham], [ID_HoaDon], [SoLuongMua], [TongTien], [ID_SPCTHD], [Name_CT], [Giaban]) VALUES (12, 6, 1, 666, NULL, N'Quần Jean nam', NULL)
INSERT [dbo].[ChiTietHoaDon] ([ID_SanPham], [ID_HoaDon], [SoLuongMua], [TongTien], [ID_SPCTHD], [Name_CT], [Giaban]) VALUES (12, 7, 1, 666, NULL, N'Quần Jean nam', NULL)
INSERT [dbo].[ChiTietHoaDon] ([ID_SanPham], [ID_HoaDon], [SoLuongMua], [TongTien], [ID_SPCTHD], [Name_CT], [Giaban]) VALUES (12, 8, 1, 666, NULL, N'Quần Jean nam', NULL)
INSERT [dbo].[ChiTietHoaDon] ([ID_SanPham], [ID_HoaDon], [SoLuongMua], [TongTien], [ID_SPCTHD], [Name_CT], [Giaban]) VALUES (12, 9, 1, 666, NULL, N'Quần Jean nam', NULL)
INSERT [dbo].[ChiTietHoaDon] ([ID_SanPham], [ID_HoaDon], [SoLuongMua], [TongTien], [ID_SPCTHD], [Name_CT], [Giaban]) VALUES (12, 10, 1, 666, NULL, N'Quần Jean nam', NULL)
INSERT [dbo].[ChiTietHoaDon] ([ID_SanPham], [ID_HoaDon], [SoLuongMua], [TongTien], [ID_SPCTHD], [Name_CT], [Giaban]) VALUES (12, 13, 1, 666, NULL, N'Quần Jean nam', NULL)
INSERT [dbo].[ChiTietHoaDon] ([ID_SanPham], [ID_HoaDon], [SoLuongMua], [TongTien], [ID_SPCTHD], [Name_CT], [Giaban]) VALUES (12, 14, 1, 666, NULL, N'Quần Jean nam', NULL)
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (1, N'Áo sơ mi ngắn tay hình hổ', 245000, N'Áo sơ mi', N'http://mende.vn/wp-content/uploads/2020/03/FF2C220E711-600x600.jpg', 1, 432, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (2, N'Quần BoxBag vải dù ', 280000, N'Quần', N'http://mende.vn/wp-content/uploads/2020/04/e140a52e3b58c1069849-768x1024.jpg', 2, 123, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (3, N'Ba lô ngang vai mini trong suốt', 179000, N'Túi', N'http://mende.vn/wp-content/uploads/2020/06/mende-bag2.1-768x768.jpg', 6, 12, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (4, N'Vớ Nam dài phối gót màu', 175000, N'Vớ', N'https://product.hstatic.net/1000341789/product/4_89728075aae340dcaceecc4b4b1b306a_master.jpg', 6, 124, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (8, N'Mũ lưỡi trai Khaki chữ thêu', 180000, N'Mũ', N'https://product.hstatic.net/1000341789/product/mausac_trang_no111015.1_fe77969e353440e099baab2db8e6f33d_master.jpg', 6, 121, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (9, N'Nơ đeo cổ', 150000, N'Nơ', N'https://product.hstatic.net/1000341789/product/mausac_tron_bw17001.3_2451aac80fad4da799573808289044ea_master.jpg', 6, 12, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (10, N'Dây chuyền vàng Oversized kiểu', 18452000, N'Dây chuyền', N'https://www.ysl.com/46/46676839DS_14_a_v4.jpg?impolicy=ysl&imwidth=940&imdensity=1', 6, 2, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (11, N'Giày chạy Rapidarun', 2000000, N'Giày', N'https://assets.adidas.com/images/w_85,h_85,f_auto,q_auto:sensitive,fl_lossy/137e7f0ea53f48bfa47eaba701362ad7_9366/gi%C3%A0y-rapidarun.jpg', 3, 123, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (12, N'Giày nữ thể thao Inspired', 1400000, N'Giày', N'https://assets.adidas.com/images/w_385,h_385,f_auto,q_auto:sensitive,fl_lossy/4eb73d23b8c543cb9f17ab220124c248_9366/gi%C3%A0y-bravada.jpg', 3, 12, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (13, N'Áo nam có cổ ngắn tay màu trắng', 499000, N'Áo thun', N'https://im.uniqlo.com/images/common/pc/goods/424214/item/00_424214_middles.jpg', 1, 123, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (14, N'Áo hoodie Airism chống UV', 489000, N'Áo Hoodie', N'https://im.uniqlo.com/images/common/pc/goods/431535/item/10_431535_middles.jpg', 1, 12, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (15, N'Áo sơ mi không tay hoa văn chấm bi', 490000, N'Áo sơ mi', N'https://im.uniqlo.com/images/common/pc/goods/432241/item/01_432241_middles.jpg', 1, 12, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (16, N'Áo thun cho trẻ em họa tiết Mickey Mouse', 199000, N'Áo thun', N'https://im.uniqlo.com/images/common/pc/goods/416487/item/09_416487_middles.jpg', 1, 123, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (17, N'Quần short nam form thẳng', 350000, N'Quần', N'https://product.hstatic.net/1000341789/product/mausac_white_10s20ps017__4__58534da00e064fad8abf851739b2f28e_1024x1024.jpg', 2, 54, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (18, N'Quần short nam trơn vải thun ', 320000, N'Quần', N'https://product.hstatic.net/1000341789/product/mausac_grey_10s20psh010__2__c64aa03ed860435e8896f73fbfd8500a_1024x1024.jpg', 2, 76, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (19, N'Quần thun nữ dài ống rộng Airism', 399000, N'Quần', N'https://im.uniqlo.com/images/common/pc/goods/431555/item/32_431555_middles.jpg', 2, 654, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (20, N'Đầm kiểu Mùa hè 2020 ', 4699000, N'Đầm', N'https://www.chanel.com/images/t_test-look1/q_auto,f_jpg,fl_lossy,dpr_2/w_501/spring-summer-2020-80-8824183521310.jpg', 4, 54, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (21, N'Đầm Cruise 2019/20', 8121000, N'Đầm', N'https://www.chanel.com/images/t_test-look1/q_auto,f_jpg,fl_lossy,dpr_2/w_501/cruise-2019-20-54-8821844115486.jpg', 4, 87, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (22, N'Đầm đen chạm gót họa tiết lạ mắt', 12459000, N'Đầm', N'https://www.chanel.com/images/t_test-look1/q_auto,f_jpg,fl_lossy,dpr_2/w_501/spring-summer-2020-33-8824186077214.jpg', 4, 23, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (23, N'Bộ thể thao nam', 550000, N'Bộ', N'https://cf.shopee.vn/file/9519eeb777524403f00ba9f1bd3588db', 5, 654, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (24, N'Set đỏ cá tính', 1950000, N'Bộ', N'https://cf.shopee.vn/file/56e88b5c3cba444b06bb251d8e301123', 5, 12, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Detail], [Imange], [CategoryByID], [Quanlity], [Sale]) VALUES (25, N'aaaaaaaaaaaaaa', 1950000, N'Bộ', N'https://cf.shopee.vn/file/56e88b5c3cba444b06bb251d8e301123', 5, 12, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
