/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[LastName] [nvarchar](255) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GuestId] [int] NULL,
	[RoomId] [int] NULL,
	[CheckIn] [datetime] NULL,
	[CheckOut] [datetime] NULL,
	[RoomTypeId] [int] NULL,
	[TotalGuest] [int] NULL,
	[UserId] [int] NULL,
	[TotalAmount] [float] NULL,
	[CreatedAt] [datetime] NULL,
 CONSTRAINT [PK_booking_rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingServices]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingServices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NULL,
	[ServiceId] [int] NULL,
	[TypeId] [int] NULL,
	[GuestNumber] [int] NULL,
	[NightNumber] [int] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_booking_services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckOuts]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckOuts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GuestId] [int] NULL,
	[BookingId] [int] NULL,
	[CheckInDate] [datetime] NULL,
	[CheckOutDate] [datetime] NULL,
	[TotalBill] [float] NULL,
 CONSTRAINT [PK_CheckOuts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[PositionId] [int] NULL,
	[Addresses] [varchar](100) NULL,
	[ContactNumber] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
	[EmployeeTypeId] [int] NULL,
	[Status] [tinyint] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeTypes]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_EmployeeTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Floors]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Floors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FloorSupervisorId] [int] NULL,
	[Note] [text] NULL,
 CONSTRAINT [PK_floors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FloorSupervisors]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FloorSupervisors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
	[ContactNumber] [varchar](50) NULL,
	[Photo] [varchar](50) NULL,
	[Note] [varchar](100) NULL,
 CONSTRAINT [PK_FloorSupervisors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guests]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[ContactNumber] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
	[AddressId] [varchar](50) NULL,
	[IdProof] [varchar](50) NULL,
	[CreditCard] [varchar](50) NULL,
	[Note] [text] NULL,
 CONSTRAINT [PK_bookings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Packages]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
 CONSTRAINT [PK_Packages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Amount] [float] NULL,
	[BookingId] [int] NULL,
	[Method] [varchar](50) NULL,
	[Note] [text] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentType] [varchar](50) NULL,
	[PaymentDetail] [text] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[PositionId] [int] NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricings]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeId] [int] NULL,
	[Price] [int] NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_pricings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reminders]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reminders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NULL,
	[ReminderType] [varchar](50) NULL,
	[ReminderDetail] [text] NULL,
	[RemindDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Reminders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[RoomTypeId] [int] NULL,
	[Status] [tinyint] NULL,
	[PackageId] [int] NULL,
 CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Photo] [varchar](50) NULL,
	[RoomFeacture] [varchar](50) NULL,
	[Capacity] [varchar](50) NULL,
	[Description] [text] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_room_types] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 3/30/2023 11:22:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230328163609_InitApplicationUser', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230328164347_InitHotelMgtSys', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230328170719_InitHotelMgtSystem', N'6.0.15')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1b623f2a-cf42-4b56-b763-dd4491157ff2', N'Ditopi', N'Shapna', N'shapna@gmail.com', N'SHAPNA@GMAIL.COM', N'shapna@gmail.com', N'SHAPNA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEERjWo7bNat9prxzEXwKDO7lJKifHIaJW4tye6cLQ+lim1CxM44coNsf1umRuALd5w==', N'MO5SQ2T3RYH7G3FQWJ3FJKD7KGVPA2Z3', N'7afca190-bdec-4202-ab42-77a7db8f8a6e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'62de512c-3d4e-4df7-bd1f-7a7b0094ab9d', N'Rony', N'Rose', N'rony@gmail.com', N'RONY@GMAIL.COM', N'rony@gmail.com', N'RONY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEElP1HbzkFkovsUv+cTFG5uKkpPxqqDNrDzlX1hLjo23jt3fLz5/LiGrQW4tbK0AwQ==', N'KTQ2QS5PGH2AHZNJ6EERFXOZARV3LS4J', N'ee730b42-ce82-4d0b-b02e-548ce0551722', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9b150231-cd8f-4080-b585-c9f92b4ce423', N'Shahin', N'Alam', N'shahinalambncc2014@gmail.com', N'SHAHINALAMBNCC2014@GMAIL.COM', N'shahinalambncc2014@gmail.com', N'SHAHINALAMBNCC2014@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFV0GF8bpKb/0P3/Tx272k3cKt0JOEoqCeClwSPKM68ngcPU7jjpUVVHcMqIvbMopA==', N'HG3LMNEUW7CAV2XBXKCORTYC6DQSTMFX', N'e9a76813-0dc0-4721-96f3-e39c8a417839', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([Id], [GuestId], [RoomId], [CheckIn], [CheckOut], [RoomTypeId], [TotalGuest], [UserId], [TotalAmount], [CreatedAt]) VALUES (1, 2, 1, CAST(N'2023-03-26T00:00:00.000' AS DateTime), CAST(N'2023-03-28T00:00:00.000' AS DateTime), 1, 2, 1, 6000, NULL)
