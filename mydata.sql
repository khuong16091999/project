USE [mydata]
GO
/****** Object:  Table [dbo].[chi_tiet_hoa_don]    Script Date: 19/05/2017 9:08:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_hoa_don](
	[ma_chi_tiet_hoa_don] [int] IDENTITY(1,1) NOT NULL,
	[ma_hoa_don] [int] NULL,
	[ma_san_pham] [int] NULL,
	[so_luong] [int] NULL,
	[don_gia] [int] NULL,
	[giam_gia] [int] NULL,
	[thanh_tien] [int] NULL,
 CONSTRAINT [PK_chi_tiet_hoa_don] PRIMARY KEY CLUSTERED 
(
	[ma_chi_tiet_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[danh_muc]    Script Date: 19/05/2017 9:08:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danh_muc](
	[ma_danh_muc] [int] IDENTITY(1,1) NOT NULL,
	[ten_danh_muc] [nvarchar](100) NULL,
 CONSTRAINT [PK_danh_muc] PRIMARY KEY CLUSTERED 
(
	[ma_danh_muc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 19/05/2017 9:08:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[ma_hoa_don] [int] NOT NULL,
	[ma_tai_khoan] [int] NULL,
	[tong_tien] [float] NULL,
	[dia_chi_giao_hang] [nvarchar](200) NULL,
	[phuong_thuc_thanh_toan] [nvarchar](50) NULL,
	[ngay_mua_hang] [nvarchar](50) NULL,
	[tinh_trang_don_hang] [int] NULL,
 CONSTRAINT [PK_hoa_don] PRIMARY KEY CLUSTERED 
(
	[ma_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loai_tin]    Script Date: 19/05/2017 9:08:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_tin](
	[ma_loai_tin] [int] IDENTITY(1,1) NOT NULL,
	[ten_loai_tin] [nvarchar](50) NULL,
 CONSTRAINT [PK_loai_tin] PRIMARY KEY CLUSTERED 
(
	[ma_loai_tin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 19/05/2017 9:08:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[ma_san_pham] [int] IDENTITY(1,1) NOT NULL,
	[ten_san_pham] [nvarchar](500) NULL,
	[ma_danh_muc] [int] NULL,
	[hinh_anh] [nvarchar](100) NULL,
	[so_luong] [int] NULL,
	[don_gia] [int] NULL,
	[giam_gia] [int] NULL,
	[man_hinh] [nvarchar](200) NULL,
	[camera_sau] [nvarchar](100) NULL,
	[camera_truoc] [nvarchar](100) NULL,
	[he_dieu_hanh] [nvarchar](100) NULL,
	[cpu] [nvarchar](50) NULL,
	[bo_nho] [nvarchar](100) NULL,
	[ram] [nvarchar](50) NULL,
	[ket_noi] [nvarchar](200) NULL,
	[pin_sac] [nvarchar](200) NULL,
	[mo_ta] [nvarchar](1000) NULL,
 CONSTRAINT [PK_san_pham] PRIMARY KEY CLUSTERED 
(
	[ma_san_pham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 19/05/2017 9:08:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[ma_tai_khoan] [int] IDENTITY(1,1) NOT NULL,
	[ten_tai_khoan] [nvarchar](100) NULL,
	[ten_dang_nhap] [nvarchar](50) NULL,
	[mat_khau] [nvarchar](100) NULL,
	[quyen_truy_cap] [int] NULL,
	[tinh_trang] [bit] NULL,
 CONSTRAINT [PK_tai_khoan] PRIMARY KEY CLUSTERED 
(
	[ma_tai_khoan] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = ON, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tin_tuc]    Script Date: 19/05/2017 9:08:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tin_tuc](
	[ma_tin_tuc] [int] IDENTITY(1,1) NOT NULL,
	[ma_loai_tin] [int] NULL,
	[ten_tin_tuc] [nvarchar](500) NULL,
	[tieu_de] [nvarchar](1000) NULL,
	[noi_dung] [nvarchar](4000) NULL,
	[hinh_anh] [nvarchar](150) NULL,
	[ngay_dang] [nvarchar](50) NULL,
 CONSTRAINT [PK_tin_tuc] PRIMARY KEY CLUSTERED 
(
	[ma_tin_tuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[chi_tiet_hoa_don] ON 

INSERT [dbo].[chi_tiet_hoa_don] ([ma_chi_tiet_hoa_don], [ma_hoa_don], [ma_san_pham], [so_luong], [don_gia], [giam_gia], [thanh_tien]) VALUES (8, 469172643, 13, 1, 2450000, 0, 2450000)
INSERT [dbo].[chi_tiet_hoa_don] ([ma_chi_tiet_hoa_don], [ma_hoa_don], [ma_san_pham], [so_luong], [don_gia], [giam_gia], [thanh_tien]) VALUES (9, 469172643, 18, 1, 15490000, 0, 15490000)
SET IDENTITY_INSERT [dbo].[chi_tiet_hoa_don] ON
SET IDENTITY_INSERT [dbo].[danh_muc] ON 

INSERT [dbo].[danh_muc] ([ma_danh_muc], [ten_danh_muc]) VALUES (1, N'Xiaomi')
INSERT [dbo].[danh_muc] ([ma_danh_muc], [ten_danh_muc]) VALUES (2, N'Lumia')
INSERT [dbo].[danh_muc] ([ma_danh_muc], [ten_danh_muc]) VALUES (3, N'LG')
INSERT [dbo].[danh_muc] ([ma_danh_muc], [ten_danh_muc]) VALUES (4, N'SamSung')
INSERT [dbo].[danh_muc] ([ma_danh_muc], [ten_danh_muc]) VALUES (5, N'Oppo')
INSERT [dbo].[danh_muc] ([ma_danh_muc], [ten_danh_muc]) VALUES (6, N'Huawei')
INSERT [dbo].[danh_muc] ([ma_danh_muc], [ten_danh_muc]) VALUES (8, N'Sony')
SET IDENTITY_INSERT [dbo].[danh_muc] ON
INSERT [dbo].[hoa_don] ([ma_hoa_don], [ma_tai_khoan], [tong_tien], [dia_chi_giao_hang], [phuong_thuc_thanh_toan], [ngay_mua_hang], [tinh_trang_don_hang]) VALUES (469172643, 3, 17940000, N'Số 3 ngách 81 ngõ 79 cầu giấy-Hà Nội', N'Thanh toán khi giao hàng', N'18-05-2017 09:29:51', 0)
SET IDENTITY_INSERT [dbo].[loai_tin] ON 

INSERT [dbo].[loai_tin] ([ma_loai_tin], [ten_loai_tin]) VALUES (1, N'Tin công nghệ')
INSERT [dbo].[loai_tin] ([ma_loai_tin], [ten_loai_tin]) VALUES (2, N'Tư vấn mua hàng')
INSERT [dbo].[loai_tin] ([ma_loai_tin], [ten_loai_tin]) VALUES (3, N'Đánh giá sản phẩm')
INSERT [dbo].[loai_tin] ([ma_loai_tin], [ten_loai_tin]) VALUES (4, N'Tuyển dụng')
SET IDENTITY_INSERT [dbo].[loai_tin] ON
SET IDENTITY_INSERT [dbo].[san_pham] ON 

INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (1, N'Lumia 950', 2, N'lumia950.jpg', 5, 3000000, 2, N'Công nghệ màn hình:AMOLEDĐộ phân giải:2K (1440 x 2560 pixels)Màn hình rộng:5.2', N'20MP', N'5MP', N'Windows 10 (for Mobile)', N'2 nhân 1.8 Ghz', N'32GB', N'1 GB', N'3G, 4G  LTE Cat 6', N'3000 mAh Pin chuẩn Lion', N'')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (2, N'Lumia 630', 2, N'lumia630.jpg', 3, 1500000, 5, N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (3, N'GalaxyS8', 4, N'samsung-galaxy-s8.jpg', 10, 18490000, 0, N'Super AMOLED, 5.8', N'12 MP', N'8 MP', N'Android 7.0', N'null', N'null', N'null', N'null', N'null', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (4, N'Oppo F1S', 5, N'oppo-f1s.jpg', 20, 14990000, 0, N'IPS LCD, 5.2", Full HD', N'19 MP', N'13 MP', N'Android 7.0', N'null', N'null', N'null', N'null', N'null', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (5, N'Redmi note 4', 1, N'xiaomi-redmi-note-4.jpg', 30, 4690000, 0, N'IPS LCD. Full HD (1080 x 1920 pixels)', N'13 MP', N'5 MP', N'Android 6.0 (Marshmallow)', N'Snapdragon 625 8 nhân 64-bit', N'32 GB', N'3 GB', N'Nano & Micro (Sim 2 chung khe thẻ nhớ) . 3G, 4G', N'4100 mAh. Pin chuẩn Li-Po', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (6, N'Sony  Xperia XA', 8, N'sony-xperia-xa.jpg', 40, 6490000, 0, N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (7, N'Sony Xperia X', 8, N'sony-xperia-x.jpg', 50, 7990000, 0, N'IPS LCD, 5", Full HD', N'23 MP', N'13 MP', N'Android 6.0 (Marshmallow)', N'Snapdragon 650 6 nhân 64-bit', N'64 GB', N'3 GB', N'2 Nano SIM', N'2620 mAh', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (8, N'sony xperia m5', 8, N'sony-xperia-m5.jpg', 60, 6000000, 0, N'IPS LCD, 5", HD', N'23 MP', N'8 MP', N'Android 7.0', N'Mediatek Helio P20', N'32 GB', N'3 GB', N'2 Nano SIM', N'2300 mAh', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (9, N'sony xperia XZ', 8, N'sony-xperia-xz.jpg', 70, 14990000, 0, N'IPS LCD, 5.2", Full HD', N'19MP', N'13MP', N'Android 7.0', N'2 nhân 2.15 GHz Kryo & 2 nhân 1.6 GHz Kryo', N'32gb', N'2gb', N'2 Nano SIM. 3G, 4G LTE Cat 9', N'2900 mAh. Pin chuẩn Li-Ion. Sạc pin nhanh, Tiết kiệm pin', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (10, N'sony xperia XA Ultra', 8, N'sony-xperia-xa-ultra.jpg', 80, 7490000, 0, N'IPS LCD, 6", Full HD', N'21.5 MP', N'16 MP', N'Android 6.0 (Marshmallow)', N'Helio P10 8 nhân 64-bit', N'16 GB', N'3 GB', N'2 Nano SIM', N'2700 mAh', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (11, N'sony-xperia-xzs', 8, N'sony-xperia-xzs.jpg', 10, 14990000, 0, N'IPS LCD, 5.2", Full HD', N'19 MP', N'13 MP', N'Android 7.0', N'Snapdragon 820 4 nhân 64-bit', N'64 GB', N'4 GB', N'2 Nano SIM', N'2900 mAh', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (12, N'xiaomi-mi-mix', 1, N'xiaomi-mi-mix.jpg', 9, 15291000, 0, N'IPS LCD, 6.4", Full HD', N'16 MP', N'5 MP', N'Android 6.0 (Marshmallow)', N'2 nhân 2.35 GHz Kryo & 2 nhân 2.19 GHz Kryo', N'256 GB', N'6 GB', N'2 Nano SIM. 3G, 4G', N'4400 mAh Pin chuẩn Li-Ion Sạc nhanh Quick Charge 3.0, Tiết kiệm pin', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (13, N'LG K10', 3, N'lg-k10.jpg', 7, 2450000, 0, N'IPS LCD, 5.3", HD', N'8 MP', N'5 MP ', N'Android 5.0 (Lollipop)', N'MTK 6582 4 nhân 32-bit', N'8 GB', N'1.5 GB', N'2 Nano SIM', N'2300 mAh', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (14, N'LG-x-power2', 3, N'lg-x-power2.jpg', 10, 2000000, 0, N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (16, N'Lumia XL', 2, N'asus-zenfone-3.jpg', 100, 1650000, 5, N'AD', N'AS', N'a', N'a', N'a', N'a', N'a', N'a', N'a', N'a')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (18, N'Galaxy S7 Edge', 4, N's7edge.jpg', 5, 15490000, 0, N'Super AMOLED, 5.5", Quad HD', N'12 MP', N'5 MP', N'Android 6.0 (Marshmallow)', N'Exynos 8890 8 nhân 64-bit', N'32 GB', N'4 GB', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ) . 3G, 4G LTE Cat 9', N'3600 mAh. Lithium - Ion', N'1')
INSERT [dbo].[san_pham] ([ma_san_pham], [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES (19, N'OPPO F3 Plus', 5, N'oppo-f3-plus.jpg', 123, 8250000, 12, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'11')
SET IDENTITY_INSERT [dbo].[san_pham] ON
SET IDENTITY_INSERT [dbo].[tai_khoan] ON 

INSERT [dbo].[tai_khoan] ([ma_tai_khoan], [ten_tai_khoan], [ten_dang_nhap], [mat_khau], [quyen_truy_cap], [tinh_trang]) VALUES (1, N'Nguyen Van Duoc', N'anhduoc2705@gmail.com', N'abc123', 1, 0)
INSERT [dbo].[tai_khoan] ([ma_tai_khoan], [ten_tai_khoan], [ten_dang_nhap], [mat_khau], [quyen_truy_cap], [tinh_trang]) VALUES (3, N'Trinh Duc Anh', N'ducanh@gmail.com', N'ducanhabc123', 0, 0)
INSERT [dbo].[tai_khoan] ([ma_tai_khoan], [ten_tai_khoan], [ten_dang_nhap], [mat_khau], [quyen_truy_cap], [tinh_trang]) VALUES (4, N'Do Van Hoang', N'vanhoang@gmail.com', N'vanhoangabc', 0, 0)
SET IDENTITY_INSERT [dbo].[tai_khoan] ON
SET IDENTITY_INSERT [dbo].[tin_tuc] ON 

INSERT [dbo].[tin_tuc] ([ma_tin_tuc], [ma_loai_tin], [ten_tin_tuc], [tieu_de], [noi_dung], [hinh_anh], [ngay_dang]) VALUES (1, 2, N'Qualcomm nổi giận muốn cấm nhập khẩu iPhone vào Mỹ', N'Qualcomm đang muốn trừng trị "Táo khuyết" khi vừa yêu cầu Ủy ban thương mại Quốc tế Hoa Kỳ (ITC) cấm nhập khẩu iPhone vào Mỹ vì lý do Apple không chịu trả phí bản quyền bằng sáng chế cho hãng.', N'Nguyên nhân do Apple đã không chịu chi trả tiền bản quyền khi sử dụng công nghệ của Qualcomm trên iPhone, chủ yếu là các bằng sáng chế về kết nối mạng 3G và 4G do Qualcomm sở hữu. Qualcomm cho rằng các nhà sản xuất điện thoại thông minh cũng phải trả tiền bản quyền cho công nghệ này ngay cả khi thiết bị không sử dụng linh kiện được chứng nhận bởi họ.

Qualcomm nổi giận muốn cấm nhập khẩu iPhone vào Mỹ
Đây là màn trả đũa với Apple khi trước đó nhà sản xuất chip lớn nhất thế giới cũng đã kiện Apple khi không tận dụng hết sức mạnh con chip LTE trên bộ đôi iPhone 7 và 7 Plus.', N'Hinhanh/lumia950.jpg', N'08/05/2017')
INSERT [dbo].[tin_tuc] ([ma_tin_tuc], [ma_loai_tin], [ten_tin_tuc], [tieu_de], [noi_dung], [hinh_anh], [ngay_dang]) VALUES (7, 1, N'Tin Công nghệ', N'Tin công nghệ', N'Nội dung tin công nghệ là tin công nghệ là là tin công nghệ là là tin công nghệ', N'asus-zenfone-3.jpg', N'15/05/2017')
SET IDENTITY_INSERT [dbo].[tin_tuc] ON
ALTER TABLE [dbo].[chi_tiet_hoa_don]  WITH CHECK ADD  CONSTRAINT [FK_chi_tiet_hoa_don_hoa_don] FOREIGN KEY([ma_hoa_don])
REFERENCES [dbo].[hoa_don] ([ma_hoa_don])
GO
ALTER TABLE [dbo].[chi_tiet_hoa_don] CHECK CONSTRAINT [FK_chi_tiet_hoa_don_hoa_don]
GO
ALTER TABLE [dbo].[chi_tiet_hoa_don]  WITH CHECK ADD  CONSTRAINT [FK_chi_tiet_hoa_don_san_pham] FOREIGN KEY([ma_san_pham])
REFERENCES [dbo].[san_pham] ([ma_san_pham])
GO
ALTER TABLE [dbo].[chi_tiet_hoa_don] CHECK CONSTRAINT [FK_chi_tiet_hoa_don_san_pham]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK_hoa_don_tai_khoan] FOREIGN KEY([ma_tai_khoan])
REFERENCES [dbo].[tai_khoan] ([ma_tai_khoan])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK_hoa_don_tai_khoan]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FK_san_pham_danh_muc] FOREIGN KEY([ma_danh_muc])
REFERENCES [dbo].[danh_muc] ([ma_danh_muc])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FK_san_pham_danh_muc]
GO
ALTER TABLE [dbo].[tin_tuc]  WITH CHECK ADD  CONSTRAINT [FK_tin_tuc_loai_tin] FOREIGN KEY([ma_loai_tin])
REFERENCES [dbo].[loai_tin] ([ma_loai_tin])
GO
ALTER TABLE [dbo].[tin_tuc] CHECK CONSTRAINT [FK_tin_tuc_loai_tin]
GO








USE [mydata]
GO
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'Lumia 950', 2, N'lumia950.jpg', 5, 3000000, 2, N'Công nghệ màn hình:AMOLEDĐộ phân giải:2K (1440 x 2560 pixels)Màn hình rộng:5.2', N'20MP', N'5MP', N'Windows 10 (for Mobile)', N'2 nhân 1.8 Ghz', N'32GB', N'1 GB', N'3G, 4G  LTE Cat 6', N'3000 mAh Pin chuẩn Lion', N'')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'Lumia 630', 2, N'lumia630.jpg', 3, 1500000, 5, N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'GalaxyS8', 4, N'samsung-galaxy-s8.jpg', 10, 18490000, 0, N'Super AMOLED, 5.8', N'12 MP', N'8 MP', N'Android 7.0', N'null', N'null', N'null', N'null', N'null', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'Oppo F1S', 5, N'oppo-f1s.jpg', 20, 14990000, 0, N'IPS LCD, 5.2", Full HD', N'19 MP', N'13 MP', N'Android 7.0', N'null', N'null', N'null', N'null', N'null', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'Redmi note 4', 1, N'xiaomi-redmi-note-4.jpg', 30, 4690000, 0, N'IPS LCD. Full HD (1080 x 1920 pixels)', N'13 MP', N'5 MP', N'Android 6.0 (Marshmallow)', N'Snapdragon 625 8 nhân 64-bit', N'32 GB', N'3 GB', N'Nano & Micro (Sim 2 chung khe thẻ nhớ) . 3G, 4G', N'4100 mAh. Pin chuẩn Li-Po', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'Sony  Xperia XA', 8, N'sony-xperia-xa.jpg', 40, 6490000, 0, N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'Sony Xperia X', 8, N'sony-xperia-x.jpg', 50, 7990000, 0, N'IPS LCD, 5", Full HD', N'23 MP', N'13 MP', N'Android 6.0 (Marshmallow)', N'Snapdragon 650 6 nhân 64-bit', N'64 GB', N'3 GB', N'2 Nano SIM', N'2620 mAh', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'sony xperia m5', 8, N'sony-xperia-m5.jpg', 60, 6000000, 0, N'IPS LCD, 5", HD', N'23 MP', N'8 MP', N'Android 7.0', N'Mediatek Helio P20', N'32 GB', N'3 GB', N'2 Nano SIM', N'2300 mAh', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'sony xperia XZ', 8, N'sony-xperia-xz.jpg', 70, 14990000, 0, N'IPS LCD, 5.2", Full HD', N'19MP', N'13MP', N'Android 7.0', N'2 nhân 2.15 GHz Kryo & 2 nhân 1.6 GHz Kryo', N'32gb', N'2gb', N'2 Nano SIM. 3G, 4G LTE Cat 9', N'2900 mAh. Pin chuẩn Li-Ion. Sạc pin nhanh, Tiết kiệm pin', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'sony xperia XA Ultra', 8, N'sony-xperia-xa-ultra.jpg', 80, 7490000, 0, N'IPS LCD, 6", Full HD', N'21.5 MP', N'16 MP', N'Android 6.0 (Marshmallow)', N'Helio P10 8 nhân 64-bit', N'16 GB', N'3 GB', N'2 Nano SIM', N'2700 mAh', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'sony-xperia-xzs', 8, N'sony-xperia-xzs.jpg', 10, 14990000, 0, N'IPS LCD, 5.2", Full HD', N'19 MP', N'13 MP', N'Android 7.0', N'Snapdragon 820 4 nhân 64-bit', N'64 GB', N'4 GB', N'2 Nano SIM', N'2900 mAh', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'xiaomi-mi-mix', 1, N'xiaomi-mi-mix.jpg', 9, 15291000, 0, N'IPS LCD, 6.4", Full HD', N'16 MP', N'5 MP', N'Android 6.0 (Marshmallow)', N'2 nhân 2.35 GHz Kryo & 2 nhân 2.19 GHz Kryo', N'256 GB', N'6 GB', N'2 Nano SIM. 3G, 4G', N'4400 mAh Pin chuẩn Li-Ion Sạc nhanh Quick Charge 3.0, Tiết kiệm pin', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'LG K10', 3, N'lg-k10.jpg', 7, 2450000, 0, N'IPS LCD, 5.3", HD', N'8 MP', N'5 MP ', N'Android 5.0 (Lollipop)', N'MTK 6582 4 nhân 32-bit', N'8 GB', N'1.5 GB', N'2 Nano SIM', N'2300 mAh', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'LG-x-power2', 3, N'lg-x-power2.jpg', 10, 2000000, 0, N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'Lumia XL', 2, N'asus-zenfone-3.jpg', 100, 1650000, 5, N'AD', N'AS', N'a', N'a', N'a', N'a', N'a', N'a', N'a', N'a')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'Galaxy S7 Edge', 4, N's7edge.jpg', 5, 15490000, 0, N'Super AMOLED, 5.5", Quad HD', N'12 MP', N'5 MP', N'Android 6.0 (Marshmallow)', N'Exynos 8890 8 nhân 64-bit', N'32 GB', N'4 GB', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ) . 3G, 4G LTE Cat 9', N'3600 mAh. Lithium - Ion', N'1')
INSERT [dbo].[san_pham] ( [ten_san_pham], [ma_danh_muc], [hinh_anh], [so_luong], [don_gia], [giam_gia], [man_hinh], [camera_sau], [camera_truoc], [he_dieu_hanh], [cpu], [bo_nho], [ram], [ket_noi], [pin_sac], [mo_ta]) VALUES ( N'OPPO F3 Plus', 5, N'oppo-f3-plus.jpg', 123, 8250000, 12, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'11')
