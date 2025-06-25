-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 25, 2025 lúc 10:26 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbantrangsuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('06a80f4a-df4c-48fa-8246-596b270e00f5', 'Customer', 'CUSTOMER', NULL),
('715f59ae-16ba-4d63-aacd-c2c295ffd68a', 'Admin', 'ADMIN', NULL),
('df826527-3be4-410b-84af-724109a3742c', 'Staff', 'STAFF', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `aspnetuserlogins`
--

INSERT INTO `aspnetuserlogins` (`LoginProvider`, `ProviderKey`, `ProviderDisplayName`, `UserId`) VALUES
('Google', '104375350006125815169', 'Google', '45907ade-70b0-4d55-b0c3-a845f51cbd72');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('1fde10a8-626d-42f9-bcc2-ca8b36022ad7', 'df826527-3be4-410b-84af-724109a3742c'),
('45907ade-70b0-4d55-b0c3-a845f51cbd72', '715f59ae-16ba-4d63-aacd-c2c295ffd68a'),
('b2dd2539-0de9-4066-b4bc-652ca0fae41c', '715f59ae-16ba-4d63-aacd-c2c295ffd68a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `DateOfBirth` datetime(6) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL,
  `LastLoginAt` datetime(6) DEFAULT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `FullName`, `Address`, `DateOfBirth`, `Gender`, `IsActive`, `CreatedAt`, `UpdatedAt`, `LastLoginAt`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('1fde10a8-626d-42f9-bcc2-ca8b36022ad7', 'Ngọc Nhất', 'hcm', '1999-02-01 00:00:00.000000', 'Male', 1, '2025-06-25 14:41:44.748255', NULL, NULL, 'bestichigobb@gmail.com', 'BESTICHIGOBB@GMAIL.COM', 'bestichigobb@gmail.com', 'BESTICHIGOBB@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAELp1pMCE6pWZk8e3qzIlvfqvKoq+Jhgq0gX4JJ7bUCWeKSMlbHuvX2ZEIS7ejNgY6g==', 'IWSXTKQ34ABVNVHVHB2CEVGLCRU3VP5I', '8fdeb2f5-b875-404e-ac48-8e03cb076c77', '0337955777', 0, 0, NULL, 1, 0),
('45907ade-70b0-4d55-b0c3-a845f51cbd72', 'NGOC NHAT', NULL, '2007-06-25 14:21:25.722090', 'Other', 1, '2025-06-25 07:21:25.722206', NULL, NULL, 'bestleesinvn2017@gmail.com', 'BESTLEESINVN2017@GMAIL.COM', 'bestleesinvn2017@gmail.com', 'BESTLEESINVN2017@GMAIL.COM', 1, NULL, 'B22TSC7XJYOF7EXGHYRMGFMUD7NVRS25', '5f387d5e-10cb-4632-aff5-a09fc7a91c95', NULL, 0, 0, NULL, 1, 0),
('b2dd2539-0de9-4066-b4bc-652ca0fae41c', 'Quản trị viên hệ thống', '123 Đường ABC, Quận 1, TP.HCM', '1990-01-01 00:00:00.000000', 'Male', 0, '2025-06-25 14:21:03.407066', NULL, NULL, 'admin@example.com', 'ADMIN@EXAMPLE.COM', 'admin@example.com', 'ADMIN@EXAMPLE.COM', 1, 'AQAAAAIAAYagAAAAEJjPxa6z6c/SlfvKeyyyoWIoH6CuSb7OELGaF30hq8G6KJK5VDGaRJynLxWsMJ5wdg==', 'W4CWO2L3BHCCS3LPNLQODGXZA5KX6Z2Q', 'f2012117-0722-44ec-b57b-50296dd795ae', '0123456789', 1, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartitems`
--

CREATE TABLE `cartitems` (
  `Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UnitPrice` decimal(18,2) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) NOT NULL,
  `CartId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `Id` int(11) NOT NULL,
  `SessionId` varchar(100) DEFAULT NULL,
  `UserId` varchar(255) DEFAULT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`Id`, `SessionId`, `UserId`, `CreatedAt`, `UpdatedAt`) VALUES
(1, '2e50976b-1af6-40e9-baae-3cdaecd106f7', NULL, '2025-06-25 14:21:07.448537', NULL),
(2, NULL, '45907ade-70b0-4d55-b0c3-a845f51cbd72', '2025-06-25 14:21:26.326482', NULL),
(3, 'ea2a052b-6b00-4c24-ba7a-b2db7dfc2240', NULL, '2025-06-25 14:24:11.946002', NULL),
(4, 'bf4adfc3-82fc-40d0-a6db-7c33e16e813e', NULL, '2025-06-25 14:28:29.323526', NULL),
(5, '77252fce-03e5-46bd-b5aa-d9f5d152296f', NULL, '2025-06-25 14:41:28.576511', NULL),
(7, NULL, '1fde10a8-626d-42f9-bcc2-ca8b36022ad7', '2025-06-25 14:43:04.194447', NULL),
(8, '029e3ea4-2492-445a-baf8-42711ac62725', NULL, '2025-06-25 14:45:56.904918', NULL),
(9, '87d20dd5-3c63-41cd-8fc2-4b3e292b36da', NULL, '2025-06-25 15:12:34.785245', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `ImageUrl` longtext DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`Id`, `Name`, `Description`, `ImageUrl`, `IsActive`, `CreatedAt`) VALUES
(1, 'Nhẫn', 'Các loại nhẫn cao cấp', 'https://lili.vn/wp-content/uploads/2022/07/Nhan-bac-nu-dinh-kim-cuong-Moissanite-Aidan-LILI_335168_4-768x768.jpg', 1, '2025-06-24 12:57:11.000000'),
(2, 'Dây chuyền', 'Dây chuyền và mặt dây chuyền', 'https://product.hstatic.net/200000214785/product/gixjewel_465799862_863117299321062_6453518721612001140_n_bb8596eb4bd04063ad79ddf8e891876c_master.jpg', 1, '2025-06-24 12:57:11.000000'),
(3, 'Bông tai nữ', 'Bông tai thời trang', 'https://product.hstatic.net/200000351153/product/anh_man_hinh_2025-01-14_luc_15.09.37_17ed8a3659ab41a68f72704f368a2681_master.png', 1, '2025-06-24 12:57:11.000000'),
(4, 'Lắc tay', 'Lắc tay và vòng tay', 'https://locphuc.com.vn/Content/Images/062022/MCN0032EBW.WG00A/lac-tay-MCN0032EBW-WG00A-g3.jpg', 1, '2025-06-24 12:57:11.000000'),
(5, 'Đồng hồ', 'Đồng hồ cao cấp', 'https://media.rolex.com/image/upload/q_auto:eco/f_auto/t_v7/c_limit,w_1600/v1/catalogue/2025/upright-c/m228235-0055', 1, '2025-06-24 12:57:11.000000'),
(7, 'Nhẫn Nam', 'THời gian', '/images/category/7e2fc31b-05fe-4e94-8bc4-7aa217e62c34.jpg', 1, '2025-06-25 14:55:03.395411'),
(8, 'Dây chuyền NAM', 'thời trang', '/images/category/7dc3683e-5f06-43c6-83eb-0d9bcca367d1.jpg', 1, '2025-06-25 15:05:40.033720');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitems`
--

CREATE TABLE `orderitems` (
  `Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UnitPrice` decimal(18,2) NOT NULL,
  `ProductName` varchar(200) NOT NULL,
  `ProductImage` longtext DEFAULT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderitems`
--

INSERT INTO `orderitems` (`Id`, `Quantity`, `UnitPrice`, `ProductName`, `ProductImage`, `OrderId`, `ProductId`) VALUES
(1, 4, 10000000.00, 'Nhẫn Kim Cương Solitaire', '/images/product/ee8c1ae9-ea59-41ed-beea-e0aec0a9b531.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `OrderNumber` varchar(50) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `CustomerPhone` varchar(15) NOT NULL,
  `CustomerEmail` varchar(100) NOT NULL,
  `ShippingAddress` varchar(500) NOT NULL,
  `Notes` varchar(1000) DEFAULT NULL,
  `TotalAmount` decimal(18,2) NOT NULL,
  `ShippingFee` decimal(18,2) NOT NULL,
  `FinalAmount` decimal(18,2) NOT NULL,
  `Status` int(11) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL,
  `DeliveredAt` datetime(6) DEFAULT NULL,
  `UserId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`Id`, `OrderNumber`, `CustomerName`, `CustomerPhone`, `CustomerEmail`, `ShippingAddress`, `Notes`, `TotalAmount`, `ShippingFee`, `FinalAmount`, `Status`, `CreatedAt`, `UpdatedAt`, `DeliveredAt`, `UserId`) VALUES
(1, 'ORD20250625144303864', 'Ngọc Nhất', '0337955777', 'bestichigobb@gmail.com', 'hcm', NULL, 40000000.00, 0.00, 40000000.00, 4, '2025-06-25 14:43:03.840064', '2025-06-25 14:43:36.992776', '2025-06-25 14:43:36.992777', '1fde10a8-626d-42f9-bcc2-ca8b36022ad7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productimages`
--

CREATE TABLE `productimages` (
  `Id` int(11) NOT NULL,
  `ImageUrl` longtext NOT NULL,
  `AltText` longtext DEFAULT NULL,
  `IsMain` tinyint(1) NOT NULL,
  `DisplayOrder` int(11) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `ProductId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Price` decimal(18,2) NOT NULL,
  `DiscountPrice` decimal(18,2) DEFAULT NULL,
  `StockQuantity` int(11) NOT NULL,
  `ImageUrl` longtext DEFAULT NULL,
  `Material` longtext DEFAULT NULL,
  `Size` longtext DEFAULT NULL,
  `Color` longtext DEFAULT NULL,
  `Weight` decimal(8,2) DEFAULT NULL,
  `Brand` longtext DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsFeatured` tinyint(1) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL,
  `CategoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`Id`, `Name`, `Description`, `Price`, `DiscountPrice`, `StockQuantity`, `ImageUrl`, `Material`, `Size`, `Color`, `Weight`, `Brand`, `IsActive`, `IsFeatured`, `CreatedAt`, `UpdatedAt`, `CategoryId`) VALUES
(1, 'Nhẫn Kim Cương Solitaire', 'Nhẫn kim cương solitaire 1 carat, chất liệu vàng trắng 18K', 100000.00, NULL, 1, 'https://quejewelry.vn/wp-content/uploads/2023/12/Nhan-kim-cuong-Solitaire-1.jpg.webp', NULL, '6-8', 'Vàng', 0.60, 'Diamond Elite', 1, 1, '2025-06-24 12:57:11.000000', '2025-06-25 14:51:41.949458', 1),
(2, 'Dây Chuyền Vàng Ý', 'Dây chuyền vàng 18K thiết kế Ý, trọng lượng 10 gram', 12000000.00, NULL, 10, '/images/product/day-chuyen-vang-1.jpg', 'Vàng 18K', NULL, NULL, 10.00, 'Italia Gold', 1, 1, '2025-06-24 12:57:11.000000', NULL, 2),
(3, 'Bông Tai Ngọc Trai', 'Bông tai ngọc trai Akoya 8-9mm với chất liệu bạc 925', 3500000.00, NULL, 15, '/images/product/bong-tai-ngoc-trai-1.jpg', 'Bạc 925', NULL, NULL, NULL, 'Pearl Luxury', 1, 0, '2025-06-24 12:57:11.000000', NULL, 3),
(4, 'Lắc Tay Pandora', 'Lắc tay bạc 925 phong cách Pandora với charm hoa', 2800000.00, 2500000.00, 20, '/images/product/lac-tay-pandora-1.jpg', 'Bạc 925', NULL, NULL, NULL, 'Pandora Style', 1, 0, '2025-06-24 12:57:11.000000', NULL, 4),
(5, 'Đồng Hồ Rolex Submariner', 'Đồng hồ Rolex Submariner thép không gỉ, chống nước 300m', 280000000.00, NULL, 2, '/images/product/rolex-submariner-1.jpg', 'Thép không gỉ', NULL, NULL, NULL, 'Rolex', 0, 1, '2025-06-24 12:57:11.000000', '2025-06-25 15:11:37.668649', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20250619223536_InitialCreateMySQL', '8.0.11'),
('20250624003003_AddUserAndRole', '8.0.11'),
('20250624012435_AddIdentity', '8.0.11'),
('20250624025811_FixGenderNullable', '8.0.11'),
('20250624034948_FixGenderNullableProperty', '8.0.11'),
('20250624055711_UpdateImageUrls', '8.0.11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Chỉ mục cho bảng `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Chỉ mục cho bảng `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Chỉ mục cho bảng `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Chỉ mục cho bảng `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Chỉ mục cho bảng `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Chỉ mục cho bảng `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Chỉ mục cho bảng `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CartItems_CartId` (`CartId`),
  ADD KEY `IX_CartItems_ProductId` (`ProductId`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Carts_SessionId` (`SessionId`),
  ADD KEY `IX_Carts_UserId` (`UserId`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `IX_Categories_Name` (`Name`);

--
-- Chỉ mục cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_OrderItems_OrderId` (`OrderId`),
  ADD KEY `IX_OrderItems_ProductId` (`ProductId`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `IX_Orders_OrderNumber` (`OrderNumber`),
  ADD KEY `IX_Orders_CustomerEmail` (`CustomerEmail`),
  ADD KEY `IX_Orders_UserId` (`UserId`);

--
-- Chỉ mục cho bảng `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_ProductImages_ProductId` (`ProductId`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Products_CategoryId` (`CategoryId`),
  ADD KEY `IX_Products_Name` (`Name`);

--
-- Chỉ mục cho bảng `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cartitems`
--
ALTER TABLE `cartitems`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `productimages`
--
ALTER TABLE `productimages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cartitems`
--
ALTER TABLE `cartitems`
  ADD CONSTRAINT `FK_CartItems_Carts_CartId` FOREIGN KEY (`CartId`) REFERENCES `carts` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CartItems_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`);

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FK_Carts_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `FK_OrderItems_Orders_OrderId` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_OrderItems_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_Orders_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `productimages`
--
ALTER TABLE `productimages`
  ADD CONSTRAINT `FK_ProductImages_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_Products_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