INSERT [dbo].[Bookings] ([Id], [GuestId], [RoomId], [CheckIn], [CheckOut], [RoomTypeId], [TotalGuest], [UserId], [TotalAmount], [CreatedAt]) VALUES (2, 1, 2, CAST(N'2023-03-26T00:00:00.000' AS DateTime), CAST(N'2023-03-28T00:00:00.000' AS DateTime), 2, 2, 2, 3000, NULL)
INSERT [dbo].[Bookings] ([Id], [GuestId], [RoomId], [CheckIn], [CheckOut], [RoomTypeId], [TotalGuest], [UserId], [TotalAmount], [CreatedAt]) VALUES (3, 1, 2, CAST(N'2023-03-28T06:16:00.000' AS DateTime), CAST(N'2023-03-29T06:16:00.000' AS DateTime), 2, 3, 1, 6000, CAST(N'2023-03-28T06:16:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingServices] ON 

INSERT [dbo].[BookingServices] ([Id], [BookingId], [ServiceId], [TypeId], [GuestNumber], [NightNumber], [Price]) VALUES (1, 1, 1, 1, 4, 2, 6000)
SET IDENTITY_INSERT [dbo].[BookingServices] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Name], [Description]) VALUES (1, N'Administration', N'This is administration department')
INSERT [dbo].[Departments] ([Id], [Name], [Description]) VALUES (2, N'Store', N'This is store')
INSERT [dbo].[Departments] ([Id], [Name], [Description]) VALUES (3, N'Canteen', N'This is canteen')
INSERT [dbo].[Departments] ([Id], [Name], [Description]) VALUES (4, N'Sales', N'This is sales')
INSERT [dbo].[Departments] ([Id], [Name], [Description]) VALUES (5, N'Purchase', N'This is purchase')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [PositionId], [Addresses], [ContactNumber], [EmailAddress], [DepartmentId], [EmployeeTypeId], [Status]) VALUES (1, N'Rahim', N'Ullah', 1, N'1', N'9854729875429', N'rahim@gmail.com', 1, 1, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [PositionId], [Addresses], [ContactNumber], [EmailAddress], [DepartmentId], [EmployeeTypeId], [Status]) VALUES (2, N'Karim', N'Ullah', 2, N'2', N'8752498275275', N'karim@gmail.com', 2, 2, 0)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeTypes] ON 

INSERT [dbo].[EmployeeTypes] ([Id], [Name], [Description]) VALUES (1, N'Contractual', N'Contractural employee')
INSERT [dbo].[EmployeeTypes] ([Id], [Name], [Description]) VALUES (2, N'Permanent', N'Permanenet employee')
INSERT [dbo].[EmployeeTypes] ([Id], [Name], [Description]) VALUES (3, N'Internship', N'Internship employee')
INSERT [dbo].[EmployeeTypes] ([Id], [Name], [Description]) VALUES (4, N'Probation Period', N'Probation period employee')
SET IDENTITY_INSERT [dbo].[EmployeeTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Floors] ON 

INSERT [dbo].[Floors] ([Id], [Name], [FloorSupervisorId], [Note]) VALUES (1, N'Padma', 1, NULL)
INSERT [dbo].[Floors] ([Id], [Name], [FloorSupervisorId], [Note]) VALUES (2, N'Meghna', 2, NULL)
INSERT [dbo].[Floors] ([Id], [Name], [FloorSupervisorId], [Note]) VALUES (3, N'Jamuna', 3, NULL)
INSERT [dbo].[Floors] ([Id], [Name], [FloorSupervisorId], [Note]) VALUES (4, N'Surma', 4, NULL)
SET IDENTITY_INSERT [dbo].[Floors] OFF
GO
SET IDENTITY_INSERT [dbo].[FloorSupervisors] ON 

