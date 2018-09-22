USE [TEST_QuanLyCuTru]
GO
/****** Object:  Table [dbo].[ChucVus]    Script Date: 16/09/2018 8:57:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ChucVus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CuTrus]    Script Date: 16/09/2018 8:57:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuTrus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[NgayDangKy] [datetime] NOT NULL,
	[NgayHetHan] [datetime] NOT NULL,
	[SoNha] [nvarchar](max) NOT NULL,
	[Duong] [nvarchar](max) NOT NULL,
	[Phuong] [nvarchar](max) NOT NULL,
	[Quan] [nvarchar](max) NOT NULL,
	[ThanhPho] [nvarchar](max) NOT NULL,
	[DaDuyet] [bit] NOT NULL,
	[LoaiCuTruId] [int] NOT NULL,
	[CanBoId] [int] NULL,
	[Email] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.CuTrus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangKyCuTru]    Script Date: 16/09/2018 8:57:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyCuTru](
	[CuTruId] [int] NOT NULL,
	[CongDanId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.DangKyCuTru] PRIMARY KEY CLUSTERED 
(
	[CuTruId] ASC,
	[CongDanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiCuTrus]    Script Date: 16/09/2018 8:57:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiCuTrus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LoaiCuTrus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDungs]    Script Date: 16/09/2018 8:57:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDungs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](max) NOT NULL,
	[GioiTinh] [smallint] NOT NULL,
	[SinhNhat] [datetime] NOT NULL,
	[ChucVuId] [int] NOT NULL,
	[SoNha] [nvarchar](max) NOT NULL,
	[Duong] [nvarchar](max) NOT NULL,
	[Phuong] [nvarchar](max) NOT NULL,
	[Quan] [nvarchar](max) NOT NULL,
	[ThanhPho] [nvarchar](max) NOT NULL,
	[NoiSinh] [nvarchar](max) NULL,
	[QueQuan] [nvarchar](max) NULL,
	[QuocTich] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[IdentityId] [nvarchar](128) NULL,
	[DienThoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.NguoiDungs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChucVus] ON 

INSERT [dbo].[ChucVus] ([Id], [Ten]) VALUES (1, N'Admin')
INSERT [dbo].[ChucVus] ([Id], [Ten]) VALUES (2, N'Cảnh Sát Khu Vực')
INSERT [dbo].[ChucVus] ([Id], [Ten]) VALUES (3, N'Bảo Vệ Dân Phố')
INSERT [dbo].[ChucVus] ([Id], [Ten]) VALUES (4, N'Công Dân')
SET IDENTITY_INSERT [dbo].[ChucVus] OFF
SET IDENTITY_INSERT [dbo].[CuTrus] ON 

INSERT [dbo].[CuTrus] ([Id], [NgayTao], [NgayDangKy], [NgayHetHan], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [DaDuyet], [LoaiCuTruId], [CanBoId], [Email], [DienThoai]) VALUES (1, CAST(N'2018-04-12 00:00:00.000' AS DateTime), CAST(N'2018-04-13 00:00:00.000' AS DateTime), CAST(N'2018-04-26 00:00:00.000' AS DateTime), N'400', N'Hai Bà Trưng', N'Tân Định', N'1', N'TP.HCM', 0, 1, 1001, N'yeeeu@yahoo.com', N'0909997771')
INSERT [dbo].[CuTrus] ([Id], [NgayTao], [NgayDangKy], [NgayHetHan], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [DaDuyet], [LoaiCuTruId], [CanBoId], [Email], [DienThoai]) VALUES (2, CAST(N'2018-04-12 00:00:00.000' AS DateTime), CAST(N'2018-04-13 00:00:00.000' AS DateTime), CAST(N'2018-04-26 00:00:00.000' AS DateTime), N'400', N'Hai Bà Trưng', N'Tân Định', N'1', N'TP.HCM', 1, 1, 1001, N'yeeeu@yahoo.com', N'0909997771')
INSERT [dbo].[CuTrus] ([Id], [NgayTao], [NgayDangKy], [NgayHetHan], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [DaDuyet], [LoaiCuTruId], [CanBoId], [Email], [DienThoai]) VALUES (3, CAST(N'2018-04-13 00:00:00.000' AS DateTime), CAST(N'2018-04-13 00:00:00.000' AS DateTime), CAST(N'2018-05-13 00:00:00.000' AS DateTime), N'475', N'Điện Biên Phủ', N'25', N'Bình Thạnh', N'TP.HCM', 1, 2, 1001, N'hemco@gmail.com', N'0909929333')
INSERT [dbo].[CuTrus] ([Id], [NgayTao], [NgayDangKy], [NgayHetHan], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [DaDuyet], [LoaiCuTruId], [CanBoId], [Email], [DienThoai]) VALUES (4, CAST(N'2018-04-13 00:00:00.000' AS DateTime), CAST(N'2018-04-13 00:00:00.000' AS DateTime), CAST(N'2018-05-13 00:00:00.000' AS DateTime), N'21', N'Đông Du', N'Bến Nghé', N'1', N'TP.HCM', 0, 2, 1001, N'waifus@gmail.com', N'0909929333')
INSERT [dbo].[CuTrus] ([Id], [NgayTao], [NgayDangKy], [NgayHetHan], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [DaDuyet], [LoaiCuTruId], [CanBoId], [Email], [DienThoai]) VALUES (5, CAST(N'2018-05-04 00:00:00.000' AS DateTime), CAST(N'2018-05-04 00:00:00.000' AS DateTime), CAST(N'2018-06-04 00:00:00.000' AS DateTime), N'227', N'Hoàng Sa', N'Tân Định', N'1', N'TP.HCM', 0, 2, 1002, N'mahythuy@gmail.com', N'113')
INSERT [dbo].[CuTrus] ([Id], [NgayTao], [NgayDangKy], [NgayHetHan], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [DaDuyet], [LoaiCuTruId], [CanBoId], [Email], [DienThoai]) VALUES (6, CAST(N'2018-05-04 03:39:42.363' AS DateTime), CAST(N'2018-05-04 00:00:00.000' AS DateTime), CAST(N'2018-06-04 03:39:42.363' AS DateTime), N'196L', N'Trần Quang Khải', N'Tân Định', N'1', N'TP.HCM', 1, 1, NULL, N'makimtuan@gmail.com', N'01642809246')
INSERT [dbo].[CuTrus] ([Id], [NgayTao], [NgayDangKy], [NgayHetHan], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [DaDuyet], [LoaiCuTruId], [CanBoId], [Email], [DienThoai]) VALUES (7, CAST(N'2018-08-04 22:52:12.583' AS DateTime), CAST(N'2018-08-04 22:52:12.577' AS DateTime), CAST(N'2018-08-14 22:52:12.573' AS DateTime), N'105', N'Đường Số 26', N'Bình Trị Đông B', N'Bình Tân', N'TP.HCM', 1, 1, 1001, N'kuteo@gmail.com', N'0908787868')
SET IDENTITY_INSERT [dbo].[CuTrus] OFF
INSERT [dbo].[DangKyCuTru] ([CuTruId], [CongDanId]) VALUES (2, 1008)
INSERT [dbo].[DangKyCuTru] ([CuTruId], [CongDanId]) VALUES (3, 1003)
INSERT [dbo].[DangKyCuTru] ([CuTruId], [CongDanId]) VALUES (4, 1011)
INSERT [dbo].[DangKyCuTru] ([CuTruId], [CongDanId]) VALUES (4, 1012)
INSERT [dbo].[DangKyCuTru] ([CuTruId], [CongDanId]) VALUES (5, 1007)
INSERT [dbo].[DangKyCuTru] ([CuTruId], [CongDanId]) VALUES (6, 1004)
INSERT [dbo].[DangKyCuTru] ([CuTruId], [CongDanId]) VALUES (7, 1005)
SET IDENTITY_INSERT [dbo].[LoaiCuTrus] ON 

INSERT [dbo].[LoaiCuTrus] ([Id], [Ten]) VALUES (1, N'Tạm Vắng')
INSERT [dbo].[LoaiCuTrus] ([Id], [Ten]) VALUES (2, N'Tạm Trú')
SET IDENTITY_INSERT [dbo].[LoaiCuTrus] OFF
SET IDENTITY_INSERT [dbo].[NguoiDungs] ON 

INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1001, N'Mã Minh Quân', 1, CAST(N'1996-04-24 00:00:00.000' AS DateTime), 1, N'202', N'Trần Quang Khải', N'Tân Định', N'1', N'TP.HCM', N'TP.HCM', N'Trung Quốc', N'Việt Nam', N'/Content/avatar\1533453522.jpg', N'd5ae592c-a561-4bc4-a8f6-6de92cade91b', N'01223727680')
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1002, N'Dương Thanh Tân', 1, CAST(N'1996-10-14 00:00:00.000' AS DateTime), 2, N'199', N'Nguyễn Lâm', N'6', N'10', N'TP.HCM', N'TP.HCM', N'TP.HCM', N'Việt Nam', N'/Content/avatar\1532968510.png', N'fc830519-fd08-4388-a493-c57bc0f545d6', N'0942646809')
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1003, N'Mã Hỷ Thủy', 1, CAST(N'1965-10-07 00:00:00.000' AS DateTime), 3, N'196L', N'Trần Quang Khải', N'Tân Định', N'1', N'TP.HCM', N'TP.HCM', N'Trung Quốc', N'Việt Nam', N'https://scontent.fsgn5-2.fna.fbcdn.net/v/t1.0-9/30728833_448074752280478_1899675829000994816_n.jpg?_nc_cat=0&_nc_eui2=v1%3AAeGWs-ZWzvXj6vWDsUuefKPhaAZjnrM5G28pqoEulm3YNEd1k7ncyHRCvoMfdrOnowgobKLN-TUkGMNp6BiHCCGPxyEfQg5P0TI80Gyx7xg8dw&oh=48b8004bc59692d328af3922e55427f1&oe=5B9B7C47', N'fc3cf1e9-99d8-405c-9b2e-83e0ea2b308d', N'8482520')
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1004, N'Mã Kim Tuấn', 1, CAST(N'1991-04-14 00:00:00.000' AS DateTime), 4, N'196L', N'Trần Quang Khải', N'Tân Định', N'1', N'TP.HCM', N'TP.HCM', N'Trung Quốc', N'Việt Nam', N'https://scontent.fsgn5-2.fna.fbcdn.net/v/t1.0-9/31416703_1222810011155530_6623022059297439744_n.jpg?_nc_cat=0&_nc_eui2=v1%3AAeEOiDEJPwpNAMjQwKbyr_IFAjiNaZIVKuI3-GxUvVTlXVU0Mo_iJ3OOqIX12wY27VXGWegV9M9TTN6v6lqPt-ovExNb3RYqgSyQ2r4p1dsXTg&oh=822bb3b7a696f4835d5da0d29b924256&oe=5B606EE3', N'1aeb3d55-f61a-4bee-bc0f-82a6913b4bae', N'01642809246')
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1005, N'Lưu Gia Tính', 1, CAST(N'2002-07-24 00:00:00.000' AS DateTime), 4, N'31', N'Ngô Bệ', N'13', N'Tân Bình', N'TP.HCM', N'TP.HCM', N'TP.HCM', N'Việt Nam', N'https://scontent.fsgn5-2.fna.fbcdn.net/v/t1.0-9/12715638_228618327474369_8863700740666286093_n.jpg?_nc_cat=0&_nc_eui2=v1%3AAeGSYFS4zJkvzyaRYLz-QPY2reMYNtC_YEsF16pxHuMw58Mr-DTYBAvjNKk9u3g85fTaiT_85nv4JK2I2t3EoYptWHMOi2sqWm-JwS-EgD9Fng&oh=ea6d4556e0399a323de992030b3fecd6&oe=5B93C017', NULL, N'01696717359')
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1006, N'Nguyễn Hoàng Hoài Anh', 0, CAST(N'1996-01-24 00:00:00.000' AS DateTime), 4, N'360D', N'Bến Vân Đồn', N'1', N'4', N'TP.HCM', N'TP.HCM', N'TP.HCM', N'Việt Nam', N'https://scontent.fsgn5-2.fna.fbcdn.net/v/t31.0-1/c0.256.1536.1536/29750103_454772761609842_6373992466176372666_o.jpg?_nc_cat=0&_nc_eui2=v1%3AAeHsMI2GW5LONGoawkT98uzzdC75F_C-kUpBl5yTMmlX7XLscdkcvQQ1eKaWEbZuIihXVW1kWoOIgFXdlJt4DPABTnGPtwTkzYpzOLASC5hlWw&oh=b70c33ab6629ff8263a6ec79d335841b&oe=5B55314E', NULL, N'01234076077')
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1007, N'Nguyễn Thành Lượng', 1, CAST(N'1994-06-11 00:00:00.000' AS DateTime), 4, N'200', N'Lê Trọng Tấn', N'1', N'Tân Phú', N'TP.HCM', N'Đồng Tháp', N'Đồng Tháp', N'Việt Nam', N'/Content/avatar\1525378577.jpg', NULL, NULL)
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1008, N'Đỗ Hoàng Việt', 1, CAST(N'1987-05-27 00:00:00.000' AS DateTime), 4, N'468', N'Nguyễn Tri Phương', N'9', N'10', N'TP.HCM', N'TP.HCM', N'TP.HCM', N'Việt Nam', N'/Content/avatar\1525379053.jpg', NULL, NULL)
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1009, N'Moriya Akane', 0, CAST(N'1997-11-12 00:00:00.000' AS DateTime), 4, N'113', N'Lý Tự Trọng', N'Bến Thành', N'1', N'TP.HCM', N'Miyagi', N'Nhật Bản', N'Nhật Bản', N'/Content/avatar\1525379201.jpg', NULL, N'01223030495')
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1010, N'Kiều Hân', 0, CAST(N'1993-11-23 00:00:00.000' AS DateTime), 4, N'175', N'Hai Bà Trưng', N'6', N'3', N'TP.HCM', N'Bắc Kinh', N'Trung Quốc', N'Trung Quốc', N'/Content/avatar\1525379703.jpg', NULL, NULL)
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1011, N'Tsukiashi Amane', 0, CAST(N'1999-10-26 00:00:00.000' AS DateTime), 4, N'2-2-1', N'Jigyōhama', N'Chuo', N'Fukuoka', N'Fukuoka', N'Fukuoka', N'Nhật Bản', N'Nhật Bản', N'/Content/avatar\1534942011.jpg', NULL, N'00819012345678')
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1012, N'Okabe Rin', 0, CAST(N'1996-11-07 00:00:00.000' AS DateTime), 4, N'4-3-3', N'Sotokanda', N'Akihabara', N'Chiyoda', N'Tokyo', N'Ibaraki', N'Nhật Bản', N'Nhật Bẩn', N'/Content/avatar\1534942443.jpg', NULL, N'+81-3-5298-8648')
INSERT [dbo].[NguoiDungs] ([Id], [HoTen], [GioiTinh], [SinhNhat], [ChucVuId], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NoiSinh], [QueQuan], [QuocTich], [Avatar], [IdentityId], [DienThoai]) VALUES (1013, N'Sugai Yuuka', 0, CAST(N'1995-11-29 00:00:00.000' AS DateTime), 4, N'123', N'Ai Mà Biết', N'Idol', N'Chúa', N'Tokyo', N'Tokyo', N'Nhật Bản', N'Nhật Bản', N'/Content/avatar\1534943104.jpg', NULL, N'898456654')
SET IDENTITY_INSERT [dbo].[NguoiDungs] OFF
ALTER TABLE [dbo].[CuTrus]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CuTrus_dbo.LoaiCuTrus_LoaiCuTruId] FOREIGN KEY([LoaiCuTruId])
REFERENCES [dbo].[LoaiCuTrus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CuTrus] CHECK CONSTRAINT [FK_dbo.CuTrus_dbo.LoaiCuTrus_LoaiCuTruId]
GO
ALTER TABLE [dbo].[CuTrus]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CuTrus_dbo.NguoiDungs_CanBoId] FOREIGN KEY([CanBoId])
REFERENCES [dbo].[NguoiDungs] ([Id])
GO
ALTER TABLE [dbo].[CuTrus] CHECK CONSTRAINT [FK_dbo.CuTrus_dbo.NguoiDungs_CanBoId]
GO
ALTER TABLE [dbo].[DangKyCuTru]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DangKyCuTru_dbo.CuTrus_CuTruId] FOREIGN KEY([CuTruId])
REFERENCES [dbo].[CuTrus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DangKyCuTru] CHECK CONSTRAINT [FK_dbo.DangKyCuTru_dbo.CuTrus_CuTruId]
GO
ALTER TABLE [dbo].[DangKyCuTru]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DangKyCuTru_dbo.NguoiDungs_CongDanId] FOREIGN KEY([CongDanId])
REFERENCES [dbo].[NguoiDungs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DangKyCuTru] CHECK CONSTRAINT [FK_dbo.DangKyCuTru_dbo.NguoiDungs_CongDanId]
GO
ALTER TABLE [dbo].[NguoiDungs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NguoiDungs_dbo.ChucVus_ChucVuId] FOREIGN KEY([ChucVuId])
REFERENCES [dbo].[ChucVus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NguoiDungs] CHECK CONSTRAINT [FK_dbo.NguoiDungs_dbo.ChucVus_ChucVuId]
GO