INSERT [dbo].[FloorSupervisors] ([Id], [FullName], [EmailAddress], [ContactNumber], [Photo], [Note]) VALUES (1, N'Rahim Uddin', N'rahim@gmail.com', N'0824759027549', NULL, NULL)
INSERT [dbo].[FloorSupervisors] ([Id], [FullName], [EmailAddress], [ContactNumber], [Photo], [Note]) VALUES (2, N'Karim Uddin', N'karim@gmail.com', N'7927549802753', NULL, NULL)
INSERT [dbo].[FloorSupervisors] ([Id], [FullName], [EmailAddress], [ContactNumber], [Photo], [Note]) VALUES (3, N'Kamal Khan', N'kamal@gmail.com', N'7825482754755', NULL, NULL)
INSERT [dbo].[FloorSupervisors] ([Id], [FullName], [EmailAddress], [ContactNumber], [Photo], [Note]) VALUES (4, N'Rasel Khan', N'rasel@gmail.com', N'7475298742587', NULL, NULL)
INSERT [dbo].[FloorSupervisors] ([Id], [FullName], [EmailAddress], [ContactNumber], [Photo], [Note]) VALUES (5, N'Rigan Melan', N'rigan@gmail.com', N'9275498725483', NULL, NULL)
SET IDENTITY_INSERT [dbo].[FloorSupervisors] OFF
GO
SET IDENTITY_INSERT [dbo].[Guests] ON 

INSERT [dbo].[Guests] ([Id], [UserId], [FirstName], [LastName], [ContactNumber], [EmailAddress], [AddressId], [IdProof], [CreditCard], [Note]) VALUES (1, 1, N'Ditopi', N'Shapna', N'9275498275445', N'shapna@gmail.com', N'1', NULL, NULL, NULL)
INSERT [dbo].[Guests] ([Id], [UserId], [FirstName], [LastName], [ContactNumber], [EmailAddress], [AddressId], [IdProof], [CreditCard], [Note]) VALUES (2, 2, N'Shamim', N'Parvaj', N'9875498275498', N'shamim@gmail.com', N'2', NULL, NULL, NULL)
INSERT [dbo].[Guests] ([Id], [UserId], [FirstName], [LastName], [ContactNumber], [EmailAddress], [AddressId], [IdProof], [CreditCard], [Note]) VALUES (3, 3, N'Shapla', N'Khatun', N'7375492759872', N'shapla@gmail.com', N'3', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Guests] OFF
GO
SET IDENTITY_INSERT [dbo].[Packages] ON 

INSERT [dbo].[Packages] ([Id], [Name], [Price]) VALUES (1, N'Starter', N'3000')
INSERT [dbo].[Packages] ([Id], [Name], [Price]) VALUES (2, N'Honeymoon', N'6000')
INSERT [dbo].[Packages] ([Id], [Name], [Price]) VALUES (3, N'Vacation', N'7000')
INSERT [dbo].[Packages] ([Id], [Name], [Price]) VALUES (4, N'Spring', N'8000')
SET IDENTITY_INSERT [dbo].[Packages] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([Id], [Date], [Amount], [BookingId], [Method], [Note], [PaymentDate], [PaymentType], [PaymentDetail], [Status]) VALUES (1, CAST(N'2023-03-27T00:00:00.000' AS DateTime), 6000, 1, N'Mobile Banking', NULL, CAST(N'2023-03-27T00:00:00.000' AS DateTime), N'1', NULL, N'due')
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentTypes] ON 

INSERT [dbo].[PaymentTypes] ([Id], [Name], [Description]) VALUES (1, N'Nagad', N'nagad')
INSERT [dbo].[PaymentTypes] ([Id], [Name], [Description]) VALUES (2, N'bKash', N'bKash')
INSERT [dbo].[PaymentTypes] ([Id], [Name], [Description]) VALUES (3, N'Upay', N'upay')
INSERT [dbo].[PaymentTypes] ([Id], [Name], [Description]) VALUES (4, N'Credit Card', N'credit')
INSERT [dbo].[PaymentTypes] ([Id], [Name], [Description]) VALUES (5, N'Bank', N'bank')
SET IDENTITY_INSERT [dbo].[PaymentTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([Id], [Name], [PositionId], [Description]) VALUES (1, N'AGM', NULL, NULL)
INSERT [dbo].[Positions] ([Id], [Name], [PositionId], [Description]) VALUES (2, N'GM', NULL, NULL)
INSERT [dbo].[Positions] ([Id], [Name], [PositionId], [Description]) VALUES (3, N'Manager', NULL, NULL)
INSERT [dbo].[Positions] ([Id], [Name], [PositionId], [Description]) VALUES (4, N'DGM', NULL, NULL)
INSERT [dbo].[Positions] ([Id], [Name], [PositionId], [Description]) VALUES (5, N'Supervisor', NULL, NULL)
INSERT [dbo].[Positions] ([Id], [Name], [PositionId], [Description]) VALUES (6, N'Security', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Positions] OFF
GO
SET IDENTITY_INSERT [dbo].[Pricings] ON 

INSERT [dbo].[Pricings] ([Id], [RoomTypeId], [Price], [Day], [Month], [Year]) VALUES (1, 1, 2000, 1, 3, 2023)
INSERT [dbo].[Pricings] ([Id], [RoomTypeId], [Price], [Day], [Month], [Year]) VALUES (2, 2, 1500, 2, 3, 2023)
INSERT [dbo].[Pricings] ([Id], [RoomTypeId], [Price], [Day], [Month], [Year]) VALUES (3, 3, 1000, 3, 3, 2023)
SET IDENTITY_INSERT [dbo].[Pricings] OFF
GO
SET IDENTITY_INSERT [dbo].[Reminders] ON 

INSERT [dbo].[Reminders] ([Id], [BookingId], [ReminderType], [ReminderDetail], [RemindDate], [Status]) VALUES (1, 1, N'Check out', NULL, CAST(N'2023-03-27T00:00:00.000' AS DateTime), N'not yet')
SET IDENTITY_INSERT [dbo].[Reminders] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([Id], [Name], [RoomTypeId], [Status], [PackageId]) VALUES (1, N'101', 3, 0, 1)
INSERT [dbo].[Rooms] ([Id], [Name], [RoomTypeId], [Status], [PackageId]) VALUES (2, N'102', 4, 1, 2)
INSERT [dbo].[Rooms] ([Id], [Name], [RoomTypeId], [Status], [PackageId]) VALUES (3, N'103', 3, 3, NULL)
INSERT [dbo].[Rooms] ([Id], [Name], [RoomTypeId], [Status], [PackageId]) VALUES (4, N'104', 4, 4, NULL)
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomTypes] ON 

INSERT [dbo].[RoomTypes] ([Id], [Name], [Photo], [RoomFeacture], [Capacity], [Description], [Price]) VALUES (1, N'AC Room', NULL, N'1', N'2', NULL, 1800)
INSERT [dbo].[RoomTypes] ([Id], [Name], [Photo], [RoomFeacture], [Capacity], [Description], [Price]) VALUES (2, N'Non AC Room', NULL, N'2', N'3', NULL, 1200)
INSERT [dbo].[RoomTypes] ([Id], [Name], [Photo], [RoomFeacture], [Capacity], [Description], [Price]) VALUES (3, N'Single Bed', NULL, N'3', N'1', NULL, 700)
INSERT [dbo].[RoomTypes] ([Id], [Name], [Photo], [RoomFeacture], [Capacity], [Description], [Price]) VALUES (4, N'Double Bed', NULL, N'4', N'2', NULL, 1000)
SET IDENTITY_INSERT [dbo].[RoomTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [Name], [Type]) VALUES (1, N'Airport Pickup', N'Pick & Drop')
INSERT [dbo].[Services] ([Id], [Name], [Type]) VALUES (2, N'Swimming Pool', N'Entertainment')
INSERT [dbo].[Services] ([Id], [Name], [Type]) VALUES (3, N'Gymgoer', N'Health & Wealth')
INSERT [dbo].[Services] ([Id], [Name], [Type]) VALUES (4, N'Play Karam', N'Play')
INSERT [dbo].[Services] ([Id], [Name], [Type]) VALUES (5, N'Movie Series', N'Theatre')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
