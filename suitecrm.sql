-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 18, 2021 lúc 03:23 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `suitecrm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('b2ac5855-2c39-56fc-9a4e-600055be1f38', 'Nguyễn Đình Thật', '2021-01-14 14:30:52', '2021-01-14 14:30:52', '1', '1', '', 0, 'c8f40d8d-6c2e-c710-70b3-5ffe521a98a7', 'Customer', 'Electronics', '120000', '', '149, Tổ 3, Khóm 10, TT. Sông Đốc, Trần Văn Thời', 'Cà Mau', '', '96000', 'Việt Nam', NULL, '', NULL, 'http://', NULL, '', NULL, '149, Tổ 3, Khóm 10, TT. Sông Đốc, Trần Văn Thời', 'Cà Mau', '', '96000', 'Việt Nam', '', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `accounts_contacts`
--

INSERT INTO `accounts_contacts` (`id`, `contact_id`, `account_id`, `date_modified`, `deleted`) VALUES
('47b0c97a-3c63-5038-8961-600056e4e505', '3b0b92a0-958f-e7ef-6cb3-600056e0bd8a', 'b2ac5855-2c39-56fc-9a4e-600055be1f38', '2021-01-14 14:32:42', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('b2ac5855-2c39-56fc-9a4e-600055be1f38', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('100d44d4-2ad9-3006-5249-5fe99105dfc7', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('102a85b0-a8da-085d-303f-5fe9913862b6', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('104b7824-509e-9c2c-15b1-5fe991646d62', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Calls', 'module', 90, 0),
('10679577-ff18-7309-b27c-5fe991b37229', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Alerts', 'module', 90, 0),
('107c132e-ddf3-80ad-ef1e-5fe991b822fe', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('10bb9476-6a76-c89c-3b36-5fe9919e22c0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'SurveyQuestionOptions', 'module', 90, 0),
('11168e71-dfb6-25c7-423a-5fe9913e4838', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('11328ec1-927e-1859-c268-5fe991a3a3cf', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Calls', 'module', 90, 0),
('114815ee-8523-c73a-362a-5fe991f9439c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Alerts', 'module', 90, 0),
('116627b2-895a-e79c-9ab8-5fe991da953f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('12080549-97d3-9a50-fd3b-5fe99113e041', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Calls', 'module', 90, 0),
('1218d852-02f8-a839-5599-5fe9914ce21e', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('1224a14c-5751-b0f7-2546-5fe99171ecf5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('12446ca6-06bf-d0e7-96a9-5fe99159f62f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('1308c7c8-01bb-0130-60b8-5fe991c995bc', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('1308e66b-3607-36e4-94d1-5fe991734e49', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('13119046-55d9-f4c7-8f0c-5fe991870bc3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('1315cdbc-7372-2004-13f9-5fe991112d5e', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Calls', 'module', 90, 0),
('13ca2543-865e-d690-0faa-5fe991ac9662', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('13ceea2d-5bbc-21c2-b72c-5fe991b92f9f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Alerts', 'module', 90, 0),
('1400ff85-edb1-8f1e-ecfb-5fe9914372ae', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('140e324e-0201-5dd4-5831-5fe991f136fb', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Calls', 'module', 90, 0),
('148c44dd-fa1a-55a5-216a-5fe991e2e075', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('149e29e6-93cc-1cba-c2d2-5fe991cc1dc2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Alerts', 'module', 90, 0),
('150306bd-23b9-df24-ee50-5fe99192ff27', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('1552b40c-ce5c-ec8d-5deb-5fe991cf6636', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('156a9daf-1314-e4e9-8677-5fe991e24ee1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('16a00661-6e26-a18d-9739-5fe9917fedee', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Leads', 'module', 90, 0),
('21494c25-046f-a116-25b0-5fe991364750', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('221b12f0-5d05-330c-b7a3-5fe9912efe39', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('2229f60f-c756-dde0-77b7-5fe991eeb405', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('22f409ce-6261-ffc6-a5ea-5fe991893cab', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('23550dea-242e-e641-c100-5fe9914c1d52', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('23bf9702-a009-31db-4218-5fe9918b8d26', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('23e709d5-278b-953a-b425-5fe9912b1de3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Spots', 'module', 90, 0),
('23eb066a-e61e-518d-57a7-5fe9914c6f06', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Leads', 'module', 90, 0),
('24338af2-5403-8efd-9c15-5fe991863579', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('249953bb-5a0d-a766-7f72-5fe9911b2910', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('25330da0-6d1c-e099-5248-5fe991488f96', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('256c3b35-e784-5ec4-a8ae-5fe991aa965b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('261fe43f-ae70-119e-7363-5fe991f3234f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('263b37b8-4d91-690e-c9b7-5fe991906e03', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('2706b8b1-f8f3-607b-c2f7-5fe991057a1c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('2707d3f2-dfdd-5b66-eb98-5fe991924eff', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('2732a0e6-5f36-20ee-3fb9-5fe99121cf30', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Contacts', 'module', 89, 0),
('27da2e31-71e5-6694-1bad-5fe9910245e3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('2842847c-275e-f04f-e50b-5fe991f01580', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Contacts', 'module', 90, 0),
('28e3ff10-5af4-07e1-fa1c-5fe9914d87b3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('29305214-b60b-aa3d-5ec2-5fe991da434c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Contacts', 'module', 90, 0),
('2a1f9f0a-f984-6834-3682-5fe991d443ea', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('2b496d64-3d03-a85e-b5d3-5fe991019c1d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('2c394a82-e49f-ebe1-84f2-5fe991d8fe80', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Contacts', 'module', 90, 0),
('2d2b027c-488d-50dd-9ea4-5fe99146ebb8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Contacts', 'module', 90, 0),
('2d90831f-294c-d495-b00e-5fe99120c84b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('2e337fa1-1d69-a9dd-0ce9-5fe9914393e1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('2eeaf781-6ecd-a955-acca-5fe991e8dedc', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('2fbc1ce8-e226-d32f-6533-5fe99185fa50', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('30907e87-cef7-8470-d09f-5fe991aa6b60', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('31268c7a-771e-45dc-ad3e-5fe99197378d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Emails', 'module', 89, 0),
('31629781-4af4-be0c-a30f-5fe9910c941f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('322e80f4-ada8-e2ec-5a5d-5fe991d1b589', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('324a8fc4-a1f5-0ff1-9dfe-5fe99155b682', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Emails', 'module', 90, 0),
('32fdecc0-1055-94d4-259e-5fe991ec34ed', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('33263540-f87b-3a9b-79e4-5fe991e48244', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('336abce4-cd82-bacf-2be2-5fe9917ce5f3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Emails', 'module', 90, 0),
('33f78e57-81f4-699f-4fc6-5fe991f2bfb1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('33fafaba-2190-9302-4782-5fe991f7de24', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('34832776-1f41-d9d6-3c88-5fe991652abf', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Emails', 'module', 90, 0),
('34d90e2b-2058-ea74-6222-5fe99179e083', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Spots', 'module', 90, 0),
('34ecb272-0044-c320-2fce-5fe991914a29', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('3551a270-f18f-bc61-d9ab-5fe991257d80', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('359e58d4-672f-8450-0502-5fe991d90d53', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Emails', 'module', 90, 0),
('35dd7f1a-b6c6-82b5-ca15-5fe9916efb89', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('3665eb75-d663-c9b0-c26f-5fe9918ce9d1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('36b9debc-cf61-2e05-e0c1-5fe99114a8b1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Emails', 'module', 90, 0),
('36e3734f-c2aa-d169-9eba-5fe9914c6819', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('374897c0-70e4-0345-a9e4-5fe9911d4e4e', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('37be1412-83bc-71de-9e8a-5fe9917743e0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('37da10a0-4b60-17b3-572d-5fe99146d1f5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Emails', 'module', 90, 0),
('3826d8ff-0a94-78ba-1f41-5fe991cc13d7', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('38b65870-c26f-4a05-b2e8-5fe991357e50', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('38f7e37c-3780-9415-9113-5fe9915aee28', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('3917de13-cf89-17f0-e38d-5fe99121f8ee', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('39cb74f6-1cc1-cca4-c76e-5fe991963598', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('3a20c576-4d3d-4596-153d-5fe991eab6b4', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('3b495310-2762-2a33-fae5-5fe99197f1c9', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Cases', 'module', 89, 0),
('3ba2a8c3-0658-9208-ad4a-5fe991362626', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('3c078834-32c4-617f-9fd6-5fe991bf28e0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Cases', 'module', 90, 0),
('3ca85a97-4cd3-c3df-3213-5fe9917403bb', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Cases', 'module', 90, 0),
('3caecfce-8fa3-6dca-d275-5fe991ae7128', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Documents', 'module', 89, 0),
('3cbabe1f-c724-bcf3-7dd2-5fe991c08fe0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('3d95bbb1-ce50-817f-44ea-5fe991c104d8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Documents', 'module', 90, 0),
('3d9d1f58-38f0-6da8-84eb-5fe991bd1d59', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Cases', 'module', 90, 0),
('3e49521b-d827-7b2a-0b53-5fe991cb254a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Cases', 'module', 90, 0),
('3e86a2ea-35c6-889b-3f5d-5fe991d821af', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Documents', 'module', 90, 0),
('3eeb41f2-d7de-94e6-393e-5fe99172b71f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Cases', 'module', 90, 0),
('3f88e746-8c1a-3fdb-0587-5fe991bd8ab1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Documents', 'module', 90, 0),
('3fa45ef5-762f-980f-aaa7-5fe99118be9d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Cases', 'module', 90, 0),
('40482d37-640a-72bc-f077-5fe9915e67a0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('4075fdc3-dde1-c555-a841-5fe991ed277c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Documents', 'module', 90, 0),
('41448afe-1d6a-8576-b32b-5fe991645daa', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Documents', 'module', 90, 0),
('41de0022-b274-6bbf-b53d-5fe991a8c09e', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Spots', 'module', 90, 0),
('42399d77-03d4-1a1d-d87f-5fe9916d2287', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Documents', 'module', 90, 0),
('42f23425-20bd-24a2-89cc-5fe991fb719d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('430405ce-5261-7d6a-90bc-5fe99110d0a2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('4425d96b-3beb-dc6f-46e8-5fe991b01e56', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('450a84c1-7709-a7c1-22e0-5fe9913729a1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('4560b1d3-d8ef-07c0-24ee-5fe991cad1e2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('45f6fd66-02e2-8dcd-e44c-5fe9914c4eae', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('468a5f69-7fc3-6e53-0551-5fe99174b182', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('46e1336a-7c3c-2718-031e-5fe991d96425', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('47662a0f-8676-9eee-4919-5fe9911a954f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('47ab75be-caa2-8677-1598-5fe99188c136', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('4852587d-2ed7-392a-225d-5fe991f70e21', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('48bd518c-335e-0f97-a7e0-5fe991ada2ca', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('49263512-3bb7-46b1-5871-5fe991aef925', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('4992f727-3935-17df-a9f2-5fe991e9af52', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('4a307772-951d-ff69-8455-5fe991fa4630', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('4a61c49f-2cdb-e7e6-0f51-5fe9913f40c7', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('4a7205e3-4f54-b385-fcaf-5fe991185158', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Leads', 'module', 90, 0),
('4b0b105d-c49d-64fd-880d-5fe991434844', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('4b4a59af-cb8a-d026-7057-5fe991880a95', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('4bfafc04-0639-1b18-8f38-5fe9912385c2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('4c37daab-be92-019b-381d-5fe99196a7ca', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('4d1fe09d-5f13-4da2-9290-5fe9912f736b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('4d8a0aa3-32ab-6e3d-a53e-5fe99166c344', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Spots', 'module', 90, 0),
('4e1109c8-7876-d60e-a048-5fe991d7c4ae', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('4e54b667-41a1-31b4-9bd6-5fe991e5c5ba', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'EAPM', 'module', 89, 0),
('4efb3cf7-9b18-608e-0873-5fe991601809', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('4f6918e3-10f8-acdf-72fc-5fe9913d462c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'EAPM', 'module', 90, 0),
('4fd10984-05a7-6cfa-a22a-5fe991fbc4fa', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('4ff60533-381d-3326-53bc-5fe991d1b06f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('50a7c395-84c7-a636-8650-5fe9914a4078', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('50b74da9-8a7e-9868-7664-5fe9910b1f6b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'EAPM', 'module', 90, 0),
('51b43259-2704-3b6a-19f5-5fe991eceaf8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('52a71728-7481-306e-4188-5fe991897345', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('53a0437c-3949-42b5-b6f7-5fe9915c9b19', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'EAPM', 'module', 90, 0),
('54a63ebc-eaf8-3281-2825-5fe99141ae0e', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'EAPM', 'module', 90, 0),
('55abbde3-056b-14ab-2bc9-5fe991cc6632', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('56662706-64d1-1b2a-90f5-5fe991343b9f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'SurveyResponses', 'module', 89, 0),
('56a6bf95-4af3-f5f0-259a-5fe991106ab5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('57b9ea58-c683-abc5-923c-5fe991836af4', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'SurveyResponses', 'module', 90, 0),
('57c5b394-b150-f1c0-2a99-5fe9918738a0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('582d4670-fa7e-c32e-af44-5fe991a87c45', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Meetings', 'module', 89, 0),
('5890b264-1737-a341-49a7-5fe991cbc6b6', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'access', 'Employees', 'module', 89, 0),
('58a5dcde-f29e-9c98-9c07-5fe991eb4315', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('58b5e7b3-a7a3-d9be-d92a-5fe991e6fead', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'SurveyResponses', 'module', 90, 0),
('59287b25-b69c-a8dd-6784-5fe991db46b6', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Meetings', 'module', 90, 0),
('597578a9-e100-d14a-98a9-5fe991cb2926', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('598abca7-4b6e-cb2b-644b-5fe991850bfd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'view', 'Employees', 'module', 90, 0),
('59b8fc02-c443-efe3-2830-5fe9912f396d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'SurveyResponses', 'module', 90, 0),
('5a000560-7280-a1b7-e8f7-5fe99195e88a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Spots', 'module', 90, 0),
('5a1e6717-7bf9-3dfd-57de-5fe99132f137', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Meetings', 'module', 90, 0),
('5a5c77c9-0168-2cf4-88a5-5fe9911dc650', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('5a65a785-eedd-5dce-c5c8-5fe991bddcae', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'list', 'Employees', 'module', 90, 0),
('5b0e9519-f4aa-ba7d-2b28-5fe991e20867', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('5b3d119e-597c-04c4-ac45-5fe991493c92', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'SurveyResponses', 'module', 90, 0),
('5b413545-d4fd-c9b7-d6d2-5fe991c152ad', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('5b4bd525-74a5-4e81-8c36-5fe991c0bc0d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'edit', 'Employees', 'module', 90, 0),
('5c0702a3-1f94-2c28-aef8-5fe991aa5d5a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('5c10a0c5-ddae-9e33-afae-5fe991ed07ff', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('5c5c0d7a-9ed8-6e33-e3ff-5fe9913458d5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'SurveyResponses', 'module', 90, 0),
('5c6868be-c79e-8603-f447-5fe991f1a410', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'delete', 'Employees', 'module', 90, 0),
('5cdd1a92-d464-520e-afab-5fe991d72da7', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('5ce9badf-a070-6591-2e16-5fe991d43544', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Meetings', 'module', 90, 0),
('5d677e95-6da6-cd45-cd5c-5fe991187363', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'SurveyResponses', 'module', 90, 0),
('5d74330e-218f-2dee-ea38-5fe9913e73a3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'import', 'Employees', 'module', 90, 0),
('5dd4bc31-c591-33f4-58de-5fe991e1aaa8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Meetings', 'module', 90, 0),
('5e5257f4-8eed-49c9-1704-5fe991dbea8a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'export', 'Employees', 'module', 90, 0),
('5e7e6ad5-ffdb-5962-fda0-5fe99175ae99', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'SurveyResponses', 'module', 90, 0),
('5eb3c820-bf11-cc6b-e123-5fe991053126', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('5f443fd1-639b-ec49-1e45-5fe9911db0d0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'massupdate', 'Employees', 'module', 90, 0),
('5fed6e74-14c1-5041-37b3-5fe991c316b0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Accounts', 'module', 89, 0),
('60e5d013-6ac0-91dd-15b1-5fe991a95598', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Accounts', 'module', 90, 0),
('61ba0986-eeb4-828b-acec-5fe9914de2cd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Accounts', 'module', 90, 0),
('624407ba-eaf2-35d5-476b-5fe991cd595f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('6291e723-4e2f-5086-cb7b-5fe991fdeab0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('63536587-8335-30aa-cab1-5fe991afae1b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('63b54b9f-8580-d724-9ede-5fe991fa4f1d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('63ba06ec-c8c0-814b-4724-5fe991431a0a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('642fcb3a-fe50-4dde-f514-5fe99159c799', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Accounts', 'module', 90, 0),
('64bbaf2e-7501-4095-0af1-5fe99123fba6', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('650451c3-2e32-4514-5415-5fe991af7c3c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Accounts', 'module', 90, 0),
('6560009a-e8c7-dbae-1288-5fe99128b793', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Spots', 'module', 90, 0),
('65b8c1f5-c153-f472-071a-5fe991ea3090', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('65dedae3-b5b0-d891-450b-5fe9917e0089', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('660901ef-f92f-3dc1-aed9-5fe9918feb95', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('66b44762-ea3b-234b-6f81-5fe9919fa9b5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('66ca2eb6-2154-1395-dd3a-5fe991a1c703', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Bugs', 'module', 89, 0),
('679d59ba-8e91-1b1a-d6c8-5fe991802c2c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('67aea666-6768-bbe9-f646-5fe99150edf5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Bugs', 'module', 90, 0),
('6874426e-93c9-cd44-7589-5fe991e044e2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('68ae731f-f0cb-25b6-553f-5fe9918a1892', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Bugs', 'module', 90, 0),
('697557a6-ce3a-5b71-4d6d-5fe9912db974', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('699a76dc-beed-8aa3-4142-5fe9916ff8ae', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('6a687475-1a50-917d-75d3-5fe9918a989d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('6a84c729-64b1-eea6-96e2-5fe9919c2ee3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('6b7f9d3c-48c8-36f7-80eb-5fe9918dc431', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Bugs', 'module', 90, 0),
('6bcd468f-05a5-bcf4-564d-5fe991e0de54', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('6c6ea30f-0a8a-f174-e2f7-5fe99156d24f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Bugs', 'module', 90, 0),
('6cc3fc48-e397-50dc-68d3-5fe99145e426', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('6d5fbf99-0522-690a-dabb-5fe99188c4b5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('6d9aa8e5-15b0-7074-59f5-5fe991e77181', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('6e736f3a-1b1d-ec66-c34f-5fe9916edc56', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('6f37cdc5-64de-e0cb-0398-5fe991c753dd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('6ff6bc3b-22a7-25f3-b41a-5fe9917a810d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('703b9d7c-9838-63ac-6400-5fe991e6bba4', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Prospects', 'module', 89, 0),
('70b85345-f9e6-4479-50bf-5fe991d4f6ee', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('70d70eac-d310-32f6-369c-5fe991e453bc', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('715bbbc1-3fca-b78e-ff62-5fe991520d0f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Prospects', 'module', 90, 0),
('7195a6d5-a70c-c709-6fc4-5fe991771207', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('72393ce0-595f-0405-6bcd-5fe991546f2b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Prospects', 'module', 90, 0),
('7328b654-183a-be94-e0a2-5fe991dbec80', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('73df2ce8-8c3e-acfa-bdd7-5fe9913b4b46', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('74c25699-1cb1-ce6d-21b8-5fe9919bc181', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Prospects', 'module', 90, 0),
('75a7db3b-7d01-17f4-afc6-5fe991d9dfd9', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Prospects', 'module', 90, 0),
('76986dab-ff17-bc47-8526-5fe9911c5da7', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('7a70175c-e461-3c60-f0b9-5fe9911a6123', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Tasks', 'module', 89, 0),
('7b5d68fd-4c97-3b86-4ae3-5fe991594e2a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Tasks', 'module', 90, 0),
('7b77e868-a008-0ee4-4b88-5fe991fbb3d5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('7c4a05ce-6ac7-4196-607c-5fe9911b0e45', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Tasks', 'module', 90, 0),
('7c8270f3-df3b-a74d-58df-5fe99110aa48', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('7d1e9133-c151-88c0-eaec-5fe991c34593', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('7d77f594-2730-b283-bae1-5fe991f01c06', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('7e00d922-8704-0640-deb7-5fe9912630d1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('7e7333ec-e694-5625-49be-5fe991c00256', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('7edf4208-d92c-4f4d-4e1a-5fe991304f60', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Tasks', 'module', 90, 0),
('7f7790f1-571f-1cf9-9c6d-5fe991d79535', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('7fb8f225-a99e-f07d-efab-5fe991f451cb', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Tasks', 'module', 90, 0),
('8077ec7d-7ca4-306c-77eb-5fe991763a20', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('80904afb-9a34-7ce1-e2a7-5fe9913a83f3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('818e07d5-f7cb-310c-95f2-5fe991b1ee79', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('8191f8f9-f2d2-5239-86a4-5fe991d76f58', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('81bf9049-9f65-48bd-e093-5fe991d0ab74', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('825521ce-f146-d6f7-410e-5fe991c03d07', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Surveys', 'module', 89, 0),
('82699b01-9611-007e-98a9-5fe99151f456', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('82a3bc12-4b9d-4c45-1469-5fe9918ccd58', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('835424a7-ebd5-65f2-beb4-5fe991766bd5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Surveys', 'module', 90, 0),
('835cd764-a822-7a1d-c7c4-5fe99193125d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('840d2deb-8dd9-b8da-cf64-5fe991c7c617', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('8444474a-a792-eeeb-47b3-5fe991cd7ddf', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Surveys', 'module', 90, 0),
('84cd1e95-c8d9-fe85-21d4-5fe9911b9751', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('8509116a-03b1-6673-110c-5fe991954b03', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'FP_events', 'module', 89, 0),
('85190e9c-7f1d-56c1-64dc-5fe991744f5d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Surveys', 'module', 90, 0),
('85a8e890-cfc8-9eaa-179b-5fe991c189f0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('85f590f8-8305-91ca-f226-5fe9913338cd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Surveys', 'module', 90, 0),
('862b5b74-cced-59b5-0fe7-5fe991e5983b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'FP_events', 'module', 90, 0),
('8688f3b6-4e6f-c7ac-44dd-5fe9911a1bf1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('86c03eb9-db71-866e-24b8-5fe99141f72d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Surveys', 'module', 90, 0),
('872bf147-7d38-4099-a281-5fe991390670', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'FP_events', 'module', 90, 0),
('87328551-5fbc-ff3f-e0f1-5fe99100990f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('8762c156-1605-4d19-cf81-5fe991f6dbaf', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('87865002-90e3-2347-f433-5fe991d3863d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Surveys', 'module', 90, 0),
('882106df-3bf3-d817-5575-5fe9914d26eb', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('883343cc-5856-3f81-0dda-5fe99171e29d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('884aeb94-31da-b231-1c15-5fe991188c80', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Surveys', 'module', 90, 0),
('89348a43-0ceb-7fc3-bda1-5fe99191fc57', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('8936f48d-6faf-aae4-427b-5fe9917348c9', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('896f387c-3192-39ce-cf8f-5fe9910f31dc', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('8a0f118c-c330-84ca-6b98-5fe991e394d8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('8a3c4ee5-e844-1a52-2808-5fe991728c0f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'FP_events', 'module', 90, 0),
('8a4ef12f-2db6-bed2-069b-5fe991f829f8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('8ad528ed-feb4-75f8-27c4-5fe9915a5cfc', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('8b196f3d-f5c9-3f7b-9f2f-5fe9914dd267', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'FP_events', 'module', 90, 0),
('8b3e78a3-e5c1-2e16-f0a7-5fe9917788ca', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('8baebba3-3e27-b455-5c5c-5fe991b5f301', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('8bf64f92-13f1-2135-3a28-5fe991084f6b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('8c32852a-7c8d-5cd3-6e2f-5fe9914a7895', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('8caa545c-91aa-b64d-29e7-5fe9916b7bd3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('8d251326-d46e-e47a-bdf7-5fe9913c58f1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('8d914baf-1423-7020-8944-5fe9911e99af', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('8e123978-8a99-2be4-e394-5fe9916e1de0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('8e98077b-58ce-c7a3-04fb-5fe9912226b7', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('8f1522ea-a950-b5f2-b9d6-5fe99134927b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('9002ab21-67ef-78bb-3774-5fe991d97cf4', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('9085658f-4af3-14aa-f56b-5fe991b70132', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Users', 'module', 89, 0),
('915f1084-7a3f-452a-f48a-5fe991f809a2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Users', 'module', 90, 0),
('922d9caa-6f4b-7ec3-3b1b-5fe991311b5d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Users', 'module', 90, 0),
('92fc95b7-7a9f-4874-489e-5fe991273224', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Users', 'module', 90, 0),
('93d2769e-4126-f707-5c2c-5fe991dd25d4', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Users', 'module', 90, 0),
('94a860b7-5f56-bc17-504c-5fe9914110d2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Users', 'module', 90, 0),
('95736e2b-32dc-f3ba-4868-5fe991dec4a3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Users', 'module', 90, 0),
('964189a3-2877-1dfd-8e77-5fe991373627', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('97d98f8c-5748-2aaf-fb6f-5fe9919492d8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('990beb29-a1a8-9051-e65a-5fe9919d686d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('99cfda1f-f957-e4c1-e444-5fe99159b864', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('9a9f7b66-cc05-ac3d-373a-5fe9917492bd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('9b590855-d45d-2b3f-dc76-5fe991a05eaa', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('9b5bed87-0888-81f7-f9b9-5fe9917ea434', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('9bbb2f8b-4e7c-7598-3cd7-5fe991f5abce', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('9c4db416-fd51-21e4-e198-5fe9910a31e4', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('9c5897c1-c701-76d7-a532-5fe991a24183', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('9c89e791-8bd0-75ad-edc8-5fe991482910', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('9ca10601-c27e-5c20-5956-5fe9919ccad4', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'SurveyQuestionOptions', 'module', 89, 0),
('9d30721c-158f-c056-692b-5fe99127c260', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('9d4402db-4a7c-87a3-5440-5fe991973b23', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('9d7799ae-ee03-d123-2003-5fe991750155', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('9dc8093f-c633-9026-010c-5fe99184be95', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('9e0af605-864a-1d4f-c6b6-5fe9917f12da', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('9e0fe800-79ba-5cd5-06ef-5fe991984322', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('9e6892d0-cea9-a9af-2074-5fe991c2817b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('9eeea38f-7536-6b8e-cd5f-5fe99168e8ca', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('9f8d8289-a870-70f7-ebc9-5fe99150962b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('9fce588d-18cd-c0d3-f89b-5fe9911c9c0a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('a07bf528-55f3-b6d3-38a6-5fe991182187', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('a0add8a9-b932-fbce-14dd-5fe9913ae8a5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('a178b8fc-f7de-94c3-87a0-5fe9910e6673', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('a1812648-b7a8-751b-ace4-5fe991b4de0b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('a18349b9-01ec-38ff-9453-5fe9917637c6', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('a274c148-9851-b79f-4ff2-5fe9911583c0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('a2d06f6c-d1d9-df54-18be-5fe991d6de31', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('a3c8b404-bff0-380b-9a97-5fe99126fb9f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('a3dd0e7e-396e-6394-b676-5fe9917eb3e6', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('a4c5d37e-7f45-eb0b-1cf9-5fe9917b9d6a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('a5b46281-8b2a-2314-5bd7-5fe991cb89bd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('a63ff7b8-be9f-5c3d-973a-5fe991a641cd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('a6a9a7bb-1ad5-e90a-9003-5fe99196320b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('a73cae80-ffea-1db9-b82e-5fe9918e160a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('a794fcfe-711b-488f-84dd-5fe991cb8a8f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('a8249c4e-35b6-f389-68a0-5fe9919e2360', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('a893ae5e-04f1-1ad5-14f8-5fe99134dca8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('a913220b-58c3-edb8-9b22-5fe991ee39a0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('a9fe76ce-8d27-193f-a8c5-5fe991379ec8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('aa4ac08d-1c76-f179-ae60-5fe99105b293', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('aac9f2e0-a504-9c9e-29de-5fe991d6c366', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('ab456744-738b-c720-3322-5fe991b0dab8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('ab5b0857-c791-bdac-00d8-5fe991750992', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'SurveyQuestionOptions', 'module', 90, 0),
('ab881f0b-8357-88f0-96b1-5fe991a4e4c1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'SurveyQuestionResponses', 'module', 89, 0),
('ab932356-a060-c695-6bce-5fe9914a18c1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('ac220371-2277-878b-d774-5fe991a38a1c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('ac57ede7-ba37-daae-9348-5fe991a599f2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('ac6b9b7c-2168-81ca-4234-5fe991a96a8a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('aca0daac-a0ad-5952-f974-5fe991c6a958', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'SurveyQuestionResponses', 'module', 90, 0),
('acb4792d-94aa-f27b-25a7-5fe991990b1d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('ad33c349-59d2-2345-b811-5fe99100db80', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('ad954bf2-3a7d-e3fc-b572-5fe99169f4cb', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('ada0ada6-a1ca-ffb8-7957-5fe991054b82', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'SurveyQuestionResponses', 'module', 90, 0),
('ae303a10-554a-204f-6954-5fe991d9dbeb', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('ae7dc2b8-f4b3-206f-1ad7-5fe9919d4671', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('ae9d5dd6-d898-6aea-e9e3-5fe99117c20d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'SurveyQuestionResponses', 'module', 90, 0),
('af35032f-561c-58f6-3331-5fe991c5da84', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('af6ced59-b625-ac50-8de2-5fe99176adde', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('af9eb37a-1a01-b0a6-fd0d-5fe99153846a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'SurveyQuestionResponses', 'module', 90, 0),
('b03796be-b258-728a-c41b-5fe991c3b941', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('b05f3683-3b79-cc74-f87f-5fe9911a764c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('b0a335f6-ec5f-19f1-4914-5fe991384431', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'SurveyQuestionResponses', 'module', 90, 0),
('b12cce2f-60ac-da2e-547b-5fe9919f721c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('b14832c7-ab94-6642-afaa-5fe9918dafa5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('b1a64d3e-879f-53ba-d1b5-5fe991bc50df', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'SurveyQuestionResponses', 'module', 90, 0),
('b20b0384-6478-f201-f7a9-5fe9917d9cf0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('b2312d82-92c2-21d0-ce38-5fe991a0e273', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('b27fc4e4-d383-31f9-2f97-5fe9919ef44a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('b29b67bb-1554-6f56-3284-5fe991a5bebc', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'SurveyQuestionResponses', 'module', 90, 0),
('b3117773-7971-9fdc-a876-5fe99184937b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('b394b3f8-0da3-df98-94ab-5fe99179f361', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('b4919591-7b1f-f68c-6105-5fe9910a4a31', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('b59fe417-a393-ffd9-baed-5fe9919fd0ca', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('b6b96afa-bc9a-9505-7fec-5fe99129a947', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('b7e8a2b4-1cbb-a89d-510a-5fe991a230cd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('b92414b1-a4b1-858b-43cd-5fe991d91b88', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('ba0d0b5d-0fea-e94c-a366-5fe991b36938', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'SurveyQuestionOptions', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('ba59377a-0727-05f3-8480-5fe991ba772f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('bb8c07ac-0928-929b-4833-5fe99115ee88', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('c20c0b36-47c2-af55-32d7-5fe9914f650f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('c218f0fb-e18c-1a03-5e56-5fe991fdff67', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('c31a5001-3fc7-e99b-4cf0-5fe991815e31', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('c466431a-9117-66a5-32d1-5fe991d14198', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('c4ba2a31-6dbf-61a9-f6b2-5fe99130e025', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Project', 'module', 89, 0),
('c55a7aab-8278-3955-8f2e-5fe991014824', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('c59c320d-1251-19ea-0062-5fe991e0eaf9', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Project', 'module', 90, 0),
('c65b6579-4b12-0fc1-805f-5fe991a8c9e0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('c670d173-301d-7eff-dfc6-5fe9912f92bb', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Project', 'module', 90, 0),
('c742c253-2a4a-cfac-4436-5fe991448121', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Project', 'module', 90, 0),
('c76062c6-92e2-d529-9a5f-5fe9919350fd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('c78e668a-e9c8-187c-1443-5fe991aafc4c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('c817a692-cbd3-c46c-ea1e-5fe991773119', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Project', 'module', 90, 0),
('c85bf0a5-3f3a-438b-ba72-5fe9911f220a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('c88c4932-f211-1278-2e83-5fe991d62f1d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('c8e91789-4d8c-33fa-9dc3-5fe9917dcaac', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Project', 'module', 90, 0),
('c9604d45-e488-4158-eef5-5fe9914cc27f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('c96705f6-2453-523f-1014-5fe991fd5bf1', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('c9bc1c63-7f2d-8a15-9aec-5fe99194e016', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Project', 'module', 90, 0),
('ca4f132d-502d-5aee-0cd4-5fe9916973a5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('caa6f5eb-c27c-81f2-44c4-5fe99148c11a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('cb3e92a9-b63b-131f-c460-5fe9915c6bd2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('cc23a415-34a1-3d49-5f84-5fe991ade554', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('cd0d3d3e-c909-743b-3dd5-5fe991dc1b1f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('cd310a2b-1462-a6c9-ca96-5fe9919756ad', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'SurveyQuestionOptions', 'module', 90, 0),
('cdd1e182-c278-af31-6a4e-5fe991051755', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('cdf4deca-43a7-96de-523c-5fe9917f19dc', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('ce6e0f93-2998-985d-7b87-5fe991d71448', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('cec82ba1-feb9-f717-4fc3-5fe991f6a31b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('cfb885ed-0011-0629-a460-5fe99177479c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('d0a1d2a6-ffea-4a9d-4bb6-5fe991ef9ffe', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('d189edb6-d4c6-af84-aed6-5fe9919e773d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('d27d6ac9-0dc4-e687-467d-5fe9919ba898', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('d2d0a027-3572-d6ed-c8b6-5fe991cb1f5d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('d39fc1ec-9a70-7ef0-8b64-5fe9912bbeaf', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('d3d3cf03-be8a-3584-a18c-5fe99113181a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('d46c9d4a-4566-775c-c818-5fe991e6739e', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('d4c47979-6892-d428-422a-5fe9914915d9', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('d56c52df-f267-856e-3fa9-5fe99172596b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'SurveyQuestions', 'module', 89, 0),
('d57006b7-e7f1-a8df-7b38-5fe9914a3d6e', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('d5947f70-5835-9610-af3c-5fe991225042', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('d657cb55-0375-4273-1649-5fe99107f1cd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('d65faf8c-dd3c-b418-dbef-5fe99179789c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'SurveyQuestions', 'module', 90, 0),
('d714ace0-6c07-939c-935a-5fe991f67888', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('d75b9bea-abb6-2458-cbb1-5fe991baf382', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'SurveyQuestions', 'module', 90, 0),
('d7ef8dae-256a-1a9b-9486-5fe991f2477f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('d8401e23-96b1-5ad2-a8e2-5fe991eb9081', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'SurveyQuestions', 'module', 90, 0),
('d8b1b1e7-6336-dbbf-8cf1-5fe99178f96b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('d930d33b-3c66-1ae9-dbc8-5fe9911efa1d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'SurveyQuestions', 'module', 90, 0),
('d9ea9189-c3e8-1a4b-5501-5fe991433de5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('da0081af-e614-ee32-3eae-5fe991e16020', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'SurveyQuestions', 'module', 90, 0),
('daeacb16-1c00-4889-efed-5fe9919a972b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('daecfb75-ef5d-32cb-1a04-5fe991f95e2e', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'SurveyQuestions', 'module', 90, 0),
('dbd5aabe-290e-a221-dfee-5fe9917ed553', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'SurveyQuestions', 'module', 90, 0),
('dbd6a8fd-65eb-6bbb-53a2-5fe991982fd5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('dbdb0c61-8f47-3c40-57b4-5fe991fe567d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('dcba0f78-89a8-3481-50d2-5fe99112c4bd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('dd826565-45b0-931b-2fd7-5fe991046ec7', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('de2e0848-be5e-0abe-c6db-5fe991aa483f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'SurveyQuestionOptions', 'module', 90, 0),
('de609243-74e0-34f1-2942-5fe991ae0a01', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('df81e0fc-adc1-5471-6962-5fe9918378ea', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('e0759ad6-eea1-0ce9-1f74-5fe99143a8d2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('e1294056-4128-6d77-cf89-5fe991e10d4b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Notes', 'module', 89, 0),
('e42c95a9-569b-ed17-52d5-5fe9910ba6e9', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Notes', 'module', 90, 0),
('e4e302c6-3fb2-9304-85f8-5fe9913267cd', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Notes', 'module', 90, 0),
('e54e0225-640f-567a-882a-5fe991cbc6b9', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('e5950731-4ab0-2b54-5c51-5fe991eb9484', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Calls', 'module', 89, 0),
('e59920e8-2c35-973a-d33c-5fe991e47b1d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Notes', 'module', 90, 0),
('e651281c-d5fd-1e65-c965-5fe991ccde64', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'Notes', 'module', 90, 0),
('e70a07f9-978a-eb0f-5fe3-5fe99197714d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'Notes', 'module', 90, 0),
('e7b869ff-d7dc-a375-69dc-5fe9912999e3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('e8072daa-fce4-2cee-14e3-5fe991410489', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'Notes', 'module', 90, 0),
('e8300251-c3bb-5889-1e43-5fe99135777f', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e8cad13f-c73b-7e3b-2da3-5fe99127eea5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('e8ff7685-9599-b1b4-e206-5fe9910525ef', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('e9d4c5fa-00c6-380c-2014-5fe991f309f0', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('ead81cce-59ad-453f-55c2-5fe991497fb5', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('ebd71d75-44bc-cb91-7b93-5fe99155f256', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('eca203fd-ce6d-9048-6970-5fe991ad15e8', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('ed768757-6487-2c69-92de-5fe99150b701', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('edd80716-4770-8f9e-58e4-5fe991dcf437', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'import', 'SurveyQuestionOptions', 'module', 90, 0),
('ee2d337d-7418-f149-2626-5fe9918c5a0a', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('ee33075d-445e-7c77-cbcb-5fe991df87e3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Spots', 'module', 89, 0),
('eefceb17-42d8-076b-4008-5fe991e16df6', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Leads', 'module', 89, 0),
('f01fc973-d5fe-d3b7-79db-5fe991f5619e', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Leads', 'module', 90, 0),
('f08c06ac-3bfb-3c90-8304-5fe99159c5a2', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'Alerts', 'module', 89, 0),
('f0ea58c4-6672-6ed8-d368-5fe991b8d600', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'Leads', 'module', 90, 0),
('f36d2301-85f6-e277-dd2b-5fe991260aba', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'edit', 'Leads', 'module', 90, 0),
('f48c0261-22b6-af87-604d-5fe9918bf017', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('f496047a-6f9e-53a2-3f3a-5fe99169c2d7', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('f5a10111-5aea-3834-a431-5fe991f1a0ac', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'view', 'Calls', 'module', 90, 0),
('f6190ea9-60c9-f596-ab4c-5fe99100fa2d', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('fdb10bca-f265-c42d-8e94-5fe991226d9c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '', 'export', 'SurveyQuestionOptions', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `acl_roles`
--

INSERT INTO `acl_roles` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES
('29bd53cb-8518-e723-c48d-5ffe53d6834a', '2021-01-13 01:56:42', '2021-01-13 01:58:17', '1', '1', 'Giám đốc', 'Ban giám đốc', 0),
('3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2021-01-18 02:20:01', '2021-01-18 02:20:01', '1', '1', 'Nhân viên CSKH', 'Quyền của Nhân viên CSKH', 0),
('5996d131-9bb4-c4d6-f674-6004f0d8afab', '2021-01-18 02:21:45', '2021-01-18 02:21:45', '1', '1', 'Nhân viên Marketing', 'Quyền của Nhân viên Marketing', 0),
('857d3817-1929-a617-ad2c-5ffe57175f84', '2021-01-13 02:15:39', '2021-01-18 02:16:22', '1', '1', 'Nhân viên Sales', 'Quyền của Nhân viên Sales', 0),
('860158ee-3501-2093-b810-5ffe567b916e', '2021-01-13 02:10:50', '2021-01-18 01:47:06', '1', '1', 'Trưởng phòng CSKH', 'Quyền của Trưởng phòng CSKH', 0),
('9aa28ee2-1061-3640-2107-5ffe57e6db95', '2021-01-13 02:14:31', '2021-01-18 02:11:21', '1', '1', 'Trưởng phòng Marketing', 'Quyền của Trưởng phòng Marketing', 0),
('f3ab2114-3037-5119-1375-5ffe5300083d', '2021-01-13 01:58:48', '2021-01-18 01:45:25', '1', '1', 'Trưởng phòng Sales', 'Quyền của Trưởng phòng sales', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `acl_roles_actions`
--

INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('102c063a-ad63-97c4-284d-5ffe53fadd4e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c20c0b36-47c2-af55-32d7-5fe9914f650f', 90, '2021-01-13 01:58:24', 0),
('1045d797-55f6-6732-df21-5ffe5729d813', '857d3817-1929-a617-ad2c-5ffe57175f84', '3826d8ff-0a94-78ba-1f41-5fe991cc13d7', 75, '2021-01-18 02:18:59', 0),
('10461a55-ef28-b52e-d1a8-5ffe5369e8cf', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3f88e746-8c1a-3fdb-0587-5fe991bd8ab1', 90, '2021-01-13 01:58:24', 0),
('1056ce6e-5a3f-cf02-7669-5ffe5495e044', 'f3ab2114-3037-5119-1375-5ffe5300083d', '150306bd-23b9-df24-ee50-5fe99192ff27', -99, '2021-01-18 02:17:49', 0),
('10a0cecf-4675-aff9-73eb-5ffe53c6392b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '42399d77-03d4-1a1d-d87f-5fe9916d2287', 90, '2021-01-13 01:58:24', 0),
('10a3ec10-2e95-cc28-11fc-5ffe571c4619', '857d3817-1929-a617-ad2c-5ffe57175f84', '3ba2a8c3-0658-9208-ad4a-5fe991362626', 75, '2021-01-18 02:18:59', 0),
('10b47e03-5ed8-35e9-51e6-6004f03d86ce', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '39cb74f6-1cc1-cca4-c76e-5fe991963598', -99, '2021-01-18 02:21:17', 0),
('10b5baef-8651-cef7-06ed-5ffe54bf733c', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'f5a10111-5aea-3834-a431-5fe991f1a0ac', 80, '2021-01-18 02:17:49', 0),
('10bd7d0b-3aff-1fbb-4d05-5ffe5652bc84', '860158ee-3501-2093-b810-5ffe567b916e', '140e324e-0201-5dd4-5831-5fe991f136fb', 80, '2021-01-18 02:20:17', 0),
('10f97b78-2e61-cf09-2eb2-5ffe5302f359', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '41448afe-1d6a-8576-b32b-5fe991645daa', 90, '2021-01-13 01:58:24', 0),
('11007ddb-0e8d-0027-f2d7-5ffe572e9125', '857d3817-1929-a617-ad2c-5ffe57175f84', '3a20c576-4d3d-4596-153d-5fe991eab6b4', -99, '2021-01-18 02:18:59', 0),
('1112fdd3-745b-ba23-c38c-5ffe54b7e0ad', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd9ea9189-c3e8-1a4b-5501-5fe991433de5', 89, '2021-01-18 02:17:49', 0),
('1154cf21-64c1-b409-be0b-5ffe53f1e542', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3e86a2ea-35c6-889b-3f5d-5fe991d821af', 90, '2021-01-13 01:58:24', 0),
('115da989-fdba-b5cb-bbb1-5ffe57b75930', '857d3817-1929-a617-ad2c-5ffe57175f84', '374897c0-70e4-0345-a9e4-5fe9911d4e4e', 75, '2021-01-18 02:18:59', 0),
('11791c1a-55bd-c536-32de-5ffe546bb4e1', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'dd826565-45b0-931b-2fd7-5fe991046ec7', 80, '2021-01-18 02:17:49', 0),
('117cc136-1fc8-4594-9964-6004f038050d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '33f78e57-81f4-699f-4fc6-5fe991f2bfb1', 75, '2021-01-18 02:21:17', 0),
('11ad38a3-ce27-7328-0ad9-5ffe532fa9d4', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '430405ce-5261-7d6a-90bc-5fe99110d0a2', 90, '2021-01-13 01:58:24', 0),
('11c009bb-fdd2-3fd7-e0d3-5ffe56616f6b', '860158ee-3501-2093-b810-5ffe567b916e', 'f48c0261-22b6-af87-604d-5fe9918bf017', 80, '2021-01-18 02:20:17', 0),
('11c5c897-e8ee-3776-53ae-5ffe57fadcd9', '857d3817-1929-a617-ad2c-5ffe57175f84', '3cbabe1f-c724-bcf3-7dd2-5fe991c08fe0', -99, '2021-01-18 02:18:59', 0),
('11ddf803-6696-01c0-713c-5ffe54ab48b6', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'dcba0f78-89a8-3481-50d2-5fe99112c4bd', 80, '2021-01-18 02:17:49', 0),
('11eeefc5-2837-09cb-8b3c-5ffe56643448', '860158ee-3501-2093-b810-5ffe567b916e', '1315cdbc-7372-2004-13f9-5fe991112d5e', -99, '2021-01-18 02:20:17', 0),
('12030b23-1b55-6831-9970-5ffe53820c4c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3d95bbb1-ce50-817f-44ea-5fe991c104d8', 90, '2021-01-13 01:58:24', 0),
('12304443-f4d5-fab9-4997-5ffe57728322', '857d3817-1929-a617-ad2c-5ffe57175f84', '3665eb75-d663-c9b0-c26f-5fe9918ce9d1', 75, '2021-01-18 02:18:59', 0),
('1245d616-59d6-2d10-c5a0-6004f056389b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'eefceb17-42d8-076b-4008-5fe991e16df6', 89, '2021-01-18 02:21:17', 0),
('1247eb94-31ae-92a0-a5d2-5ffe54e28a0e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'df81e0fc-adc1-5471-6962-5fe9918378ea', 80, '2021-01-18 02:17:49', 0),
('1256932a-c2c5-52a5-66d4-5ffe569e99b0', '860158ee-3501-2093-b810-5ffe567b916e', '104b7824-509e-9c2c-15b1-5fe991646d62', 80, '2021-01-18 02:20:17', 0),
('12598f7b-4215-8d0a-1e59-5ffe53442d5b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9ca10601-c27e-5c20-5956-5fe9919ccad4', 89, '2021-01-13 01:58:24', 0),
('128e8952-1a7d-88ef-f35c-5ffe57643335', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd57006b7-e7f1-a8df-7b38-5fe9914a3d6e', -98, '2021-01-18 02:18:59', 0),
('12afae81-5ba3-ea0d-c47b-5ffe546d3416', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'de609243-74e0-34f1-2942-5fe991ae0a01', -99, '2021-01-18 02:17:49', 0),
('12b15f2c-d4f5-344c-99f8-5ffe53f2ac88', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'de2e0848-be5e-0abe-c6db-5fe991aa483f', 90, '2021-01-13 01:58:24', 0),
('12ca19b3-78d8-6367-640d-5ffe56314f1c', '860158ee-3501-2093-b810-5ffe567b916e', '150306bd-23b9-df24-ee50-5fe99192ff27', -99, '2021-01-18 02:20:17', 0),
('12ede2ae-831d-3c9e-768c-6004f01f60ea', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '16a00661-6e26-a18d-9739-5fe9917fedee', 75, '2021-01-18 02:21:17', 0),
('12ffa603-6a13-d550-4c53-5ffe579d0439', '857d3817-1929-a617-ad2c-5ffe57175f84', '11168e71-dfb6-25c7-423a-5fe9913e4838', 75, '2021-01-18 02:18:59', 0),
('13066d0a-6341-7899-eee7-5ffe539b6e6e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'cd310a2b-1462-a6c9-ca96-5fe9919756ad', 90, '2021-01-13 01:58:24', 0),
('1314ed07-f36a-0e6e-3718-5ffe5491e838', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'dbd6a8fd-65eb-6bbb-53a2-5fe991982fd5', 80, '2021-01-18 02:17:49', 0),
('132bc448-a6cd-749f-3e9b-5ffe569a872f', '860158ee-3501-2093-b810-5ffe567b916e', 'f5a10111-5aea-3834-a431-5fe991f1a0ac', 80, '2021-01-18 02:20:17', 0),
('135e0613-1535-bfe5-ee89-5ffe56ab77e5', '860158ee-3501-2093-b810-5ffe567b916e', '63b54b9f-8580-d724-9ede-5fe991fa4f1d', -98, '2021-01-18 02:20:17', 0),
('135e8d40-5d87-9d46-528d-5ffe531dc883', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'fdb10bca-f265-c42d-8e94-5fe991226d9c', 90, '2021-01-13 01:58:24', 0),
('1360e29c-e763-ae8b-1783-5ffe57a01e5c', '857d3817-1929-a617-ad2c-5ffe57175f84', '102a85b0-a8da-085d-303f-5fe9913862b6', 75, '2021-01-18 02:18:59', 0),
('13730a0c-196d-f2fd-590d-5ffe5405f4e0', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e0759ad6-eea1-0ce9-1f74-5fe99143a8d2', -99, '2021-01-18 02:17:49', 0),
('13b23ea9-6600-9b36-46da-6004f0863f02', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'f36d2301-85f6-e277-dd2b-5fe991260aba', 75, '2021-01-18 02:21:17', 0),
('13b6aa60-4cde-8d6f-0354-5ffe538d039c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'edd80716-4770-8f9e-58e4-5fe991dcf437', 90, '2021-01-13 01:58:24', 0),
('13c3fbba-d0fa-982d-a24a-5ffe57942f90', '857d3817-1929-a617-ad2c-5ffe57175f84', '13119046-55d9-f4c7-8f0c-5fe991870bc3', 75, '2021-01-18 02:18:59', 0),
('13ce187d-58b7-185f-7d41-5ffe56a36d52', '860158ee-3501-2093-b810-5ffe567b916e', 'd9ea9189-c3e8-1a4b-5501-5fe991433de5', -98, '2021-01-18 02:20:17', 0),
('13cf81e6-f049-1fa1-873b-5ffe5467fada', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'daeacb16-1c00-4889-efed-5fe9919a972b', 80, '2021-01-18 02:17:49', 0),
('1414c764-ef79-6bb3-c293-5ffe5388a8e1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ba0d0b5d-0fea-e94c-a366-5fe991b36938', 90, '2021-01-13 01:58:24', 0),
('142b553d-3b70-174b-9a90-5ffe57adb49a', '857d3817-1929-a617-ad2c-5ffe57175f84', '1224a14c-5751-b0f7-2546-5fe99171ecf5', -99, '2021-01-18 02:18:59', 0),
('142fe0b8-0491-3886-cea3-5ffe56751426', '860158ee-3501-2093-b810-5ffe567b916e', 'dd826565-45b0-931b-2fd7-5fe991046ec7', 80, '2021-01-18 02:20:17', 0),
('143ade89-d29e-e087-66fe-5ffe541e0c26', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7b77e868-a008-0ee4-4b88-5fe991fbb3d5', -98, '2021-01-18 02:17:49', 0),
('146e8eb3-fefb-2215-08e2-5ffe532229ef', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '10bb9476-6a76-c89c-3b36-5fe9919e22c0', 90, '2021-01-13 01:58:24', 0),
('147441ce-027f-f062-5789-6004f0eafd39', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4a7205e3-4f54-b385-fcaf-5fe991185158', 75, '2021-01-18 02:21:17', 0),
('14892c5f-d773-fcb1-8012-5ffe564b0db7', '860158ee-3501-2093-b810-5ffe567b916e', 'dcba0f78-89a8-3481-50d2-5fe99112c4bd', 80, '2021-01-18 02:20:17', 0),
('149974ad-8c48-b26f-c0b1-5ffe57eba43b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'f48c0261-22b6-af87-604d-5fe9918bf017', 75, '2021-01-18 02:18:59', 0),
('14a1e3e4-ffbe-9a14-b56d-5ffe54df1b66', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7f7790f1-571f-1cf9-9c6d-5fe991d79535', 80, '2021-01-18 02:17:49', 0),
('14d248df-4315-da3a-dc0d-5ffe53c7f9c1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ab5b0857-c791-bdac-00d8-5fe991750992', 90, '2021-01-13 01:58:24', 0),
('14e719e5-0f08-2753-2a62-5ffe568899be', '860158ee-3501-2093-b810-5ffe567b916e', 'df81e0fc-adc1-5471-6962-5fe9918378ea', 80, '2021-01-18 02:20:17', 0),
('1505ded3-6952-00f6-65db-5ffe54cebef1', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7e7333ec-e694-5625-49be-5fe991c00256', 80, '2021-01-18 02:17:49', 0),
('15072f60-e6d5-a928-b179-5ffe575834a8', '857d3817-1929-a617-ad2c-5ffe57175f84', '1400ff85-edb1-8f1e-ecfb-5fe9914372ae', -99, '2021-01-18 02:18:59', 0),
('1528551d-56ce-6073-2641-5ffe53dee51a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'acb4792d-94aa-f27b-25a7-5fe991990b1d', 89, '2021-01-13 01:58:24', 0),
('153b2e2b-0a39-2564-9486-6004f0e5b840', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '23eb066a-e61e-518d-57a7-5fe9914c6f06', -99, '2021-01-18 02:21:17', 0),
('15420a48-9dc9-6c8e-ab25-5ffe56e1252d', '860158ee-3501-2093-b810-5ffe567b916e', 'de609243-74e0-34f1-2942-5fe991ae0a01', -99, '2021-01-18 02:20:17', 0),
('156caab8-eb37-59c6-e186-5ffe547a6c69', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8191f8f9-f2d2-5239-86a4-5fe991d76f58', 80, '2021-01-18 02:17:49', 0),
('15706667-b8f0-58d3-5189-5ffe57207def', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e54e0225-640f-567a-882a-5fe991cbc6b9', 75, '2021-01-18 02:18:59', 0),
('1589a736-c6ed-ca58-e8a3-5ffe539c08fc', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b05f3683-3b79-cc74-f87f-5fe9911a764c', 90, '2021-01-13 01:58:24', 0),
('159b44ff-5c98-bc42-5f22-5ffe56d0d859', '860158ee-3501-2093-b810-5ffe567b916e', 'dbd6a8fd-65eb-6bbb-53a2-5fe991982fd5', 80, '2021-01-18 02:20:17', 0),
('15be0b49-08cc-bde5-8d82-6004f0ce5aee', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '56a6bf95-4af3-f5f0-259a-5fe991106ab5', -98, '2021-01-18 02:21:17', 0),
('15d21b78-2486-c7e8-0650-5ffe573a366e', '857d3817-1929-a617-ad2c-5ffe57175f84', '63b54b9f-8580-d724-9ede-5fe991fa4f1d', 89, '2021-01-18 02:18:59', 0),
('15d2b964-fd15-9ee2-fa61-5ffe54e63dff', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8077ec7d-7ca4-306c-77eb-5fe991763a20', -99, '2021-01-18 02:17:49', 0),
('15d80865-5f11-b027-0ffc-5ffe549c3918', 'f3ab2114-3037-5119-1375-5ffe5300083d', '679d59ba-8e91-1b1a-d6c8-5fe991802c2c', 80, '2021-01-18 02:17:49', 0),
('15f528f3-b946-c65b-79c9-5ffe53d50ea9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'af6ced59-b625-ac50-8de2-5fe99176adde', 90, '2021-01-13 01:58:24', 0),
('15fd7d46-9571-eef9-a02c-5ffe560764a4', '860158ee-3501-2093-b810-5ffe567b916e', 'e0759ad6-eea1-0ce9-1f74-5fe99143a8d2', -99, '2021-01-18 02:20:17', 0),
('15fe1314-f098-26b7-50ee-6004f00e456f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'f0ea58c4-6672-6ed8-d368-5fe991b8d600', 75, '2021-01-18 02:21:17', 0),
('1631ec95-1b36-edae-61d2-5ffe549e5acd', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7d77f594-2730-b283-bae1-5fe991f01c06', 80, '2021-01-18 02:17:49', 0),
('163487bf-1a03-daa1-997d-5ffe5765cf24', '857d3817-1929-a617-ad2c-5ffe57175f84', '679d59ba-8e91-1b1a-d6c8-5fe991802c2c', 75, '2021-01-18 02:18:59', 0),
('165b7008-8267-9c4a-bf82-5ffe537ecdd8', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b2312d82-92c2-21d0-ce38-5fe991a0e273', 90, '2021-01-13 01:58:24', 0),
('1692f71a-0af5-0bba-4dcf-5ffe548f658f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '82699b01-9611-007e-98a9-5fe99151f456', -99, '2021-01-18 02:17:49', 0),
('169a62ba-bce7-ee5a-8ac4-5ffe5787c418', '857d3817-1929-a617-ad2c-5ffe57175f84', '66b44762-ea3b-234b-6f81-5fe9919fa9b5', 75, '2021-01-18 02:18:59', 0),
('16c18ae8-c5c6-3910-f937-5ffe537c74a9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b14832c7-ab94-6642-afaa-5fe9918dafa5', 90, '2021-01-13 01:58:24', 0),
('16c25441-e1d1-20c9-aaba-6004f078251a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '63ba06ec-c8c0-814b-4724-5fe991431a0a', -99, '2021-01-18 02:21:17', 0),
('16ec86de-c2bd-4bf5-37df-5ffe54b585b3', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7c8270f3-df3b-a74d-58df-5fe99110aa48', 80, '2021-01-18 02:17:49', 0),
('16f00f3e-b482-1df0-b0db-5ffe57bbf577', '857d3817-1929-a617-ad2c-5ffe57175f84', 'delete', 75, '2021-01-18 02:18:59', 0),
('17004ad5-dc4a-46eb-214b-5ffe5750eb5b', '857d3817-1929-a617-ad2c-5ffe57175f84', '697557a6-ce3a-5b71-4d6d-5fe9912db974', 75, '2021-01-18 02:18:59', 0),
('172a4806-7019-599f-01bc-5ffe53c9c593', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ae7dc2b8-f4b3-206f-1ad7-5fe9919d4671', 90, '2021-01-13 01:58:24', 0),
('17478047-78ed-053c-8b03-5ffe54a9fb10', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd56c52df-f267-856e-3fa9-5fe99172596b', -98, '2021-01-18 02:17:49', 0),
('176f5877-4282-1643-7523-5ffe5749aabb', '857d3817-1929-a617-ad2c-5ffe57175f84', '6874426e-93c9-cd44-7589-5fe991e044e2', -99, '2021-01-18 02:18:59', 0),
('1785e513-1168-fc74-b100-6004f03faf10', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'f01fc973-d5fe-d3b7-79db-5fe991f5619e', 75, '2021-01-18 02:21:17', 0),
('1791f3f5-73bd-59d1-fd40-5ffe53137d86', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b3117773-7971-9fdc-a876-5fe99184937b', 90, '2021-01-13 01:58:24', 0),
('17aa3037-619f-9d7a-ed45-5ffe54a59168', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd930d33b-3c66-1ae9-dbc8-5fe9911efa1d', 80, '2021-01-18 02:17:49', 0),
('17e53ffb-4cc3-7448-bf6e-5ffe57b27dec', '857d3817-1929-a617-ad2c-5ffe57175f84', '65b8c1f5-c153-f472-071a-5fe991ea3090', 75, '2021-01-18 02:18:59', 0),
('17f1ed01-54bc-9f58-9ba2-5ffe53623194', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ad954bf2-3a7d-e3fc-b572-5fe99169f4cb', 90, '2021-01-13 01:58:24', 0),
('1811bbee-ac45-866b-21a0-5ffe54628d93', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd8401e23-96b1-5ad2-a8e2-5fe991eb9081', 80, '2021-01-18 02:17:49', 0),
('18533b9f-4426-5172-2dc7-5ffe53fb3819', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3b495310-2762-2a33-fae5-5fe99197f1c9', 89, '2021-01-13 01:58:24', 0),
('1853d176-dd32-5e74-b267-6004f01b7ab0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'acb4792d-94aa-f27b-25a7-5fe991990b1d', -98, '2021-01-18 02:21:17', 0),
('185be93b-abbd-3466-3d1c-5ffe57a1bafc', '857d3817-1929-a617-ad2c-5ffe57175f84', '6a687475-1a50-917d-75d3-5fe9918a989d', -99, '2021-01-18 02:18:59', 0),
('1873448c-78a5-ff23-a160-5ffe54c2a189', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'daecfb75-ef5d-32cb-1a04-5fe991f95e2e', 80, '2021-01-18 02:17:49', 0),
('18bad454-54f8-554c-26fb-5ffe53e0bf61', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3e49521b-d827-7b2a-0b53-5fe991cb254a', 90, '2021-01-13 01:58:24', 0),
('18ce6288-1f13-6e17-a1c3-5ffe57557a29', '857d3817-1929-a617-ad2c-5ffe57175f84', '64bbaf2e-7501-4095-0af1-5fe99123fba6', 75, '2021-01-18 02:18:59', 0),
('18d1695d-f264-20bd-1596-5ffe545ef4fa', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'da0081af-e614-ee32-3eae-5fe991e16020', -99, '2021-01-18 02:17:49', 0),
('19199746-4af9-03cf-ee27-5ffe539c14c1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3d9d1f58-38f0-6da8-84eb-5fe991bd1d59', 90, '2021-01-13 01:58:24', 0),
('191d00b4-9457-d891-b287-6004f0946242', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b05f3683-3b79-cc74-f87f-5fe9911a764c', 75, '2021-01-18 02:21:17', 0),
('19367b24-2bae-5000-b0a6-5ffe5462f07a', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd75b9bea-abb6-2458-cbb1-5fe991baf382', 80, '2021-01-18 02:17:49', 0),
('19475234-6338-abed-8a4b-5ffe57b49d90', '857d3817-1929-a617-ad2c-5ffe57175f84', '21494c25-046f-a116-25b0-5fe991364750', -98, '2021-01-18 02:18:59', 0),
('19500959-b688-fa57-8e55-5ffe56f4e883', '860158ee-3501-2093-b810-5ffe567b916e', '679d59ba-8e91-1b1a-d6c8-5fe991802c2c', 80, '2021-01-18 02:20:17', 0),
('19713e2a-4bb7-6bc4-3637-5ffe561a0d06', '860158ee-3501-2093-b810-5ffe567b916e', 'daeacb16-1c00-4889-efed-5fe9919a972b', 80, '2021-01-18 02:20:17', 0),
('199141ba-df56-d200-9591-5ffe530909c2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3fa45ef5-762f-980f-aaa7-5fe99118be9d', 90, '2021-01-13 01:58:24', 0),
('199b3c20-718b-a133-3724-5ffe544c38f1', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'dbd5aabe-290e-a221-dfee-5fe9917ed553', -99, '2021-01-18 02:17:49', 0),
('19a4d2f2-cb83-a3d0-550e-5ffe578355f0', '857d3817-1929-a617-ad2c-5ffe57175f84', '249953bb-5a0d-a766-7f72-5fe9911b2910', 75, '2021-01-18 02:18:59', 0),
('19df1d3b-8651-6bac-4c63-6004f01f0a62', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'af6ced59-b625-ac50-8de2-5fe99176adde', 75, '2021-01-18 02:21:17', 0),
('19e9f0d3-a7dd-430c-6a8f-5ffe561b922f', '860158ee-3501-2093-b810-5ffe567b916e', '7b77e868-a008-0ee4-4b88-5fe991fbb3d5', -98, '2021-01-18 02:20:17', 0),
('19f9d5f2-a5f4-7519-3866-5ffe530b84e9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3eeb41f2-d7de-94e6-393e-5fe99172b71f', 90, '2021-01-13 01:58:24', 0),
('1a04e308-04ac-0a35-bbec-5ffe54bce7ad', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd65faf8c-dd3c-b418-dbef-5fe99179789c', 80, '2021-01-18 02:17:49', 0),
('1a1c198c-d05e-c58e-26fb-5ffe573f18a4', '857d3817-1929-a617-ad2c-5ffe57175f84', '23bf9702-a009-31db-4218-5fe9918b8d26', 75, '2021-01-18 02:18:59', 0),
('1a4b71ed-3455-3e56-cfb5-5ffe563d4f8d', '860158ee-3501-2093-b810-5ffe567b916e', '7f7790f1-571f-1cf9-9c6d-5fe991d79535', 80, '2021-01-18 02:20:17', 0),
('1a5d4b02-9cbc-476a-173e-5ffe535338e4', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3ca85a97-4cd3-c3df-3213-5fe9917403bb', 90, '2021-01-13 01:58:24', 0),
('1a6b79ab-70dd-5fd3-0522-5ffe54ae26d9', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7a70175c-e461-3c60-f0b9-5fe9911a6123', -98, '2021-01-18 02:17:49', 0),
('1a8fe155-aca9-514a-076b-5ffe57ced429', '857d3817-1929-a617-ad2c-5ffe57175f84', '263b37b8-4d91-690e-c9b7-5fe991906e03', 75, '2021-01-18 02:18:59', 0),
('1a9618ea-61c9-b07a-3a3a-6004f01570c1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b2312d82-92c2-21d0-ce38-5fe991a0e273', 75, '2021-01-18 02:21:17', 0),
('1aa4c895-c11e-9bfc-9606-5ffe56c226e8', '860158ee-3501-2093-b810-5ffe567b916e', '7e7333ec-e694-5625-49be-5fe991c00256', 80, '2021-01-18 02:20:17', 0),
('1abd6df4-966c-ada3-c9f7-5ffe530106c7', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '40482d37-640a-72bc-f077-5fe9915e67a0', 90, '2021-01-13 01:58:24', 0),
('1acd47c2-2599-43fb-25af-5ffe545bfcab', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7e00d922-8704-0640-deb7-5fe9912630d1', 80, '2021-01-18 02:17:49', 0),
('1b079df4-39ee-9622-5003-5ffe575d0ff7', '857d3817-1929-a617-ad2c-5ffe57175f84', '256c3b35-e784-5ec4-a8ae-5fe991aa965b', -99, '2021-01-18 02:18:59', 0),
('1b08e698-6f0d-1060-0a11-5ffe569da867', '860158ee-3501-2093-b810-5ffe567b916e', '8191f8f9-f2d2-5239-86a4-5fe991d76f58', 80, '2021-01-18 02:20:17', 0),
('1b558793-97d5-ffe6-97f0-5ffe569854a5', '860158ee-3501-2093-b810-5ffe567b916e', '8077ec7d-7ca4-306c-77eb-5fe991763a20', -99, '2021-01-18 02:20:17', 0),
('1b625831-0edc-41b6-2f46-6004f0a6a31f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b14832c7-ab94-6642-afaa-5fe9918dafa5', -99, '2021-01-18 02:21:17', 0),
('1b6fa78e-777c-83ee-fb5f-5ffe53741e18', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3c078834-32c4-617f-9fd6-5fe991bf28e0', 90, '2021-01-13 01:58:24', 0),
('1b727ab3-19d5-2137-3009-5ffe54a2f124', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7d1e9133-c151-88c0-eaec-5fe991c34593', 80, '2021-01-18 02:17:49', 0),
('1b858265-03af-7c96-5874-5ffe577bf353', '857d3817-1929-a617-ad2c-5ffe57175f84', '22f409ce-6261-ffc6-a5ea-5fe991893cab', 75, '2021-01-18 02:18:59', 0),
('1bbeae40-c061-eb8d-25d7-5ffe567141ca', '860158ee-3501-2093-b810-5ffe567b916e', '7d77f594-2730-b283-bae1-5fe991f01c06', 80, '2021-01-18 02:20:17', 0),
('1bd11fe2-6883-4333-327d-5ffe5397eab0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ee33075d-445e-7c77-cbcb-5fe991df87e3', 89, '2021-01-13 01:58:24', 0),
('1bdebfa9-dd67-7736-3739-5ffe54af8d78', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7fb8f225-a99e-f07d-efab-5fe991f451cb', 80, '2021-01-18 02:17:49', 0),
('1bee29d4-b606-0c28-3fe2-5ffe57ed7b7d', '857d3817-1929-a617-ad2c-5ffe57175f84', '2707d3f2-dfdd-5b66-eb98-5fe991924eff', -99, '2021-01-18 02:18:59', 0),
('1c172869-bd5e-2f07-0c92-5ffe56ec5da6', '860158ee-3501-2093-b810-5ffe567b916e', '82699b01-9611-007e-98a9-5fe99151f456', -99, '2021-01-18 02:20:17', 0),
('1c1bd846-8ea3-b256-2f10-6004f004835d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ae7dc2b8-f4b3-206f-1ad7-5fe9919d4671', 75, '2021-01-18 02:21:17', 0),
('1c329df0-5a4a-e924-ad3f-5ffe538be2ac', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '41de0022-b274-6bbf-b53d-5fe991a8c09e', 90, '2021-01-13 01:58:24', 0),
('1c3db4cf-5464-3dcd-200f-5ffe547e44a7', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7edf4208-d92c-4f4d-4e1a-5fe991304f60', -99, '2021-01-18 02:17:49', 0),
('1c54efaf-3aa1-a3fe-6bec-5ffe57d1ffbc', '857d3817-1929-a617-ad2c-5ffe57175f84', '2229f60f-c756-dde0-77b7-5fe991eeb405', 75, '2021-01-18 02:18:59', 0),
('1c600778-9360-a09d-32ad-5ffe54117524', 'f3ab2114-3037-5119-1375-5ffe5300083d', '66b44762-ea3b-234b-6f81-5fe9919fa9b5', 80, '2021-01-18 02:17:49', 0),
('1c76ca7f-d8f7-d066-f52b-5ffe568f45a2', '860158ee-3501-2093-b810-5ffe567b916e', '7c8270f3-df3b-a74d-58df-5fe99110aa48', 80, '2021-01-18 02:20:17', 0),
('1c95177d-a4eb-dd42-b74f-5ffe53eece49', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '34d90e2b-2058-ea74-6222-5fe99179e083', 90, '2021-01-13 01:58:24', 0),
('1c9ec51a-18ac-21be-d4dc-5ffe5497b196', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7c4a05ce-6ac7-4196-607c-5fe9911b0e45', 80, '2021-01-18 02:17:49', 0),
('1ccaffce-1a43-97e5-02b0-5ffe57ec2d30', '857d3817-1929-a617-ad2c-5ffe57175f84', '221b12f0-5d05-330c-b7a3-5fe9912efe39', -98, '2021-01-18 02:18:59', 0),
('1cceabfe-4d27-90a0-a548-5ffe5624ed08', '860158ee-3501-2093-b810-5ffe567b916e', 'd56c52df-f267-856e-3fa9-5fe99172596b', -98, '2021-01-18 02:20:17', 0),
('1cd9fc27-0d98-792f-33c2-6004f09a2a6c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b3117773-7971-9fdc-a876-5fe99184937b', -99, '2021-01-18 02:21:17', 0),
('1cf246b3-c279-35f7-cd85-5ffe53d8d4c0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5a000560-7280-a1b7-e8f7-5fe99195e88a', 90, '2021-01-13 01:58:24', 0),
('1cfe565f-8d00-adbe-d5cc-5ffe54dd2af8', 'f3ab2114-3037-5119-1375-5ffe5300083d', '80904afb-9a34-7ce1-e2a7-5fe9913a83f3', -99, '2021-01-18 02:17:49', 0),
('1d42d1d6-3016-4d6a-8534-5ffe56a8d07f', '860158ee-3501-2093-b810-5ffe567b916e', 'd930d33b-3c66-1ae9-dbc8-5fe9911efa1d', 80, '2021-01-18 02:20:17', 0),
('1d44f160-9bc8-f9be-81ce-5ffe57325fc5', '857d3817-1929-a617-ad2c-5ffe57175f84', '261fe43f-ae70-119e-7363-5fe991f3234f', 75, '2021-01-18 02:18:59', 0),
('1d4a6cc0-ddfb-8eef-8ab4-5ffe53cc7702', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4d8a0aa3-32ab-6e3d-a53e-5fe99166c344', 90, '2021-01-13 01:58:24', 0),
('1d5b2ed5-4627-e24c-cd51-5ffe542757c1', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7b5d68fd-4c97-3b86-4ae3-5fe991594e2a', 80, '2021-01-18 02:17:49', 0),
('1d9d5ab6-2ef6-2cb4-c1b7-6004f0693c78', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ad954bf2-3a7d-e3fc-b572-5fe99169f4cb', 75, '2021-01-18 02:21:17', 0),
('1da9775f-2eef-dc10-5d4f-5ffe56148a0e', '860158ee-3501-2093-b810-5ffe567b916e', 'd8401e23-96b1-5ad2-a8e2-5fe991eb9081', 80, '2021-01-18 02:20:17', 0),
('1db5c503-ba7b-faa5-308c-5ffe53c3b67c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '23e709d5-278b-953a-b425-5fe9912b1de3', 90, '2021-01-13 01:58:24', 0),
('1db82b43-8bf3-ac45-f307-5ffe57b15674', '857d3817-1929-a617-ad2c-5ffe57175f84', '25330da0-6d1c-e099-5248-5fe991488f96', 75, '2021-01-18 02:18:59', 0),
('1dc24ce4-79be-fbd2-cff8-5ffe54b9114f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '896f387c-3192-39ce-cf8f-5fe9910f31dc', 89, '2021-01-18 02:17:49', 0),
('1e1834df-05b7-38f7-6fab-5ffe56460688', '860158ee-3501-2093-b810-5ffe567b916e', 'daecfb75-ef5d-32cb-1a04-5fe991f95e2e', 80, '2021-01-18 02:20:17', 0),
('1e1f74cc-8da8-7cbb-31a7-5ffe53f091fe', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '660901ef-f92f-3dc1-aed9-5fe9918feb95', 90, '2021-01-13 01:58:24', 0),
('1e20b4ea-5438-fc44-d60e-5ffe579c1594', '857d3817-1929-a617-ad2c-5ffe57175f84', '27da2e31-71e5-6694-1bad-5fe9910245e3', 75, '2021-01-18 02:18:59', 0),
('1e3fd2ad-0ae5-b7f1-eb59-5ffe542994e9', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8d251326-d46e-e47a-bdf7-5fe9913c58f1', 80, '2021-01-18 02:17:49', 0),
('1e636e96-4927-5884-f216-6004f01f1605', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd9ea9189-c3e8-1a4b-5501-5fe991433de5', -98, '2021-01-18 02:21:17', 0),
('1e7e2a3b-3fb5-8c14-8cf1-5ffe56101d03', '860158ee-3501-2093-b810-5ffe567b916e', 'da0081af-e614-ee32-3eae-5fe991e16020', -99, '2021-01-18 02:20:17', 0),
('1e84d73e-bf44-a8df-972f-5ffe57b2f863', '857d3817-1929-a617-ad2c-5ffe57175f84', '2706b8b1-f8f3-607b-c2f7-5fe991057a1c', -99, '2021-01-18 02:18:59', 0),
('1e87914d-403c-7fcc-464f-5ffe5317234c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6560009a-e8c7-dbae-1288-5fe99128b793', 90, '2021-01-13 01:58:24', 0),
('1ea05842-8e58-1d82-eb27-5ffe54357e63', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8c32852a-7c8d-5cd3-6e2f-5fe9914a7895', 80, '2021-01-18 02:17:49', 0),
('1ee2c236-ce3d-9e23-bd70-5ffe56a940fc', '860158ee-3501-2093-b810-5ffe567b916e', 'd75b9bea-abb6-2458-cbb1-5fe991baf382', 80, '2021-01-18 02:20:17', 0),
('1eea0092-a751-5f36-4de4-5ffe53f50c21', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'eefceb17-42d8-076b-4008-5fe991e16df6', 89, '2021-01-13 01:58:24', 0),
('1efb87de-c7e2-4732-e00e-5ffe54589e91', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8f1522ea-a950-b5f2-b9d6-5fe99134927b', 80, '2021-01-18 02:17:49', 0),
('1f04bb10-8f09-ac18-c66d-5ffe5744f2d2', '857d3817-1929-a617-ad2c-5ffe57175f84', '24338af2-5403-8efd-9c15-5fe991863579', 75, '2021-01-18 02:18:59', 0),
('1f180017-7b5b-67dd-f2c3-6004f0588d99', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'dd826565-45b0-931b-2fd7-5fe991046ec7', 75, '2021-01-18 02:21:17', 0),
('1f49d3c1-48bc-ceb1-199b-5ffe56d8fb00', '860158ee-3501-2093-b810-5ffe567b916e', 'dbd5aabe-290e-a221-dfee-5fe9917ed553', -99, '2021-01-18 02:20:17', 0),
('1f53a04f-93f4-cd70-6ddf-5ffe53f653f4', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '16a00661-6e26-a18d-9739-5fe9917fedee', 90, '2021-01-13 01:58:24', 0),
('1f781d62-9521-f5bd-d1fb-5ffe57ff8c2b', '857d3817-1929-a617-ad2c-5ffe57175f84', '28e3ff10-5af4-07e1-fa1c-5fe9914d87b3', -99, '2021-01-18 02:18:59', 0),
('1f870cc1-f54e-6855-0dbe-5ffe5734d6b5', '857d3817-1929-a617-ad2c-5ffe57175f84', 'edit', 75, '2021-01-18 02:18:59', 0),
('1fa6eeb9-2fb8-2fc4-64dd-5ffe54fa0e4d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8e123978-8a99-2be4-e394-5fe9916e1de0', -99, '2021-01-18 02:17:49', 0),
('1fb87064-df00-8112-89b5-6004f05d435d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'dcba0f78-89a8-3481-50d2-5fe99112c4bd', 75, '2021-01-18 02:21:17', 0),
('1fbd9705-e0e1-0aa0-17db-5ffe56db1e5c', '860158ee-3501-2093-b810-5ffe567b916e', 'd65faf8c-dd3c-b418-dbef-5fe99179789c', 80, '2021-01-18 02:20:17', 0),
('1fd90d81-cb49-b2f6-a48c-5ffe56b4de4c', '860158ee-3501-2093-b810-5ffe567b916e', '66b44762-ea3b-234b-6f81-5fe9919fa9b5', 80, '2021-01-18 02:20:17', 0),
('1fe7dec0-3846-29e8-13c5-5ffe5727e09c', '857d3817-1929-a617-ad2c-5ffe57175f84', '23550dea-242e-e641-c100-5fe9914c1d52', 75, '2021-01-18 02:18:59', 0),
('1ffb7e0f-6844-33fe-0dfc-5ffe5348d29e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'f36d2301-85f6-e277-dd2b-5fe991260aba', 90, '2021-01-13 01:58:24', 0),
('2004c8d0-4b81-9e1e-c41a-5ffe54c62192', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8b3e78a3-e5c1-2e16-f0a7-5fe9917788ca', 80, '2021-01-18 02:17:49', 0),
('203409a9-fcdb-576b-c5b6-5ffe56891856', '860158ee-3501-2093-b810-5ffe567b916e', '7a70175c-e461-3c60-f0b9-5fe9911a6123', -98, '2021-01-18 02:20:17', 0),
('20571c50-7ba6-a690-cdcb-5ffe57562ccf', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd2d0a027-3572-d6ed-c8b6-5fe991cb1f5d', -98, '2021-01-18 02:18:59', 0),
('205ae5da-6dd2-86d3-1b23-5ffe536f1e02', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4a7205e3-4f54-b385-fcaf-5fe991185158', 90, '2021-01-13 01:58:24', 0),
('205bc101-3dc5-1973-8d36-6004f00826f3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'df81e0fc-adc1-5471-6962-5fe9918378ea', 75, '2021-01-18 02:21:17', 0),
('20668607-75a7-b2b2-a950-5ffe54c5c9df', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9002ab21-67ef-78bb-3774-5fe991d97cf4', -99, '2021-01-18 02:17:49', 0),
('20a01bba-7213-c97f-015f-5ffe5651aa89', '860158ee-3501-2093-b810-5ffe567b916e', '7e00d922-8704-0640-deb7-5fe9912630d1', 80, '2021-01-18 02:20:17', 0),
('20c4ccd3-812d-adbe-8273-5ffe53442912', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '23eb066a-e61e-518d-57a7-5fe9914c6f06', 90, '2021-01-13 01:58:24', 0),
('20cca7d7-6746-2a0b-faeb-5ffe540a20cc', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8a4ef12f-2db6-bed2-069b-5fe991f829f8', 80, '2021-01-18 02:17:49', 0),
('20cca9c7-e404-9122-d0d9-5ffe5736e603', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd657cb55-0375-4273-1649-5fe99107f1cd', 75, '2021-01-18 02:18:59', 0),
('2102e9dd-05d8-6510-000f-6004f08e8af4', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'de609243-74e0-34f1-2942-5fe991ae0a01', -99, '2021-01-18 02:21:17', 0),
('2108079e-2bd8-20a5-7da4-5ffe56679536', '860158ee-3501-2093-b810-5ffe567b916e', '7d1e9133-c151-88c0-eaec-5fe991c34593', 80, '2021-01-18 02:20:17', 0),
('211f1e5f-2579-e7fd-f20a-5ffe532557f2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'f0ea58c4-6672-6ed8-d368-5fe991b8d600', 90, '2021-01-13 01:58:24', 0),
('21289266-afca-2732-98dc-5ffe5408af33', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'f08c06ac-3bfb-3c90-8304-5fe99159c5a2', 89, '2021-01-18 02:17:49', 0),
('21476302-3591-95b3-f08f-5ffe57f6723c', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd5947f70-5835-9610-af3c-5fe991225042', 75, '2021-01-18 02:18:59', 0),
('216aee1b-91a9-687a-d3b6-5ffe56e52e3f', '860158ee-3501-2093-b810-5ffe567b916e', '7fb8f225-a99e-f07d-efab-5fe991f451cb', 80, '2021-01-18 02:20:17', 0),
('2186eaec-fb67-d045-982e-5ffe543ed06f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '1308c7c8-01bb-0130-60b8-5fe991c995bc', 80, '2021-01-18 02:17:49', 0),
('218aafbb-4c81-2b18-87cf-5ffe53756db8', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '63ba06ec-c8c0-814b-4724-5fe991431a0a', 90, '2021-01-13 01:58:24', 0),
('21a0b712-be25-fe05-987c-6004f04e7971', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'dbd6a8fd-65eb-6bbb-53a2-5fe991982fd5', 75, '2021-01-18 02:21:17', 0),
('21c701f4-b3cb-a991-3ffe-5ffe5718478d', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd7ef8dae-256a-1a9b-9486-5fe991f2477f', 75, '2021-01-18 02:18:59', 0),
('21cfefd1-468c-1ce4-e9b1-5ffe5606e8f8', '860158ee-3501-2093-b810-5ffe567b916e', '7edf4208-d92c-4f4d-4e1a-5fe991304f60', -99, '2021-01-18 02:20:17', 0),
('21e60e47-86ca-5523-703d-5ffe54538f38', 'f3ab2114-3037-5119-1375-5ffe5300083d', '1218d852-02f8-a839-5599-5fe9914ce21e', 80, '2021-01-18 02:17:49', 0),
('21eaf390-9071-47c4-c287-5ffe538fd75a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'f01fc973-d5fe-d3b7-79db-5fe991f5619e', 90, '2021-01-13 01:58:24', 0),
('222b8354-92d3-d956-ca51-5ffe56479370', '860158ee-3501-2093-b810-5ffe567b916e', '7c4a05ce-6ac7-4196-607c-5fe9911b0e45', 80, '2021-01-18 02:20:17', 0),
('222e7e56-d59f-27ff-ae13-5ffe57e92c8b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd714ace0-6c07-939c-935a-5fe991f67888', -99, '2021-01-18 02:18:59', 0),
('22472d88-d904-0f71-af59-6004f07ab46f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e0759ad6-eea1-0ce9-1f74-5fe99143a8d2', -99, '2021-01-18 02:21:17', 0),
('2288cfe3-0ea4-a5d8-834a-5ffe56f74395', '860158ee-3501-2093-b810-5ffe567b916e', '80904afb-9a34-7ce1-e2a7-5fe9913a83f3', -99, '2021-01-18 02:20:17', 0),
('22990362-0c98-42ff-b9ec-5ffe5320b335', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '100d44d4-2ad9-3006-5249-5fe99105dfc7', 90, '2021-01-13 01:58:24', 0),
('22a1a0ae-eff8-7049-3844-5ffe5744fdc5', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd4c47979-6892-d428-422a-5fe9914915d9', 75, '2021-01-18 02:18:59', 0),
('22da05a6-7a4f-f7d6-f165-6004f0d437a3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5a5c77c9-0168-2cf4-88a5-5fe9911dc650', 75, '2021-01-18 02:21:17', 0),
('22e4211a-4990-bc7f-fc98-5ffe56c7756a', '860158ee-3501-2093-b810-5ffe567b916e', '7b5d68fd-4c97-3b86-4ae3-5fe991594e2a', 80, '2021-01-18 02:20:17', 0),
('22f002c3-0000-d6af-90dc-6004f0053712', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'daeacb16-1c00-4889-efed-5fe9919a972b', 75, '2021-01-18 02:21:17', 0),
('23159cc2-54df-75ea-df3a-5ffe575cfca6', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd8b1b1e7-6336-dbbf-8cf1-5fe99178f96b', -99, '2021-01-18 02:18:59', 0),
('2348c7f1-438b-72b1-6894-5ffe5668825b', '860158ee-3501-2093-b810-5ffe567b916e', '896f387c-3192-39ce-cf8f-5fe9910f31dc', -98, '2021-01-18 02:20:17', 0),
('2385959a-3e0f-61b9-30e3-5ffe57812f23', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd3d3cf03-be8a-3584-a18c-5fe99113181a', 75, '2021-01-18 02:18:59', 0),
('2395cece-f468-9802-0b18-6004f07fd71a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '63b54b9f-8580-d724-9ede-5fe991fa4f1d', -98, '2021-01-18 02:21:17', 0),
('23990bae-b4b3-c4c6-d40e-5ffe54d1f1d4', 'f3ab2114-3037-5119-1375-5ffe5300083d', '697557a6-ce3a-5b71-4d6d-5fe9912db974', 80, '2021-01-18 02:17:49', 0),
('239913f0-31e7-1480-21ab-5ffe5483278a', 'f3ab2114-3037-5119-1375-5ffe5300083d', '149e29e6-93cc-1cba-c2d2-5fe991cc1dc2', 80, '2021-01-18 02:17:49', 0),
('23b2a692-0752-9c21-3d2e-5ffe560f53c8', '860158ee-3501-2093-b810-5ffe567b916e', '8d251326-d46e-e47a-bdf7-5fe9913c58f1', 80, '2021-01-18 02:20:17', 0),
('23fc56cb-7aa4-64af-74de-5ffe57b6917c', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e5950731-4ab0-2b54-5c51-5fe991eb9484', 89, '2021-01-18 02:18:59', 0),
('241c1abd-bdef-0d5e-ebb4-5ffe566a0c8b', '860158ee-3501-2093-b810-5ffe567b916e', '8c32852a-7c8d-5cd3-6e2f-5fe9914a7895', 80, '2021-01-18 02:20:17', 0),
('244027c1-54b9-6865-da3a-6004f0d1286b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '679d59ba-8e91-1b1a-d6c8-5fe991802c2c', 75, '2021-01-18 02:21:17', 0),
('24660540-1ae8-aeb0-b68d-5ffe57c9ed23', '857d3817-1929-a617-ad2c-5ffe57175f84', '12080549-97d3-9a50-fd3b-5fe99113e041', 75, '2021-01-18 02:18:59', 0),
('247a42fe-a17a-fb90-6115-5ffe563191e9', '860158ee-3501-2093-b810-5ffe567b916e', '8f1522ea-a950-b5f2-b9d6-5fe99134927b', 80, '2021-01-18 02:20:17', 0),
('24d27222-5cff-8689-d785-5ffe570704f1', '857d3817-1929-a617-ad2c-5ffe57175f84', '11328ec1-927e-1859-c268-5fe991a3a3cf', 75, '2021-01-18 02:18:59', 0),
('24e41d2b-197f-2610-40fa-5ffe565a2aba', '860158ee-3501-2093-b810-5ffe567b916e', '8e123978-8a99-2be4-e394-5fe9916e1de0', -99, '2021-01-18 02:20:17', 0),
('24e9b0e4-e688-412a-a25e-6004f08247f4', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '66b44762-ea3b-234b-6f81-5fe9919fa9b5', 75, '2021-01-18 02:21:17', 0),
('24ebe62b-0c23-5ff2-e5cd-5ffe54e32069', 'f3ab2114-3037-5119-1375-5ffe5300083d', '13ceea2d-5bbc-21c2-b72c-5fe991b92f9f', -99, '2021-01-18 02:17:49', 0),
('253385e8-35a9-27fb-c3b0-5ffe5726b151', '857d3817-1929-a617-ad2c-5ffe57175f84', '140e324e-0201-5dd4-5831-5fe991f136fb', 75, '2021-01-18 02:18:59', 0),
('253e386b-93c4-41bd-3df5-5ffe56bb5215', '860158ee-3501-2093-b810-5ffe567b916e', '8b3e78a3-e5c1-2e16-f0a7-5fe9917788ca', 80, '2021-01-18 02:20:17', 0),
('2584568b-6737-781d-6b64-5ffe5465b276', 'f3ab2114-3037-5119-1375-5ffe5300083d', '114815ee-8523-c73a-362a-5fe991f9439c', 80, '2021-01-18 02:17:49', 0),
('258dbca7-e7d5-04a4-23de-6004f0123d27', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '697557a6-ce3a-5b71-4d6d-5fe9912db974', 75, '2021-01-18 02:21:17', 0),
('2591e8ce-676a-0d98-413d-5ffe57de0ece', '857d3817-1929-a617-ad2c-5ffe57175f84', '1315cdbc-7372-2004-13f9-5fe991112d5e', -99, '2021-01-18 02:18:59', 0),
('259d0bd3-ce98-e179-e69e-5ffe56610b95', '860158ee-3501-2093-b810-5ffe567b916e', '9002ab21-67ef-78bb-3774-5fe991d97cf4', -99, '2021-01-18 02:20:17', 0),
('25eeaf33-e3d0-193a-a57e-5ffe5755c958', '857d3817-1929-a617-ad2c-5ffe57175f84', '104b7824-509e-9c2c-15b1-5fe991646d62', 75, '2021-01-18 02:18:59', 0),
('25fed2b0-2aa1-e0af-f019-5ffe547076e1', 'f3ab2114-3037-5119-1375-5ffe5300083d', '156a9daf-1314-e4e9-8677-5fe991e24ee1', -99, '2021-01-18 02:17:49', 0),
('26056b8a-77f1-6bbf-1940-5ffe56f86747', '860158ee-3501-2093-b810-5ffe567b916e', '8a4ef12f-2db6-bed2-069b-5fe991f829f8', 80, '2021-01-18 02:20:17', 0),
('26321ab2-210b-cc85-35fc-6004f0228991', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6874426e-93c9-cd44-7589-5fe991e044e2', -99, '2021-01-18 02:21:17', 0),
('2658c59e-c47d-a708-0d4e-5ffe57ebd052', '857d3817-1929-a617-ad2c-5ffe57175f84', '150306bd-23b9-df24-ee50-5fe99192ff27', -99, '2021-01-18 02:18:59', 0),
('26634b6c-0fb7-745e-46af-5ffe5697ec61', '860158ee-3501-2093-b810-5ffe567b916e', 'f08c06ac-3bfb-3c90-8304-5fe99159c5a2', -98, '2021-01-18 02:20:17', 0),
('2670ff49-4dfe-c57a-2171-5ffe545d79fc', 'f3ab2114-3037-5119-1375-5ffe5300083d', '10679577-ff18-7309-b27c-5fe991b37229', 80, '2021-01-18 02:17:49', 0),
('268f0f56-9900-60cd-4866-5ffe56c65651', '860158ee-3501-2093-b810-5ffe567b916e', '697557a6-ce3a-5b71-4d6d-5fe9912db974', 80, '2021-01-18 02:20:17', 0),
('26b74f6f-84e7-db03-8177-5ffe5754c669', '857d3817-1929-a617-ad2c-5ffe57175f84', 'f5a10111-5aea-3834-a431-5fe991f1a0ac', 75, '2021-01-18 02:18:59', 0),
('26c30e90-6e96-680f-1334-5ffe56f60ba1', '860158ee-3501-2093-b810-5ffe567b916e', '1308c7c8-01bb-0130-60b8-5fe991c995bc', 80, '2021-01-18 02:20:17', 0),
('26e72780-6a95-cb6e-7bde-5ffe5414e74b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6bcd468f-05a5-bcf4-564d-5fe991e0de54', -98, '2021-01-18 02:17:49', 0),
('26ef98eb-c206-b811-564d-6004f08fd01a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '65b8c1f5-c153-f472-071a-5fe991ea3090', 75, '2021-01-18 02:21:17', 0),
('2713d3e9-7900-12ae-d28a-5ffe57a4d7d2', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd9ea9189-c3e8-1a4b-5501-5fe991433de5', 89, '2021-01-18 02:18:59', 0),
('272788a5-e011-4d36-da86-5ffe560d33d2', '860158ee-3501-2093-b810-5ffe567b916e', '1218d852-02f8-a839-5599-5fe9914ce21e', 80, '2021-01-18 02:20:17', 0),
('2755539d-4fc5-34dc-07da-5ffe54be05dc', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6f37cdc5-64de-e0cb-0398-5fe991c753dd', 80, '2021-01-18 02:17:49', 0),
('277d17ee-24b8-f5e6-4553-5ffe57c668d6', '857d3817-1929-a617-ad2c-5ffe57175f84', 'dd826565-45b0-931b-2fd7-5fe991046ec7', 75, '2021-01-18 02:18:59', 0),
('2783a993-8163-1a9d-9bbd-5ffe56740742', '860158ee-3501-2093-b810-5ffe567b916e', '149e29e6-93cc-1cba-c2d2-5fe991cc1dc2', 80, '2021-01-18 02:20:17', 0),
('2794878d-6b9b-df47-e23e-6004f0d02a18', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6a687475-1a50-917d-75d3-5fe9918a989d', -99, '2021-01-18 02:21:17', 0),
('27c85493-42d7-f2d9-8a0e-5ffe543dbb02', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6e736f3a-1b1d-ec66-c34f-5fe9916edc56', 80, '2021-01-18 02:17:49', 0),
('27ddb2e7-857f-0181-a776-5ffe57faa05f', '857d3817-1929-a617-ad2c-5ffe57175f84', 'dcba0f78-89a8-3481-50d2-5fe99112c4bd', 75, '2021-01-18 02:18:59', 0),
('27e33b89-971e-0a71-bf3e-5ffe563b0c90', '860158ee-3501-2093-b810-5ffe567b916e', '13ceea2d-5bbc-21c2-b72c-5fe991b92f9f', -99, '2021-01-18 02:20:17', 0),
('28364b84-a558-579d-1133-5ffe541d7d20', 'f3ab2114-3037-5119-1375-5ffe5300083d', '70b85345-f9e6-4479-50bf-5fe991d4f6ee', 80, '2021-01-18 02:17:49', 0),
('2837ebc6-f308-2e9d-1033-6004f010eb8a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '64bbaf2e-7501-4095-0af1-5fe99123fba6', 75, '2021-01-18 02:21:17', 0),
('283b14cb-3dbe-a327-8ae1-5ffe5789c258', '857d3817-1929-a617-ad2c-5ffe57175f84', 'df81e0fc-adc1-5471-6962-5fe9918378ea', 75, '2021-01-18 02:18:59', 0),
('28488c0b-ece6-a2d1-1d9c-5ffe563d4e4c', '860158ee-3501-2093-b810-5ffe567b916e', '114815ee-8523-c73a-362a-5fe991f9439c', 80, '2021-01-18 02:20:17', 0),
('28970c03-dce4-4571-cc8c-5ffe57334c79', '857d3817-1929-a617-ad2c-5ffe57175f84', 'export', 75, '2021-01-18 02:18:59', 0),
('28a180e2-cf5a-49fa-2aee-5ffe577a6623', '857d3817-1929-a617-ad2c-5ffe57175f84', 'de609243-74e0-34f1-2942-5fe991ae0a01', -99, '2021-01-18 02:18:59', 0),
('28a9ccc7-b5c7-7988-da47-5ffe56d75385', '860158ee-3501-2093-b810-5ffe567b916e', '156a9daf-1314-e4e9-8677-5fe991e24ee1', -99, '2021-01-18 02:20:17', 0),
('28accc46-e38e-6bf9-997e-5ffe5477123e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6ff6bc3b-22a7-25f3-b41a-5fe9917a810d', -99, '2021-01-18 02:17:49', 0),
('28c10c11-5028-d03d-0b30-5ffe53ec9788', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b20b0384-6478-f201-f7a9-5fe9917d9cf0', 90, '2021-01-13 01:58:24', 0),
('28ddcdc6-dbcf-a622-f491-6004f071b79e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3551a270-f18f-bc61-d9ab-5fe991257d80', -98, '2021-01-18 02:21:17', 0),
('29020b42-431a-0d99-131c-5ffe56a3361e', '860158ee-3501-2093-b810-5ffe567b916e', '10679577-ff18-7309-b27c-5fe991b37229', 80, '2021-01-18 02:20:17', 0),
('290af33a-4afe-058e-27a9-5ffe57b66c45', '857d3817-1929-a617-ad2c-5ffe57175f84', 'dbd6a8fd-65eb-6bbb-53a2-5fe991982fd5', 75, '2021-01-18 02:18:59', 0),
('2914fe35-4fa6-19e3-32c7-5ffe541154a6', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6d9aa8e5-15b0-7074-59f5-5fe991e77181', 80, '2021-01-18 02:17:49', 0),
('296bf9e1-a112-7b5e-b50e-5ffe56784fa5', '860158ee-3501-2093-b810-5ffe567b916e', '6bcd468f-05a5-bcf4-564d-5fe991e0de54', -98, '2021-01-18 02:20:17', 0),
('2974ea7c-197b-d108-5d86-5ffe5744a795', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e0759ad6-eea1-0ce9-1f74-5fe99143a8d2', -99, '2021-01-18 02:18:59', 0),
('297f13c3-eb78-5153-0feb-5ffe54ce4c55', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7195a6d5-a70c-c709-6fc4-5fe991771207', -99, '2021-01-18 02:17:49', 0),
('29b1de63-1e66-db68-3263-6004f0a8d807', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3917de13-cf89-17f0-e38d-5fe99121f8ee', 75, '2021-01-18 02:21:17', 0),
('29d1a22d-e1fd-e4cf-49ed-5ffe5633e3bd', '860158ee-3501-2093-b810-5ffe567b916e', '6f37cdc5-64de-e0cb-0398-5fe991c753dd', 80, '2021-01-18 02:20:17', 0),
('29d52619-86e6-78b5-7d28-5ffe57d22a70', '857d3817-1929-a617-ad2c-5ffe57175f84', 'daeacb16-1c00-4889-efed-5fe9919a972b', 75, '2021-01-18 02:18:59', 0),
('29e3c7d1-42eb-ae09-41fd-5ffe549acf66', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6cc3fc48-e397-50dc-68d3-5fe99145e426', 80, '2021-01-18 02:17:49', 0),
('2a2d026f-8898-8bb6-20d5-5ffe561bc090', '860158ee-3501-2093-b810-5ffe567b916e', '6e736f3a-1b1d-ec66-c34f-5fe9916edc56', 80, '2021-01-18 02:20:17', 0),
('2a2e9a4a-b21f-4f5d-3667-5ffe57589838', '857d3817-1929-a617-ad2c-5ffe57175f84', '7b77e868-a008-0ee4-4b88-5fe991fbb3d5', -98, '2021-01-18 02:18:59', 0),
('2a3204be-d2e4-8491-d562-5ffe5464790c', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6874426e-93c9-cd44-7589-5fe991e044e2', -99, '2021-01-18 02:17:49', 0),
('2a6debc6-ea52-883f-6570-6004f0277b3c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3826d8ff-0a94-78ba-1f41-5fe991cc13d7', 75, '2021-01-18 02:21:17', 0),
('2a8d076c-33df-9c35-234c-5ffe56df24e3', '860158ee-3501-2093-b810-5ffe567b916e', '70b85345-f9e6-4479-50bf-5fe991d4f6ee', 80, '2021-01-18 02:20:17', 0),
('2a8ffc89-68f7-6416-1c06-5ffe57455961', '857d3817-1929-a617-ad2c-5ffe57175f84', '7f7790f1-571f-1cf9-9c6d-5fe991d79535', 75, '2021-01-18 02:18:59', 0),
('2ae67931-e9e6-b678-96e0-5ffe5798a833', '857d3817-1929-a617-ad2c-5ffe57175f84', '7e7333ec-e694-5625-49be-5fe991c00256', 75, '2021-01-18 02:18:59', 0),
('2aede810-fa7b-b3d4-30eb-5ffe563d8a23', '860158ee-3501-2093-b810-5ffe567b916e', '6ff6bc3b-22a7-25f3-b41a-5fe9917a810d', -99, '2021-01-18 02:20:17', 0),
('2b126f83-520d-5bca-036d-5ffe545ef61c', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c4ba2a31-6dbf-61a9-f6b2-5fe99130e025', -98, '2021-01-18 02:17:49', 0),
('2b2cd5b9-3169-63d7-8e2d-6004f05457bd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3ba2a8c3-0658-9208-ad4a-5fe991362626', 75, '2021-01-18 02:21:17', 0),
('2b487bfe-fa78-c5f4-a502-5ffe56ca713f', '860158ee-3501-2093-b810-5ffe567b916e', '6d9aa8e5-15b0-7074-59f5-5fe991e77181', 80, '2021-01-18 02:20:17', 0),
('2b4b53bd-1b9d-3286-1e75-5ffe5720c2ea', '857d3817-1929-a617-ad2c-5ffe57175f84', '8191f8f9-f2d2-5239-86a4-5fe991d76f58', 75, '2021-01-18 02:18:59', 0),
('2b84367e-f2b2-f5af-5d54-5ffe5482048a', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c817a692-cbd3-c46c-ea1e-5fe991773119', 80, '2021-01-18 02:17:49', 0),
('2ba6325a-7688-749b-93f8-5ffe56c524f8', '860158ee-3501-2093-b810-5ffe567b916e', '7195a6d5-a70c-c709-6fc4-5fe991771207', -99, '2021-01-18 02:20:17', 0),
('2ba75e52-849b-8917-3412-5ffe5799842c', '857d3817-1929-a617-ad2c-5ffe57175f84', '8077ec7d-7ca4-306c-77eb-5fe991763a20', -99, '2021-01-18 02:18:59', 0),
('2be44a22-2a55-d53a-ce00-5ffe54d8ddb6', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c742c253-2a4a-cfac-4436-5fe991448121', 80, '2021-01-18 02:17:49', 0),
('2be75c0c-2164-7809-b7da-6004f0a0de33', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3a20c576-4d3d-4596-153d-5fe991eab6b4', -99, '2021-01-18 02:21:17', 0),
('2bfeeae4-3333-c581-0269-5ffe571bbfaf', '857d3817-1929-a617-ad2c-5ffe57175f84', '7d77f594-2730-b283-bae1-5fe991f01c06', 75, '2021-01-18 02:18:59', 0),
('2c0bc3ec-6be3-082f-288f-5ffe569c5d90', '860158ee-3501-2093-b810-5ffe567b916e', '6cc3fc48-e397-50dc-68d3-5fe99145e426', 80, '2021-01-18 02:20:17', 0),
('2c46e15a-1c4a-0499-71eb-5ffe547d5a59', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c9bc1c63-7f2d-8a15-9aec-5fe99194e016', 80, '2021-01-18 02:17:49', 0),
('2c5cee74-2288-0672-92a7-5ffe5752aacc', '857d3817-1929-a617-ad2c-5ffe57175f84', '82699b01-9611-007e-98a9-5fe99151f456', -99, '2021-01-18 02:18:59', 0),
('2c66fa5b-0e80-c3d2-988d-5ffe56dd1241', '860158ee-3501-2093-b810-5ffe567b916e', 'c4ba2a31-6dbf-61a9-f6b2-5fe99130e025', -98, '2021-01-18 02:20:17', 0),
('2ca1c8ed-fe17-a26a-c57f-6004f09be851', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '374897c0-70e4-0345-a9e4-5fe9911d4e4e', 75, '2021-01-18 02:21:17', 0),
('2cb0a7e4-e33e-5961-579e-5ffe54337bd5', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c8e91789-4d8c-33fa-9dc3-5fe9917dcaac', -99, '2021-01-18 02:17:49', 0),
('2cb7a6fe-42c3-1fa5-a7ec-5ffe57c25ce3', '857d3817-1929-a617-ad2c-5ffe57175f84', '7c8270f3-df3b-a74d-58df-5fe99110aa48', 75, '2021-01-18 02:18:59', 0),
('2cc63f3a-b599-1501-985d-5ffe56e074ca', '860158ee-3501-2093-b810-5ffe567b916e', 'c817a692-cbd3-c46c-ea1e-5fe991773119', 80, '2021-01-18 02:20:17', 0),
('2cd3035c-f255-5fa0-6a8c-5ffe564286c5', '860158ee-3501-2093-b810-5ffe567b916e', '6874426e-93c9-cd44-7589-5fe991e044e2', -99, '2021-01-18 02:20:17', 0),
('2d1b9e3c-d9eb-3af9-4a96-5ffe57ae2d2e', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd56c52df-f267-856e-3fa9-5fe99172596b', -98, '2021-01-18 02:18:59', 0),
('2d27c432-59eb-3811-266f-5ffe54123efb', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c670d173-301d-7eff-dfc6-5fe9912f92bb', 80, '2021-01-18 02:17:49', 0),
('2d2f232c-232c-c344-1ff9-5ffe56535608', '860158ee-3501-2093-b810-5ffe567b916e', 'c742c253-2a4a-cfac-4436-5fe991448121', 80, '2021-01-18 02:20:17', 0),
('2d62a500-c978-30a2-1050-6004f01551a4', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3cbabe1f-c724-bcf3-7dd2-5fe991c08fe0', -99, '2021-01-18 02:21:17', 0),
('2d8127f8-2c9d-d3fa-211b-5ffe571a054d', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd930d33b-3c66-1ae9-dbc8-5fe9911efa1d', 75, '2021-01-18 02:18:59', 0),
('2d8d1776-b780-31c3-5b4c-5ffe5653e517', '860158ee-3501-2093-b810-5ffe567b916e', 'c9bc1c63-7f2d-8a15-9aec-5fe99194e016', 80, '2021-01-18 02:20:17', 0),
('2db54980-a9ce-e6f5-d0d2-5ffe54ee5d77', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'caa6f5eb-c27c-81f2-44c4-5fe99148c11a', -99, '2021-01-18 02:17:49', 0),
('2dd56d43-e551-662c-5f91-5ffe57cd3207', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd8401e23-96b1-5ad2-a8e2-5fe991eb9081', 75, '2021-01-18 02:18:59', 0),
('2df3e8b3-ebb5-7fdc-efe6-5ffe563d2735', '860158ee-3501-2093-b810-5ffe567b916e', 'c8e91789-4d8c-33fa-9dc3-5fe9917dcaac', -99, '2021-01-18 02:20:17', 0),
('2e092f1d-4d47-9412-ee83-5ffe54ece558', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c59c320d-1251-19ea-0062-5fe991e0eaf9', 80, '2021-01-18 02:17:49', 0),
('2e160093-c160-e9d2-943f-6004f0ae4f11', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'access', 89, '2021-01-18 02:23:05', 0),
('2e281224-12d5-e74e-4e6a-6004f0460d33', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3665eb75-d663-c9b0-c26f-5fe9918ce9d1', 75, '2021-01-18 02:21:17', 0),
('2e3a2ea4-d913-60b4-8b99-5ffe57474e33', '857d3817-1929-a617-ad2c-5ffe57175f84', 'daecfb75-ef5d-32cb-1a04-5fe991f95e2e', 75, '2021-01-18 02:18:59', 0),
('2e5888a4-2182-a2bd-c85d-5ffe562e26bb', '860158ee-3501-2093-b810-5ffe567b916e', 'c670d173-301d-7eff-dfc6-5fe9912f92bb', 80, '2021-01-18 02:20:17', 0),
('2e6bd054-7b97-9623-7d95-5ffe54f2afed', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9b5bed87-0888-81f7-f9b9-5fe9917ea434', -98, '2021-01-18 02:17:49', 0),
('2e90e9e4-44c8-b1cc-afd8-5ffe5754483f', '857d3817-1929-a617-ad2c-5ffe57175f84', 'da0081af-e614-ee32-3eae-5fe991e16020', -99, '2021-01-18 02:18:59', 0),
('2eb0d178-ad26-4afc-773b-6004f0ceeedc', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'delete', 75, '2021-01-18 02:23:05', 0),
('2eb33b5f-637b-b9b3-43d6-5ffe56222e9b', '860158ee-3501-2093-b810-5ffe567b916e', 'caa6f5eb-c27c-81f2-44c4-5fe99148c11a', -99, '2021-01-18 02:20:17', 0),
('2ed5b3a1-0c94-99b6-2d85-5ffe54b97395', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9f8d8289-a870-70f7-ebc9-5fe99150962b', 80, '2021-01-18 02:17:49', 0),
('2eea8d25-bf8c-d81f-0437-6004f05fd7e0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd57006b7-e7f1-a8df-7b38-5fe9914a3d6e', -98, '2021-01-18 02:21:17', 0),
('2eebfc17-cfd2-fa1f-48e0-5ffe5784dd97', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd75b9bea-abb6-2458-cbb1-5fe991baf382', 75, '2021-01-18 02:18:59', 0),
('2f08055c-5e25-4d8c-33cb-5ffe5381976d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4560b1d3-d8ef-07c0-24ee-5fe991cad1e2', 89, '2021-01-13 01:58:24', 0),
('2f192bab-99f3-79fb-2d43-5ffe564dbc3f', '860158ee-3501-2093-b810-5ffe567b916e', 'c59c320d-1251-19ea-0062-5fe991e0eaf9', 80, '2021-01-18 02:20:17', 0),
('2f31fb2f-3c48-27b6-033d-6004f001e23f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'edit', 75, '2021-01-18 02:23:05', 0),
('2f3e1548-6323-d774-cff4-5ffe5417de48', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9e6892d0-cea9-a9af-2074-5fe991c2817b', 80, '2021-01-18 02:17:49', 0),
('2f4c82dd-687f-7583-7fc8-5ffe579c2113', '857d3817-1929-a617-ad2c-5ffe57175f84', 'dbd5aabe-290e-a221-dfee-5fe9917ed553', -99, '2021-01-18 02:18:59', 0),
('2f70c5ee-1a72-05a9-0700-5ffe56e60784', '860158ee-3501-2093-b810-5ffe567b916e', '9b5bed87-0888-81f7-f9b9-5fe9917ea434', -98, '2021-01-18 02:20:17', 0),
('2f7a4a6b-623e-ceb9-85e7-5ffe57099c36', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'access', 89, '2021-01-18 02:21:56', 0),
('2fa57cc7-c4b2-848f-552e-5ffe54c8b67f', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a178b8fc-f7de-94c3-87a0-5fe9910e6673', 80, '2021-01-18 02:17:49', 0),
('2fa96113-1a66-4635-b2fb-6004f0e46eaf', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'export', 75, '2021-01-18 02:23:05', 0),
('2fad2391-b1b1-8eed-026c-6004f0a22f97', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '11168e71-dfb6-25c7-423a-5fe9913e4838', 75, '2021-01-18 02:21:17', 0),
('2fb5f368-f652-528e-d30c-5ffe574551b6', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd65faf8c-dd3c-b418-dbef-5fe99179789c', 75, '2021-01-18 02:18:59', 0),
('2fcc81a5-23f6-aabf-c3ab-5ffe56364245', '860158ee-3501-2093-b810-5ffe567b916e', '9f8d8289-a870-70f7-ebc9-5fe99150962b', 80, '2021-01-18 02:20:17', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('30041486-03e3-7c52-43e6-5ffe54ae1051', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a07bf528-55f3-b6d3-38a6-5fe991182187', -99, '2021-01-18 02:17:49', 0),
('301709e2-3d15-11f9-04d2-6004f0c027b8', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'import', -99, '2021-01-18 02:23:05', 0),
('30204a00-2a35-771d-8e11-5ffe574b4315', '857d3817-1929-a617-ad2c-5ffe57175f84', '7a70175c-e461-3c60-f0b9-5fe9911a6123', -98, '2021-01-18 02:18:59', 0),
('3023ab37-7448-5a9a-17db-5ffe56bf05b3', '860158ee-3501-2093-b810-5ffe567b916e', '9e6892d0-cea9-a9af-2074-5fe991c2817b', 80, '2021-01-18 02:20:17', 0),
('306223ce-2f35-e139-336c-5ffe544aaeb2', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9d7799ae-ee03-d123-2003-5fe991750155', 80, '2021-01-18 02:17:49', 0),
('3069b41e-fd1a-d930-30c0-6004f05d68ca', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '102a85b0-a8da-085d-303f-5fe9913862b6', 75, '2021-01-18 02:21:17', 0),
('30824449-6697-9332-71d2-5ffe574542db', '857d3817-1929-a617-ad2c-5ffe57175f84', '7e00d922-8704-0640-deb7-5fe9912630d1', 75, '2021-01-18 02:18:59', 0),
('3082c402-67c5-e8f4-b710-5ffe56350d34', '860158ee-3501-2093-b810-5ffe567b916e', 'a178b8fc-f7de-94c3-87a0-5fe9910e6673', 80, '2021-01-18 02:20:17', 0),
('3087f7a3-3d46-ea1c-0fbd-6004f0562edb', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'list', 75, '2021-01-18 02:23:05', 0),
('30c492b0-9bd5-2b1a-320a-5ffe54ac741e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a274c148-9851-b79f-4ff2-5fe9911583c0', -99, '2021-01-18 02:17:49', 0),
('30d7dc0a-b1d9-e780-c8a5-5ffe56103a20', '860158ee-3501-2093-b810-5ffe567b916e', 'a07bf528-55f3-b6d3-38a6-5fe991182187', -99, '2021-01-18 02:20:17', 0),
('30e50508-9d29-6862-dca6-5ffe5703ae10', '857d3817-1929-a617-ad2c-5ffe57175f84', '7d1e9133-c151-88c0-eaec-5fe991c34593', 75, '2021-01-18 02:18:59', 0),
('30fa1038-d9d3-842a-12bf-6004f0671c6b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'massupdate', -99, '2021-01-18 02:23:05', 0),
('310c02d9-9a89-3aac-80dc-6004f03fefe0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '597578a9-e100-d14a-98a9-5fe991cb2926', 75, '2021-01-18 02:21:17', 0),
('31296bb5-0c3d-dee4-68c9-6004f0351059', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '13119046-55d9-f4c7-8f0c-5fe991870bc3', 75, '2021-01-18 02:21:17', 0),
('313af423-4c8e-8ffd-4ac0-5ffe56842d55', '860158ee-3501-2093-b810-5ffe567b916e', '9d7799ae-ee03-d123-2003-5fe991750155', 80, '2021-01-18 02:20:17', 0),
('31485c21-c218-cf12-c1c9-5ffe57db2a4b', '857d3817-1929-a617-ad2c-5ffe57175f84', '7fb8f225-a99e-f07d-efab-5fe991f451cb', 75, '2021-01-18 02:18:59', 0),
('315300e4-2331-6e44-bff4-5ffe57f5134c', '857d3817-1929-a617-ad2c-5ffe57175f84', 'import', -99, '2021-01-18 02:18:59', 0),
('31688df1-d73b-b2fd-ba7a-6004f0cc495e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'view', 75, '2021-01-18 02:23:05', 0),
('319ce67d-db51-a9bf-c3ca-5ffe568261cf', '860158ee-3501-2093-b810-5ffe567b916e', 'a274c148-9851-b79f-4ff2-5fe9911583c0', -99, '2021-01-18 02:20:17', 0),
('31a800bc-162a-2094-91a2-5ffe54fdc9f7', 'f3ab2114-3037-5119-1375-5ffe5300083d', '65b8c1f5-c153-f472-071a-5fe991ea3090', 80, '2021-01-18 02:17:49', 0),
('31aa66d3-7b73-b32c-d32d-5ffe575d69ce', '857d3817-1929-a617-ad2c-5ffe57175f84', '7edf4208-d92c-4f4d-4e1a-5fe991304f60', -99, '2021-01-18 02:18:59', 0),
('31e47894-e814-9632-c581-5ffe54389761', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9c5897c1-c701-76d7-a532-5fe991a24183', 80, '2021-01-18 02:17:49', 0),
('31eb7734-46d1-8825-9fa4-6004f0141fac', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '1224a14c-5751-b0f7-2546-5fe99171ecf5', -99, '2021-01-18 02:21:17', 0),
('31ec39a5-ba18-8ef7-523b-6004f0957c3f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5fed6e74-14c1-5041-37b3-5fe991c316b0', 89, '2021-01-18 02:23:05', 0),
('31f8d44d-50ff-4afc-b905-5ffe560b98ce', '860158ee-3501-2093-b810-5ffe567b916e', '9c5897c1-c701-76d7-a532-5fe991a24183', 80, '2021-01-18 02:20:17', 0),
('3218fe8b-7f81-d047-6f45-5ffe57c03a24', '857d3817-1929-a617-ad2c-5ffe57175f84', '7c4a05ce-6ac7-4196-607c-5fe9911b0e45', 75, '2021-01-18 02:18:59', 0),
('321c353b-3c14-844e-083f-5ffe577a48dd', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'delete', 80, '2021-01-18 02:21:56', 0),
('326c6a54-1d4e-dc00-3c24-6004f0682e70', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '63536587-8335-30aa-cab1-5fe991afae1b', 75, '2021-01-18 02:23:05', 0),
('32860adc-6832-bdab-be9f-5ffe5764289e', '857d3817-1929-a617-ad2c-5ffe57175f84', '80904afb-9a34-7ce1-e2a7-5fe9913a83f3', -99, '2021-01-18 02:18:59', 0),
('329fea28-6496-74b6-fec0-5ffe573ff546', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'edit', 80, '2021-01-18 02:21:56', 0),
('32ace366-f2cc-7287-0503-5ffe56bf7ecd', '860158ee-3501-2093-b810-5ffe567b916e', 'c218f0fb-e18c-1a03-5e56-5fe991fdff67', -98, '2021-01-18 02:20:17', 0),
('32b8820a-faaa-90dd-3c5d-6004f0559107', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'f48c0261-22b6-af87-604d-5fe9918bf017', 75, '2021-01-18 02:21:17', 0),
('32eca422-9a6e-9365-6aa0-6004f0e70ff3', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6291e723-4e2f-5086-cb7b-5fe991fdeab0', 75, '2021-01-18 02:23:05', 0),
('32f248dd-01ac-1037-2c60-5ffe5796728f', '857d3817-1929-a617-ad2c-5ffe57175f84', '7b5d68fd-4c97-3b86-4ae3-5fe991594e2a', 75, '2021-01-18 02:18:59', 0),
('330d21de-8f8a-407a-94cb-5ffe564d1417', '860158ee-3501-2093-b810-5ffe567b916e', 'c65b6579-4b12-0fc1-805f-5fe991a8c9e0', 80, '2021-01-18 02:20:17', 0),
('331243db-5b04-c492-135c-5ffe54c4272a', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c218f0fb-e18c-1a03-5e56-5fe991fdff67', -98, '2021-01-18 02:17:49', 0),
('332e9629-d7ea-171f-9889-5ffe57eba6c8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'export', 80, '2021-01-18 02:21:56', 0),
('3365cc97-b16a-95af-aa40-5ffe57ca29f1', '857d3817-1929-a617-ad2c-5ffe57175f84', '896f387c-3192-39ce-cf8f-5fe9910f31dc', 89, '2021-01-18 02:18:59', 0),
('3365ed17-e24c-9902-b181-5ffe56177f8a', '860158ee-3501-2093-b810-5ffe567b916e', 'c55a7aab-8278-3955-8f2e-5fe991014824', 80, '2021-01-18 02:20:17', 0),
('337f1438-5b7f-62f1-dfca-5ffe54870bbf', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c65b6579-4b12-0fc1-805f-5fe991a8c9e0', 80, '2021-01-18 02:17:49', 0),
('3387d5ea-3b8f-bd35-0b9b-6004f0b4aabd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '1400ff85-edb1-8f1e-ecfb-5fe9914372ae', -99, '2021-01-18 02:21:17', 0),
('338852c8-6479-9c08-242d-6004f0f56c65', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '650451c3-2e32-4514-5415-5fe991af7c3c', 75, '2021-01-18 02:23:05', 0),
('33c180c5-8326-67ad-9e35-5ffe5778ccb4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'import', -99, '2021-01-18 02:21:56', 0),
('33c5e20e-854f-a918-4bc9-5ffe56705832', '860158ee-3501-2093-b810-5ffe567b916e', 'c85bf0a5-3f3a-438b-ba72-5fe9911f220a', 80, '2021-01-18 02:20:17', 0),
('33cbc7da-ec2b-9013-ba41-5ffe5700d98e', '857d3817-1929-a617-ad2c-5ffe57175f84', '8d251326-d46e-e47a-bdf7-5fe9913c58f1', 75, '2021-01-18 02:18:59', 0),
('33df0eaf-b480-f5d1-52c8-5ffe56a5cdfc', '860158ee-3501-2093-b810-5ffe567b916e', '65b8c1f5-c153-f472-071a-5fe991ea3090', 80, '2021-01-18 02:20:17', 0),
('33e6c420-e102-1c9c-ffd2-5ffe540380ef', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c55a7aab-8278-3955-8f2e-5fe991014824', 80, '2021-01-18 02:17:49', 0),
('33f151f6-0bc1-3ff0-4ae1-6004f09bdd59', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '642fcb3a-fe50-4dde-f514-5fe99159c799', -99, '2021-01-18 02:23:05', 0),
('342a32cd-9e35-46d3-5b1a-5ffe57da03f0', '857d3817-1929-a617-ad2c-5ffe57175f84', '8c32852a-7c8d-5cd3-6e2f-5fe9914a7895', 75, '2021-01-18 02:18:59', 0),
('34332d5b-153d-500c-1bbd-6004f04c41e5', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e54e0225-640f-567a-882a-5fe991cbc6b9', 75, '2021-01-18 02:21:17', 0),
('343e3f4c-5e2c-ec4e-58b5-5ffe542ad475', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c85bf0a5-3f3a-438b-ba72-5fe9911f220a', 80, '2021-01-18 02:17:49', 0),
('344fca6f-b1b7-7470-6294-5ffe57a9cd33', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'list', 80, '2021-01-18 02:21:56', 0),
('347283b4-9cc1-4bbc-5937-5ffe569997ee', '860158ee-3501-2093-b810-5ffe567b916e', 'c76062c6-92e2-d529-9a5f-5fe9919350fd', -99, '2021-01-18 02:20:17', 0),
('348956cb-7099-f362-f481-6004f037491e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '61ba0986-eeb4-828b-acec-5fe9914de2cd', 75, '2021-01-18 02:23:05', 0),
('348fd593-7a9e-9fb2-9d49-5ffe5704ab14', '857d3817-1929-a617-ad2c-5ffe57175f84', '8f1522ea-a950-b5f2-b9d6-5fe99134927b', 75, '2021-01-18 02:18:59', 0),
('34aa80ff-95d2-93b3-201d-5ffe542148cf', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c76062c6-92e2-d529-9a5f-5fe9919350fd', -99, '2021-01-18 02:17:49', 0),
('34d6d5c1-3660-a7d2-1f66-6004f03d152d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '582d4670-fa7e-c32e-af44-5fe991a87c45', 89, '2021-01-18 02:21:17', 0),
('34d9ddef-bbc8-581c-d5df-5ffe56829b96', '860158ee-3501-2093-b810-5ffe567b916e', 'c466431a-9117-66a5-32d1-5fe991d14198', 80, '2021-01-18 02:20:17', 0),
('34e60e5a-b5b2-c3f6-3a28-5ffe53e0df2a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '49263512-3bb7-46b1-5871-5fe991aef925', 90, '2021-01-13 01:58:24', 0),
('34ecdedd-4fba-7a13-1485-5ffe5777985f', '857d3817-1929-a617-ad2c-5ffe57175f84', '8e123978-8a99-2be4-e394-5fe9916e1de0', -99, '2021-01-18 02:18:59', 0),
('3509144c-9490-4825-331d-6004f0e87fc9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '65dedae3-b5b0-d891-450b-5fe9917e0089', -99, '2021-01-18 02:23:05', 0),
('3547634e-628a-eedf-3e1a-5ffe56a4d9b4', '860158ee-3501-2093-b810-5ffe567b916e', 'c9604d45-e488-4158-eef5-5fe9914cc27f', -99, '2021-01-18 02:20:17', 0),
('355f9f89-2316-6b9b-ed08-5ffe57f28240', '857d3817-1929-a617-ad2c-5ffe57175f84', '8b3e78a3-e5c1-2e16-f0a7-5fe9917788ca', 75, '2021-01-18 02:18:59', 0),
('356789bc-168d-69ed-1a63-5ffe54193511', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c466431a-9117-66a5-32d1-5fe991d14198', 80, '2021-01-18 02:17:49', 0),
('357ae201-ae60-d0fc-e2a3-6004f066ba83', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5c0702a3-1f94-2c28-aef8-5fe991aa5d5a', 75, '2021-01-18 02:21:17', 0),
('357bf833-e6ad-033b-0734-6004f0735917', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '60e5d013-6ac0-91dd-15b1-5fe991a95598', 75, '2021-01-18 02:23:05', 0),
('35a67d13-584b-4c9c-145c-5ffe56458aba', '860158ee-3501-2093-b810-5ffe567b916e', 'c31a5001-3fc7-e99b-4cf0-5fe991815e31', 80, '2021-01-18 02:20:17', 0),
('35b0751c-1b83-ef91-a04d-5ffe57e77d42', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'massupdate', -99, '2021-01-18 02:21:56', 0),
('35c125de-2110-addc-6a62-5ffe57aa5807', '857d3817-1929-a617-ad2c-5ffe57175f84', '9002ab21-67ef-78bb-3774-5fe991d97cf4', -99, '2021-01-18 02:18:59', 0),
('35dd5491-404a-e04c-365e-5ffe5400929e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c9604d45-e488-4158-eef5-5fe9914cc27f', -99, '2021-01-18 02:17:49', 0),
('3607c322-9928-9420-a590-6004f042c9fb', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'f08c06ac-3bfb-3c90-8304-5fe99159c5a2', -98, '2021-01-18 02:23:05', 0),
('36159e95-e2d0-bd52-a01b-5ffe5637c384', '860158ee-3501-2093-b810-5ffe567b916e', 'e7b869ff-d7dc-a375-69dc-5fe9912999e3', -98, '2021-01-18 02:20:17', 0),
('3622229f-8654-0150-9086-6004f0bc0cd7', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5b0e9519-f4aa-ba7d-2b28-5fe991e20867', 75, '2021-01-18 02:21:17', 0),
('362a78fb-3951-2d4e-29d7-5ffe57998a1e', '857d3817-1929-a617-ad2c-5ffe57175f84', '8a4ef12f-2db6-bed2-069b-5fe991f829f8', 75, '2021-01-18 02:18:59', 0),
('36416794-84a5-83e2-0c9f-5ffe549cc501', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c31a5001-3fc7-e99b-4cf0-5fe991815e31', 80, '2021-01-18 02:17:49', 0),
('36519c33-5f88-8493-43b8-5ffe572becae', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'view', 80, '2021-01-18 02:21:56', 0),
('367f5281-e796-90ef-a004-6004f02330d5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '1308c7c8-01bb-0130-60b8-5fe991c995bc', 75, '2021-01-18 02:23:05', 0),
('3687d4d2-7aa9-6959-8a9d-5ffe578690db', '857d3817-1929-a617-ad2c-5ffe57175f84', 'f08c06ac-3bfb-3c90-8304-5fe99159c5a2', 89, '2021-01-18 02:18:59', 0),
('36a08df4-998c-e559-e8a0-5ffe549f7d78', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e7b869ff-d7dc-a375-69dc-5fe9912999e3', -98, '2021-01-18 02:17:49', 0),
('36ccd13b-462e-6791-b522-6004f0345151', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5dd4bc31-c591-33f4-58de-5fe991e1aaa8', 75, '2021-01-18 02:21:17', 0),
('36ce9963-ef9c-e7b8-063f-5ffe56febed2', '860158ee-3501-2093-b810-5ffe567b916e', 'ebd71d75-44bc-cb91-7b93-5fe99155f256', 80, '2021-01-18 02:20:17', 0),
('36d06f64-cefa-9e7e-7243-5ffe57898fa0', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '97d98f8c-5748-2aaf-fb6f-5fe9919492d8', -98, '2021-01-18 02:21:56', 0),
('36e6e25b-96d3-e9fa-e917-5ffe57442e3e', '857d3817-1929-a617-ad2c-5ffe57175f84', '1308c7c8-01bb-0130-60b8-5fe991c995bc', 75, '2021-01-18 02:18:59', 0),
('36edf598-d993-63fa-dab6-6004f053c2c9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '1218d852-02f8-a839-5599-5fe9914ce21e', 75, '2021-01-18 02:23:05', 0),
('3740ef8c-14fa-dd0b-2795-5ffe56bca537', '860158ee-3501-2093-b810-5ffe567b916e', 'ead81cce-59ad-453f-55c2-5fe991497fb5', 80, '2021-01-18 02:20:17', 0),
('374936c4-ec0e-ba2b-7154-5ffe57153f32', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9bbb2f8b-4e7c-7598-3cd7-5fe991f5abce', 80, '2021-01-18 02:21:56', 0),
('374ee704-8e6e-9335-8e63-5ffe54a2e599', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ebd71d75-44bc-cb91-7b93-5fe99155f256', 80, '2021-01-18 02:17:49', 0),
('3752d93c-340f-0212-5756-5ffe576b0e22', '857d3817-1929-a617-ad2c-5ffe57175f84', '1218d852-02f8-a839-5599-5fe9914ce21e', 75, '2021-01-18 02:18:59', 0),
('3754d9bb-1d55-7727-cdcf-6004f0406c72', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '149e29e6-93cc-1cba-c2d2-5fe991cc1dc2', 75, '2021-01-18 02:23:05', 0),
('37724d3d-cf67-803e-87f0-6004f0c3df27', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5ce9badf-a070-6591-2e16-5fe991d43544', -99, '2021-01-18 02:21:17', 0),
('379a3f09-9267-fcfb-3e79-5ffe56846e25', '860158ee-3501-2093-b810-5ffe567b916e', 'ed768757-6487-2c69-92de-5fe99150b701', 80, '2021-01-18 02:20:17', 0),
('37b95727-31ad-28f6-8c28-5ffe57b3481a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9a9f7b66-cc05-ac3d-373a-5fe9917492bd', 80, '2021-01-18 02:21:56', 0),
('37ba1fb5-dcba-df5a-a48f-5ffe542ae9fb', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ead81cce-59ad-453f-55c2-5fe991497fb5', 80, '2021-01-18 02:17:49', 0),
('37bb81df-9046-0e4f-220f-6004f0136fc0', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '13ceea2d-5bbc-21c2-b72c-5fe991b92f9f', -99, '2021-01-18 02:23:05', 0),
('37bd97a9-686c-c8e1-a3e4-5ffe57485a09', '857d3817-1929-a617-ad2c-5ffe57175f84', '149e29e6-93cc-1cba-c2d2-5fe991cc1dc2', 75, '2021-01-18 02:18:59', 0),
('37f95994-1deb-0085-c47f-6004f0a12906', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5a1e6717-7bf9-3dfd-57de-5fe99132f137', 75, '2021-01-18 02:21:17', 0),
('37ff0cfd-cd7b-e171-5fe3-5ffe54690bcb', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6a687475-1a50-917d-75d3-5fe9918a989d', -99, '2021-01-18 02:17:49', 0),
('381019dc-7458-5ced-fc2e-5ffe5656e848', '860158ee-3501-2093-b810-5ffe567b916e', 'eca203fd-ce6d-9048-6970-5fe991ad15e8', -99, '2021-01-18 02:20:17', 0),
('38155f2e-0b26-bb18-4730-5ffe543b4fd5', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ed768757-6487-2c69-92de-5fe99150b701', 80, '2021-01-18 02:17:49', 0),
('3815c0c4-4637-0e68-5b11-5ffe57c677e8', '857d3817-1929-a617-ad2c-5ffe57175f84', '13ceea2d-5bbc-21c2-b72c-5fe991b92f9f', -99, '2021-01-18 02:18:59', 0),
('3824514e-1e7f-ea21-798b-6004f0cc6f48', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '114815ee-8523-c73a-362a-5fe991f9439c', 75, '2021-01-18 02:23:05', 0),
('382bf5f1-2f22-b46d-a0fe-5ffe57366ae2', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9d4402db-4a7c-87a3-5440-5fe991973b23', 80, '2021-01-18 02:21:56', 0),
('387707f8-bc0e-5d7e-86f8-6004f0b4d0fa', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5eb3c820-bf11-cc6b-e123-5fe991053126', -99, '2021-01-18 02:21:17', 0),
('387a5f71-445c-4a99-0f77-5ffe57e45f22', '857d3817-1929-a617-ad2c-5ffe57175f84', '114815ee-8523-c73a-362a-5fe991f9439c', 75, '2021-01-18 02:18:59', 0),
('3882994f-bab3-3c53-bb02-5ffe5642c153', '860158ee-3501-2093-b810-5ffe567b916e', 'e9d4c5fa-00c6-380c-2014-5fe991f309f0', 80, '2021-01-18 02:20:17', 0),
('3883d772-8161-2ce4-a527-5ffe54978687', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'eca203fd-ce6d-9048-6970-5fe991ad15e8', -99, '2021-01-18 02:17:49', 0),
('388bc6e0-f8c4-7fbe-12a7-6004f0b4b7e4', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '156a9daf-1314-e4e9-8677-5fe991e24ee1', -99, '2021-01-18 02:23:05', 0),
('389cc33d-fa62-52e2-772c-5ffe573d4c08', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9c89e791-8bd0-75ad-edc8-5fe991482910', -99, '2021-01-18 02:21:56', 0),
('38da28b6-2511-8b57-b44f-5ffe5751ded6', '857d3817-1929-a617-ad2c-5ffe57175f84', '156a9daf-1314-e4e9-8677-5fe991e24ee1', -99, '2021-01-18 02:18:59', 0),
('38eb8e07-b241-35b3-cb97-6004f08d6822', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '59287b25-b69c-a8dd-6784-5fe991db46b6', 75, '2021-01-18 02:21:17', 0),
('38f2085f-c27c-820f-ff96-5ffe569c6623', '860158ee-3501-2093-b810-5ffe567b916e', 'ee2d337d-7418-f149-2626-5fe9918c5a0a', -99, '2021-01-18 02:20:17', 0),
('38f711a3-1c0a-b119-c512-5ffe54e3da81', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e9d4c5fa-00c6-380c-2014-5fe991f309f0', 80, '2021-01-18 02:17:49', 0),
('38f7e1ac-6778-1c43-3fd6-6004f0b95bf4', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '10679577-ff18-7309-b27c-5fe991b37229', 75, '2021-01-18 02:23:05', 0),
('39174f76-0d7e-15d0-188b-5ffe572a0193', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '99cfda1f-f957-e4c1-e444-5fe99159b864', 80, '2021-01-18 02:21:56', 0),
('394c7fd8-0c85-861d-9619-6004f0ff95e6', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e1294056-4128-6d77-cf89-5fe991e10d4b', -98, '2021-01-18 02:21:17', 0),
('3956d6a5-90e0-bcd9-7c6e-5ffe56a1a186', '860158ee-3501-2093-b810-5ffe567b916e', 'e8cad13f-c73b-7e3b-2da3-5fe99127eea5', 80, '2021-01-18 02:20:17', 0),
('395f7687-1a45-d7ba-7428-5ffe542583b9', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ee2d337d-7418-f149-2626-5fe9918c5a0a', -99, '2021-01-18 02:17:49', 0),
('3969f5e2-4597-afd0-9341-6004f0a7523a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '66ca2eb6-2154-1395-dd3a-5fe991a1c703', -98, '2021-01-18 02:23:05', 0),
('397c00ea-9d14-6c88-553d-5ffe57660019', '857d3817-1929-a617-ad2c-5ffe57175f84', 'list', 75, '2021-01-18 02:18:59', 0),
('399ab77e-2bc6-b33b-c395-5ffe57912815', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9e0af605-864a-1d4f-c6b6-5fe9917f12da', -99, '2021-01-18 02:21:56', 0),
('39b43606-b0a0-170f-4441-6004f0fbc066', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e651281c-d5fd-1e65-c965-5fe991ccde64', 75, '2021-01-18 02:21:17', 0),
('39ccc856-a629-40d2-41e2-5ffe5624c6c8', '860158ee-3501-2093-b810-5ffe567b916e', '4e54b667-41a1-31b4-9bd6-5fe991e5c5ba', -98, '2021-01-18 02:20:17', 0),
('39d5860f-b730-4265-9d7b-6004f0930f4b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6a84c729-64b1-eea6-96e2-5fe9919c2ee3', 75, '2021-01-18 02:23:05', 0),
('39db87f9-8be2-7efc-fcee-5ffe54a2dc7c', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e8cad13f-c73b-7e3b-2da3-5fe99127eea5', 80, '2021-01-18 02:17:49', 0),
('3a0ec0f0-4788-13de-6586-5ffe57fde64d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '990beb29-a1a8-9051-e65a-5fe9919d686d', 80, '2021-01-18 02:21:56', 0),
('3a25bb30-ea65-f5af-3ba5-6004f09b8ad9', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e59920e8-2c35-973a-d33c-5fe991e47b1d', 75, '2021-01-18 02:21:17', 0),
('3a32b42f-d4cd-35c4-65a6-5ffe57d0526f', '857d3817-1929-a617-ad2c-5ffe57175f84', '10679577-ff18-7309-b27c-5fe991b37229', 75, '2021-01-18 02:18:59', 0),
('3a4b2893-c0e3-39bc-862e-5ffe563133da', '860158ee-3501-2093-b810-5ffe567b916e', '52a71728-7481-306e-4188-5fe991897345', 80, '2021-01-18 02:20:17', 0),
('3a4feb16-072d-54df-93c9-6004f0d875b1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '699a76dc-beed-8aa3-4142-5fe9916ff8ae', 75, '2021-01-18 02:23:05', 0),
('3a56ca2a-7bd6-61c7-473a-5ffe540323a0', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4e54b667-41a1-31b4-9bd6-5fe991e5c5ba', -98, '2021-01-18 02:17:49', 0),
('3a8c5a81-dec2-b730-796c-5ffe5765859d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '42f23425-20bd-24a2-89cc-5fe991fb719d', -98, '2021-01-18 02:21:56', 0),
('3a930774-91f8-9f98-c4dc-5ffe5686e95c', '860158ee-3501-2093-b810-5ffe567b916e', '6a687475-1a50-917d-75d3-5fe9918a989d', -99, '2021-01-18 02:20:17', 0),
('3a943a3e-fc45-dfbb-feaf-6004f04e0dff', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e8072daa-fce4-2cee-14e3-5fe991410489', 75, '2021-01-18 02:21:17', 0),
('3aa300ab-524b-87fb-6f6b-5ffe5312fac8', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4852587d-2ed7-392a-225d-5fe991f70e21', 90, '2021-01-13 01:58:24', 0),
('3ab6878e-804b-afba-5577-6004f071d194', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6c6ea30f-0a8a-f174-e2f7-5fe99156d24f', 75, '2021-01-18 02:23:05', 0),
('3abd20c2-a7b3-dcb9-b19b-5ffe56497acf', '860158ee-3501-2093-b810-5ffe567b916e', '51b43259-2704-3b6a-19f5-5fe991eceaf8', 80, '2021-01-18 02:20:17', 0),
('3accaf95-7f62-44a9-bc4c-5ffe54908399', 'f3ab2114-3037-5119-1375-5ffe5300083d', '52a71728-7481-306e-4188-5fe991897345', 80, '2021-01-18 02:17:49', 0),
('3af950cf-2347-aae8-12cf-5ffe576807d4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '46e1336a-7c3c-2718-031e-5fe991d96425', 80, '2021-01-18 02:21:56', 0),
('3b082a80-f3d8-f5e3-f4da-6004f0a622ef', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e70a07f9-978a-eb0f-5fe3-5fe99197714d', -99, '2021-01-18 02:21:17', 0),
('3b1ac2ba-6540-52db-0783-6004f05a4fa1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6b7f9d3c-48c8-36f7-80eb-5fe9918dc431', -99, '2021-01-18 02:23:05', 0),
('3b27d83b-1f32-ccd0-ac71-5ffe563cf2e6', '860158ee-3501-2093-b810-5ffe567b916e', '54a63ebc-eaf8-3281-2825-5fe99141ae0e', 80, '2021-01-18 02:20:17', 0),
('3b4dfc97-1a35-61de-b795-5ffe578d604d', '857d3817-1929-a617-ad2c-5ffe57175f84', '6bcd468f-05a5-bcf4-564d-5fe991e0de54', -98, '2021-01-18 02:18:59', 0),
('3b56e7f2-503f-0cae-a530-5ffe547d3381', 'f3ab2114-3037-5119-1375-5ffe5300083d', '51b43259-2704-3b6a-19f5-5fe991eceaf8', 80, '2021-01-18 02:17:49', 0),
('3b77b6d2-54b7-ae77-af13-6004f097cbfb', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e4e302c6-3fb2-9304-85f8-5fe9913267cd', 75, '2021-01-18 02:21:17', 0),
('3b82e015-273e-6741-29dc-5ffe57259651', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '45f6fd66-02e2-8dcd-e44c-5fe9914c4eae', 80, '2021-01-18 02:21:56', 0),
('3b88bd5e-00e3-6be2-26b2-5ffe5692a086', '860158ee-3501-2093-b810-5ffe567b916e', '53a0437c-3949-42b5-b6f7-5fe9915c9b19', -99, '2021-01-18 02:20:17', 0),
('3b91c6fb-098e-7ee5-b699-6004f037fa45', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '68ae731f-f0cb-25b6-553f-5fe9918a1892', 75, '2021-01-18 02:23:05', 0),
('3bb90e5b-2ecd-4cd9-5943-5ffe576ca1ec', '857d3817-1929-a617-ad2c-5ffe57175f84', '6f37cdc5-64de-e0cb-0398-5fe991c753dd', 75, '2021-01-18 02:18:59', 0),
('3bce0a47-e9da-ab10-739c-5ffe540e1ceb', 'f3ab2114-3037-5119-1375-5ffe5300083d', '54a63ebc-eaf8-3281-2825-5fe99141ae0e', 80, '2021-01-18 02:17:49', 0),
('3bed746f-2ef2-0be5-8aeb-6004f06aaabb', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e8ff7685-9599-b1b4-e206-5fe9910525ef', -99, '2021-01-18 02:21:17', 0),
('3bf78e54-1258-35dc-a7f9-6004f008b497', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6d5fbf99-0522-690a-dabb-5fe99188c4b5', -99, '2021-01-18 02:23:05', 0),
('3bfe3ee0-5b36-4167-1b0a-5ffe56d5e7ae', '860158ee-3501-2093-b810-5ffe567b916e', '50b74da9-8a7e-9868-7664-5fe9910b1f6b', 80, '2021-01-18 02:20:17', 0),
('3c13e8b1-c27d-0ecb-e033-5ffe57040b1e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '48bd518c-335e-0f97-a7e0-5fe991ada2ca', 80, '2021-01-18 02:21:56', 0),
('3c2fa898-ae5f-2532-0d02-5ffe57c6d98a', '857d3817-1929-a617-ad2c-5ffe57175f84', '6e736f3a-1b1d-ec66-c34f-5fe9916edc56', 75, '2021-01-18 02:18:59', 0),
('3c332fca-1774-f90f-dbde-5ffe54abb3d9', 'f3ab2114-3037-5119-1375-5ffe5300083d', '53a0437c-3949-42b5-b6f7-5fe9915c9b19', -99, '2021-01-18 02:17:49', 0),
('3c5f2081-4a35-6457-c006-6004f0ce5ef1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e42c95a9-569b-ed17-52d5-5fe9910ba6e9', 75, '2021-01-18 02:21:17', 0),
('3c6a1124-051c-adf2-b8f6-6004f0660db1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '67aea666-6768-bbe9-f646-5fe99150edf5', 75, '2021-01-18 02:23:05', 0),
('3c721fa8-6d1b-e3a1-bbc3-5ffe56c49d37', '860158ee-3501-2093-b810-5ffe567b916e', '55abbde3-056b-14ab-2bc9-5fe991cc6632', -99, '2021-01-18 02:20:17', 0),
('3c82b237-2c18-3b83-9520-5ffe5764ed4b', '857d3817-1929-a617-ad2c-5ffe57175f84', '70b85345-f9e6-4479-50bf-5fe991d4f6ee', 75, '2021-01-18 02:18:59', 0),
('3c83935d-1ef9-c8e1-5fab-5ffe5761c2ea', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '47ab75be-caa2-8677-1598-5fe99188c136', -99, '2021-01-18 02:21:56', 0),
('3cad6d04-fdfd-6c4b-4b84-5ffe543b579e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '50b74da9-8a7e-9868-7664-5fe9910b1f6b', 80, '2021-01-18 02:17:49', 0),
('3cc86f51-a9c9-28c8-22a8-6004f04b6a4e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '896f387c-3192-39ce-cf8f-5fe9910f31dc', -98, '2021-01-18 02:21:17', 0),
('3ccf155c-54a6-58c4-bb7f-6004f0d81791', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e5950731-4ab0-2b54-5c51-5fe991eb9484', -98, '2021-01-18 02:23:05', 0),
('3cd6601b-162e-4743-1217-5ffe56d21e80', '860158ee-3501-2093-b810-5ffe567b916e', '4f6918e3-10f8-acdf-72fc-5fe9913d462c', 80, '2021-01-18 02:20:17', 0),
('3ce7601a-df1d-2b0c-196a-5ffe5779975c', '857d3817-1929-a617-ad2c-5ffe57175f84', '6ff6bc3b-22a7-25f3-b41a-5fe9917a810d', -99, '2021-01-18 02:18:59', 0),
('3cf19350-5df1-8e7b-995a-5ffe57a1bddf', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '450a84c1-7709-a7c1-22e0-5fe9913729a1', 80, '2021-01-18 02:21:56', 0),
('3d282ea1-ec08-a82c-f621-6004f089cc99', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '12080549-97d3-9a50-fd3b-5fe99113e041', 75, '2021-01-18 02:23:05', 0),
('3d28e7d2-821f-c429-b1b4-5ffe542010fa', 'f3ab2114-3037-5119-1375-5ffe5300083d', '55abbde3-056b-14ab-2bc9-5fe991cc6632', -99, '2021-01-18 02:17:49', 0),
('3d34b70c-8325-a4ab-398f-5ffe5600be83', '860158ee-3501-2093-b810-5ffe567b916e', 'b27fc4e4-d383-31f9-2f97-5fe9919ef44a', -98, '2021-01-18 02:20:17', 0),
('3d372612-eeb8-3d40-701c-6004f07a2f6d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8d251326-d46e-e47a-bdf7-5fe9913c58f1', 75, '2021-01-18 02:21:17', 0),
('3d6ee35f-dda8-9c8e-bf09-5ffe57d3636a', '857d3817-1929-a617-ad2c-5ffe57175f84', '6d9aa8e5-15b0-7074-59f5-5fe991e77181', 75, '2021-01-18 02:18:59', 0),
('3d77c023-a385-86cc-6a5e-5ffe57e76151', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4992f727-3935-17df-a9f2-5fe991e9af52', -99, '2021-01-18 02:21:56', 0),
('3d944583-0a36-ee6b-f933-5ffe568c0b30', '860158ee-3501-2093-b810-5ffe567b916e', 'b6b96afa-bc9a-9505-7fec-5fe99129a947', 80, '2021-01-18 02:20:17', 0),
('3d9466cc-be74-dd6f-9113-6004f06075ae', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '11328ec1-927e-1859-c268-5fe991a3a3cf', 75, '2021-01-18 02:23:05', 0),
('3d9ae8e3-ea04-4a7d-a3c0-5ffe54c16c84', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4f6918e3-10f8-acdf-72fc-5fe9913d462c', 80, '2021-01-18 02:17:49', 0),
('3da0ca59-a93b-1ccc-64d8-6004f0c9ee0e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8c32852a-7c8d-5cd3-6e2f-5fe9914a7895', 75, '2021-01-18 02:21:17', 0),
('3de1b43a-d4e8-05db-cb98-5ffe5777d07e', '857d3817-1929-a617-ad2c-5ffe57175f84', '7195a6d5-a70c-c709-6fc4-5fe991771207', -99, '2021-01-18 02:18:59', 0),
('3df66e48-30af-e8ac-a620-5ffe574ee699', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4425d96b-3beb-dc6f-46e8-5fe991b01e56', 80, '2021-01-18 02:21:56', 0),
('3dfb0232-a9f8-de34-d1ac-5ffe5654eaf2', '860158ee-3501-2093-b810-5ffe567b916e', 'b59fe417-a393-ffd9-baed-5fe9919fd0ca', 80, '2021-01-18 02:20:17', 0),
('3e06e561-f875-b3ab-17ed-5ffe544fe42e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b27fc4e4-d383-31f9-2f97-5fe9919ef44a', -98, '2021-01-18 02:17:49', 0),
('3e09054d-2ba1-2bbc-983f-6004f027197e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '140e324e-0201-5dd4-5831-5fe991f136fb', 75, '2021-01-18 02:23:05', 0),
('3e0c3149-8fe3-6159-f7d8-6004f0d58a22', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8f1522ea-a950-b5f2-b9d6-5fe99134927b', 75, '2021-01-18 02:21:17', 0),
('3e413ab5-ed45-3387-f2e7-5ffe57572808', '857d3817-1929-a617-ad2c-5ffe57175f84', '6cc3fc48-e397-50dc-68d3-5fe99145e426', 75, '2021-01-18 02:18:59', 0),
('3e6401e8-8781-a027-1648-5ffe569d77e6', '860158ee-3501-2093-b810-5ffe567b916e', 'b92414b1-a4b1-858b-43cd-5fe991d91b88', 80, '2021-01-18 02:20:17', 0),
('3e6a74a5-b6f0-af5e-d275-5ffe5402a9d2', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b6b96afa-bc9a-9505-7fec-5fe99129a947', 80, '2021-01-18 02:17:49', 0),
('3e6ae2af-6ed6-4a9f-5ae5-5ffe5769f017', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4ff60533-381d-3326-53bc-5fe991d1b06f', -98, '2021-01-18 02:21:56', 0),
('3e70d2cd-e154-33e3-274a-6004f0748477', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '1315cdbc-7372-2004-13f9-5fe991112d5e', -99, '2021-01-18 02:23:05', 0),
('3e754d70-0788-aaef-1429-6004f0d9ef03', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8e123978-8a99-2be4-e394-5fe9916e1de0', -99, '2021-01-18 02:21:17', 0),
('3e990a5b-2fc4-208f-4bf9-5ffe541fe70e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '64bbaf2e-7501-4095-0af1-5fe99123fba6', 80, '2021-01-18 02:17:49', 0),
('3ea90848-1de6-eca8-bbce-6004f0187662', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5c10a0c5-ddae-9e33-afae-5fe991ed07ff', 75, '2021-01-18 02:21:17', 0),
('3eb36bc7-1000-6fa8-ccb9-5ffe57022124', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c4ba2a31-6dbf-61a9-f6b2-5fe99130e025', -98, '2021-01-18 02:18:59', 0),
('3ed1fb01-5953-f534-6cbe-5ffe54e48ce8', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b59fe417-a393-ffd9-baed-5fe9919fd0ca', 80, '2021-01-18 02:17:49', 0),
('3ed5b116-2d2a-208d-8a91-6004f0804866', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8b3e78a3-e5c1-2e16-f0a7-5fe9917788ca', 75, '2021-01-18 02:21:17', 0),
('3ed92c37-1cb4-713a-981b-6004f0ee0e95', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '104b7824-509e-9c2c-15b1-5fe991646d62', 75, '2021-01-18 02:23:05', 0),
('3edaa3c1-8a35-18d5-7311-5ffe575047aa', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8e98077b-58ce-c7a3-04fb-5fe9912226b7', 80, '2021-01-18 02:21:56', 0),
('3ee48b54-d7c6-70e2-685c-5ffe56525ac8', '860158ee-3501-2093-b810-5ffe567b916e', 'b7e8a2b4-1cbb-a89d-510a-5fe991a230cd', -99, '2021-01-18 02:20:17', 0),
('3f285f25-cc4a-4b2e-8027-5ffe57955b2c', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c817a692-cbd3-c46c-ea1e-5fe991773119', 75, '2021-01-18 02:18:59', 0),
('3f2f7635-3bcb-9ea8-0f00-5ffe54d1b81e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b92414b1-a4b1-858b-43cd-5fe991d91b88', 80, '2021-01-18 02:17:49', 0),
('3f348ab8-42c8-b0ae-9d5e-6004f0fa9170', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9002ab21-67ef-78bb-3774-5fe991d97cf4', -99, '2021-01-18 02:21:17', 0),
('3f3fe122-2608-cf11-0ead-6004f0342811', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '150306bd-23b9-df24-ee50-5fe99192ff27', -99, '2021-01-18 02:23:05', 0),
('3f4875de-853f-d1bc-d220-5ffe56bf27bb', '860158ee-3501-2093-b810-5ffe567b916e', 'b4919591-7b1f-f68c-6105-5fe9910a4a31', 80, '2021-01-18 02:20:17', 0),
('3f4f2016-0877-5193-f0ad-5ffe57f898ab', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '818e07d5-f7cb-310c-95f2-5fe991b1ee79', 80, '2021-01-18 02:21:56', 0),
('3f8c6446-c588-551e-beae-5ffe54120660', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b7e8a2b4-1cbb-a89d-510a-5fe991a230cd', -99, '2021-01-18 02:17:49', 0),
('3f8e1675-2f51-cb3b-cc85-5ffe57b87b8c', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c742c253-2a4a-cfac-4436-5fe991448121', 75, '2021-01-18 02:18:59', 0),
('3f9f46f1-dab5-c2cf-4f68-5ffe5698feab', '860158ee-3501-2093-b810-5ffe567b916e', 'ba59377a-0727-05f3-8480-5fe991ba772f', -99, '2021-01-18 02:20:17', 0),
('3f9f91ae-db68-432c-f97a-6004f0b62098', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8a4ef12f-2db6-bed2-069b-5fe991f829f8', 75, '2021-01-18 02:21:17', 0),
('3fb04fb2-4b78-567a-2938-6004f07b68d7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'f5a10111-5aea-3834-a431-5fe991f1a0ac', 75, '2021-01-18 02:23:05', 0),
('3fb2d3d7-04d6-497f-6e80-5ffe577e893f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ac220371-2277-878b-d774-5fe991a38a1c', 80, '2021-01-18 02:21:56', 0),
('3fe68996-13dc-25d2-7957-5ffe57a7946e', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c9bc1c63-7f2d-8a15-9aec-5fe99194e016', 75, '2021-01-18 02:18:59', 0),
('3ff3429f-3a82-0f9c-b703-5ffe548b7d62', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b4919591-7b1f-f68c-6105-5fe9910a4a31', 80, '2021-01-18 02:17:49', 0),
('4008cb0c-e6b8-2cb1-9077-6004f0fed49a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'cdd1e182-c278-af31-6a4e-5fe991051755', -98, '2021-01-18 02:21:17', 0),
('4015c41c-da4d-7dc9-243b-5ffe56f57d79', '860158ee-3501-2093-b810-5ffe567b916e', 'b394b3f8-0da3-df98-94ab-5fe99179f361', 80, '2021-01-18 02:20:17', 0),
('40174815-6a67-e9f0-4662-6004f0abc440', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '87328551-5fbc-ff3f-e0f1-5fe99100990f', -98, '2021-01-18 02:23:05', 0),
('40186a5f-6a81-0de3-442e-5ffe576e0f49', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9dc8093f-c633-9026-010c-5fe99184be95', -99, '2021-01-18 02:21:56', 0),
('40429912-447d-25ed-9e68-5ffe57852b08', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c8e91789-4d8c-33fa-9dc3-5fe9917dcaac', -99, '2021-01-18 02:18:59', 0),
('406747f0-8fc5-50dd-5c17-6004f067c810', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd189edb6-d4c6-af84-aed6-5fe9919e773d', 75, '2021-01-18 02:21:17', 0),
('40757aee-a4d4-e00a-ad34-5ffe5694996b', '860158ee-3501-2093-b810-5ffe567b916e', '9b590855-d45d-2b3f-dc76-5fe991a05eaa', -98, '2021-01-18 02:20:17', 0),
('4079d247-f646-af9a-a993-5ffe5754b769', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '70d70eac-d310-32f6-369c-5fe991e453bc', 80, '2021-01-18 02:21:56', 0),
('4080020c-d0ee-9f6d-3eab-5ffe531db125', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4b0b105d-c49d-64fd-880d-5fe991434844', 90, '2021-01-13 01:58:24', 0),
('40875307-ff71-7f8f-87a0-6004f0867a42', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8ad528ed-feb4-75f8-27c4-5fe9915a5cfc', 75, '2021-01-18 02:23:05', 0),
('409d8549-1185-d676-f207-5ffe5714ed2a', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c670d173-301d-7eff-dfc6-5fe9912f92bb', 75, '2021-01-18 02:18:59', 0),
('40d03686-b30c-9db9-6ac7-6004f0c8c2ba', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd0a1d2a6-ffea-4a9d-4bb6-5fe991ef9ffe', 75, '2021-01-18 02:21:17', 0),
('40da1aff-c301-9a5e-3b2c-5ffe568d3b0a', '860158ee-3501-2093-b810-5ffe567b916e', '9eeea38f-7536-6b8e-cd5f-5fe99168e8ca', 80, '2021-01-18 02:20:17', 0),
('40e2c20c-e334-3e90-fcac-5ffe5746eb51', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'bb8c07ac-0928-929b-4833-5fe99115ee88', -99, '2021-01-18 02:21:56', 0),
('40ec86ab-3a45-167a-9aaa-6004f0dea35d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8a0f118c-c330-84ca-6b98-5fe991e394d8', 75, '2021-01-18 02:23:05', 0),
('40ef04f7-7280-013d-f3aa-5ffe54e20d92', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ba59377a-0727-05f3-8480-5fe991ba772f', -99, '2021-01-18 02:17:49', 0),
('40ffc387-3e16-2acb-8323-5ffe57400233', '857d3817-1929-a617-ad2c-5ffe57175f84', 'caa6f5eb-c27c-81f2-44c4-5fe99148c11a', -99, '2021-01-18 02:18:59', 0),
('41050acc-d82b-e78c-af00-5ffe560f2ec5', '860158ee-3501-2093-b810-5ffe567b916e', '64bbaf2e-7501-4095-0af1-5fe99123fba6', 80, '2021-01-18 02:20:17', 0),
('413ba70d-c610-753b-31d1-6004f09cf678', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd39fc1ec-9a70-7ef0-8b64-5fe9912bbeaf', 75, '2021-01-18 02:21:17', 0),
('41500ba8-58f1-cbd6-0289-6004f0ad6eb6', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8caa545c-91aa-b64d-29e7-5fe9916b7bd3', 75, '2021-01-18 02:23:05', 0),
('4153d763-fd0e-74cc-c180-5ffe57981b07', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '624407ba-eaf2-35d5-476b-5fe991cd595f', 80, '2021-01-18 02:21:56', 0),
('415abf44-9910-9f4f-e046-5ffe57085a0a', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c59c320d-1251-19ea-0062-5fe991e0eaf9', 75, '2021-01-18 02:18:59', 0),
('4167aed0-104d-3f4e-5534-5ffe546e40f5', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b394b3f8-0da3-df98-94ab-5fe99179f361', 80, '2021-01-18 02:17:49', 0),
('418ffc43-de12-7741-c0ad-5ffe56f014f5', '860158ee-3501-2093-b810-5ffe567b916e', '9e0fe800-79ba-5cd5-06ef-5fe991984322', 80, '2021-01-18 02:20:17', 0),
('419e43e2-4906-8ac1-d092-6004f05d090b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd27d6ac9-0dc4-e687-467d-5fe9919ba898', -99, '2021-01-18 02:21:17', 0),
('41b4bab3-a30a-9d5f-d799-6004f001824c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8baebba3-3e27-b455-5c5c-5fe991b5f301', -99, '2021-01-18 02:23:05', 0),
('41b664f4-33ef-e39d-4417-5ffe576d5e9c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3551a270-f18f-bc61-d9ab-5fe991257d80', -98, '2021-01-18 02:21:56', 0),
('41bdfb12-f4f5-fa8d-b51b-5ffe576d0439', '857d3817-1929-a617-ad2c-5ffe57175f84', '9b5bed87-0888-81f7-f9b9-5fe9917ea434', -98, '2021-01-18 02:18:59', 0),
('41c6f94b-22a4-7204-ab91-5ffe54bef3ba', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9b590855-d45d-2b3f-dc76-5fe991a05eaa', -98, '2021-01-18 02:17:49', 0),
('41f2ecd9-3486-59f5-ed35-5ffe5634e189', '860158ee-3501-2093-b810-5ffe567b916e', 'a0add8a9-b932-fbce-14dd-5fe9913ae8a5', 80, '2021-01-18 02:20:17', 0),
('42013a53-16ea-6032-0e7c-6004f013dee5', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'cfb885ed-0011-0629-a460-5fe99177479c', 75, '2021-01-18 02:21:17', 0),
('4216656f-6154-7599-ae4b-5ffe57a16b95', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3917de13-cf89-17f0-e38d-5fe99121f8ee', 80, '2021-01-18 02:21:56', 0),
('421ac698-fdcc-923a-6451-6004f048ee6b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '89348a43-0ceb-7fc3-bda1-5fe99191fc57', 75, '2021-01-18 02:23:05', 0),
('421e6eab-96da-8643-6c6d-5ffe57ab8ee6', '857d3817-1929-a617-ad2c-5ffe57175f84', '9f8d8289-a870-70f7-ebc9-5fe99150962b', 75, '2021-01-18 02:18:59', 0),
('4229bb6a-a6c0-a044-5510-5ffe54e6b246', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9eeea38f-7536-6b8e-cd5f-5fe99168e8ca', 80, '2021-01-18 02:17:49', 0),
('42588275-bd1b-d679-fdad-5ffe562e3a11', '860158ee-3501-2093-b810-5ffe567b916e', '9fce588d-18cd-c0d3-f89b-5fe9911c9c0a', -99, '2021-01-18 02:20:17', 0),
('426d3da0-0f93-a19b-8646-6004f072d8ca', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd46c9d4a-4566-775c-c818-5fe991e6739e', -99, '2021-01-18 02:21:17', 0),
('427a6d9d-d609-f91c-7c15-5ffe57adc143', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3826d8ff-0a94-78ba-1f41-5fe991cc13d7', 80, '2021-01-18 02:21:56', 0),
('42830a54-17db-5b0f-cdd6-5ffe57926c24', '857d3817-1929-a617-ad2c-5ffe57175f84', '9e6892d0-cea9-a9af-2074-5fe991c2817b', 75, '2021-01-18 02:18:59', 0),
('42833cdc-4df3-961b-8fc8-5ffe5494b03f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9e0fe800-79ba-5cd5-06ef-5fe991984322', 80, '2021-01-18 02:17:49', 0),
('42896e11-7fad-dfdc-515c-6004f04d4d4a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8d914baf-1423-7020-8944-5fe9911e99af', -99, '2021-01-18 02:23:05', 0),
('42c1f9dc-6aa1-fdff-7770-5ffe56753014', '860158ee-3501-2093-b810-5ffe567b916e', '9d30721c-158f-c056-692b-5fe99127c260', 80, '2021-01-18 02:20:17', 0),
('42db8159-5e90-781c-ab84-5ffe576cface', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3ba2a8c3-0658-9208-ad4a-5fe991362626', 80, '2021-01-18 02:21:56', 0),
('42de01f1-3102-c73d-e09f-6004f0355fa6', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'cec82ba1-feb9-f717-4fc3-5fe991f6a31b', 75, '2021-01-18 02:21:17', 0),
('42e57f66-a422-e19c-2a93-5ffe546ee699', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a0add8a9-b932-fbce-14dd-5fe9913ae8a5', 80, '2021-01-18 02:17:49', 0),
('42ece41e-a5aa-13fa-685f-6004f00a37c2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '882106df-3bf3-d817-5575-5fe9914d26eb', 75, '2021-01-18 02:23:05', 0),
('42ed0a84-de38-100a-1823-5ffe570298b5', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a178b8fc-f7de-94c3-87a0-5fe9910e6673', 75, '2021-01-18 02:18:59', 0),
('4328ea58-b782-ded0-4f00-5ffe56f1601f', '860158ee-3501-2093-b810-5ffe567b916e', 'a18349b9-01ec-38ff-9453-5fe9917637c6', -99, '2021-01-18 02:20:17', 0),
('4339cc75-0eea-96da-e390-5ffe54a75fc2', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9fce588d-18cd-c0d3-f89b-5fe9911c9c0a', -99, '2021-01-18 02:17:49', 0),
('43428781-515b-59eb-0693-5ffe57f61ab3', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3a20c576-4d3d-4596-153d-5fe991eab6b4', -99, '2021-01-18 02:21:56', 0),
('43454813-df5b-7c51-4589-6004f0bfc86f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7b77e868-a008-0ee4-4b88-5fe991fbb3d5', -98, '2021-01-18 02:21:17', 0),
('434904e1-587e-3661-ccc2-5ffe57dc8230', '857d3817-1929-a617-ad2c-5ffe57175f84', 'massupdate', -99, '2021-01-18 02:18:59', 0),
('434b7e2f-b379-de37-0b98-5ffe57cf33be', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a07bf528-55f3-b6d3-38a6-5fe991182187', -99, '2021-01-18 02:18:59', 0),
('43582738-c39a-2a6a-e808-6004f083d01a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '21494c25-046f-a116-25b0-5fe991364750', 89, '2021-01-18 02:23:05', 0),
('43861ce4-6c85-7217-0749-5ffe56096336', '860158ee-3501-2093-b810-5ffe567b916e', '9c4db416-fd51-21e4-e198-5fe9910a31e4', 80, '2021-01-18 02:20:17', 0),
('439f6b2e-6b10-0398-814b-5ffe5484df18', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9d30721c-158f-c056-692b-5fe99127c260', 80, '2021-01-18 02:17:49', 0),
('43a2414c-6186-fe1a-356e-6004f0e8f947', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7f7790f1-571f-1cf9-9c6d-5fe991d79535', 75, '2021-01-18 02:21:17', 0),
('43a72698-d2ea-e0c6-a7a9-5ffe57447243', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '374897c0-70e4-0345-a9e4-5fe9911d4e4e', 80, '2021-01-18 02:21:56', 0),
('43ae29d8-72f0-708e-f787-5ffe578a6528', '857d3817-1929-a617-ad2c-5ffe57175f84', '9d7799ae-ee03-d123-2003-5fe991750155', 75, '2021-01-18 02:18:59', 0),
('43c7770f-acc5-bfed-d399-6004f04a6a2c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '249953bb-5a0d-a766-7f72-5fe9911b2910', 75, '2021-01-18 02:23:05', 0),
('43f7f723-de0e-f035-e6dd-5ffe5684ea00', '860158ee-3501-2093-b810-5ffe567b916e', '31268c7a-771e-45dc-ad3e-5fe99197378d', -98, '2021-01-18 02:20:17', 0),
('44020bdf-87a9-a250-37c9-5ffe54a1e220', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a18349b9-01ec-38ff-9453-5fe9917637c6', -99, '2021-01-18 02:17:49', 0),
('44084a69-ab89-f414-031f-6004f0b5e18a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7e7333ec-e694-5625-49be-5fe991c00256', 75, '2021-01-18 02:21:17', 0),
('440af3a7-223a-494f-1856-5ffe57c64fb5', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a274c148-9851-b79f-4ff2-5fe9911583c0', -99, '2021-01-18 02:18:59', 0),
('44102b57-f433-3c48-dc87-5ffe57b04ba4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3cbabe1f-c724-bcf3-7dd2-5fe991c08fe0', -99, '2021-01-18 02:21:56', 0),
('4431d16c-8de8-0f01-b28c-6004f0d9500e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '23bf9702-a009-31db-4218-5fe9918b8d26', 75, '2021-01-18 02:23:05', 0),
('4467d5a5-863b-c9e6-e441-5ffe563a4f9f', '860158ee-3501-2093-b810-5ffe567b916e', '359e58d4-672f-8450-0502-5fe991d90d53', 80, '2021-01-18 02:20:17', 0),
('4468e977-5865-59fc-1dcf-5ffe54b27fdc', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9c4db416-fd51-21e4-e198-5fe9910a31e4', 80, '2021-01-18 02:17:49', 0),
('446a27b9-66b2-8f59-08ba-6004f0cb8d5c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8191f8f9-f2d2-5239-86a4-5fe991d76f58', 75, '2021-01-18 02:21:17', 0),
('446c8f62-9472-2b81-6dce-5ffe57e5570b', '857d3817-1929-a617-ad2c-5ffe57175f84', '9c5897c1-c701-76d7-a532-5fe991a24183', 75, '2021-01-18 02:18:59', 0),
('44801777-00cd-bf98-274e-5ffe572d8d64', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3665eb75-d663-c9b0-c26f-5fe9918ce9d1', 80, '2021-01-18 02:21:56', 0),
('44820626-91d9-8205-335e-5ffe5462ffa3', 'f3ab2114-3037-5119-1375-5ffe5300083d', '21494c25-046f-a116-25b0-5fe991364750', -98, '2021-01-18 02:17:49', 0),
('4498acae-ba2c-62b6-5e80-6004f0eb26f7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '263b37b8-4d91-690e-c9b7-5fe991906e03', 75, '2021-01-18 02:23:05', 0),
('44b44650-4ea3-cc76-dd40-5ffe54c2317b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '31268c7a-771e-45dc-ad3e-5fe99197378d', -98, '2021-01-18 02:17:49', 0),
('44c31af2-f2c1-8960-2e0c-5ffe575cade2', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c218f0fb-e18c-1a03-5e56-5fe991fdff67', -98, '2021-01-18 02:18:59', 0),
('44ce1f30-4127-c315-15c2-6004f02475dd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8077ec7d-7ca4-306c-77eb-5fe991763a20', -99, '2021-01-18 02:21:17', 0),
('44d72ea4-ca59-2c89-3cb8-5ffe5644c045', '860158ee-3501-2093-b810-5ffe567b916e', '34832776-1f41-d9d6-3c88-5fe991652abf', 80, '2021-01-18 02:20:17', 0),
('44e87957-03fa-c9c0-305f-5ffe57ec9eef', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd57006b7-e7f1-a8df-7b38-5fe9914a3d6e', -98, '2021-01-18 02:21:56', 0),
('4504f933-1809-45ed-a833-6004f0f77a7c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '256c3b35-e784-5ec4-a8ae-5fe991aa965b', -99, '2021-01-18 02:23:05', 0),
('451cca3f-2cb7-682c-fbb7-5ffe54c20d7d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '359e58d4-672f-8450-0502-5fe991d90d53', 80, '2021-01-18 02:17:49', 0),
('45230064-1df9-a2bc-7675-5ffe571d2f0d', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c65b6579-4b12-0fc1-805f-5fe991a8c9e0', 75, '2021-01-18 02:18:59', 0),
('452db15c-df81-8eb9-01fb-6004f085d877', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7d77f594-2730-b283-bae1-5fe991f01c06', 75, '2021-01-18 02:21:17', 0),
('453cd307-f872-e840-d43d-5ffe5618ba4c', '860158ee-3501-2093-b810-5ffe567b916e', '37da10a0-4b60-17b3-572d-5fe99146d1f5', 80, '2021-01-18 02:20:17', 0),
('454dd567-8228-207e-a5e1-5ffe57e3e1c9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '11168e71-dfb6-25c7-423a-5fe9913e4838', 80, '2021-01-18 02:21:56', 0),
('456e8995-faf7-431a-2dd1-6004f0b5f96e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '22f409ce-6261-ffc6-a5ea-5fe991893cab', 75, '2021-01-18 02:23:05', 0),
('4582f375-b840-d126-78a9-5ffe543eda30', 'f3ab2114-3037-5119-1375-5ffe5300083d', '34832776-1f41-d9d6-3c88-5fe991652abf', 80, '2021-01-18 02:17:49', 0),
('45873f8a-8e55-37a3-a3e2-5ffe572f1899', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c55a7aab-8278-3955-8f2e-5fe991014824', 75, '2021-01-18 02:18:59', 0),
('45884f1c-ebdb-c1ae-365c-6004f0bc713b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '82699b01-9611-007e-98a9-5fe99151f456', -99, '2021-01-18 02:21:17', 0),
('459e708f-5deb-ee83-0b3e-5ffe56a7cb23', '860158ee-3501-2093-b810-5ffe567b916e', '36b9debc-cf61-2e05-e0c1-5fe99114a8b1', -99, '2021-01-18 02:20:17', 0),
('45b0f8ea-381b-4b05-39cf-5ffe57a05ddf', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '102a85b0-a8da-085d-303f-5fe9913862b6', 80, '2021-01-18 02:21:56', 0),
('45db1c6e-392b-fc5b-e147-6004f0d4caeb', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2707d3f2-dfdd-5b66-eb98-5fe991924eff', -99, '2021-01-18 02:23:05', 0),
('45e58b7e-bc3d-cdcd-8044-5ffe54c478cd', 'f3ab2114-3037-5119-1375-5ffe5300083d', '37da10a0-4b60-17b3-572d-5fe99146d1f5', 80, '2021-01-18 02:17:49', 0),
('45eda394-9545-7a82-0e88-6004f02fc027', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7c8270f3-df3b-a74d-58df-5fe99110aa48', 75, '2021-01-18 02:21:17', 0),
('45f10532-d6f3-68e2-6590-5ffe57efd65e', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c85bf0a5-3f3a-438b-ba72-5fe9911f220a', 75, '2021-01-18 02:18:59', 0),
('45f30f98-81dd-be29-6274-5ffe5396039c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4a307772-951d-ff69-8455-5fe991fa4630', 90, '2021-01-13 01:58:24', 0),
('4604132b-e052-f18d-19d5-5ffe56207cde', '860158ee-3501-2093-b810-5ffe567b916e', '336abce4-cd82-bacf-2be2-5fe9917ce5f3', 80, '2021-01-18 02:20:17', 0),
('46345bae-e280-890e-9e78-5ffe57a4582f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '13119046-55d9-f4c7-8f0c-5fe991870bc3', 80, '2021-01-18 02:21:56', 0),
('4646e4e4-81a1-3a65-316c-6004f08faff9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2229f60f-c756-dde0-77b7-5fe991eeb405', 75, '2021-01-18 02:23:05', 0),
('46484cd0-c693-ee98-d716-5ffe54c196cb', 'f3ab2114-3037-5119-1375-5ffe5300083d', '36b9debc-cf61-2e05-e0c1-5fe99114a8b1', -99, '2021-01-18 02:17:49', 0),
('4654b690-0f5f-ac42-730e-5ffe57251859', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c76062c6-92e2-d529-9a5f-5fe9919350fd', -99, '2021-01-18 02:18:59', 0),
('465c349c-ce61-7111-9365-6004f0c5159c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a63ff7b8-be9f-5c3d-973a-5fe991a641cd', -98, '2021-01-18 02:21:17', 0),
('46781e0f-7141-71f1-4ab7-5ffe564d4d28', '860158ee-3501-2093-b810-5ffe567b916e', '38f7e37c-3780-9415-9113-5fe9915aee28', -99, '2021-01-18 02:20:17', 0),
('46a54a71-8257-3e64-7998-5ffe54a49b10', 'f3ab2114-3037-5119-1375-5ffe5300083d', '336abce4-cd82-bacf-2be2-5fe9917ce5f3', 80, '2021-01-18 02:17:49', 0),
('46a833c4-f311-f152-b0b4-5ffe57273034', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '1224a14c-5751-b0f7-2546-5fe99171ecf5', -99, '2021-01-18 02:21:56', 0),
('46acfba0-195c-3a41-3c82-6004f065a46d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4560b1d3-d8ef-07c0-24ee-5fe991cad1e2', -98, '2021-01-18 02:23:05', 0),
('46b1289f-a698-f194-d8fb-5ffe57681bcd', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c466431a-9117-66a5-32d1-5fe991d14198', 75, '2021-01-18 02:18:59', 0),
('46cf56aa-9f46-f60c-d48f-6004f01ccf22', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a9fe76ce-8d27-193f-a8c5-5fe991379ec8', 75, '2021-01-18 02:21:17', 0),
('46e9654f-67d0-51c6-af4d-5ffe56d4a2e7', '860158ee-3501-2093-b810-5ffe567b916e', '324a8fc4-a1f5-0ff1-9dfe-5fe99155b682', 80, '2021-01-18 02:20:17', 0),
('470b3e99-4a93-9721-529a-5ffe54d5630c', 'f3ab2114-3037-5119-1375-5ffe5300083d', '38f7e37c-3780-9415-9113-5fe9915aee28', -99, '2021-01-18 02:17:49', 0),
('4710ee7b-6e63-9ba2-524c-6004f0b1de24', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '49263512-3bb7-46b1-5871-5fe991aef925', 75, '2021-01-18 02:23:05', 0),
('4714ed7f-9966-25f5-a054-5ffe57e8b5e5', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c9604d45-e488-4158-eef5-5fe9914cc27f', -99, '2021-01-18 02:18:59', 0),
('473abc76-2b32-9249-c3ae-6004f01ae528', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a913220b-58c3-edb8-9b22-5fe991ee39a0', 75, '2021-01-18 02:21:17', 0),
('474a6024-f917-6081-19bd-5ffe57227091', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'f48c0261-22b6-af87-604d-5fe9918bf017', 80, '2021-01-18 02:21:56', 0),
('47514020-0061-344f-56c6-5ffe561c181f', '860158ee-3501-2093-b810-5ffe567b916e', 'e1294056-4128-6d77-cf89-5fe991e10d4b', -98, '2021-01-18 02:20:17', 0),
('4761e25a-188c-30c8-ddb0-5ffe545220a0', 'f3ab2114-3037-5119-1375-5ffe5300083d', '324a8fc4-a1f5-0ff1-9dfe-5fe99155b682', 80, '2021-01-18 02:17:49', 0),
('47680520-afde-c60e-24fe-5ffe56935878', '860158ee-3501-2093-b810-5ffe567b916e', '21494c25-046f-a116-25b0-5fe991364750', -98, '2021-01-18 02:20:17', 0),
('4775a7fa-ca1c-0ee9-b211-5ffe579fbdcf', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c31a5001-3fc7-e99b-4cf0-5fe991815e31', 75, '2021-01-18 02:18:59', 0),
('477ba417-0e28-d799-64ed-6004f0881b19', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4852587d-2ed7-392a-225d-5fe991f70e21', 75, '2021-01-18 02:23:05', 0),
('47ac5a8b-ed4c-3603-b540-6004f0e9385b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ab932356-a060-c695-6bce-5fe9914a18c1', 75, '2021-01-18 02:21:17', 0),
('47b40b09-2ff9-95c8-675c-5ffe56e961f4', '860158ee-3501-2093-b810-5ffe567b916e', 'e651281c-d5fd-1e65-c965-5fe991ccde64', 80, '2021-01-18 02:20:17', 0),
('47b433d8-e5c6-9092-0013-5ffe57a83e62', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '1400ff85-edb1-8f1e-ecfb-5fe9914372ae', -99, '2021-01-18 02:21:56', 0),
('47c2fe10-f688-2953-f60f-5ffe54cb87e6', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e1294056-4128-6d77-cf89-5fe991e10d4b', 89, '2021-01-18 02:17:49', 0),
('47d933cb-6d6a-2ff2-f946-5ffe577d546a', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e7b869ff-d7dc-a375-69dc-5fe9912999e3', -98, '2021-01-18 02:18:59', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('47e35ae8-8903-9d10-8fbe-6004f0217fa2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4b0b105d-c49d-64fd-880d-5fe991434844', 75, '2021-01-18 02:23:05', 0),
('4811fbbd-1e11-e638-ebc3-5ffe565a70e0', '860158ee-3501-2093-b810-5ffe567b916e', 'e59920e8-2c35-973a-d33c-5fe991e47b1d', 80, '2021-01-18 02:20:17', 0),
('48156066-7b72-257c-1f67-6004f0424ad3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'aac9f2e0-a504-9c9e-29de-5fe991d6c366', -99, '2021-01-18 02:21:17', 0),
('4822a203-cce9-660f-4042-5ffe545437ac', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e651281c-d5fd-1e65-c965-5fe991ccde64', 80, '2021-01-18 02:17:49', 0),
('48325da6-c8b3-beac-69ca-5ffe579dc533', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e54e0225-640f-567a-882a-5fe991cbc6b9', 80, '2021-01-18 02:21:56', 0),
('483cb788-8dbd-5050-aa13-5ffe570b4e19', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ebd71d75-44bc-cb91-7b93-5fe99155f256', 75, '2021-01-18 02:18:59', 0),
('4840a5c4-3156-cc4a-ba98-6004f0252b6a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4a307772-951d-ff69-8455-5fe991fa4630', -99, '2021-01-18 02:23:05', 0),
('487b572c-369a-d2fa-edf2-6004f0630b12', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a8249c4e-35b6-f389-68a0-5fe9919e2360', 75, '2021-01-18 02:21:17', 0),
('4880794c-023e-1ad9-a2cd-5ffe566123b9', '860158ee-3501-2093-b810-5ffe567b916e', 'e8072daa-fce4-2cee-14e3-5fe991410489', 80, '2021-01-18 02:20:17', 0),
('48828836-db4d-dc83-efda-5ffe5434f44f', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e59920e8-2c35-973a-d33c-5fe991e47b1d', 80, '2021-01-18 02:17:49', 0),
('48a1311d-6223-166e-dc38-5ffe57fd666a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '63b54b9f-8580-d724-9ede-5fe991fa4f1d', -98, '2021-01-18 02:21:56', 0),
('48a7eedc-755a-b5c5-d0bb-6004f0ac642f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '47662a0f-8676-9eee-4919-5fe9911a954f', 75, '2021-01-18 02:23:05', 0),
('48e3d330-82f4-22b0-b2ce-5ffe56152af7', '860158ee-3501-2093-b810-5ffe567b916e', 'e70a07f9-978a-eb0f-5fe3-5fe99197714d', -99, '2021-01-18 02:20:17', 0),
('48e7d313-7ee6-69fa-3959-6004f011b273', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ac6b9b7c-2168-81ca-4234-5fe991a96a8a', -99, '2021-01-18 02:21:17', 0),
('49076ce4-874f-39fa-b79d-6004f0aacbce', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4bfafc04-0639-1b18-8f38-5fe9912385c2', -99, '2021-01-18 02:23:05', 0),
('4918d9ae-1057-12e0-2422-5ffe57d18958', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '679d59ba-8e91-1b1a-d6c8-5fe991802c2c', 80, '2021-01-18 02:21:56', 0),
('491e13cf-abee-8d66-f6d9-5ffe54c771c2', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e8072daa-fce4-2cee-14e3-5fe991410489', 80, '2021-01-18 02:17:49', 0),
('4948bb9c-2dbf-4e75-b281-5ffe56567c14', '860158ee-3501-2093-b810-5ffe567b916e', 'e4e302c6-3fb2-9304-85f8-5fe9913267cd', 80, '2021-01-18 02:20:17', 0),
('494b7725-95c4-dfdd-d00c-6004f0a7ba53', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a73cae80-ffea-1db9-b82e-5fe9918e160a', 75, '2021-01-18 02:21:17', 0),
('495e191a-f7ce-8d77-c4a6-5ffe57a3180b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ead81cce-59ad-453f-55c2-5fe991497fb5', 75, '2021-01-18 02:18:59', 0),
('496cf559-f7a0-46ab-8cd0-6004f0003a8f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '468a5f69-7fc3-6e53-0551-5fe99174b182', 75, '2021-01-18 02:23:05', 0),
('4981e1e8-7e2b-e956-8f1d-5ffe5465ee95', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e70a07f9-978a-eb0f-5fe3-5fe99197714d', -99, '2021-01-18 02:17:49', 0),
('49980d7d-e126-ec59-f7f0-5ffe57f7301b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '66b44762-ea3b-234b-6f81-5fe9919fa9b5', 80, '2021-01-18 02:21:56', 0),
('49a94466-1985-e24e-67ec-5ffe566f7716', '860158ee-3501-2093-b810-5ffe567b916e', 'e8ff7685-9599-b1b4-e206-5fe9910525ef', -99, '2021-01-18 02:20:17', 0),
('49b6f76e-31bf-cf9c-ef29-6004f09120a0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c78e668a-e9c8-187c-1443-5fe991aafc4c', -98, '2021-01-18 02:21:17', 0),
('49bfaa7e-c01e-52d3-1365-5ffe57b75eee', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ed768757-6487-2c69-92de-5fe99150b701', 75, '2021-01-18 02:18:59', 0),
('49c27531-7abd-17e0-7a8c-6004f0f03251', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6bcd468f-05a5-bcf4-564d-5fe991e0de54', -98, '2021-01-18 02:23:05', 0),
('49d99f21-489c-8ac2-083e-5ffe54cae63a', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e4e302c6-3fb2-9304-85f8-5fe9913267cd', 80, '2021-01-18 02:17:49', 0),
('49ff0a01-ffb5-2bd1-feef-5ffe57e89420', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '697557a6-ce3a-5b71-4d6d-5fe9912db974', 80, '2021-01-18 02:21:56', 0),
('4a0d69e8-eb0e-038e-e213-5ffe56c91485', '860158ee-3501-2093-b810-5ffe567b916e', 'e42c95a9-569b-ed17-52d5-5fe9910ba6e9', 80, '2021-01-18 02:20:17', 0),
('4a0f0d59-93e9-da08-c3fa-6004f091694b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5b413545-d4fd-c9b7-d6d2-5fe991c152ad', -99, '2021-01-18 02:21:17', 0),
('4a1e4e6d-fe43-86a1-71de-6004f03dc635', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'cb3e92a9-b63b-131f-c460-5fe9915c6bd2', 75, '2021-01-18 02:21:17', 0),
('4a207fe0-2ca0-9095-70c8-5ffe5776a48c', '857d3817-1929-a617-ad2c-5ffe57175f84', 'eca203fd-ce6d-9048-6970-5fe991ad15e8', -99, '2021-01-18 02:18:59', 0),
('4a222ba6-9a50-f1e3-8609-6004f076b1d5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6f37cdc5-64de-e0cb-0398-5fe991c753dd', 75, '2021-01-18 02:23:05', 0),
('4a44f171-ae6a-9393-e55f-5ffe5434df32', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e8ff7685-9599-b1b4-e206-5fe9910525ef', -99, '2021-01-18 02:17:49', 0),
('4a590186-88aa-6ca6-9704-5ffe549b540c', 'f3ab2114-3037-5119-1375-5ffe5300083d', '249953bb-5a0d-a766-7f72-5fe9911b2910', 80, '2021-01-18 02:17:49', 0),
('4a656e44-debb-d500-7f16-5ffe5740c588', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6874426e-93c9-cd44-7589-5fe991e044e2', -99, '2021-01-18 02:21:56', 0),
('4a782b52-8b95-335b-309f-5ffe56af6d17', '860158ee-3501-2093-b810-5ffe567b916e', '56a6bf95-4af3-f5f0-259a-5fe991106ab5', -98, '2021-01-18 02:20:17', 0),
('4a7f4ec2-f8ba-dcfd-7933-6004f0fb2f87', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6e736f3a-1b1d-ec66-c34f-5fe9916edc56', 75, '2021-01-18 02:23:05', 0),
('4a81c3ed-9855-daa1-9a2b-6004f07efff8', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ca4f132d-502d-5aee-0cd4-5fe9916973a5', 75, '2021-01-18 02:21:17', 0),
('4a87a3c4-af59-fcc4-60b7-5ffe57dd57c2', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e9d4c5fa-00c6-380c-2014-5fe991f309f0', 75, '2021-01-18 02:18:59', 0),
('4aa4a601-fe27-8086-bb61-5ffe54115d13', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e42c95a9-569b-ed17-52d5-5fe9910ba6e9', 80, '2021-01-18 02:17:49', 0),
('4ad6ed00-307d-426c-86f5-5ffe5798647a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '65b8c1f5-c153-f472-071a-5fe991ea3090', 80, '2021-01-18 02:21:56', 0),
('4ae2f643-0297-31b5-cf69-6004f0b2a816', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '70b85345-f9e6-4479-50bf-5fe991d4f6ee', 75, '2021-01-18 02:23:05', 0),
('4aea2c71-56cd-2d4b-0da8-6004f076ef8a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'cd0d3d3e-c909-743b-3dd5-5fe991dc1b1f', 75, '2021-01-18 02:21:17', 0),
('4aeaea36-4f14-65a1-48da-5ffe57473b78', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ee2d337d-7418-f149-2626-5fe9918c5a0a', -99, '2021-01-18 02:18:59', 0),
('4aee380e-ac5f-0498-6894-5ffe56678c6a', '860158ee-3501-2093-b810-5ffe567b916e', '5a5c77c9-0168-2cf4-88a5-5fe9911dc650', 80, '2021-01-18 02:20:17', 0),
('4b0c6291-9e05-5d6b-c416-5ffe5403a1c7', 'f3ab2114-3037-5119-1375-5ffe5300083d', '56a6bf95-4af3-f5f0-259a-5fe991106ab5', -98, '2021-01-18 02:17:49', 0),
('4b402aad-66b1-0b78-4a6c-5ffe571dbb49', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6a687475-1a50-917d-75d3-5fe9918a989d', -99, '2021-01-18 02:21:56', 0),
('4b463c37-192c-5387-33d6-6004f0f83e7d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6ff6bc3b-22a7-25f3-b41a-5fe9917a810d', -99, '2021-01-18 02:23:05', 0),
('4b467814-527a-a57f-aea2-5ffe5713394f', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e8cad13f-c73b-7e3b-2da3-5fe99127eea5', 75, '2021-01-18 02:18:59', 0),
('4b4f3c66-0b59-3ce3-b686-6004f0a60ed2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'cc23a415-34a1-3d49-5f84-5fe991ade554', -99, '2021-01-18 02:21:17', 0),
('4b56a252-3bb2-6caf-e150-5ffe5682f3cb', '860158ee-3501-2093-b810-5ffe567b916e', '597578a9-e100-d14a-98a9-5fe991cb2926', 80, '2021-01-18 02:20:17', 0),
('4b6edc69-5553-fc43-42d6-5ffe54f886c7', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5a5c77c9-0168-2cf4-88a5-5fe9911dc650', 80, '2021-01-18 02:17:49', 0),
('4b8d0377-68e4-3236-33b3-5ffe536c79e0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '47662a0f-8676-9eee-4919-5fe9911a954f', 90, '2021-01-13 01:58:24', 0),
('4ba1e8af-85a0-7dd7-64c1-5ffe5711034f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '64bbaf2e-7501-4095-0af1-5fe99123fba6', 80, '2021-01-18 02:21:56', 0),
('4ba2f8cd-4aed-db0f-5953-6004f07dd5c2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6d9aa8e5-15b0-7074-59f5-5fe991e77181', 75, '2021-01-18 02:23:05', 0),
('4ba7a413-462d-0e39-3a21-6004f0efd27d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c96705f6-2453-523f-1014-5fe991fd5bf1', 75, '2021-01-18 02:21:17', 0),
('4badae88-1c5b-061b-38e6-5ffe57c0c4ff', '857d3817-1929-a617-ad2c-5ffe57175f84', '4e54b667-41a1-31b4-9bd6-5fe991e5c5ba', -98, '2021-01-18 02:18:59', 0),
('4bbdbc7a-9ccc-fe03-18b8-5ffe563f8403', '860158ee-3501-2093-b810-5ffe567b916e', '5c10a0c5-ddae-9e33-afae-5fe991ed07ff', 80, '2021-01-18 02:20:17', 0),
('4bd6e978-a48e-d692-165f-5ffe54673fbc', 'f3ab2114-3037-5119-1375-5ffe5300083d', '597578a9-e100-d14a-98a9-5fe991cb2926', 80, '2021-01-18 02:17:49', 0),
('4c09be4e-4d1e-5aa9-9a88-6004f02c8f3c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'cdf4deca-43a7-96de-523c-5fe9917f19dc', -99, '2021-01-18 02:21:17', 0),
('4c0fa2fa-f71a-9685-6786-5ffe57864d2f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '21494c25-046f-a116-25b0-5fe991364750', 89, '2021-01-18 02:21:56', 0),
('4c0fc6dd-3f8c-4dcf-241d-6004f00c5636', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7195a6d5-a70c-c709-6fc4-5fe991771207', -99, '2021-01-18 02:23:05', 0),
('4c128a68-a187-0ef6-c81b-5ffe57cb5042', '857d3817-1929-a617-ad2c-5ffe57175f84', '52a71728-7481-306e-4188-5fe991897345', 75, '2021-01-18 02:18:59', 0),
('4c3e902b-68cb-6ae4-a783-5ffe54d434c4', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5c10a0c5-ddae-9e33-afae-5fe991ed07ff', 80, '2021-01-18 02:17:49', 0),
('4c415aa0-2dbf-be18-b33a-5ffe5628cc50', '860158ee-3501-2093-b810-5ffe567b916e', '5b413545-d4fd-c9b7-d6d2-5fe991c152ad', -99, '2021-01-18 02:20:17', 0),
('4c6fff58-fbfb-3a35-3014-6004f0c3df2f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6cc3fc48-e397-50dc-68d3-5fe99145e426', 75, '2021-01-18 02:23:05', 0),
('4c70fff6-33d7-c100-94c2-6004f018b61f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c88c4932-f211-1278-2e83-5fe991d62f1d', 75, '2021-01-18 02:21:17', 0),
('4c79f861-5843-645d-8c79-5ffe57565b67', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '249953bb-5a0d-a766-7f72-5fe9911b2910', 80, '2021-01-18 02:21:56', 0),
('4c7a2b55-c7eb-d916-e905-5ffe570838c4', '857d3817-1929-a617-ad2c-5ffe57175f84', '51b43259-2704-3b6a-19f5-5fe991eceaf8', 75, '2021-01-18 02:18:59', 0),
('4c98fd32-b565-c3ee-3c23-5ffe56db7faf', '860158ee-3501-2093-b810-5ffe567b916e', '58a5dcde-f29e-9c98-9c07-5fe991eb4315', 80, '2021-01-18 02:20:17', 0),
('4caa579d-7a16-486c-ff7c-5ffe54cbdbdb', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5b413545-d4fd-c9b7-d6d2-5fe991c152ad', -99, '2021-01-18 02:17:49', 0),
('4cd2798c-ff51-7076-5f06-6004f07fed25', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3b495310-2762-2a33-fae5-5fe99197f1c9', -98, '2021-01-18 02:23:05', 0),
('4cdafd81-c4cb-e526-4dbe-5ffe5721b240', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '23bf9702-a009-31db-4218-5fe9918b8d26', 80, '2021-01-18 02:21:56', 0),
('4cdb1d4b-f9e5-26df-dc7d-6004f01509ae', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a1812648-b7a8-751b-ace4-5fe991b4de0b', -98, '2021-01-18 02:21:17', 0),
('4cde02f7-42db-b706-2e23-5ffe57c930ac', '857d3817-1929-a617-ad2c-5ffe57175f84', '54a63ebc-eaf8-3281-2825-5fe99141ae0e', 75, '2021-01-18 02:18:59', 0),
('4cfa975c-9446-953d-250b-5ffe564d7839', '860158ee-3501-2093-b810-5ffe567b916e', '5cdd1a92-d464-520e-afab-5fe991d72da7', -99, '2021-01-18 02:20:17', 0),
('4d034a95-55e3-97f6-b840-5ffe5479d99e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '58a5dcde-f29e-9c98-9c07-5fe991eb4315', 80, '2021-01-18 02:17:49', 0),
('4d32778d-05af-c047-916a-6004f08ad78b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3e49521b-d827-7b2a-0b53-5fe991cb254a', 75, '2021-01-18 02:23:05', 0),
('4d3f071e-f6ef-7d71-d268-5ffe571201b6', '857d3817-1929-a617-ad2c-5ffe57175f84', '53a0437c-3949-42b5-b6f7-5fe9915c9b19', -99, '2021-01-18 02:18:59', 0),
('4d408966-9af5-d542-e843-5ffe5771cafe', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '263b37b8-4d91-690e-c9b7-5fe991906e03', 80, '2021-01-18 02:21:56', 0),
('4d4cabc2-21c6-2ddf-f8e1-6004f049b3f9', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a5b46281-8b2a-2314-5bd7-5fe991cb89bd', 75, '2021-01-18 02:21:17', 0),
('4d6216fc-5a4b-eb07-05e6-5ffe56457ff9', '860158ee-3501-2093-b810-5ffe567b916e', '57c5b394-b150-f1c0-2a99-5fe9918738a0', 80, '2021-01-18 02:20:17', 0),
('4d64d349-4152-95a1-944e-5ffe5422dbb3', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5cdd1a92-d464-520e-afab-5fe991d72da7', -99, '2021-01-18 02:17:49', 0),
('4d9843cf-bd14-26e8-9ea1-6004f08adda1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3d9d1f58-38f0-6da8-84eb-5fe991bd1d59', 75, '2021-01-18 02:23:05', 0),
('4da4d053-778b-8378-7b64-5ffe57b05f46', '857d3817-1929-a617-ad2c-5ffe57175f84', '50b74da9-8a7e-9868-7664-5fe9910b1f6b', 75, '2021-01-18 02:18:59', 0),
('4da57535-8de9-465b-d514-5ffe57cd48d2', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '256c3b35-e784-5ec4-a8ae-5fe991aa965b', -99, '2021-01-18 02:21:56', 0),
('4dc06130-2b6e-b131-9579-5ffe56a3e400', '860158ee-3501-2093-b810-5ffe567b916e', '582d4670-fa7e-c32e-af44-5fe991a87c45', 89, '2021-01-18 02:20:17', 0),
('4dcf7b83-2c01-6e69-60ef-6004f077e1e8', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a4c5d37e-7f45-eb0b-1cf9-5fe9917b9d6a', 75, '2021-01-18 02:21:17', 0),
('4dd2b53a-0a5d-ae36-70c1-5ffe54da832c', 'f3ab2114-3037-5119-1375-5ffe5300083d', '57c5b394-b150-f1c0-2a99-5fe9918738a0', 80, '2021-01-18 02:17:49', 0),
('4dd50743-d4f9-a7aa-5c91-5ffe56aecc21', '860158ee-3501-2093-b810-5ffe567b916e', '249953bb-5a0d-a766-7f72-5fe9911b2910', 80, '2021-01-18 02:20:17', 0),
('4df7e2f3-d81c-eadd-b714-6004f0cefde3', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3fa45ef5-762f-980f-aaa7-5fe99118be9d', 75, '2021-01-18 02:23:05', 0),
('4dfff1ea-e8a7-e151-440a-5ffe57099671', '857d3817-1929-a617-ad2c-5ffe57175f84', '55abbde3-056b-14ab-2bc9-5fe991cc6632', -99, '2021-01-18 02:18:59', 0),
('4e06934d-1a0a-b46d-51a4-5ffe571f0a70', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '22f409ce-6261-ffc6-a5ea-5fe991893cab', 80, '2021-01-18 02:21:56', 0),
('4e21c2fd-42b9-3f2a-7872-5ffe5651e738', '860158ee-3501-2093-b810-5ffe567b916e', '5c0702a3-1f94-2c28-aef8-5fe991aa5d5a', 80, '2021-01-18 02:20:17', 0),
('4e307dee-5892-a7fa-ebcc-6004f01047f0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a794fcfe-711b-488f-84dd-5fe991cb8a8f', 75, '2021-01-18 02:21:17', 0),
('4e381e2d-c97f-a4c9-f112-5ffe5431078a', 'f3ab2114-3037-5119-1375-5ffe5300083d', '582d4670-fa7e-c32e-af44-5fe991a87c45', 89, '2021-01-18 02:17:49', 0),
('4e57f0f4-b0c9-eb2b-138a-6004f01f3946', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3eeb41f2-d7de-94e6-393e-5fe99172b71f', -99, '2021-01-18 02:23:05', 0),
('4e60b5c9-2ed8-9400-4e25-5ffe57dda9d5', '857d3817-1929-a617-ad2c-5ffe57175f84', '4f6918e3-10f8-acdf-72fc-5fe9913d462c', 75, '2021-01-18 02:18:59', 0),
('4e6a8d6b-95e0-d031-04f8-5ffe5739b6e8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2707d3f2-dfdd-5b66-eb98-5fe991924eff', -99, '2021-01-18 02:21:56', 0),
('4e85cfb8-0b03-847e-f760-5ffe565ac1d3', '860158ee-3501-2093-b810-5ffe567b916e', '5b0e9519-f4aa-ba7d-2b28-5fe991e20867', 80, '2021-01-18 02:20:17', 0),
('4e964d3f-da01-d0e7-e63a-6004f0fc5b02', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a6a9a7bb-1ad5-e90a-9003-5fe99196320b', -99, '2021-01-18 02:21:17', 0),
('4ea7eb5b-a938-31f5-efc1-5ffe547a52b0', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5c0702a3-1f94-2c28-aef8-5fe991aa5d5a', 80, '2021-01-18 02:17:49', 0),
('4ebafa8d-bff6-8e70-d472-5ffe57f1f5ca', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b27fc4e4-d383-31f9-2f97-5fe9919ef44a', -98, '2021-01-18 02:18:59', 0),
('4ec4dde9-5dc6-b2ef-abb4-6004f0750604', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3ca85a97-4cd3-c3df-3213-5fe9917403bb', 75, '2021-01-18 02:23:05', 0),
('4ee74381-84d9-5805-d5b3-5ffe57ba976e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2229f60f-c756-dde0-77b7-5fe991eeb405', 80, '2021-01-18 02:21:56', 0),
('4eebb194-4ec7-9719-763e-5ffe56f590bc', '860158ee-3501-2093-b810-5ffe567b916e', '5dd4bc31-c591-33f4-58de-5fe991e1aaa8', 80, '2021-01-18 02:20:17', 0),
('4efd8d28-54db-fe48-8c5f-5ffe54deed24', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5b0e9519-f4aa-ba7d-2b28-5fe991e20867', 80, '2021-01-18 02:17:49', 0),
('4f0df7c3-c77d-d614-4ba3-6004f0ca3a44', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a3c8b404-bff0-380b-9a97-5fe99126fb9f', 75, '2021-01-18 02:21:17', 0),
('4f23452d-0158-e442-af79-5ffe57d209d3', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b6b96afa-bc9a-9505-7fec-5fe99129a947', 75, '2021-01-18 02:18:59', 0),
('4f266267-d247-46e7-56fc-6004f029b1e5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '40482d37-640a-72bc-f077-5fe9915e67a0', -99, '2021-01-18 02:23:05', 0),
('4f455266-4b1f-b177-4c20-5ffe57fb6253', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '221b12f0-5d05-330c-b7a3-5fe9912efe39', -98, '2021-01-18 02:21:56', 0),
('4f508b22-f48c-e706-7b37-5ffe56fc328d', '860158ee-3501-2093-b810-5ffe567b916e', '5ce9badf-a070-6591-2e16-5fe991d43544', -99, '2021-01-18 02:20:17', 0),
('4f666242-d2f2-56cc-d49b-5ffe548c4099', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5dd4bc31-c591-33f4-58de-5fe991e1aaa8', 80, '2021-01-18 02:17:49', 0),
('4f868981-dbd3-bc33-565d-6004f013bf04', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3c078834-32c4-617f-9fd6-5fe991bf28e0', 75, '2021-01-18 02:23:05', 0),
('4f8751d1-a574-a348-9b3b-6004f0fb5439', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a893ae5e-04f1-1ad5-14f8-5fe99134dca8', -99, '2021-01-18 02:21:17', 0),
('4f89b5c2-f6e2-aecc-6d77-5ffe57e5dd7b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b59fe417-a393-ffd9-baed-5fe9919fd0ca', 75, '2021-01-18 02:18:59', 0),
('4fae1d25-bbc5-dc2f-4b06-5ffe57f21eef', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '261fe43f-ae70-119e-7363-5fe991f3234f', 80, '2021-01-18 02:21:56', 0),
('4fb4d239-2611-44ce-6f77-5ffe56c14af0', '860158ee-3501-2093-b810-5ffe567b916e', '5a1e6717-7bf9-3dfd-57de-5fe99132f137', 80, '2021-01-18 02:20:17', 0),
('4fb70db1-86ae-f854-bf82-5ffe575043ed', '857d3817-1929-a617-ad2c-5ffe57175f84', 'view', 75, '2021-01-18 02:18:59', 0),
('4fcad83e-852d-94be-6a1e-5ffe546660f0', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5ce9badf-a070-6591-2e16-5fe991d43544', -99, '2021-01-18 02:17:49', 0),
('4fe59bdb-d0ec-b2cf-a529-6004f095aa48', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2732a0e6-5f36-20ee-3fb9-5fe99121cf30', 89, '2021-01-18 02:23:05', 0),
('4fe60c62-ebdc-b113-e74f-6004f0c2b6dc', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a2d06f6c-d1d9-df54-18be-5fe991d6de31', 75, '2021-01-18 02:21:17', 0),
('4fece676-f3d9-a34f-e9f5-5ffe5792ba3a', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b92414b1-a4b1-858b-43cd-5fe991d91b88', 75, '2021-01-18 02:18:59', 0),
('50102820-223a-a8b9-a84e-5ffe56903939', '860158ee-3501-2093-b810-5ffe567b916e', '5eb3c820-bf11-cc6b-e123-5fe991053126', -99, '2021-01-18 02:20:17', 0),
('5029b43a-5164-a3b4-e475-5ffe57ce0ee2', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '25330da0-6d1c-e099-5248-5fe991488f96', 80, '2021-01-18 02:21:56', 0),
('502bbb08-f437-1229-96cf-5ffe54844d52', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5a1e6717-7bf9-3dfd-57de-5fe99132f137', 80, '2021-01-18 02:17:49', 0),
('50490547-a5dd-275c-c40a-6004f05e54b2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c218f0fb-e18c-1a03-5e56-5fe991fdff67', -98, '2021-01-18 02:21:17', 0),
('50539b40-74a8-f7c0-1a9b-6004f0479eea', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2b496d64-3d03-a85e-b5d3-5fe991019c1d', 75, '2021-01-18 02:23:05', 0),
('50563ccc-d4db-ef0a-61b2-5ffe574edfe2', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b7e8a2b4-1cbb-a89d-510a-5fe991a230cd', -99, '2021-01-18 02:18:59', 0),
('5061060e-232f-e55a-9ea1-5ffe54d9d59f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '23bf9702-a009-31db-4218-5fe9918b8d26', 80, '2021-01-18 02:17:49', 0),
('5070d8da-e5b1-eddb-5b81-5ffe5613ce66', '860158ee-3501-2093-b810-5ffe567b916e', '59287b25-b69c-a8dd-6784-5fe991db46b6', 80, '2021-01-18 02:20:17', 0),
('508a762c-091c-1745-2e68-5ffe57249d28', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '27da2e31-71e5-6694-1bad-5fe9910245e3', 80, '2021-01-18 02:21:56', 0),
('509ce51b-85ec-3fbd-2702-5ffe547caae4', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5eb3c820-bf11-cc6b-e123-5fe991053126', -99, '2021-01-18 02:17:49', 0),
('50a62ac3-ec00-7cd6-59d8-6004f06ca4d0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c65b6579-4b12-0fc1-805f-5fe991a8c9e0', 75, '2021-01-18 02:21:17', 0),
('50aba674-e0b1-1f86-301e-5ffe57578253', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b4919591-7b1f-f68c-6105-5fe9910a4a31', 75, '2021-01-18 02:18:59', 0),
('50b1ee44-d0d4-b4f0-e3dc-6004f0b93fe5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2a1f9f0a-f984-6834-3682-5fe991d443ea', 75, '2021-01-18 02:23:05', 0),
('50c5723f-7a04-a649-c8c8-5ffe56766d71', '860158ee-3501-2093-b810-5ffe567b916e', '2d90831f-294c-d495-b00e-5fe99120c84b', -98, '2021-01-18 02:20:17', 0),
('50f3bbed-30e0-03e5-7c4d-5ffe578fd45c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2706b8b1-f8f3-607b-c2f7-5fe991057a1c', -99, '2021-01-18 02:21:56', 0),
('5105b12a-7200-39f8-4191-5ffe54eaae56', 'f3ab2114-3037-5119-1375-5ffe5300083d', '59287b25-b69c-a8dd-6784-5fe991db46b6', 80, '2021-01-18 02:17:49', 0),
('5107605b-a2a7-1d1e-9fec-5ffe57994cc5', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ba59377a-0727-05f3-8480-5fe991ba772f', -99, '2021-01-18 02:18:59', 0),
('510ad619-bea3-8996-b680-6004f066e894', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c55a7aab-8278-3955-8f2e-5fe991014824', 75, '2021-01-18 02:21:17', 0),
('51126b9a-485a-d00a-7781-6004f07ca71d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2d2b027c-488d-50dd-9ea4-5fe99146ebb8', 75, '2021-01-18 02:23:05', 0),
('51287bf2-7051-3080-1601-5ffe5691b316', '860158ee-3501-2093-b810-5ffe567b916e', '31629781-4af4-be0c-a30f-5fe9910c941f', 80, '2021-01-18 02:20:17', 0),
('51641c97-4b4f-c32e-b490-5ffe5764e312', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '24338af2-5403-8efd-9c15-5fe991863579', 80, '2021-01-18 02:21:56', 0),
('516594c6-31db-f3ac-e3a4-6004f01d548d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2c394a82-e49f-ebe1-84f2-5fe991d8fe80', -99, '2021-01-18 02:23:05', 0),
('5167d5ea-8acb-0042-fca2-6004f00b22ba', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c85bf0a5-3f3a-438b-ba72-5fe9911f220a', 75, '2021-01-18 02:21:17', 0),
('516d1497-08f3-c1b4-d267-5ffe57601e8e', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b394b3f8-0da3-df98-94ab-5fe99179f361', 75, '2021-01-18 02:18:59', 0),
('517a5a2f-8b4d-0e94-9ccf-5ffe5408adb6', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2d90831f-294c-d495-b00e-5fe99120c84b', 89, '2021-01-18 02:17:49', 0),
('517f0d7e-a901-7363-7cd0-5ffe5390e2d9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4bfafc04-0639-1b18-8f38-5fe9912385c2', 90, '2021-01-13 01:58:24', 0),
('51872e67-4a76-59fa-0850-5ffe56562829', '860158ee-3501-2093-b810-5ffe567b916e', '30907e87-cef7-8470-d09f-5fe991aa6b60', 80, '2021-01-18 02:20:17', 0),
('51c2ff02-588d-9bc7-d890-6004f083a4c0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c76062c6-92e2-d529-9a5f-5fe9919350fd', -99, '2021-01-18 02:21:17', 0),
('51cb28cc-906d-1531-ee1c-6004f0eb7322', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '29305214-b60b-aa3d-5ec2-5fe991da434c', 75, '2021-01-18 02:23:05', 0),
('51cc8c36-c26e-1312-70e8-5ffe577df128', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '28e3ff10-5af4-07e1-fa1c-5fe9914d87b3', -99, '2021-01-18 02:21:56', 0),
('51d1fde7-1109-113f-ea73-5ffe5758c68b', '857d3817-1929-a617-ad2c-5ffe57175f84', '9b590855-d45d-2b3f-dc76-5fe991a05eaa', -98, '2021-01-18 02:18:59', 0),
('51e175db-4fcd-9f4d-a63f-5ffe56bebc78', '860158ee-3501-2093-b810-5ffe567b916e', '33263540-f87b-3a9b-79e4-5fe991e48244', 80, '2021-01-18 02:20:17', 0),
('51e6035c-2b8c-aa11-dc1b-5ffe54662287', 'f3ab2114-3037-5119-1375-5ffe5300083d', '31629781-4af4-be0c-a30f-5fe9910c941f', 80, '2021-01-18 02:17:49', 0),
('5221671a-4bcf-b9af-cf9a-6004f0600e1f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c466431a-9117-66a5-32d1-5fe991d14198', 75, '2021-01-18 02:21:17', 0),
('5235d281-bc57-93cd-1428-5ffe567a802b', '860158ee-3501-2093-b810-5ffe567b916e', '322e80f4-ada8-e2ec-5a5d-5fe991d1b589', -99, '2021-01-18 02:20:17', 0),
('5236d3a3-35aa-46e4-380b-5ffe5782ad55', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '23550dea-242e-e641-c100-5fe9914c1d52', 80, '2021-01-18 02:21:56', 0),
('52393ef5-6be3-eaa9-3667-6004f07100a6', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2e337fa1-1d69-a9dd-0ce9-5fe9914393e1', -99, '2021-01-18 02:23:05', 0),
('523c7bc2-5cc8-0fde-8596-5ffe579ea6cd', '857d3817-1929-a617-ad2c-5ffe57175f84', '9eeea38f-7536-6b8e-cd5f-5fe99168e8ca', 75, '2021-01-18 02:18:59', 0),
('528b1bb0-5726-754b-a4bc-6004f0335c7d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c9604d45-e488-4158-eef5-5fe9914cc27f', -99, '2021-01-18 02:21:17', 0),
('529a155c-3cf1-a591-796c-6004f014d969', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2842847c-275e-f04f-e50b-5fe991f01580', 75, '2021-01-18 02:23:05', 0),
('529a6873-c6b1-6ece-9b08-5ffe54bcf20e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '30907e87-cef7-8470-d09f-5fe991aa6b60', 80, '2021-01-18 02:17:49', 0),
('529b1ac4-00e4-32ec-5995-5ffe56f69574', '860158ee-3501-2093-b810-5ffe567b916e', '2fbc1ce8-e226-d32f-6533-5fe99185fa50', 80, '2021-01-18 02:20:17', 0),
('529d0f1e-7ce3-7815-c13d-5ffe575e210f', '857d3817-1929-a617-ad2c-5ffe57175f84', '9e0fe800-79ba-5cd5-06ef-5fe991984322', 75, '2021-01-18 02:18:59', 0),
('529fe502-d25a-84c5-17c5-5ffe572c3d81', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd2d0a027-3572-d6ed-c8b6-5fe991cb1f5d', -98, '2021-01-18 02:21:56', 0),
('52e6e28f-fe4a-896e-3ddb-6004f068ad16', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c31a5001-3fc7-e99b-4cf0-5fe991815e31', 75, '2021-01-18 02:21:17', 0),
('53018c55-30d0-71a7-eac9-5ffe5678f450', '860158ee-3501-2093-b810-5ffe567b916e', '33fafaba-2190-9302-4782-5fe991f7de24', -99, '2021-01-18 02:20:17', 0),
('5301cba7-5efe-8cac-5165-5ffe572a1d6a', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a0add8a9-b932-fbce-14dd-5fe9913ae8a5', 75, '2021-01-18 02:18:59', 0),
('530a0ed3-9672-3852-dbfe-6004f0e959e1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2d90831f-294c-d495-b00e-5fe99120c84b', -98, '2021-01-18 02:23:05', 0),
('530e8fdc-48a5-245e-4ce1-5ffe54a9d9fb', 'f3ab2114-3037-5119-1375-5ffe5300083d', '33263540-f87b-3a9b-79e4-5fe991e48244', 80, '2021-01-18 02:17:49', 0),
('53141d5e-fb8f-0e8f-f5e5-5ffe57fadc4a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd657cb55-0375-4273-1649-5fe99107f1cd', 80, '2021-01-18 02:21:56', 0),
('53402e60-34ec-24bd-3849-6004f00c911e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e7b869ff-d7dc-a375-69dc-5fe9912999e3', -98, '2021-01-18 02:21:17', 0),
('535a3373-62b2-7c70-cea2-5ffe57f0b2c1', '857d3817-1929-a617-ad2c-5ffe57175f84', '9fce588d-18cd-c0d3-f89b-5fe9911c9c0a', -99, '2021-01-18 02:18:59', 0),
('53605831-52d8-c70d-5c55-5ffe56bbd034', '860158ee-3501-2093-b810-5ffe567b916e', '2eeaf781-6ecd-a955-acca-5fe991e8dedc', 80, '2021-01-18 02:20:17', 0),
('536cd3c3-ccfc-ff26-15a8-6004f0b5db43', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '31629781-4af4-be0c-a30f-5fe9910c941f', 75, '2021-01-18 02:23:05', 0),
('5375f54b-e310-4b3a-87b5-5ffe540aa145', 'f3ab2114-3037-5119-1375-5ffe5300083d', '322e80f4-ada8-e2ec-5a5d-5fe991d1b589', -99, '2021-01-18 02:17:49', 0),
('537ae7f5-e91c-c23e-3757-5ffe5729e24f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd5947f70-5835-9610-af3c-5fe991225042', 80, '2021-01-18 02:21:56', 0),
('539e4a74-6ec2-4bff-d00f-6004f0e139ce', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ebd71d75-44bc-cb91-7b93-5fe99155f256', 75, '2021-01-18 02:21:17', 0),
('53bb4e07-0e2d-f487-46c7-5ffe57567726', '857d3817-1929-a617-ad2c-5ffe57175f84', '9d30721c-158f-c056-692b-5fe99127c260', 75, '2021-01-18 02:18:59', 0),
('53c77161-f93b-bd2b-92e4-5ffe56022911', '860158ee-3501-2093-b810-5ffe567b916e', 'f6190ea9-60c9-f596-ab4c-5fe99100fa2d', -98, '2021-01-18 02:20:17', 0),
('53d9a48b-d8d5-92d6-66d8-5ffe5474b925', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2fbc1ce8-e226-d32f-6533-5fe99185fa50', 80, '2021-01-18 02:17:49', 0),
('53e8ca17-c52a-fc91-5e82-6004f0298d29', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '30907e87-cef7-8470-d09f-5fe991aa6b60', 75, '2021-01-18 02:23:05', 0),
('53ecaf24-cf13-6011-303f-5ffe574dddd1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd7ef8dae-256a-1a9b-9486-5fe991f2477f', 80, '2021-01-18 02:21:56', 0),
('53ff2e50-bacd-e3f8-73a9-6004f047b684', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ead81cce-59ad-453f-55c2-5fe991497fb5', 75, '2021-01-18 02:21:17', 0),
('5411281d-67ab-7f2a-9d0a-5ffe570d5e07', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a18349b9-01ec-38ff-9453-5fe9917637c6', -99, '2021-01-18 02:18:59', 0),
('5427a73f-f0b2-7d77-a1f6-5ffe5647dd13', '860158ee-3501-2093-b810-5ffe567b916e', '1308e66b-3607-36e4-94d1-5fe991734e49', 80, '2021-01-18 02:20:17', 0),
('54450036-fa62-be28-586b-5ffe541bf999', 'f3ab2114-3037-5119-1375-5ffe5300083d', '33fafaba-2190-9302-4782-5fe991f7de24', -99, '2021-01-18 02:17:49', 0),
('5460332e-b9d4-82a4-30e3-6004f073c232', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ed768757-6487-2c69-92de-5fe99150b701', 75, '2021-01-18 02:21:17', 0),
('5462b24f-f233-9106-a04f-6004f0bc376f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '33263540-f87b-3a9b-79e4-5fe991e48244', 75, '2021-01-18 02:23:05', 0),
('5466bd50-7e0a-498a-5dcb-5ffe57d336c2', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd714ace0-6c07-939c-935a-5fe991f67888', -99, '2021-01-18 02:21:56', 0),
('546cb5e5-a22b-5d0c-f24a-5ffe571f501c', '857d3817-1929-a617-ad2c-5ffe57175f84', '9c4db416-fd51-21e4-e198-5fe9910a31e4', 75, '2021-01-18 02:18:59', 0),
('5481c020-1a85-eacb-81d6-5ffe5645fb41', '860158ee-3501-2093-b810-5ffe567b916e', '12446ca6-06bf-d0e7-96a9-5fe99159f62f', 80, '2021-01-18 02:20:17', 0),
('54b2cf58-030c-ad1d-b1fe-5ffe54082f7e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2eeaf781-6ecd-a955-acca-5fe991e8dedc', 80, '2021-01-18 02:17:49', 0),
('54c4c241-9cfe-6e01-6bdd-6004f0458dcd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'eca203fd-ce6d-9048-6970-5fe991ad15e8', -99, '2021-01-18 02:21:17', 0),
('54cd4980-311b-f40c-f29c-5ffe57161d51', '857d3817-1929-a617-ad2c-5ffe57175f84', '31268c7a-771e-45dc-ad3e-5fe99197378d', -98, '2021-01-18 02:18:59', 0),
('54d1eca5-2eb9-39a5-b0a9-6004f0040938', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '322e80f4-ada8-e2ec-5a5d-5fe991d1b589', -99, '2021-01-18 02:23:05', 0),
('54dafa5c-ed6a-61a7-c106-5ffe56598094', '860158ee-3501-2093-b810-5ffe567b916e', '148c44dd-fa1a-55a5-216a-5fe991e2e075', 80, '2021-01-18 02:20:17', 0),
('54e1d372-b0f9-a4af-0f0d-5ffe57f69279', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd4c47979-6892-d428-422a-5fe9914915d9', 80, '2021-01-18 02:21:56', 0),
('55130679-00ea-d385-570a-5ffe540d6274', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'f6190ea9-60c9-f596-ab4c-5fe99100fa2d', -98, '2021-01-18 02:17:49', 0),
('552d21f8-e170-a7f4-acb5-6004f0838fcc', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e9d4c5fa-00c6-380c-2014-5fe991f309f0', 75, '2021-01-18 02:21:17', 0),
('55314882-508f-3839-9eb7-5ffe570c27ad', '857d3817-1929-a617-ad2c-5ffe57175f84', '359e58d4-672f-8450-0502-5fe991d90d53', 75, '2021-01-18 02:18:59', 0),
('553c5366-6877-7d3f-45c8-6004f05b4476', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2fbc1ce8-e226-d32f-6533-5fe99185fa50', 75, '2021-01-18 02:23:05', 0),
('553fcb33-5d57-0781-996b-5ffe562cd1df', '860158ee-3501-2093-b810-5ffe567b916e', '13ca2543-865e-d690-0faa-5fe991ac9662', -99, '2021-01-18 02:20:17', 0),
('554cb792-1090-f684-4133-5ffe57076e9b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd8b1b1e7-6336-dbbf-8cf1-5fe99178f96b', -99, '2021-01-18 02:21:56', 0),
('557c03f0-08c1-ba55-2350-5ffe546a6175', 'f3ab2114-3037-5119-1375-5ffe5300083d', '1308e66b-3607-36e4-94d1-5fe991734e49', 80, '2021-01-18 02:17:49', 0),
('558d2e5f-65f6-dbd4-78d1-5ffe5740e7c1', '857d3817-1929-a617-ad2c-5ffe57175f84', '34832776-1f41-d9d6-3c88-5fe991652abf', 75, '2021-01-18 02:18:59', 0),
('559d81bf-a54f-9fee-6ba4-6004f066993b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '33fafaba-2190-9302-4782-5fe991f7de24', -99, '2021-01-18 02:23:05', 0),
('559d850b-5ae0-ec90-dc0d-5ffe569510d3', '860158ee-3501-2093-b810-5ffe567b916e', '116627b2-895a-e79c-9ab8-5fe991da953f', 80, '2021-01-18 02:20:17', 0),
('55a8d33c-62c7-ca6b-808b-6004f06f371d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ee2d337d-7418-f149-2626-5fe9918c5a0a', -99, '2021-01-18 02:21:17', 0),
('55c45866-c639-8c50-d1b3-5ffe573527c3', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd3d3cf03-be8a-3584-a18c-5fe99113181a', 80, '2021-01-18 02:21:56', 0),
('55de9dcf-86b4-c243-4785-5ffe54d68dcb', 'f3ab2114-3037-5119-1375-5ffe5300083d', '12446ca6-06bf-d0e7-96a9-5fe99159f62f', 80, '2021-01-18 02:17:49', 0),
('55e3b1bf-76da-0c39-21f0-5ffe570fe8be', '857d3817-1929-a617-ad2c-5ffe57175f84', '37da10a0-4b60-17b3-572d-5fe99146d1f5', 75, '2021-01-18 02:18:59', 0),
('55fb6f0d-c2e8-1fd9-23a6-6004f0bc4cec', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2eeaf781-6ecd-a955-acca-5fe991e8dedc', 75, '2021-01-18 02:23:05', 0),
('55fe0651-3e2f-1775-42f0-5ffe56c35ebd', '860158ee-3501-2093-b810-5ffe567b916e', '1552b40c-ce5c-ec8d-5deb-5fe991cf6636', -99, '2021-01-18 02:20:17', 0),
('560e3792-fb71-7655-7c6f-6004f08ae55f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e8cad13f-c73b-7e3b-2da3-5fe99127eea5', 75, '2021-01-18 02:21:17', 0),
('563e1b52-f712-e633-d285-5ffe576432b4', '857d3817-1929-a617-ad2c-5ffe57175f84', '36b9debc-cf61-2e05-e0c1-5fe99114a8b1', -99, '2021-01-18 02:18:59', 0),
('5647ed06-4565-9c54-be77-5ffe5449dcc0', 'f3ab2114-3037-5119-1375-5ffe5300083d', '148c44dd-fa1a-55a5-216a-5fe991e2e075', 80, '2021-01-18 02:17:49', 0),
('56489742-3071-3aa2-106e-5ffe57a4969f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e5950731-4ab0-2b54-5c51-5fe991eb9484', -98, '2021-01-18 02:21:56', 0),
('564f416f-6174-329f-1442-5ffe565cd083', '860158ee-3501-2093-b810-5ffe567b916e', '107c132e-ddf3-80ad-ef1e-5fe991b822fe', 80, '2021-01-18 02:20:17', 0),
('56580f03-3d46-d156-8f78-5ffe544bf996', 'f3ab2114-3037-5119-1375-5ffe5300083d', '263b37b8-4d91-690e-c9b7-5fe991906e03', 80, '2021-01-18 02:17:49', 0),
('565c683b-ff57-1af4-b15d-6004f03a33e7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3caecfce-8fa3-6dca-d275-5fe991ae7128', -98, '2021-01-18 02:23:05', 0),
('566e452b-86a6-e58d-55ec-6004f05e99f4', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c4ba2a31-6dbf-61a9-f6b2-5fe99130e025', -98, '2021-01-18 02:21:17', 0),
('56917aff-cefb-6653-d6ec-5ffe5750ddef', '857d3817-1929-a617-ad2c-5ffe57175f84', '336abce4-cd82-bacf-2be2-5fe9917ce5f3', 75, '2021-01-18 02:18:59', 0),
('56adfd73-fb7b-b150-037c-5ffe57040cac', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '12080549-97d3-9a50-fd3b-5fe99113e041', 80, '2021-01-18 02:21:56', 0),
('56b21db3-9b52-e878-875a-5ffe5400a618', 'f3ab2114-3037-5119-1375-5ffe5300083d', '13ca2543-865e-d690-0faa-5fe991ac9662', -99, '2021-01-18 02:17:49', 0),
('56b8343a-6b4f-aa33-1b66-5ffe565577a2', '860158ee-3501-2093-b810-5ffe567b916e', '825521ce-f146-d6f7-410e-5fe991c03d07', -98, '2021-01-18 02:20:17', 0),
('56cacb7b-449f-afe8-7b9e-6004f0f2e559', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4075fdc3-dde1-c555-a841-5fe991ed277c', 75, '2021-01-18 02:23:05', 0),
('56cf01cf-d490-635e-a9a5-6004f0ced5f5', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '58a5dcde-f29e-9c98-9c07-5fe991eb4315', 75, '2021-01-18 02:21:17', 0),
('56deb385-ebff-122e-4c31-6004f014f57d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c817a692-cbd3-c46c-ea1e-5fe991773119', 75, '2021-01-18 02:21:17', 0),
('56ee0309-c7fb-53f8-0ed1-5ffe577909c9', '857d3817-1929-a617-ad2c-5ffe57175f84', '38f7e37c-3780-9415-9113-5fe9915aee28', -99, '2021-01-18 02:18:59', 0),
('570b5159-75ef-0ce8-3608-5ffe5431692c', 'f3ab2114-3037-5119-1375-5ffe5300083d', '116627b2-895a-e79c-9ab8-5fe991da953f', 80, '2021-01-18 02:17:49', 0),
('57134a24-689a-0e21-7d19-5ffe575e929d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '11328ec1-927e-1859-c268-5fe991a3a3cf', 80, '2021-01-18 02:21:56', 0),
('57182ea4-252d-d3d9-eb85-5ffe56f13066', '860158ee-3501-2093-b810-5ffe567b916e', '85f590f8-8305-91ca-f226-5fe9913338cd', 80, '2021-01-18 02:20:17', 0),
('5736798f-ac8c-642f-35c8-6004f0c2a6d6', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3f88e746-8c1a-3fdb-0587-5fe991bd8ab1', 75, '2021-01-18 02:23:05', 0),
('5739dbde-6da9-c95d-841c-6004f0f30fb1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c742c253-2a4a-cfac-4436-5fe991448121', 75, '2021-01-18 02:21:17', 0),
('57460014-84d8-398d-4aa3-5ffe56d264c9', '860158ee-3501-2093-b810-5ffe567b916e', '23bf9702-a009-31db-4218-5fe9918b8d26', 80, '2021-01-18 02:20:17', 0),
('5747fab5-fe93-8a8d-3d8b-5ffe57c9873c', '857d3817-1929-a617-ad2c-5ffe57175f84', '324a8fc4-a1f5-0ff1-9dfe-5fe99155b682', 75, '2021-01-18 02:18:59', 0),
('577970d2-d96a-3e1e-0d9d-5ffe54f47778', 'f3ab2114-3037-5119-1375-5ffe5300083d', '1552b40c-ce5c-ec8d-5deb-5fe991cf6636', -99, '2021-01-18 02:17:49', 0),
('577c1937-8820-3866-35c6-5ffe56228fff', '860158ee-3501-2093-b810-5ffe567b916e', '85190e9c-7f1d-56c1-64dc-5fe991744f5d', 80, '2021-01-18 02:20:17', 0),
('577cd311-23a2-7629-278e-5ffe576142bb', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '140e324e-0201-5dd4-5831-5fe991f136fb', 80, '2021-01-18 02:21:56', 0),
('57910a65-417c-741a-534c-5ffe5321736e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '468a5f69-7fc3-6e53-0551-5fe99174b182', 90, '2021-01-13 01:58:24', 0),
('57930f95-88b6-36a3-5c40-6004f01bec00', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '42399d77-03d4-1a1d-d87f-5fe9916d2287', 75, '2021-01-18 02:23:05', 0),
('57a32b5d-bb06-916a-ea99-5ffe577e658a', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e1294056-4128-6d77-cf89-5fe991e10d4b', 89, '2021-01-18 02:18:59', 0),
('57aae030-5dd9-788e-01d6-6004f040ff63', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c9bc1c63-7f2d-8a15-9aec-5fe99194e016', 75, '2021-01-18 02:21:17', 0),
('57d4c87d-9e08-2f77-1fad-5ffe543c38a5', 'f3ab2114-3037-5119-1375-5ffe5300083d', '107c132e-ddf3-80ad-ef1e-5fe991b822fe', 80, '2021-01-18 02:17:49', 0),
('57d56899-d10f-d9d4-a8a6-5ffe569e2c87', '860158ee-3501-2093-b810-5ffe567b916e', '87865002-90e3-2347-f433-5fe991d3863d', 80, '2021-01-18 02:20:17', 0),
('57e82130-e5c6-2c92-f118-5ffe574ed683', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '1315cdbc-7372-2004-13f9-5fe991112d5e', -99, '2021-01-18 02:21:56', 0),
('57f39ac8-a30a-4c75-2203-6004f0863fb9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '41448afe-1d6a-8576-b32b-5fe991645daa', -99, '2021-01-18 02:23:05', 0),
('580defbb-eefb-43a2-91d9-5ffe570ff261', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e651281c-d5fd-1e65-c965-5fe991ccde64', 75, '2021-01-18 02:18:59', 0),
('58205ae2-5793-331f-1e8c-6004f000a0c9', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c8e91789-4d8c-33fa-9dc3-5fe9917dcaac', -99, '2021-01-18 02:21:17', 0),
('5835f90c-0e7a-b270-8ee8-5ffe569b862a', '860158ee-3501-2093-b810-5ffe567b916e', '86c03eb9-db71-866e-24b8-5fe99141f72d', -99, '2021-01-18 02:20:17', 0),
('58375411-de11-210b-1e07-5ffe54669b72', 'f3ab2114-3037-5119-1375-5ffe5300083d', '825521ce-f146-d6f7-410e-5fe991c03d07', -98, '2021-01-18 02:17:49', 0),
('585c41fd-05c4-9a4f-1d99-6004f0632087', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3e86a2ea-35c6-889b-3f5d-5fe991d821af', 75, '2021-01-18 02:23:05', 0),
('58664ca0-e804-4ec5-8fcf-5ffe575707b1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '104b7824-509e-9c2c-15b1-5fe991646d62', 80, '2021-01-18 02:21:56', 0),
('5871fc5f-b728-1b86-796d-5ffe57bb4d13', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e59920e8-2c35-973a-d33c-5fe991e47b1d', 75, '2021-01-18 02:18:59', 0),
('5886af94-2104-22eb-1942-6004f052698a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c670d173-301d-7eff-dfc6-5fe9912f92bb', 75, '2021-01-18 02:21:17', 0),
('5899753d-1416-226c-7e59-5ffe5442b76e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '85f590f8-8305-91ca-f226-5fe9913338cd', 80, '2021-01-18 02:17:49', 0),
('589a6b0a-f50f-3fb9-32cb-5ffe56721157', '860158ee-3501-2093-b810-5ffe567b916e', '8444474a-a792-eeeb-47b3-5fe991cd7ddf', 80, '2021-01-18 02:20:17', 0),
('58b6ea6d-a0f9-9335-caba-6004f05990b5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '430405ce-5261-7d6a-90bc-5fe99110d0a2', -99, '2021-01-18 02:23:05', 0),
('58dabeb2-84ed-9af5-ebef-5ffe57359b23', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e8072daa-fce4-2cee-14e3-5fe991410489', 75, '2021-01-18 02:18:59', 0),
('58e76fac-8e19-ad65-2c97-5ffe57ea5393', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '150306bd-23b9-df24-ee50-5fe99192ff27', -99, '2021-01-18 02:21:56', 0),
('58ed18c7-eb88-9ddd-1617-6004f03872f7', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'caa6f5eb-c27c-81f2-44c4-5fe99148c11a', -99, '2021-01-18 02:21:17', 0),
('58ee13a6-b8f4-fd36-4680-5ffe5461f411', 'f3ab2114-3037-5119-1375-5ffe5300083d', '85190e9c-7f1d-56c1-64dc-5fe991744f5d', 80, '2021-01-18 02:17:49', 0),
('58f20704-46d5-425f-f9fe-5ffe56e1c495', '860158ee-3501-2093-b810-5ffe567b916e', '884aeb94-31da-b231-1c15-5fe991188c80', -99, '2021-01-18 02:20:17', 0),
('591e8342-4460-ab05-568d-6004f013e402', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3d95bbb1-ce50-817f-44ea-5fe991c104d8', 75, '2021-01-18 02:23:05', 0),
('5937bc98-41dc-f8ab-3d1e-5ffe57dcf26b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e70a07f9-978a-eb0f-5fe3-5fe99197714d', -99, '2021-01-18 02:18:59', 0),
('5942a59e-022f-586b-9a8f-5ffe54911314', 'f3ab2114-3037-5119-1375-5ffe5300083d', '87865002-90e3-2347-f433-5fe991d3863d', 80, '2021-01-18 02:17:49', 0),
('594a7cf7-9f01-d0b4-6afc-5ffe560b0113', '860158ee-3501-2093-b810-5ffe567b916e', '835424a7-ebd5-65f2-beb4-5fe991766bd5', 80, '2021-01-18 02:20:17', 0),
('594d26ea-aadd-9376-bfa9-6004f0fb03dd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c59c320d-1251-19ea-0062-5fe991e0eaf9', 75, '2021-01-18 02:21:17', 0),
('5951a7f9-ba5e-91b8-4117-5ffe57c8df32', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'f5a10111-5aea-3834-a431-5fe991f1a0ac', 80, '2021-01-18 02:21:56', 0),
('5976d064-a163-774c-72e1-6004f0279c0e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4e54b667-41a1-31b4-9bd6-5fe991e5c5ba', -98, '2021-01-18 02:23:05', 0),
('59a0087b-9c0d-15ca-cf28-5ffe57e34396', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e4e302c6-3fb2-9304-85f8-5fe9913267cd', 75, '2021-01-18 02:18:59', 0),
('59a0211f-8213-4f05-47a0-5ffe5455ec68', 'f3ab2114-3037-5119-1375-5ffe5300083d', '86c03eb9-db71-866e-24b8-5fe99141f72d', -99, '2021-01-18 02:17:49', 0),
('59a991eb-ad86-ebf5-ac44-5ffe5651609a', '860158ee-3501-2093-b810-5ffe567b916e', '32fdecc0-1055-94d4-259e-5fe991ec34ed', -98, '2021-01-18 02:20:17', 0),
('59b3f8fa-10d2-dc97-490c-6004f060ee51', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9b5bed87-0888-81f7-f9b9-5fe9917ea434', -98, '2021-01-18 02:21:17', 0),
('59c198fc-0d66-3649-47da-5ffe57349015', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd9ea9189-c3e8-1a4b-5501-5fe991433de5', -98, '2021-01-18 02:21:56', 0),
('59d6bfe7-6119-4e1e-09aa-6004f0006d1e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '52a71728-7481-306e-4188-5fe991897345', 75, '2021-01-18 02:23:05', 0),
('59fd230e-7ad3-c592-ece6-5ffe57e75bf3', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e8ff7685-9599-b1b4-e206-5fe9910525ef', -99, '2021-01-18 02:18:59', 0),
('5a005ddb-f5fe-5bb0-ed72-5ffe5644e7bc', '860158ee-3501-2093-b810-5ffe567b916e', '36e3734f-c2aa-d169-9eba-5fe9914c6819', 80, '2021-01-18 02:20:17', 0),
('5a23f435-b332-f081-9db2-6004f0a79c69', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9f8d8289-a870-70f7-ebc9-5fe99150962b', 75, '2021-01-18 02:21:17', 0),
('5a3631fd-9adc-8963-3fd8-5ffe571267bc', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'dd826565-45b0-931b-2fd7-5fe991046ec7', 80, '2021-01-18 02:21:56', 0),
('5a36b804-a40c-f944-7e58-6004f00d47cc', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '51b43259-2704-3b6a-19f5-5fe991eceaf8', 75, '2021-01-18 02:23:05', 0),
('5a37fe26-5115-9625-c0b9-5ffe546eeef1', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8444474a-a792-eeeb-47b3-5fe991cd7ddf', 80, '2021-01-18 02:17:49', 0),
('5a5ad927-6140-2f22-c0fa-5ffe5774eb04', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e42c95a9-569b-ed17-52d5-5fe9910ba6e9', 75, '2021-01-18 02:18:59', 0),
('5a5e25fa-17f7-6a18-4d41-5ffe5623b727', '860158ee-3501-2093-b810-5ffe567b916e', '35dd7f1a-b6c6-82b5-ca15-5fe9916efb89', 80, '2021-01-18 02:20:17', 0),
('5a8b0160-86e5-ca4a-0391-6004f0a7051e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9e6892d0-cea9-a9af-2074-5fe991c2817b', 75, '2021-01-18 02:21:17', 0),
('5a8c593f-7cba-fcab-b0e7-6004f08e3223', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '54a63ebc-eaf8-3281-2825-5fe99141ae0e', 75, '2021-01-18 02:23:05', 0),
('5a95865a-a06a-865e-7212-5ffe54f83346', 'f3ab2114-3037-5119-1375-5ffe5300083d', '884aeb94-31da-b231-1c15-5fe991188c80', -99, '2021-01-18 02:17:49', 0),
('5aa3a5e5-fe0d-9ede-c3fe-5ffe576fbac9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'dcba0f78-89a8-3481-50d2-5fe99112c4bd', 80, '2021-01-18 02:21:56', 0),
('5ab75a92-bba7-6be5-d2fa-5ffe560e59b6', '860158ee-3501-2093-b810-5ffe567b916e', '38b65870-c26f-4a05-b2e8-5fe991357e50', 80, '2021-01-18 02:20:17', 0),
('5ab99011-f32e-73bd-709f-5ffe5764f640', '857d3817-1929-a617-ad2c-5ffe57175f84', '56a6bf95-4af3-f5f0-259a-5fe991106ab5', -98, '2021-01-18 02:18:59', 0),
('5acd9c5a-1e01-001d-efe0-5ffe534441ba', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'access', 89, '2021-01-13 01:58:24', 0),
('5ae0eb37-87b2-7ce8-9ee2-6004f00b0c05', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '53a0437c-3949-42b5-b6f7-5fe9915c9b19', -99, '2021-01-18 02:23:05', 0),
('5aefbd9f-6885-c641-0fa1-5ffe549c0815', 'f3ab2114-3037-5119-1375-5ffe5300083d', '835424a7-ebd5-65f2-beb4-5fe991766bd5', 80, '2021-01-18 02:17:49', 0),
('5af59258-8922-d921-d179-6004f086647a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a178b8fc-f7de-94c3-87a0-5fe9910e6673', 75, '2021-01-18 02:21:17', 0),
('5b117d1d-4363-8086-968d-5ffe560cd78d', '860158ee-3501-2093-b810-5ffe567b916e', '37be1412-83bc-71de-9e8a-5fe9917743e0', -99, '2021-01-18 02:20:17', 0),
('5b144af1-7d9d-fcb9-bf52-5ffe573ba431', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'df81e0fc-adc1-5471-6962-5fe9918378ea', 80, '2021-01-18 02:21:56', 0),
('5b1a89ff-6e53-0bc1-48ce-5ffe57ea0156', '857d3817-1929-a617-ad2c-5ffe57175f84', '5a5c77c9-0168-2cf4-88a5-5fe9911dc650', 75, '2021-01-18 02:18:59', 0),
('5b3f42ae-1ce9-5709-14f0-6004f0e4b2e2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '50b74da9-8a7e-9868-7664-5fe9910b1f6b', 75, '2021-01-18 02:23:05', 0),
('5b5269ae-01c0-38e9-f53a-5ffe542975f7', 'f3ab2114-3037-5119-1375-5ffe5300083d', '32fdecc0-1055-94d4-259e-5fe991ec34ed', -98, '2021-01-18 02:17:49', 0),
('5b5de861-b5c4-cebd-18c6-6004f0eda4f3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a07bf528-55f3-b6d3-38a6-5fe991182187', -99, '2021-01-18 02:21:17', 0),
('5b788370-23ad-da0b-d594-5ffe534ce033', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'delete', 90, '2021-01-13 01:58:24', 0),
('5b7f6330-ca7b-bec8-f71e-5ffe571f290d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'de609243-74e0-34f1-2942-5fe991ae0a01', -99, '2021-01-18 02:21:56', 0),
('5b82bcb2-142c-8348-9264-5ffe57a44cbe', '857d3817-1929-a617-ad2c-5ffe57175f84', '597578a9-e100-d14a-98a9-5fe991cb2926', 75, '2021-01-18 02:18:59', 0),
('5b96dfc5-5f80-d044-9c34-6004f082aec2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '55abbde3-056b-14ab-2bc9-5fe991cc6632', -99, '2021-01-18 02:23:05', 0),
('5bbb1345-7f57-4888-2d0f-5ffe54283c31', 'f3ab2114-3037-5119-1375-5ffe5300083d', '36e3734f-c2aa-d169-9eba-5fe9914c6819', 80, '2021-01-18 02:17:49', 0),
('5bc9536d-e1fb-b757-7929-6004f0ebb3e1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9d7799ae-ee03-d123-2003-5fe991750155', 75, '2021-01-18 02:21:17', 0),
('5be0d11f-2f8a-3c52-bc12-5ffe5750bfe9', '857d3817-1929-a617-ad2c-5ffe57175f84', '5c10a0c5-ddae-9e33-afae-5fe991ed07ff', 75, '2021-01-18 02:18:59', 0),
('5befd64b-f037-2647-53c3-6004f00bdb29', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4f6918e3-10f8-acdf-72fc-5fe9913d462c', 75, '2021-01-18 02:23:05', 0),
('5bf498d4-2deb-b07c-e08e-5ffe57006a56', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'dbd6a8fd-65eb-6bbb-53a2-5fe991982fd5', 80, '2021-01-18 02:21:56', 0),
('5c089171-52a7-95c8-cc80-5ffe531e73bd', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'edit', 90, '2021-01-13 01:58:24', 0),
('5c1ed66a-37df-206b-1c64-5ffe54ed10bf', 'f3ab2114-3037-5119-1375-5ffe5300083d', '35dd7f1a-b6c6-82b5-ca15-5fe9916efb89', 80, '2021-01-18 02:17:49', 0),
('5c347003-9b33-ee42-c108-5ffe56d61bd0', '860158ee-3501-2093-b810-5ffe567b916e', '34ecb272-0044-c320-2fce-5fe991914a29', 80, '2021-01-18 02:20:17', 0),
('5c38efb9-1326-d432-2246-6004f0d281cb', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a274c148-9851-b79f-4ff2-5fe9911583c0', -99, '2021-01-18 02:21:17', 0),
('5c492dda-0571-7b0c-5240-5ffe57c095ad', '857d3817-1929-a617-ad2c-5ffe57175f84', '5b413545-d4fd-c9b7-d6d2-5fe991c152ad', -99, '2021-01-18 02:18:59', 0),
('5c4c6d58-997a-c899-1abf-6004f067d8d3', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b27fc4e4-d383-31f9-2f97-5fe9919ef44a', -98, '2021-01-18 02:23:05', 0),
('5c68bce3-86d7-6c0b-b3aa-5ffe57471bc8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e0759ad6-eea1-0ce9-1f74-5fe99143a8d2', -99, '2021-01-18 02:21:56', 0),
('5c7f2c32-77a0-b20c-d0ef-5ffe54b58d77', 'f3ab2114-3037-5119-1375-5ffe5300083d', '38b65870-c26f-4a05-b2e8-5fe991357e50', 80, '2021-01-18 02:17:49', 0),
('5c9c09a9-c5c3-afe5-5690-5ffe57fd4b22', '857d3817-1929-a617-ad2c-5ffe57175f84', '58a5dcde-f29e-9c98-9c07-5fe991eb4315', 75, '2021-01-18 02:18:59', 0),
('5ca9058b-3d57-f74c-bac2-6004f0f9d26e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b6b96afa-bc9a-9505-7fec-5fe99129a947', 75, '2021-01-18 02:23:05', 0),
('5caee0b9-b7ad-7fac-21ab-6004f0290070', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9c5897c1-c701-76d7-a532-5fe991a24183', 75, '2021-01-18 02:21:17', 0),
('5cb57eb8-a7c6-f870-b8c7-5ffe53fc2f33', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'export', 90, '2021-01-13 01:58:24', 0),
('5cd206ff-c1b4-a7a4-0f08-5ffe5465a30d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '256c3b35-e784-5ec4-a8ae-5fe991aa965b', -99, '2021-01-18 02:17:49', 0),
('5cd6d5af-9f23-81aa-6f1a-5ffe57debae7', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'daeacb16-1c00-4889-efed-5fe9919a972b', 80, '2021-01-18 02:21:56', 0),
('5d008891-fa3f-e51a-097c-5ffe575dedea', '857d3817-1929-a617-ad2c-5ffe57175f84', '5cdd1a92-d464-520e-afab-5fe991d72da7', -99, '2021-01-18 02:18:59', 0),
('5d0507c7-f625-35a4-d839-5ffe5360a70e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ab881f0b-8357-88f0-96b1-5fe991a4e4c1', 89, '2021-01-13 01:58:24', 0),
('5d067fc3-0001-4290-ca18-6004f016b139', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b59fe417-a393-ffd9-baed-5fe9919fd0ca', 75, '2021-01-18 02:23:05', 0),
('5d17ed92-cc32-b7f0-137c-6004f0dcee24', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '42f23425-20bd-24a2-89cc-5fe991fb719d', -98, '2021-01-18 02:21:17', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('5d2325ee-f2e4-1ef2-a71a-5ffe5464be9b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '37be1412-83bc-71de-9e8a-5fe9917743e0', -99, '2021-01-18 02:17:49', 0),
('5d4db253-22bb-c5b1-b907-5ffe57068a7f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7b77e868-a008-0ee4-4b88-5fe991fbb3d5', -98, '2021-01-18 02:21:56', 0),
('5d56d64b-abf8-32d1-6a25-5ffe56439680', '860158ee-3501-2093-b810-5ffe567b916e', '39cb74f6-1cc1-cca4-c76e-5fe991963598', -99, '2021-01-18 02:20:17', 0),
('5d5b5f06-410a-f6ab-2ff6-6004f01c3bd7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b92414b1-a4b1-858b-43cd-5fe991d91b88', 75, '2021-01-18 02:23:05', 0),
('5d6220b7-9219-dec2-8bae-5ffe53f9d613', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'import', 90, '2021-01-13 01:58:24', 0),
('5d62f5d2-0f90-ddc0-7d55-5ffe571f0624', '857d3817-1929-a617-ad2c-5ffe57175f84', '57c5b394-b150-f1c0-2a99-5fe9918738a0', 75, '2021-01-18 02:18:59', 0),
('5d820ba4-2386-a9d1-3cd0-6004f0707b7b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '46e1336a-7c3c-2718-031e-5fe991d96425', 75, '2021-01-18 02:21:17', 0),
('5d8285f7-3953-c4bb-90a8-5ffe54cabd64', 'f3ab2114-3037-5119-1375-5ffe5300083d', '34ecb272-0044-c320-2fce-5fe991914a29', 80, '2021-01-18 02:17:49', 0),
('5db76b31-c0bb-8c9e-06a8-6004f05518a8', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b7e8a2b4-1cbb-a89d-510a-5fe991a230cd', -99, '2021-01-18 02:23:05', 0),
('5db7b631-a9e3-a0b9-8502-5ffe57a65418', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7f7790f1-571f-1cf9-9c6d-5fe991d79535', 80, '2021-01-18 02:21:56', 0),
('5dc9bc3d-e398-09c4-8887-5ffe57c57887', '857d3817-1929-a617-ad2c-5ffe57175f84', '582d4670-fa7e-c32e-af44-5fe991a87c45', 89, '2021-01-18 02:18:59', 0),
('5dcebc17-dbbe-df3c-be4e-5ffe56923a88', '860158ee-3501-2093-b810-5ffe567b916e', '33f78e57-81f4-699f-4fc6-5fe991f2bfb1', 80, '2021-01-18 02:20:17', 0),
('5de3a8e8-1cdc-c270-fa3e-5ffe542f6d8f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '39cb74f6-1cc1-cca4-c76e-5fe991963598', -99, '2021-01-18 02:17:49', 0),
('5dea1527-6545-02d4-7293-6004f096597c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '45f6fd66-02e2-8dcd-e44c-5fe9914c4eae', 75, '2021-01-18 02:21:17', 0),
('5dedc943-c8fa-d92c-3355-5ffe534f30fd', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'list', 90, '2021-01-13 01:58:24', 0),
('5e020bec-d08a-578d-f453-5ffe56040e0c', '860158ee-3501-2093-b810-5ffe567b916e', '263b37b8-4d91-690e-c9b7-5fe991906e03', 80, '2021-01-18 02:20:17', 0),
('5e1d21b3-927c-bc4d-d1e1-5ffe571e0dc5', '857d3817-1929-a617-ad2c-5ffe57175f84', '5c0702a3-1f94-2c28-aef8-5fe991aa5d5a', 75, '2021-01-18 02:18:59', 0),
('5e1d93f2-c856-7816-18fe-6004f0616fda', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b4919591-7b1f-f68c-6105-5fe9910a4a31', 75, '2021-01-18 02:23:05', 0),
('5e1dd740-cccc-0be7-2fcb-5ffe57d4b998', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7e7333ec-e694-5625-49be-5fe991c00256', 80, '2021-01-18 02:21:56', 0),
('5e42fff6-0c71-f4ef-6485-5ffe565fe8d5', '860158ee-3501-2093-b810-5ffe567b916e', '2732a0e6-5f36-20ee-3fb9-5fe99121cf30', 89, '2021-01-18 02:20:17', 0),
('5e598d65-3b51-676c-e95d-6004f054fdb8', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '48bd518c-335e-0f97-a7e0-5fe991ada2ca', 75, '2021-01-18 02:21:17', 0),
('5e68efb5-35ac-0a65-1bc4-5ffe53fcfff4', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'massupdate', 90, '2021-01-13 01:58:24', 0),
('5e7daa82-fd8c-2db1-74e3-5ffe541557e8', 'f3ab2114-3037-5119-1375-5ffe5300083d', '33f78e57-81f4-699f-4fc6-5fe991f2bfb1', 80, '2021-01-18 02:17:49', 0),
('5e80e822-cacd-3b32-e5c6-6004f0ce720b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ba59377a-0727-05f3-8480-5fe991ba772f', -99, '2021-01-18 02:23:05', 0),
('5e8295cc-4b03-f52a-2546-5ffe5726b9c7', '857d3817-1929-a617-ad2c-5ffe57175f84', '5b0e9519-f4aa-ba7d-2b28-5fe991e20867', 75, '2021-01-18 02:18:59', 0),
('5e93b800-df6c-d38b-a288-5ffe575bee49', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8191f8f9-f2d2-5239-86a4-5fe991d76f58', 80, '2021-01-18 02:21:56', 0),
('5ea8ed8a-68dc-db49-99be-5ffe5608b4bf', '860158ee-3501-2093-b810-5ffe567b916e', '2b496d64-3d03-a85e-b5d3-5fe991019c1d', 80, '2021-01-18 02:20:17', 0),
('5ec9b989-ca08-329b-1d47-6004f0f16cf9', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '47ab75be-caa2-8677-1598-5fe99188c136', -99, '2021-01-18 02:21:17', 0),
('5eda2425-0ae6-d4d2-9ad6-5ffe54952a43', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2732a0e6-5f36-20ee-3fb9-5fe99121cf30', 89, '2021-01-18 02:17:49', 0),
('5ede986b-d357-4dbe-574b-5ffe57d1b523', '857d3817-1929-a617-ad2c-5ffe57175f84', '5dd4bc31-c591-33f4-58de-5fe991e1aaa8', 75, '2021-01-18 02:18:59', 0),
('5ee77ce1-5b48-98a5-3630-6004f04d9c61', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b394b3f8-0da3-df98-94ab-5fe99179f361', 75, '2021-01-18 02:23:05', 0),
('5ee7aee8-bbc4-cdef-1269-5ffe533abf87', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'view', 90, '2021-01-13 01:58:24', 0),
('5f0c3e0c-3458-7743-c2d0-5ffe573a7fcd', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8077ec7d-7ca4-306c-77eb-5fe991763a20', -99, '2021-01-18 02:21:56', 0),
('5f0d2789-4733-0391-043d-5ffe5637eee7', '860158ee-3501-2093-b810-5ffe567b916e', '2a1f9f0a-f984-6834-3682-5fe991d443ea', 80, '2021-01-18 02:20:17', 0),
('5f140e6b-fcf7-516f-8aab-5ffe57f18004', '857d3817-1929-a617-ad2c-5ffe57175f84', '97d98f8c-5748-2aaf-fb6f-5fe9919492d8', -98, '2021-01-18 02:18:59', 0),
('5f3a6ec2-0360-e375-e447-6004f0919f0d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '450a84c1-7709-a7c1-22e0-5fe9913729a1', 75, '2021-01-18 02:21:17', 0),
('5f3b01cb-fc1b-52f1-6add-5ffe57525062', '857d3817-1929-a617-ad2c-5ffe57175f84', '5ce9badf-a070-6591-2e16-5fe991d43544', -99, '2021-01-18 02:18:59', 0),
('5f3f37dd-02ac-4e44-b6e3-5ffe54d6694b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2b496d64-3d03-a85e-b5d3-5fe991019c1d', 80, '2021-01-18 02:17:49', 0),
('5f44e12e-32a8-407e-af6a-6004f00cc3f1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9b590855-d45d-2b3f-dc76-5fe991a05eaa', -98, '2021-01-18 02:23:05', 0),
('5f5f4296-5b73-8972-0435-5ffe531aac0a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '97d98f8c-5748-2aaf-fb6f-5fe9919492d8', 89, '2021-01-13 01:58:24', 0),
('5f8182db-ae98-4ee0-3a4c-5ffe574b0e7c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7d77f594-2730-b283-bae1-5fe991f01c06', 80, '2021-01-18 02:21:56', 0),
('5f8c1197-3e33-389d-2978-5ffe56184287', '860158ee-3501-2093-b810-5ffe567b916e', '2d2b027c-488d-50dd-9ea4-5fe99146ebb8', 80, '2021-01-18 02:20:17', 0),
('5f964cdc-e0e5-6b89-d862-5ffe57ec92d7', '857d3817-1929-a617-ad2c-5ffe57175f84', '5a1e6717-7bf9-3dfd-57de-5fe99132f137', 75, '2021-01-18 02:18:59', 0),
('5f9e61fc-9e3c-4f9c-c017-5ffe545da16d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2a1f9f0a-f984-6834-3682-5fe991d443ea', 80, '2021-01-18 02:17:49', 0),
('5f9f4963-e896-6321-55ea-6004f0be5265', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4992f727-3935-17df-a9f2-5fe991e9af52', -99, '2021-01-18 02:21:17', 0),
('5fa2b388-5b0d-ddf5-282a-6004f0bee1be', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9eeea38f-7536-6b8e-cd5f-5fe99168e8ca', 75, '2021-01-18 02:23:05', 0),
('5fdb2d8f-5346-eb34-6045-5ffe53a93a97', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9bbb2f8b-4e7c-7598-3cd7-5fe991f5abce', 90, '2021-01-13 01:58:24', 0),
('5feeacdc-14b9-9476-18d8-5ffe57b6b07b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '82699b01-9611-007e-98a9-5fe99151f456', -99, '2021-01-18 02:21:56', 0),
('5ff5215b-c8f6-ee33-2bd0-5ffe54f3763a', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2d2b027c-488d-50dd-9ea4-5fe99146ebb8', 80, '2021-01-18 02:17:49', 0),
('5ff683f8-1638-1a68-1385-5ffe579d8d0c', '857d3817-1929-a617-ad2c-5ffe57175f84', '5eb3c820-bf11-cc6b-e123-5fe991053126', -99, '2021-01-18 02:18:59', 0),
('5ffeade6-9a79-5057-1301-5ffe5637656a', '860158ee-3501-2093-b810-5ffe567b916e', '2c394a82-e49f-ebe1-84f2-5fe991d8fe80', -99, '2021-01-18 02:20:17', 0),
('6008ffdf-3ced-ade1-f048-6004f0b20cab', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4425d96b-3beb-dc6f-46e8-5fe991b01e56', 75, '2021-01-18 02:21:17', 0),
('600a699f-5bf3-7622-bfdd-6004f0d509f5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9e0fe800-79ba-5cd5-06ef-5fe991984322', 75, '2021-01-18 02:23:05', 0),
('6051928b-f3d2-c270-a775-5ffe5333707e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9a9f7b66-cc05-ac3d-373a-5fe9917492bd', 90, '2021-01-13 01:58:24', 0),
('6053608b-648c-0198-03f5-5ffe57795b78', '857d3817-1929-a617-ad2c-5ffe57175f84', '59287b25-b69c-a8dd-6784-5fe991db46b6', 75, '2021-01-18 02:18:59', 0),
('605af8b3-9184-d6ac-80bb-5ffe5464e9d6', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2c394a82-e49f-ebe1-84f2-5fe991d8fe80', -99, '2021-01-18 02:17:49', 0),
('605c39f0-7479-32a9-89e6-5ffe579f6579', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7c8270f3-df3b-a74d-58df-5fe99110aa48', 80, '2021-01-18 02:21:56', 0),
('60690a42-4707-eea8-bd45-5ffe56b79259', '860158ee-3501-2093-b810-5ffe567b916e', '29305214-b60b-aa3d-5ec2-5fe991da434c', 80, '2021-01-18 02:20:17', 0),
('606e7fe7-6a52-8f39-2a40-6004f00eaf48', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a0add8a9-b932-fbce-14dd-5fe9913ae8a5', 75, '2021-01-18 02:23:05', 0),
('60b42c00-a5eb-19dc-aa1c-6004f0813065', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '97d98f8c-5748-2aaf-fb6f-5fe9919492d8', -98, '2021-01-18 02:21:17', 0),
('60b890f6-7311-d949-12af-5ffe54e8124d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '29305214-b60b-aa3d-5ec2-5fe991da434c', 80, '2021-01-18 02:17:49', 0),
('60ba51d6-0484-c44a-d996-5ffe572d91d1', '857d3817-1929-a617-ad2c-5ffe57175f84', '2d90831f-294c-d495-b00e-5fe99120c84b', 89, '2021-01-18 02:18:59', 0),
('60c959e8-4365-e55b-1432-5ffe570714b1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd56c52df-f267-856e-3fa9-5fe99172596b', -98, '2021-01-18 02:21:56', 0),
('60c98de0-6a7a-8204-36cb-6004f084bbae', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9fce588d-18cd-c0d3-f89b-5fe9911c9c0a', -99, '2021-01-18 02:23:05', 0),
('60def53a-e46e-6428-5bca-5ffe53ca4020', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9d4402db-4a7c-87a3-5440-5fe991973b23', 90, '2021-01-13 01:58:24', 0),
('6118f9d9-b3c4-f136-5e66-5ffe57289d31', '857d3817-1929-a617-ad2c-5ffe57175f84', '31629781-4af4-be0c-a30f-5fe9910c941f', 75, '2021-01-18 02:18:59', 0),
('611a05bc-4eb5-09e2-c95a-6004f062e0f3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9bbb2f8b-4e7c-7598-3cd7-5fe991f5abce', 75, '2021-01-18 02:21:17', 0),
('612aefc3-1a6b-4f9c-0da2-5ffe5424a55d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2e337fa1-1d69-a9dd-0ce9-5fe9914393e1', -99, '2021-01-18 02:17:49', 0),
('612cc0e0-e768-0916-93da-6004f0fcbcb9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9d30721c-158f-c056-692b-5fe99127c260', 75, '2021-01-18 02:23:05', 0),
('6136c2d5-cf38-34d8-7ca9-5ffe5753abcf', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd930d33b-3c66-1ae9-dbc8-5fe9911efa1d', 80, '2021-01-18 02:21:56', 0),
('61410d08-8b19-e2e8-acca-6004f0e46e59', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5cdd1a92-d464-520e-afab-5fe991d72da7', -99, '2021-01-18 02:21:17', 0),
('61677e2c-e072-1a2d-8bca-5ffe535cacfa', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9c89e791-8bd0-75ad-edc8-5fe991482910', 90, '2021-01-13 01:58:24', 0),
('61769a36-a193-41fe-1c3a-5ffe5720395a', '857d3817-1929-a617-ad2c-5ffe57175f84', '30907e87-cef7-8470-d09f-5fe991aa6b60', 75, '2021-01-18 02:18:59', 0),
('6177d032-39e3-c70d-6b45-6004f040e6fa', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9a9f7b66-cc05-ac3d-373a-5fe9917492bd', 75, '2021-01-18 02:21:17', 0),
('61828b2e-c714-0554-66cf-5ffe54b2f81d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2842847c-275e-f04f-e50b-5fe991f01580', 80, '2021-01-18 02:17:49', 0),
('6190050d-610a-c61c-c58d-6004f000a000', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a18349b9-01ec-38ff-9453-5fe9917637c6', -99, '2021-01-18 02:23:05', 0),
('61a66fef-7ab7-9ebf-6948-5ffe56ffef4d', '860158ee-3501-2093-b810-5ffe567b916e', '2e337fa1-1d69-a9dd-0ce9-5fe9914393e1', -99, '2021-01-18 02:20:17', 0),
('61a91006-a33d-8d79-44e5-5ffe574ed9ef', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd8401e23-96b1-5ad2-a8e2-5fe991eb9081', 80, '2021-01-18 02:21:56', 0),
('61ced3bd-0687-8536-a1c9-5ffe571995f5', '857d3817-1929-a617-ad2c-5ffe57175f84', '33263540-f87b-3a9b-79e4-5fe991e48244', 75, '2021-01-18 02:18:59', 0),
('61da9eb9-857d-0cff-291b-5ffe53b597c4', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '99cfda1f-f957-e4c1-e444-5fe99159b864', 90, '2021-01-13 01:58:24', 0),
('61e01e7b-b2fa-5be6-61a3-5ffe54b3d183', 'f3ab2114-3037-5119-1375-5ffe5300083d', '87328551-5fbc-ff3f-e0f1-5fe99100990f', 89, '2021-01-18 02:17:49', 0),
('61e39d6a-2a26-86ff-f58f-6004f0868dd6', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9d4402db-4a7c-87a3-5440-5fe991973b23', 75, '2021-01-18 02:21:17', 0),
('61eb9665-8548-a094-025e-6004f0355c37', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9c4db416-fd51-21e4-e198-5fe9910a31e4', 75, '2021-01-18 02:23:05', 0),
('62000741-ac8c-966e-cea0-5ffe54c052d3', 'f3ab2114-3037-5119-1375-5ffe5300083d', '1400ff85-edb1-8f1e-ecfb-5fe9914372ae', -99, '2021-01-18 02:17:49', 0),
('6213be0b-d495-588e-7c5f-5ffe56a5862f', '860158ee-3501-2093-b810-5ffe567b916e', '2842847c-275e-f04f-e50b-5fe991f01580', 80, '2021-01-18 02:20:17', 0),
('621d2717-f46e-d3d0-741a-5ffe57740100', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'daecfb75-ef5d-32cb-1a04-5fe991f95e2e', 80, '2021-01-18 02:21:56', 0),
('6232e71a-e640-bfd3-5a4b-5ffe54155f94', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8ad528ed-feb4-75f8-27c4-5fe9915a5cfc', 80, '2021-01-18 02:17:49', 0),
('623a75ee-fad7-7a88-0701-5ffe57aee2eb', '857d3817-1929-a617-ad2c-5ffe57175f84', '322e80f4-ada8-e2ec-5a5d-5fe991d1b589', -99, '2021-01-18 02:18:59', 0),
('6240473c-71ed-c494-4311-6004f05b22e0', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '31268c7a-771e-45dc-ad3e-5fe99197378d', -98, '2021-01-18 02:23:05', 0),
('62473c61-1dcd-7f56-f24e-5ffe53c0cd7f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9e0af605-864a-1d4f-c6b6-5fe9917f12da', 90, '2021-01-13 01:58:24', 0),
('624bfa94-f6e0-e405-f814-6004f0c09302', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9c89e791-8bd0-75ad-edc8-5fe991482910', -99, '2021-01-18 02:21:17', 0),
('62828ce3-6274-6272-a677-5ffe57e32e98', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'da0081af-e614-ee32-3eae-5fe991e16020', -99, '2021-01-18 02:21:56', 0),
('6282f928-bda1-a594-2336-5ffe5622611d', '860158ee-3501-2093-b810-5ffe567b916e', '87328551-5fbc-ff3f-e0f1-5fe99100990f', -98, '2021-01-18 02:20:17', 0),
('628dcf57-d464-3041-eaf6-5ffe54fb38cd', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8a0f118c-c330-84ca-6b98-5fe991e394d8', 80, '2021-01-18 02:17:49', 0),
('62a337b9-500b-aaf0-28ce-5ffe575aefb1', '857d3817-1929-a617-ad2c-5ffe57175f84', '2fbc1ce8-e226-d32f-6533-5fe99185fa50', 75, '2021-01-18 02:18:59', 0),
('62a41cd8-94d3-8391-b2c0-6004f0f539ed', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '359e58d4-672f-8450-0502-5fe991d90d53', 75, '2021-01-18 02:23:05', 0),
('62b4026a-365d-c581-c5e3-5ffe53e3ab3c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'af9eb37a-1a01-b0a6-fd0d-5fe99153846a', 90, '2021-01-13 01:58:24', 0),
('62b41923-fb7d-862b-5313-5ffe536424cb', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '990beb29-a1a8-9051-e65a-5fe9919d686d', 90, '2021-01-13 01:58:24', 0),
('62bb10a0-e97f-4fcf-7f31-6004f007ea72', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '99cfda1f-f957-e4c1-e444-5fe99159b864', 75, '2021-01-18 02:21:17', 0),
('62e8c7e8-97ad-0a11-835d-5ffe566d44dd', '860158ee-3501-2093-b810-5ffe567b916e', '8ad528ed-feb4-75f8-27c4-5fe9915a5cfc', 80, '2021-01-18 02:20:17', 0),
('62ed6790-ae79-9ac0-f734-5ffe54aa2a6b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8caa545c-91aa-b64d-29e7-5fe9916b7bd3', 80, '2021-01-18 02:17:49', 0),
('62f7310a-ebba-470a-5f2e-5ffe573f8bcc', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd75b9bea-abb6-2458-cbb1-5fe991baf382', 80, '2021-01-18 02:21:56', 0),
('62f8d0ce-5e21-494b-1baf-5ffe57133e7b', '857d3817-1929-a617-ad2c-5ffe57175f84', '33fafaba-2190-9302-4782-5fe991f7de24', -99, '2021-01-18 02:18:59', 0),
('62ffc552-5cdc-5f3d-979c-6004f08ab58d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '34832776-1f41-d9d6-3c88-5fe991652abf', 75, '2021-01-18 02:23:05', 0),
('63234884-da4e-557e-03d9-6004f0b26e05', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9e0af605-864a-1d4f-c6b6-5fe9917f12da', -99, '2021-01-18 02:21:17', 0),
('632f0e80-067d-1dcb-a247-5ffe538684cd', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '42f23425-20bd-24a2-89cc-5fe991fb719d', 89, '2021-01-13 01:58:24', 0),
('635c709a-434c-ddba-6bbe-5ffe570dd7a0', '857d3817-1929-a617-ad2c-5ffe57175f84', '2eeaf781-6ecd-a955-acca-5fe991e8dedc', 75, '2021-01-18 02:18:59', 0),
('635c7f09-c6da-bb72-7907-6004f0696145', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '37da10a0-4b60-17b3-572d-5fe99146d1f5', 75, '2021-01-18 02:23:05', 0),
('63612bb5-0b2c-96a0-2a99-5ffe57844528', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'dbd5aabe-290e-a221-dfee-5fe9917ed553', -99, '2021-01-18 02:21:56', 0),
('636a1be7-8185-a68b-6bff-5ffe56c12840', '860158ee-3501-2093-b810-5ffe567b916e', '8a0f118c-c330-84ca-6b98-5fe991e394d8', 80, '2021-01-18 02:20:17', 0),
('6390f6bd-ba04-c521-ef8c-5ffe5318033e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '46e1336a-7c3c-2718-031e-5fe991d96425', 90, '2021-01-13 01:58:24', 0),
('63951aac-2292-558d-d8e2-6004f01448e2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '990beb29-a1a8-9051-e65a-5fe9919d686d', 75, '2021-01-18 02:21:17', 0),
('639b8ea3-9e53-184b-26bd-5ffe54a0261f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8baebba3-3e27-b455-5c5c-5fe991b5f301', -99, '2021-01-18 02:17:49', 0),
('63bb4bbe-bed6-f252-42f3-5ffe57efceb7', '857d3817-1929-a617-ad2c-5ffe57175f84', 'f6190ea9-60c9-f596-ab4c-5fe99100fa2d', -98, '2021-01-18 02:18:59', 0),
('63bc18a9-2b12-d361-63ee-6004f0da753d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '36b9debc-cf61-2e05-e0c1-5fe99114a8b1', -99, '2021-01-18 02:23:05', 0),
('63daf412-9e02-dc3a-d88f-5ffe56919281', '860158ee-3501-2093-b810-5ffe567b916e', '8caa545c-91aa-b64d-29e7-5fe9916b7bd3', 80, '2021-01-18 02:20:17', 0),
('63ed0170-dccd-d9c7-83eb-5ffe54078d6a', 'f3ab2114-3037-5119-1375-5ffe5300083d', '22f409ce-6261-ffc6-a5ea-5fe991893cab', 80, '2021-01-18 02:17:49', 0),
('63f6110f-c9e8-ff90-8915-5ffe54c947fc', 'f3ab2114-3037-5119-1375-5ffe5300083d', '89348a43-0ceb-7fc3-bda1-5fe99191fc57', 80, '2021-01-18 02:17:49', 0),
('63f7479b-dbd4-1345-f7c3-5ffe537e4690', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '45f6fd66-02e2-8dcd-e44c-5fe9914c4eae', 90, '2021-01-13 01:58:24', 0),
('63f7d846-97ec-1832-f02b-6004f0669692', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a3dd0e7e-396e-6394-b676-5fe9917eb3e6', -98, '2021-01-18 02:21:17', 0),
('641e6cfe-51d7-1246-ec90-6004f05dbcc1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '336abce4-cd82-bacf-2be2-5fe9917ce5f3', 75, '2021-01-18 02:23:05', 0),
('6425623b-52ac-c415-4507-5ffe57f5f720', '857d3817-1929-a617-ad2c-5ffe57175f84', '1308e66b-3607-36e4-94d1-5fe991734e49', 75, '2021-01-18 02:18:59', 0),
('64500b9d-12e8-a3e6-e735-5ffe547c765d', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e54e0225-640f-567a-882a-5fe991cbc6b9', 80, '2021-01-18 02:17:49', 0),
('645125f7-0691-e9db-98a9-5ffe5698f7d5', '860158ee-3501-2093-b810-5ffe567b916e', '8baebba3-3e27-b455-5c5c-5fe991b5f301', -99, '2021-01-18 02:20:17', 0),
('64557b28-aef9-5a7e-1a9f-5ffe541a01db', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8d914baf-1423-7020-8944-5fe9911e99af', -99, '2021-01-18 02:17:49', 0),
('6459c3a2-09bf-1830-ffdd-6004f063915f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'dbdb0c61-8f47-3c40-57b4-5fe991fe567d', 75, '2021-01-18 02:21:17', 0),
('646bab85-2fc2-ad86-6af3-5ffe531a705d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '48bd518c-335e-0f97-a7e0-5fe991ada2ca', 90, '2021-01-13 01:58:24', 0),
('647aa082-56ee-7b64-766b-6004f005ae63', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '38f7e37c-3780-9415-9113-5fe9915aee28', -99, '2021-01-18 02:23:05', 0),
('648810fc-cc57-6ca1-8809-5ffe575f2c6d', '857d3817-1929-a617-ad2c-5ffe57175f84', '12446ca6-06bf-d0e7-96a9-5fe99159f62f', 75, '2021-01-18 02:18:59', 0),
('64900057-87c2-5883-4850-5ffe5686c732', '860158ee-3501-2093-b810-5ffe567b916e', '256c3b35-e784-5ec4-a8ae-5fe991aa965b', -99, '2021-01-18 02:20:17', 0),
('64b5a579-23bd-a4d5-0922-5ffe54ce0a4e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '882106df-3bf3-d817-5575-5fe9914d26eb', 80, '2021-01-18 02:17:49', 0),
('64baaba5-6815-2b6a-ae54-5ffe56f07178', '860158ee-3501-2093-b810-5ffe567b916e', '89348a43-0ceb-7fc3-bda1-5fe99191fc57', 80, '2021-01-18 02:20:17', 0),
('64c76fae-83c4-7a99-5d40-6004f04bf612', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ce6e0f93-2998-985d-7b87-5fe991d71448', 75, '2021-01-18 02:21:17', 0),
('64d0d4ae-b67e-e7ae-5531-5ffe535d7d93', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '47ab75be-caa2-8677-1598-5fe99188c136', 90, '2021-01-13 01:58:24', 0),
('64d57819-b2d6-d023-48ae-6004f0b4b4ab', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '324a8fc4-a1f5-0ff1-9dfe-5fe99155b682', 75, '2021-01-18 02:23:05', 0),
('64ef4af8-127f-436d-b0c2-5ffe57766147', '857d3817-1929-a617-ad2c-5ffe57175f84', '148c44dd-fa1a-55a5-216a-5fe991e2e075', 75, '2021-01-18 02:18:59', 0),
('6513cce1-0f65-acee-1cdc-5ffe549cde8f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '66ca2eb6-2154-1395-dd3a-5fe991a1c703', -98, '2021-01-18 02:17:49', 0),
('652a3610-6d58-9dd8-86e5-5ffe56e2a872', '860158ee-3501-2093-b810-5ffe567b916e', '8d914baf-1423-7020-8944-5fe9911e99af', -99, '2021-01-18 02:20:17', 0),
('65313390-ce40-a3d5-e0e7-6004f02aa4f3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'f496047a-6f9e-53a2-3f3a-5fe99169c2d7', 75, '2021-01-18 02:21:17', 0),
('653727ec-ea2f-ec55-8eaf-6004f0759ac4', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5890b264-1737-a341-49a7-5fe991cbc6b6', -98, '2021-01-18 02:23:05', 0),
('653c9d3d-f202-1174-813d-5ffe53dac2f4', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '450a84c1-7709-a7c1-22e0-5fe9913729a1', 90, '2021-01-13 01:58:24', 0),
('655232ea-f4ab-8b59-ab78-5ffe578a4520', '857d3817-1929-a617-ad2c-5ffe57175f84', '13ca2543-865e-d690-0faa-5fe991ac9662', -99, '2021-01-18 02:18:59', 0),
('656f3b5b-1f3d-c286-61cb-5ffe54cc4326', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6a84c729-64b1-eea6-96e2-5fe9919c2ee3', 80, '2021-01-18 02:17:49', 0),
('6592230d-dc12-39f8-aa8d-6004f094953d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e8300251-c3bb-5889-1e43-5fe99135777f', -99, '2021-01-18 02:21:17', 0),
('65a137ad-8e25-4b0a-e55b-5ffe56cca7bc', '860158ee-3501-2093-b810-5ffe567b916e', '882106df-3bf3-d817-5575-5fe9914d26eb', 80, '2021-01-18 02:20:17', 0),
('65a3baf9-733e-f3d4-21ca-6004f0c9d375', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5c6868be-c79e-8603-f447-5fe991f1a410', 75, '2021-01-18 02:23:05', 0),
('65aa3fc4-1bf6-8a8a-c953-5ffe57ca6360', '857d3817-1929-a617-ad2c-5ffe57175f84', '116627b2-895a-e79c-9ab8-5fe991da953f', 75, '2021-01-18 02:18:59', 0),
('65aea38a-303c-9f93-7521-5ffe53285aa3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4992f727-3935-17df-a9f2-5fe991e9af52', 90, '2021-01-13 01:58:24', 0),
('65cc3097-01d0-2a32-4027-5ffe54a379e8', 'f3ab2114-3037-5119-1375-5ffe5300083d', '699a76dc-beed-8aa3-4142-5fe9916ff8ae', 80, '2021-01-18 02:17:49', 0),
('65f49396-2dd3-2f6b-79dc-6004f0b99060', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'c20c0b36-47c2-af55-32d7-5fe9914f650f', 75, '2021-01-18 02:21:17', 0),
('660af7a5-ad11-357f-cf53-6004f0c26294', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5b4bd525-74a5-4e81-8c36-5fe991c0bc0d', 75, '2021-01-18 02:23:05', 0),
('6615f6a1-832f-656e-62b0-5ffe5396becc', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4425d96b-3beb-dc6f-46e8-5fe991b01e56', 90, '2021-01-13 01:58:24', 0),
('66194dab-f9df-f098-888d-5ffe578a1d35', '857d3817-1929-a617-ad2c-5ffe57175f84', '1552b40c-ce5c-ec8d-5deb-5fe991cf6636', -99, '2021-01-18 02:18:59', 0),
('66229dea-0992-17f2-41fd-5ffe56cafecc', '860158ee-3501-2093-b810-5ffe567b916e', '66ca2eb6-2154-1395-dd3a-5fe991a1c703', -98, '2021-01-18 02:20:17', 0),
('662d5721-4b51-a583-cdb7-5ffe54c2341a', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6c6ea30f-0a8a-f174-e2f7-5fe99156d24f', 80, '2021-01-18 02:17:49', 0),
('66549a01-cbe5-b28d-fd45-6004f0a70349', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '100d44d4-2ad9-3006-5249-5fe99105dfc7', -99, '2021-01-18 02:21:17', 0),
('666fc740-4888-fdfa-8010-6004f0780112', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5e5257f4-8eed-49c9-1704-5fe991dbea8a', 75, '2021-01-18 02:23:05', 0),
('6680fb5b-5c14-7611-ad74-5ffe57a9aa9d', '857d3817-1929-a617-ad2c-5ffe57175f84', '107c132e-ddf3-80ad-ef1e-5fe991b822fe', 75, '2021-01-18 02:18:59', 0),
('668705ea-0c93-7b56-50e6-5ffe531b1efd', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4ff60533-381d-3326-53bc-5fe991d1b06f', 89, '2021-01-13 01:58:24', 0),
('668a3d42-71b9-d8ae-335f-5ffe54408197', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6b7f9d3c-48c8-36f7-80eb-5fe9918dc431', -99, '2021-01-18 02:17:49', 0),
('66c2843f-4a48-d48f-9109-6004f0681d18', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b20b0384-6478-f201-f7a9-5fe9917d9cf0', 75, '2021-01-18 02:21:17', 0),
('66d6ba6f-56c8-031b-7727-6004f0b11799', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5d74330e-218f-2dee-ea38-5fe9913e73a3', -99, '2021-01-18 02:23:05', 0),
('66e5e3f5-6038-47f8-3376-5ffe54a7cb28', 'f3ab2114-3037-5119-1375-5ffe5300083d', '68ae731f-f0cb-25b6-553f-5fe9918a1892', 80, '2021-01-18 02:17:49', 0),
('66e67b7d-de3d-9a37-5ad2-5ffe56ef1d6f', '860158ee-3501-2093-b810-5ffe567b916e', '6a84c729-64b1-eea6-96e2-5fe9919c2ee3', 80, '2021-01-18 02:20:17', 0),
('66f3ee27-864a-0938-416c-5ffe53a8dad0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8e98077b-58ce-c7a3-04fb-5fe9912226b7', 90, '2021-01-13 01:58:24', 0),
('66fb6438-7b2a-5129-646f-5ffe5725da9e', '857d3817-1929-a617-ad2c-5ffe57175f84', '825521ce-f146-d6f7-410e-5fe991c03d07', -98, '2021-01-18 02:18:59', 0),
('671f57c0-dd0d-e824-bd58-5ffe578f7c22', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd65faf8c-dd3c-b418-dbef-5fe99179789c', 80, '2021-01-18 02:21:56', 0),
('67335d7a-3a9b-dc99-9e88-6004f07ae223', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'aa4ac08d-1c76-f179-ae60-5fe99105b293', -98, '2021-01-18 02:21:17', 0),
('6743dbe3-1dd8-8454-2eaf-5ffe54aca953', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6d5fbf99-0522-690a-dabb-5fe99188c4b5', -99, '2021-01-18 02:17:49', 0),
('674439a6-c111-639e-cdc0-6004f0ac4a31', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5a65a785-eedd-5dce-c5c8-5fe991bddcae', 75, '2021-01-18 02:23:05', 0),
('6750a710-6144-d4d2-33fa-5ffe5754322e', '857d3817-1929-a617-ad2c-5ffe57175f84', '85f590f8-8305-91ca-f226-5fe9913338cd', 75, '2021-01-18 02:18:59', 0),
('6759465e-816e-8ceb-b41c-5ffe56e9fc69', '860158ee-3501-2093-b810-5ffe567b916e', '699a76dc-beed-8aa3-4142-5fe9916ff8ae', 80, '2021-01-18 02:20:17', 0),
('67629846-481e-0059-cfea-5ffe53925ca2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '818e07d5-f7cb-310c-95f2-5fe991b1ee79', 90, '2021-01-13 01:58:24', 0),
('679b1e0e-6105-11fe-210f-5ffe5772ee6f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7a70175c-e461-3c60-f0b9-5fe9911a6123', -98, '2021-01-18 02:21:56', 0),
('679de002-f32d-1e21-a4d4-5ffe54cf2e2e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '67aea666-6768-bbe9-f646-5fe99150edf5', 80, '2021-01-18 02:17:49', 0),
('67a36ebd-f008-8d4d-ea9d-6004f022189d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ae303a10-554a-204f-6954-5fe991d9dbeb', 75, '2021-01-18 02:21:17', 0),
('67af0b65-9743-23fc-c834-6004f0b36c7d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5f443fd1-639b-ec49-1e45-5fe9911db0d0', -99, '2021-01-18 02:23:05', 0),
('67b15aee-94b5-fe5f-c84b-5ffe57f9e580', '857d3817-1929-a617-ad2c-5ffe57175f84', '85190e9c-7f1d-56c1-64dc-5fe991744f5d', 75, '2021-01-18 02:18:59', 0),
('67c92d6a-b7c1-6045-6966-5ffe5327b9fc', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ac220371-2277-878b-d774-5fe991a38a1c', 90, '2021-01-13 01:58:24', 0),
('67cf7d62-c611-5d19-6399-5ffe5651848e', '860158ee-3501-2093-b810-5ffe567b916e', '6c6ea30f-0a8a-f174-e2f7-5fe99156d24f', 80, '2021-01-18 02:20:17', 0),
('680169f9-7eff-3ab6-5a1f-5ffe54f90aa9', 'f3ab2114-3037-5119-1375-5ffe5300083d', '703b9d7c-9838-63ac-6400-5fe991e6bba4', -98, '2021-01-18 02:17:49', 0),
('680e27b1-637c-3196-daf4-5ffe57805eb2', '857d3817-1929-a617-ad2c-5ffe57175f84', '87865002-90e3-2347-f433-5fe991d3863d', 75, '2021-01-18 02:18:59', 0),
('6811dc7f-524a-ee7f-ff49-5ffe57ddade4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7e00d922-8704-0640-deb7-5fe9912630d1', 80, '2021-01-18 02:21:56', 0),
('681abe79-a90d-53cf-1f52-6004f00dc791', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '598abca7-4b6e-cb2b-644b-5fe991850bfd', 75, '2021-01-18 02:23:05', 0),
('68216a62-3b7b-46b2-f8e2-6004f0b98a76', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ad33c349-59d2-2345-b811-5fe99100db80', 75, '2021-01-18 02:21:17', 0),
('682c9e01-9f82-2143-6a23-5ffe53c5bc76', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9dc8093f-c633-9026-010c-5fe99184be95', 90, '2021-01-13 01:58:24', 0),
('68461764-f519-8a16-5550-5ffe56e135a9', '860158ee-3501-2093-b810-5ffe567b916e', '6b7f9d3c-48c8-36f7-80eb-5fe9918dc431', -99, '2021-01-18 02:20:17', 0),
('685a0a59-caf2-75bc-5989-5ffe57d26cad', '857d3817-1929-a617-ad2c-5ffe57175f84', '9bbb2f8b-4e7c-7598-3cd7-5fe991f5abce', 75, '2021-01-18 02:18:59', 0),
('68634172-8c91-3a08-8ba5-5ffe54bc8625', 'f3ab2114-3037-5119-1375-5ffe5300083d', '73df2ce8-8c3e-acfa-bdd7-5fe9913b4b46', 80, '2021-01-18 02:17:49', 0),
('68753ae1-1041-dd40-de5e-5ffe57fbebd5', '857d3817-1929-a617-ad2c-5ffe57175f84', '86c03eb9-db71-866e-24b8-5fe99141f72d', -99, '2021-01-18 02:18:59', 0),
('6877fc47-9627-b5f9-604c-6004f0b1409e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8509116a-03b1-6673-110c-5fe991954b03', -98, '2021-01-18 02:23:05', 0),
('688240c2-2f92-e579-f952-5ffe57395553', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7d1e9133-c151-88c0-eaec-5fe991c34593', 80, '2021-01-18 02:21:56', 0),
('68898e19-36a6-ed31-e5dd-6004f0244a22', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b03796be-b258-728a-c41b-5fe991c3b941', 75, '2021-01-18 02:21:17', 0),
('689f8b0f-6584-d8f6-a97d-5ffe53b7a190', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '70d70eac-d310-32f6-369c-5fe991e453bc', 90, '2021-01-13 01:58:24', 0),
('68a9465c-7d79-6b4f-52d7-5ffe56bce0f3', '860158ee-3501-2093-b810-5ffe567b916e', '68ae731f-f0cb-25b6-553f-5fe9918a1892', 80, '2021-01-18 02:20:17', 0),
('68b9db06-25c1-d387-5593-5ffe546f63ee', 'f3ab2114-3037-5119-1375-5ffe5300083d', '7328b654-183a-be94-e0a2-5fe991dbec80', 80, '2021-01-18 02:17:49', 0),
('68c502d3-a0be-52a0-4bf7-5ffe536a7fdc', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ae9d5dd6-d898-6aea-e9e3-5fe99117c20d', 90, '2021-01-13 01:58:24', 0),
('68d13b46-1760-2eb1-2aab-5ffe570004b1', '857d3817-1929-a617-ad2c-5ffe57175f84', '8444474a-a792-eeeb-47b3-5fe991cd7ddf', 75, '2021-01-18 02:18:59', 0),
('68d98dae-5ace-7b5f-d878-6004f0d5e087', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8936f48d-6faf-aae4-427b-5fe9917348c9', 75, '2021-01-18 02:23:05', 0),
('68dc5906-a34b-af0e-695d-5ffe5778fd1d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7fb8f225-a99e-f07d-efab-5fe991f451cb', 80, '2021-01-18 02:21:56', 0),
('68f47d6c-9cef-d550-7b15-6004f0e0ed2f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'af35032f-561c-58f6-3331-5fe991c5da84', -99, '2021-01-18 02:21:17', 0),
('6908da99-19c0-8c08-ff67-5ffe53cd9b8a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'bb8c07ac-0928-929b-4833-5fe99115ee88', 90, '2021-01-13 01:58:24', 0),
('691d21f6-8787-7c23-e084-5ffe549e7b96', 'f3ab2114-3037-5119-1375-5ffe5300083d', '75a7db3b-7d01-17f4-afc6-5fe991d9dfd9', 80, '2021-01-18 02:17:49', 0),
('691f8ab4-6de5-ddf1-e1a9-5ffe5664e607', '860158ee-3501-2093-b810-5ffe567b916e', '6d5fbf99-0522-690a-dabb-5fe99188c4b5', -99, '2021-01-18 02:20:17', 0),
('69345229-c84a-b29f-4edc-5ffe57c20247', '857d3817-1929-a617-ad2c-5ffe57175f84', '884aeb94-31da-b231-1c15-5fe991188c80', -99, '2021-01-18 02:18:59', 0),
('6944b8e2-e42d-6d8e-f7c1-6004f0fd65ba', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '883343cc-5856-3f81-0dda-5fe99171e29d', 75, '2021-01-18 02:23:05', 0),
('6949dffa-a9a8-eed7-8c27-5ffe5781339c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7edf4208-d92c-4f4d-4e1a-5fe991304f60', -99, '2021-01-18 02:21:56', 0),
('6950a444-5877-4c51-0d37-6004f0bc1cb8', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ac57ede7-ba37-daae-9348-5fe991a599f2', 75, '2021-01-18 02:21:17', 0),
('6978d970-90af-2f68-8174-5ffe531db98a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '624407ba-eaf2-35d5-476b-5fe991cd595f', 90, '2021-01-13 01:58:24', 0),
('69810d6d-b6f4-08e4-e04f-5ffe5480a5d6', 'f3ab2114-3037-5119-1375-5ffe5300083d', '74c25699-1cb1-ce6d-21b8-5fe9919bc181', -99, '2021-01-18 02:17:49', 0),
('6986e3ca-134e-0d2f-ae67-5ffe566e1ed8', '860158ee-3501-2093-b810-5ffe567b916e', '67aea666-6768-bbe9-f646-5fe99150edf5', 80, '2021-01-18 02:20:17', 0),
('699820f6-f7ca-f900-3a40-5ffe57abb70d', '857d3817-1929-a617-ad2c-5ffe57175f84', '835424a7-ebd5-65f2-beb4-5fe991766bd5', 75, '2021-01-18 02:18:59', 0),
('69a53b7a-460f-466c-f7d5-6004f07b01f8', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8b196f3d-f5c9-3f7b-9f2f-5fe9914dd267', 75, '2021-01-18 02:23:05', 0),
('69b6e279-62a0-fed7-8b48-6004f04d2f46', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b12cce2f-60ac-da2e-547b-5fe9919f721c', -99, '2021-01-18 02:21:17', 0),
('69c3ef1a-c320-b9b3-180e-5ffe57043a2f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7c4a05ce-6ac7-4196-607c-5fe9911b0e45', 80, '2021-01-18 02:21:56', 0),
('69e20670-0351-bf80-e32e-5ffe54368dcf', 'f3ab2114-3037-5119-1375-5ffe5300083d', '72393ce0-595f-0405-6bcd-5fe991546f2b', 80, '2021-01-18 02:17:49', 0),
('69f5751a-b06d-ccb4-2166-5ffe57d30a2b', '857d3817-1929-a617-ad2c-5ffe57175f84', '32fdecc0-1055-94d4-259e-5fe991ec34ed', -98, '2021-01-18 02:18:59', 0),
('6a0c8ef4-b977-9892-203b-6004f05465ed', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8a3c4ee5-e844-1a52-2808-5fe991728c0f', -99, '2021-01-18 02:23:05', 0),
('6a1422fa-84f1-67ce-b412-6004f03f6cfb', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ab456744-738b-c720-3322-5fe991b0dab8', 75, '2021-01-18 02:21:17', 0),
('6a2a7bd3-e4cb-a0b8-71e6-5ffe53dc6218', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3551a270-f18f-bc61-d9ab-5fe991257d80', 89, '2021-01-13 01:58:24', 0),
('6a31eb7c-4182-2b73-aa30-5ffe57013f7a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '80904afb-9a34-7ce1-e2a7-5fe9913a83f3', -99, '2021-01-18 02:21:56', 0),
('6a370b99-1bde-62a0-db36-5ffe56a287a5', '860158ee-3501-2093-b810-5ffe567b916e', '22f409ce-6261-ffc6-a5ea-5fe991893cab', 80, '2021-01-18 02:20:17', 0),
('6a42d5e8-3640-383f-7af7-5ffe56019504', '860158ee-3501-2093-b810-5ffe567b916e', '703b9d7c-9838-63ac-6400-5fe991e6bba4', -98, '2021-01-18 02:20:17', 0),
('6a43102e-f221-7d9d-6004-5ffe547fe731', 'f3ab2114-3037-5119-1375-5ffe5300083d', '76986dab-ff17-bc47-8526-5fe9911c5da7', -99, '2021-01-18 02:17:49', 0),
('6a5919cd-cf85-4aa6-4840-5ffe5752d50e', '857d3817-1929-a617-ad2c-5ffe57175f84', '36e3734f-c2aa-d169-9eba-5fe9914c6819', 75, '2021-01-18 02:18:59', 0),
('6a7adc36-79d9-732a-a5c7-6004f0d284fd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ee33075d-445e-7c77-cbcb-5fe991df87e3', -98, '2021-01-18 02:21:17', 0),
('6a814463-47ec-450d-7bee-6004f0e2f28f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '872bf147-7d38-4099-a281-5fe991390670', 75, '2021-01-18 02:23:05', 0),
('6a8c455e-38e7-d7c5-d208-5ffe57eec8db', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7b5d68fd-4c97-3b86-4ae3-5fe991594e2a', 80, '2021-01-18 02:21:56', 0),
('6aa083f0-7262-8377-dcee-5ffe54efac7a', 'f3ab2114-3037-5119-1375-5ffe5300083d', '715bbbc1-3fca-b78e-ff62-5fe991520d0f', 80, '2021-01-18 02:17:49', 0),
('6aad9642-70ff-c0c6-5e9f-5ffe56ae8af8', '860158ee-3501-2093-b810-5ffe567b916e', '73df2ce8-8c3e-acfa-bdd7-5fe9913b4b46', 80, '2021-01-18 02:20:17', 0),
('6ab6d771-36a0-b4ba-c8c0-5ffe571d7956', '857d3817-1929-a617-ad2c-5ffe57175f84', '35dd7f1a-b6c6-82b5-ca15-5fe9916efb89', 75, '2021-01-18 02:18:59', 0),
('6ac60a1c-1f37-fd8c-60f2-5ffe547c69c4', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2707d3f2-dfdd-5b66-eb98-5fe991924eff', -99, '2021-01-18 02:17:49', 0),
('6ad438d7-40ba-caa0-8071-6004f0810630', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '41de0022-b274-6bbf-b53d-5fe991a8c09e', 75, '2021-01-18 02:21:17', 0),
('6aed9d59-9181-f3ab-ad11-6004f064fc09', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8bf64f92-13f1-2135-3a28-5fe991084f6b', -99, '2021-01-18 02:23:05', 0),
('6af7c771-8b1f-60e7-dc67-5ffe5453dc1b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4a61c49f-2cdb-e7e6-0f51-5fe9913f40c7', -98, '2021-01-18 02:17:49', 0),
('6afd191b-9478-09d9-7237-5ffe575689e6', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '896f387c-3192-39ce-cf8f-5fe9910f31dc', 89, '2021-01-18 02:21:56', 0),
('6b110379-6fe0-44d0-156b-5ffe576b1cc4', '857d3817-1929-a617-ad2c-5ffe57175f84', '38b65870-c26f-4a05-b2e8-5fe991357e50', 75, '2021-01-18 02:18:59', 0),
('6b1a5e0b-a7d2-3643-af1c-5ffe5668636b', '860158ee-3501-2093-b810-5ffe567b916e', '7328b654-183a-be94-e0a2-5fe991dbec80', 80, '2021-01-18 02:20:17', 0),
('6b32e6c8-f190-c5bb-c3cd-6004f0d98a28', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '34d90e2b-2058-ea74-6222-5fe99179e083', 75, '2021-01-18 02:21:17', 0),
('6b4de9fe-980f-e879-f8ec-6004f0410a30', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '862b5b74-cced-59b5-0fe7-5fe991e5983b', 75, '2021-01-18 02:23:05', 0),
('6b58c478-fee0-340b-7daf-5ffe5454537b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4e1109c8-7876-d60e-a048-5fe991d7c4ae', 80, '2021-01-18 02:17:49', 0),
('6b6d35cb-751c-be1c-8e4c-5ffe5747a870', '857d3817-1929-a617-ad2c-5ffe57175f84', '37be1412-83bc-71de-9e8a-5fe9917743e0', -99, '2021-01-18 02:18:59', 0),
('6b797756-1bde-266e-ebfd-5ffe56f3f9c0', '860158ee-3501-2093-b810-5ffe567b916e', '75a7db3b-7d01-17f4-afc6-5fe991d9dfd9', 80, '2021-01-18 02:20:17', 0),
('6b7f5c2a-4964-9269-8a9f-5ffe57f01a8b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8d251326-d46e-e47a-bdf7-5fe9913c58f1', 80, '2021-01-18 02:21:56', 0),
('6b8d9256-33fc-25ab-e45c-6004f0b0d47a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5a000560-7280-a1b7-e8f7-5fe99195e88a', 75, '2021-01-18 02:21:17', 0),
('6bb42605-b28f-899a-577b-6004f0cedbe4', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '221b12f0-5d05-330c-b7a3-5fe9912efe39', -98, '2021-01-18 02:23:05', 0),
('6bbb0dcc-a86a-79fc-ca30-5ffe54e10a7f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4d1fe09d-5f13-4da2-9290-5fe9912f736b', 80, '2021-01-18 02:17:49', 0),
('6bbe25ca-15ac-b4ae-52d0-5ffe53178c20', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3917de13-cf89-17f0-e38d-5fe99121f8ee', 90, '2021-01-13 01:58:24', 0),
('6bc20e03-1c0e-a7c2-701c-6004f03a6dc7', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '57c5b394-b150-f1c0-2a99-5fe9918738a0', 75, '2021-01-18 02:21:17', 0),
('6bcb9e02-ca31-8db2-6fb5-5ffe57c1b9a2', '857d3817-1929-a617-ad2c-5ffe57175f84', '34ecb272-0044-c320-2fce-5fe991914a29', 75, '2021-01-18 02:18:59', 0),
('6bdef76d-e3c7-57d2-af1d-5ffe575f8cb6', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8c32852a-7c8d-5cd3-6e2f-5fe9914a7895', 80, '2021-01-18 02:21:56', 0),
('6be704fd-7f27-0b62-f780-5ffe567c03c2', '860158ee-3501-2093-b810-5ffe567b916e', '74c25699-1cb1-ce6d-21b8-5fe9919bc181', -99, '2021-01-18 02:20:17', 0),
('6beca95f-7c15-7507-b649-6004f0109bbe', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4d8a0aa3-32ab-6e3d-a53e-5fe99166c344', -99, '2021-01-18 02:21:17', 0),
('6c1a396d-fab2-be33-a31b-6004f0686abb', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '261fe43f-ae70-119e-7363-5fe991f3234f', 75, '2021-01-18 02:23:05', 0),
('6c1c57bc-f368-1a3c-fa49-5ffe5493dd4f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4fd10984-05a7-6cfa-a22a-5fe991fbc4fa', 80, '2021-01-18 02:17:49', 0),
('6c32aa26-4ecc-b05b-4fa1-5ffe57d2ad95', '857d3817-1929-a617-ad2c-5ffe57175f84', '39cb74f6-1cc1-cca4-c76e-5fe991963598', -99, '2021-01-18 02:18:59', 0),
('6c38610b-66b5-6c3a-d862-5ffe57336b42', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8f1522ea-a950-b5f2-b9d6-5fe99134927b', 80, '2021-01-18 02:21:56', 0),
('6c418a86-bf15-4cbb-dbeb-5ffe531bfb75', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3826d8ff-0a94-78ba-1f41-5fe991cc13d7', 90, '2021-01-13 01:58:24', 0),
('6c4aa7eb-032b-2ec2-e173-6004f000bd13', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '23e709d5-278b-953a-b425-5fe9912b1de3', 75, '2021-01-18 02:21:17', 0),
('6c5599dd-f3e3-0867-de98-5ffe56433050', '860158ee-3501-2093-b810-5ffe567b916e', '72393ce0-595f-0405-6bcd-5fe991546f2b', 80, '2021-01-18 02:20:17', 0),
('6c824db1-3613-d701-06eb-6004f0ca7c5f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '25330da0-6d1c-e099-5248-5fe991488f96', 75, '2021-01-18 02:23:05', 0),
('6c83471d-adcf-a421-acb4-5ffe546eb0ff', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4efb3cf7-9b18-608e-0873-5fe991601809', -99, '2021-01-18 02:17:49', 0),
('6c952dd9-5b9a-8783-c1a5-5ffe575fbb7c', '857d3817-1929-a617-ad2c-5ffe57175f84', '33f78e57-81f4-699f-4fc6-5fe991f2bfb1', 75, '2021-01-18 02:18:59', 0),
('6ca4efea-9977-5fa4-094a-5ffe573b431b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8e123978-8a99-2be4-e394-5fe9916e1de0', -99, '2021-01-18 02:21:56', 0),
('6cb06e0d-e81f-c292-10a8-5ffe5375c192', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3ba2a8c3-0658-9208-ad4a-5fe991362626', 90, '2021-01-13 01:58:24', 0),
('6cb1d283-0b40-ef33-0af8-6004f078a4b5', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '660901ef-f92f-3dc1-aed9-5fe9918feb95', -99, '2021-01-18 02:21:17', 0),
('6cb8ad79-1a9c-1c4f-0b30-5ffe56fa9bf2', '860158ee-3501-2093-b810-5ffe567b916e', '76986dab-ff17-bc47-8526-5fe9911c5da7', -99, '2021-01-18 02:20:17', 0),
('6ce27cd7-bd45-f18a-580a-6004f0ad5519', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '27da2e31-71e5-6694-1bad-5fe9910245e3', 75, '2021-01-18 02:23:05', 0),
('6ce54867-b09e-9352-3dc7-5ffe547313c7', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4c37daab-be92-019b-381d-5fe99196a7ca', 80, '2021-01-18 02:17:49', 0),
('6cf6f0e4-5648-a151-6bee-5ffe571e00f2', '857d3817-1929-a617-ad2c-5ffe57175f84', '2732a0e6-5f36-20ee-3fb9-5fe99121cf30', 89, '2021-01-18 02:18:59', 0),
('6d02271d-4be7-87df-b429-5ffe57fde4e2', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8b3e78a3-e5c1-2e16-f0a7-5fe9917788ca', 80, '2021-01-18 02:21:56', 0),
('6d1246c5-c0e4-6992-b65e-5ffe53249817', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3a20c576-4d3d-4596-153d-5fe991eab6b4', 90, '2021-01-13 01:58:24', 0),
('6d2032f7-e4fa-4860-f77c-6004f0fb9f96', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6560009a-e8c7-dbae-1288-5fe99128b793', 75, '2021-01-18 02:21:17', 0),
('6d29081e-a2a1-56cb-c6d3-5ffe56691645', '860158ee-3501-2093-b810-5ffe567b916e', '715bbbc1-3fca-b78e-ff62-5fe991520d0f', 80, '2021-01-18 02:20:17', 0),
('6d46e724-d9e3-04ab-47aa-5ffe54b82a45', 'f3ab2114-3037-5119-1375-5ffe5300083d', '50a7c395-84c7-a636-8650-5fe9914a4078', -99, '2021-01-18 02:17:49', 0),
('6d4edd41-3c91-fc70-ca01-6004f0441185', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '2706b8b1-f8f3-607b-c2f7-5fe991057a1c', -99, '2021-01-18 02:23:05', 0),
('6d5a89df-abcd-df6d-6873-5ffe57c44af4', '857d3817-1929-a617-ad2c-5ffe57175f84', '2b496d64-3d03-a85e-b5d3-5fe991019c1d', 75, '2021-01-18 02:18:59', 0),
('6d6a83c1-34bc-71ac-b935-5ffe576fbfcd', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9002ab21-67ef-78bb-3774-5fe991d97cf4', -99, '2021-01-18 02:21:56', 0),
('6d850278-b790-934f-798e-5ffe536b2acf', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '374897c0-70e4-0345-a9e4-5fe9911d4e4e', 90, '2021-01-13 01:58:24', 0),
('6d8e067e-638b-4a2a-7ebb-5ffe566ca927', '860158ee-3501-2093-b810-5ffe567b916e', '4a61c49f-2cdb-e7e6-0f51-5fe9913f40c7', -98, '2021-01-18 02:20:17', 0),
('6d93dd98-ce17-9587-61e4-6004f07bf829', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9ca10601-c27e-5c20-5956-5fe9919ccad4', -98, '2021-01-18 02:21:17', 0),
('6da663d2-3c1a-91d8-d5ee-5ffe542b1684', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4b4a59af-cb8a-d026-7057-5fe991880a95', 80, '2021-01-18 02:17:49', 0),
('6db2f390-603f-1a64-206c-6004f09cd8b9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '24338af2-5403-8efd-9c15-5fe991863579', 75, '2021-01-18 02:23:05', 0),
('6dd06608-757a-980c-b8e7-5ffe57070b18', '857d3817-1929-a617-ad2c-5ffe57175f84', '2a1f9f0a-f984-6834-3682-5fe991d443ea', 75, '2021-01-18 02:18:59', 0),
('6ddbf2ba-bc61-76ee-5d6d-5ffe578015cf', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8a4ef12f-2db6-bed2-069b-5fe991f829f8', 80, '2021-01-18 02:21:56', 0),
('6df1d981-9acd-ac72-ec8f-5ffe5611b778', '860158ee-3501-2093-b810-5ffe567b916e', '4e1109c8-7876-d60e-a048-5fe991d7c4ae', 80, '2021-01-18 02:20:17', 0),
('6df2b4fc-b158-476a-997d-5ffe535d8dfe', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3cbabe1f-c724-bcf3-7dd2-5fe991c08fe0', 90, '2021-01-13 01:58:24', 0),
('6dff352b-961b-dba1-5be4-6004f03919f3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'de2e0848-be5e-0abe-c6db-5fe991aa483f', 75, '2021-01-18 02:21:17', 0),
('6e0ffd9e-e185-9196-ca68-5ffe5431a8b3', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5890b264-1737-a341-49a7-5fe991cbc6b6', -98, '2021-01-18 02:17:49', 0),
('6e149341-acbc-21b9-7483-6004f0f2f7f1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '28e3ff10-5af4-07e1-fa1c-5fe9914d87b3', -99, '2021-01-18 02:23:05', 0),
('6e3ceb07-7523-7250-6215-5ffe5762c449', '857d3817-1929-a617-ad2c-5ffe57175f84', '2d2b027c-488d-50dd-9ea4-5fe99146ebb8', 75, '2021-01-18 02:18:59', 0),
('6e4b8d92-6bcd-8a04-9300-5ffe57a1df86', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'f08c06ac-3bfb-3c90-8304-5fe99159c5a2', -98, '2021-01-18 02:21:56', 0),
('6e57f7bf-4f60-84d9-8aa8-5ffe53276b2b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3665eb75-d663-c9b0-c26f-5fe9918ce9d1', 90, '2021-01-13 01:58:24', 0),
('6e5e7567-0c0a-ba14-8b33-5ffe566cef3c', '860158ee-3501-2093-b810-5ffe567b916e', '4d1fe09d-5f13-4da2-9290-5fe9912f736b', 80, '2021-01-18 02:20:17', 0),
('6e69599d-0dbc-f09f-7cb8-5ffe54445350', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5c6868be-c79e-8603-f447-5fe991f1a410', 80, '2021-01-18 02:17:49', 0),
('6e6b6daa-7bb8-b4c3-e318-6004f0107306', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'cd310a2b-1462-a6c9-ca96-5fe9919756ad', 75, '2021-01-18 02:21:17', 0),
('6e71f22c-ad1a-c981-f987-6004f00c2d67', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '23550dea-242e-e641-c100-5fe9914c1d52', 75, '2021-01-18 02:23:05', 0),
('6e9d5a96-6a31-d142-7a62-5ffe57adf60e', '857d3817-1929-a617-ad2c-5ffe57175f84', '2c394a82-e49f-ebe1-84f2-5fe991d8fe80', -99, '2021-01-18 02:18:59', 0),
('6ea8921c-48fe-0c66-7ecf-5ffe579a7695', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '1308c7c8-01bb-0130-60b8-5fe991c995bc', 80, '2021-01-18 02:21:56', 0),
('6ebb8ba8-38d5-ca08-d80e-5ffe53ff0dc6', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd57006b7-e7f1-a8df-7b38-5fe9914a3d6e', 89, '2021-01-13 01:58:24', 0),
('6ebe0cf0-91d6-dcf3-77ec-5ffe53452e45', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b1a64d3e-879f-53ba-d1b5-5fe991bc50df', 90, '2021-01-13 01:58:24', 0),
('6ec89cad-d97e-2f9e-0f5b-5ffe545040db', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5b4bd525-74a5-4e81-8c36-5fe991c0bc0d', 80, '2021-01-18 02:17:49', 0),
('6ec9d3ae-5550-8080-a042-5ffe56f7e04a', '860158ee-3501-2093-b810-5ffe567b916e', '4fd10984-05a7-6cfa-a22a-5fe991fbc4fa', 80, '2021-01-18 02:20:17', 0),
('6ece7d6e-fe51-289c-4150-6004f0219283', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'fdb10bca-f265-c42d-8e94-5fe991226d9c', 75, '2021-01-18 02:21:17', 0),
('6ed07b97-4486-46af-0388-6004f042d972', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd2d0a027-3572-d6ed-c8b6-5fe991cb1f5d', -98, '2021-01-18 02:23:05', 0),
('6f065309-6def-c802-2e1c-5ffe57b9d38e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '1218d852-02f8-a839-5599-5fe9914ce21e', 80, '2021-01-18 02:21:56', 0),
('6f103211-722f-2a2c-5d75-5ffe578c80fb', '857d3817-1929-a617-ad2c-5ffe57175f84', '29305214-b60b-aa3d-5ec2-5fe991da434c', 75, '2021-01-18 02:18:59', 0),
('6f24118c-d7cf-1db0-f8dd-5ffe54b0c49c', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5e5257f4-8eed-49c9-1704-5fe991dbea8a', 80, '2021-01-18 02:17:49', 0),
('6f267f74-fc8f-b7e5-c2a2-5ffe531bf8be', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '11168e71-dfb6-25c7-423a-5fe9913e4838', 90, '2021-01-13 01:58:24', 0),
('6f30f289-dde7-f590-7fa3-5ffe564d3cfc', '860158ee-3501-2093-b810-5ffe567b916e', '4efb3cf7-9b18-608e-0873-5fe991601809', -99, '2021-01-18 02:20:17', 0),
('6f351778-5d15-9f28-cc9b-6004f02a4d8b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd657cb55-0375-4273-1649-5fe99107f1cd', 75, '2021-01-18 02:23:05', 0),
('6f35ff7f-809c-6925-929b-6004f09b3941', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'edd80716-4770-8f9e-58e4-5fe991dcf437', -99, '2021-01-18 02:21:17', 0),
('6f6da5be-7c50-b047-f616-5ffe57be8746', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '149e29e6-93cc-1cba-c2d2-5fe991cc1dc2', 80, '2021-01-18 02:21:56', 0),
('6f80183b-94e7-7835-c578-5ffe57787e0c', '857d3817-1929-a617-ad2c-5ffe57175f84', '2e337fa1-1d69-a9dd-0ce9-5fe9914393e1', -99, '2021-01-18 02:18:59', 0),
('6f97a5c9-e32f-bd95-25e0-5ffe562f5434', '860158ee-3501-2093-b810-5ffe567b916e', '4c37daab-be92-019b-381d-5fe99196a7ca', 80, '2021-01-18 02:20:17', 0),
('6f9c58a1-dc8e-96e3-b1eb-5ffe53770666', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '102a85b0-a8da-085d-303f-5fe9913862b6', 90, '2021-01-13 01:58:24', 0),
('6fa1110e-b84a-4088-7ac2-6004f0dd22ff', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd5947f70-5835-9610-af3c-5fe991225042', 75, '2021-01-18 02:23:05', 0),
('6fcae663-9e88-cf76-c466-5ffe5495cfe3', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5d74330e-218f-2dee-ea38-5fe9913e73a3', -99, '2021-01-18 02:17:49', 0),
('6fcf728b-d659-9760-6102-5ffe574e878b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '13ceea2d-5bbc-21c2-b72c-5fe991b92f9f', -99, '2021-01-18 02:21:56', 0),
('6fed024e-d5c5-0d3a-a1ec-5ffe577b08c4', '857d3817-1929-a617-ad2c-5ffe57175f84', '2842847c-275e-f04f-e50b-5fe991f01580', 75, '2021-01-18 02:18:59', 0),
('6ffb5b93-b168-94c8-a098-6004f04cab0a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd7ef8dae-256a-1a9b-9486-5fe991f2477f', 75, '2021-01-18 02:23:05', 0),
('70000bc0-f04c-3853-38a2-5ffe56c86b7b', '860158ee-3501-2093-b810-5ffe567b916e', '50a7c395-84c7-a636-8650-5fe9914a4078', -99, '2021-01-18 02:20:17', 0),
('70041b95-78d9-c3c2-2408-6004f0d1bd7a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ba0d0b5d-0fea-e94c-a366-5fe991b36938', 75, '2021-01-18 02:21:17', 0),
('7011662e-eb47-2361-d552-5ffe5344e8a0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '13119046-55d9-f4c7-8f0c-5fe991870bc3', 90, '2021-01-13 01:58:24', 0),
('701b09bc-3779-cc72-2ab1-5ffe56217768', '860158ee-3501-2093-b810-5ffe567b916e', '2707d3f2-dfdd-5b66-eb98-5fe991924eff', -99, '2021-01-18 02:20:17', 0),
('703365ca-ae0b-5fe3-fa21-5ffe57f7e5f4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '114815ee-8523-c73a-362a-5fe991f9439c', 80, '2021-01-18 02:21:56', 0),
('705a843e-b831-6b5e-d619-5ffe57e02bad', '857d3817-1929-a617-ad2c-5ffe57175f84', '87328551-5fbc-ff3f-e0f1-5fe99100990f', 89, '2021-01-18 02:18:59', 0),
('706016b2-dbb1-9286-c47e-6004f0d7cec5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd714ace0-6c07-939c-935a-5fe991f67888', -99, '2021-01-18 02:23:05', 0),
('7060402f-4027-ebbd-5db3-5ffe56d595ef', '860158ee-3501-2093-b810-5ffe567b916e', '4b4a59af-cb8a-d026-7057-5fe991880a95', 80, '2021-01-18 02:20:17', 0),
('70668b38-538f-b537-ddf4-5ffe54625fb1', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5a65a785-eedd-5dce-c5c8-5fe991bddcae', 80, '2021-01-18 02:17:49', 0),
('706b8914-fbfa-cae1-cb23-6004f0781352', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '10bb9476-6a76-c89c-3b36-5fe9919e22c0', -99, '2021-01-18 02:21:17', 0),
('707e049d-41cc-dc3b-e617-5ffe57777e9c', '857d3817-1929-a617-ad2c-5ffe57175f84', '9a9f7b66-cc05-ac3d-373a-5fe9917492bd', 75, '2021-01-18 02:18:59', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('707f95b3-8859-27b4-86df-5ffe536678f1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '1224a14c-5751-b0f7-2546-5fe99171ecf5', 90, '2021-01-13 01:58:24', 0),
('709fe4ff-fc50-21e6-7ffc-5ffe572aa037', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '156a9daf-1314-e4e9-8677-5fe991e24ee1', -99, '2021-01-18 02:21:56', 0),
('70c00b0f-a7e5-345a-d91d-5ffe54c6be2b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2229f60f-c756-dde0-77b7-5fe991eeb405', 80, '2021-01-18 02:17:49', 0),
('70c01a54-9056-7fa8-bdf3-5ffe571887c4', '857d3817-1929-a617-ad2c-5ffe57175f84', '8ad528ed-feb4-75f8-27c4-5fe9915a5cfc', 75, '2021-01-18 02:18:59', 0),
('70c05a2c-9b03-8d4d-c645-6004f0df950a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd4c47979-6892-d428-422a-5fe9914915d9', 75, '2021-01-18 02:23:05', 0),
('70c34fa7-7b4d-c85f-6ec4-5ffe54e8a1ee', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5f443fd1-639b-ec49-1e45-5fe9911db0d0', -99, '2021-01-18 02:17:49', 0),
('70c995ea-c4e0-07b4-b6e8-5ffe56f19753', '860158ee-3501-2093-b810-5ffe567b916e', '5890b264-1737-a341-49a7-5fe991cbc6b6', -98, '2021-01-18 02:20:17', 0),
('70d9dfed-48e9-d6e5-18ea-6004f0baf83d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ab5b0857-c791-bdac-00d8-5fe991750992', 75, '2021-01-18 02:21:17', 0),
('70e00e99-cd9b-ec1d-d828-5ffe564e36df', '860158ee-3501-2093-b810-5ffe567b916e', '1400ff85-edb1-8f1e-ecfb-5fe9914372ae', -99, '2021-01-18 02:20:17', 0),
('70ee09b9-ecee-2a8d-9bcb-5ffe532543b1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'f48c0261-22b6-af87-604d-5fe9918bf017', 90, '2021-01-13 01:58:24', 0),
('71111974-9adb-3b87-332d-5ffe578b2b75', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '10679577-ff18-7309-b27c-5fe991b37229', 80, '2021-01-18 02:21:56', 0),
('7114b77b-e2be-685e-b8ab-5ffe578cd7ab', '857d3817-1929-a617-ad2c-5ffe57175f84', '8a0f118c-c330-84ca-6b98-5fe991e394d8', 75, '2021-01-18 02:18:59', 0),
('711d3a3c-d821-d688-a231-5ffe54037459', 'f3ab2114-3037-5119-1375-5ffe5300083d', '598abca7-4b6e-cb2b-644b-5fe991850bfd', 80, '2021-01-18 02:17:49', 0),
('7126a788-8e99-18e9-d1d3-6004f06a2679', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd8b1b1e7-6336-dbbf-8cf1-5fe99178f96b', -99, '2021-01-18 02:23:05', 0),
('71346822-fd99-2072-01c9-5ffe56b8da74', '860158ee-3501-2093-b810-5ffe567b916e', '5c6868be-c79e-8603-f447-5fe991f1a410', 80, '2021-01-18 02:20:17', 0),
('713f3c33-4fe5-1f7f-831c-6004f07c3270', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ab881f0b-8357-88f0-96b1-5fe991a4e4c1', -98, '2021-01-18 02:21:17', 0),
('71624c31-fe5a-72f8-7a44-5ffe57a57c28', '857d3817-1929-a617-ad2c-5ffe57175f84', '8caa545c-91aa-b64d-29e7-5fe9916b7bd3', 75, '2021-01-18 02:18:59', 0),
('716422c2-66ea-0c46-9864-5ffe53923b38', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '1400ff85-edb1-8f1e-ecfb-5fe9914372ae', 90, '2021-01-13 01:58:24', 0),
('7179d6d9-0f88-e179-3aeb-5ffe57086f7e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6bcd468f-05a5-bcf4-564d-5fe991e0de54', -98, '2021-01-18 02:21:56', 0),
('7182e4f9-89c7-b1a0-9a2b-6004f0175b09', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd3d3cf03-be8a-3584-a18c-5fe99113181a', 75, '2021-01-18 02:23:05', 0),
('7185e6c1-9fd7-d273-11ed-5ffe54253e0b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '56662706-64d1-1b2a-90f5-5fe991343b9f', -98, '2021-01-18 02:17:49', 0),
('7199da20-3ba6-eb1c-9552-5ffe56d836ba', '860158ee-3501-2093-b810-5ffe567b916e', '5b4bd525-74a5-4e81-8c36-5fe991c0bc0d', 80, '2021-01-18 02:20:17', 0),
('71a617d5-3c67-618d-8302-6004f07b2dc3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'af9eb37a-1a01-b0a6-fd0d-5fe99153846a', 75, '2021-01-18 02:21:17', 0),
('71bd1267-5690-abd9-db13-5ffe57f5141a', '857d3817-1929-a617-ad2c-5ffe57175f84', '8baebba3-3e27-b455-5c5c-5fe991b5f301', -99, '2021-01-18 02:18:59', 0),
('71d2ee46-87d6-5079-65e1-5ffe53a57bb2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e54e0225-640f-567a-882a-5fe991cbc6b9', 90, '2021-01-13 01:58:24', 0),
('71d913e2-479c-a5c3-46fc-5ffe5704916b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6f37cdc5-64de-e0cb-0398-5fe991c753dd', 80, '2021-01-18 02:21:56', 0),
('71e090d4-7581-63fc-b9dc-6004f0e61015', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '56a6bf95-4af3-f5f0-259a-5fe991106ab5', -98, '2021-01-18 02:23:05', 0),
('71eb3f95-4a40-13b4-ff10-5ffe5479fad3', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5b3d119e-597c-04c4-ac45-5fe991493c92', 80, '2021-01-18 02:17:49', 0),
('720113ec-c2f6-62de-6530-5ffe56b963ab', '860158ee-3501-2093-b810-5ffe567b916e', '5e5257f4-8eed-49c9-1704-5fe991dbea8a', 80, '2021-01-18 02:20:17', 0),
('720c98d9-08a0-8961-d732-6004f091b046', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ae9d5dd6-d898-6aea-e9e3-5fe99117c20d', 75, '2021-01-18 02:21:17', 0),
('721721a0-ecde-2c76-255a-5ffe57e18d38', '857d3817-1929-a617-ad2c-5ffe57175f84', '89348a43-0ceb-7fc3-bda1-5fe99191fc57', 75, '2021-01-18 02:18:59', 0),
('72396294-5021-386a-1316-6004f06a0574', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5a5c77c9-0168-2cf4-88a5-5fe9911dc650', 75, '2021-01-18 02:23:05', 0),
('7242a798-844d-ec99-643f-5ffe5784041e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6e736f3a-1b1d-ec66-c34f-5fe9916edc56', 80, '2021-01-18 02:21:56', 0),
('7244be53-f194-ed0f-94e6-5ffe53c2efdc', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '63b54b9f-8580-d724-9ede-5fe991fa4f1d', 89, '2021-01-13 01:58:24', 0),
('7250bfa0-dd57-d59d-62da-5ffe540eb8c8', 'f3ab2114-3037-5119-1375-5ffe5300083d', '59b8fc02-c443-efe3-2830-5fe9912f396d', 80, '2021-01-18 02:17:49', 0),
('726846f5-6780-eb8a-8721-5ffe569cb33d', '860158ee-3501-2093-b810-5ffe567b916e', '5d74330e-218f-2dee-ea38-5fe9913e73a3', -99, '2021-01-18 02:20:17', 0),
('7276870c-430a-510f-eb50-5ffe5749cf71', '857d3817-1929-a617-ad2c-5ffe57175f84', '8d914baf-1423-7020-8944-5fe9911e99af', -99, '2021-01-18 02:18:59', 0),
('7276babf-4115-cc69-e94a-6004f0d44168', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b1a64d3e-879f-53ba-d1b5-5fe991bc50df', 75, '2021-01-18 02:21:17', 0),
('729ca7db-6c91-36f8-e122-6004f0e000d1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '597578a9-e100-d14a-98a9-5fe991cb2926', 75, '2021-01-18 02:23:05', 0),
('72a1c162-25e8-9934-98fe-5ffe5775220d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '70b85345-f9e6-4479-50bf-5fe991d4f6ee', 80, '2021-01-18 02:21:56', 0),
('72ae8d1b-81b7-e777-cd69-5ffe54a2eb10', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5d677e95-6da6-cd45-cd5c-5fe991187363', 80, '2021-01-18 02:17:49', 0),
('72b1668c-ba77-418b-dcb1-5ffe5363dd66', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '679d59ba-8e91-1b1a-d6c8-5fe991802c2c', 90, '2021-01-13 01:58:24', 0),
('72c7e269-5dce-2e3d-677b-5ffe5691c99b', '860158ee-3501-2093-b810-5ffe567b916e', '5a65a785-eedd-5dce-c5c8-5fe991bddcae', 80, '2021-01-18 02:20:17', 0),
('72d0e73b-0e76-b06a-10e9-5ffe574ebecb', '857d3817-1929-a617-ad2c-5ffe57175f84', '882106df-3bf3-d817-5575-5fe9914d26eb', 75, '2021-01-18 02:18:59', 0),
('72e6a153-4f14-7aa8-5210-6004f05a95ac', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b0a335f6-ec5f-19f1-4914-5fe991384431', -99, '2021-01-18 02:21:17', 0),
('72ef8e6b-7511-7b96-4e10-6004f0093edf', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5c10a0c5-ddae-9e33-afae-5fe991ed07ff', 75, '2021-01-18 02:23:05', 0),
('7301db48-bead-dade-1a3a-5ffe549535fb', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5c5c0d7a-9ed8-6e33-e3ff-5fe9913458d5', -99, '2021-01-18 02:17:49', 0),
('73187b1e-580a-364b-8381-5ffe57af5abb', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6ff6bc3b-22a7-25f3-b41a-5fe9917a810d', -99, '2021-01-18 02:21:56', 0),
('73357f08-ca1a-286d-9b0e-5ffe570cf46c', '857d3817-1929-a617-ad2c-5ffe57175f84', '66ca2eb6-2154-1395-dd3a-5fe991a1c703', -98, '2021-01-18 02:18:59', 0),
('7336788f-af0c-f910-7300-5ffe537358fd', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '66b44762-ea3b-234b-6f81-5fe9919fa9b5', 90, '2021-01-13 01:58:24', 0),
('73380920-df82-5be1-92cc-5ffe564b2d2d', '860158ee-3501-2093-b810-5ffe567b916e', '5f443fd1-639b-ec49-1e45-5fe9911db0d0', -99, '2021-01-18 02:20:17', 0),
('73490a44-6c5b-136e-126f-6004f070e2a1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5b413545-d4fd-c9b7-d6d2-5fe991c152ad', -99, '2021-01-18 02:23:05', 0),
('73559af6-15f8-79a5-3f77-6004f006ea6e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ada0ada6-a1ca-ffb8-7957-5fe991054b82', 75, '2021-01-18 02:21:17', 0),
('7363407c-07a2-94bb-4acf-5ffe5444fac8', 'f3ab2114-3037-5119-1375-5ffe5300083d', '58b5e7b3-a7a3-d9be-d92a-5fe991e6fead', 80, '2021-01-18 02:17:49', 0),
('7382d1fb-b584-da4a-8ea1-5ffe5724f312', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6d9aa8e5-15b0-7074-59f5-5fe991e77181', 80, '2021-01-18 02:21:56', 0),
('738eb6cc-cc82-70f7-7a68-5ffe57d57e76', '857d3817-1929-a617-ad2c-5ffe57175f84', '6a84c729-64b1-eea6-96e2-5fe9919c2ee3', 75, '2021-01-18 02:18:59', 0),
('739798f9-7ec1-3f8a-8351-5ffe53011cf9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '697557a6-ce3a-5b71-4d6d-5fe9912db974', 90, '2021-01-13 01:58:24', 0),
('73a507c9-df4f-8ab7-14f3-6004f0825875', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '58a5dcde-f29e-9c98-9c07-5fe991eb4315', 75, '2021-01-18 02:23:05', 0),
('73a9130b-4d36-7163-0bed-5ffe56fedb79', '860158ee-3501-2093-b810-5ffe567b916e', '598abca7-4b6e-cb2b-644b-5fe991850bfd', 80, '2021-01-18 02:20:17', 0),
('73be9a1c-d0cb-5f8f-5fa1-5ffe5437b516', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5e7e6ad5-ffdb-5962-fda0-5fe99175ae99', -99, '2021-01-18 02:17:49', 0),
('73c44eee-8fc5-3207-0ce5-6004f0a76592', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b29b67bb-1554-6f56-3284-5fe991a5bebc', -99, '2021-01-18 02:21:17', 0),
('73eb8bce-d0d7-0b69-b6e3-5ffe57eed34c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7195a6d5-a70c-c709-6fc4-5fe991771207', -99, '2021-01-18 02:21:56', 0),
('73ffce25-b273-dac0-e48c-5ffe5775c1db', '857d3817-1929-a617-ad2c-5ffe57175f84', '699a76dc-beed-8aa3-4142-5fe9916ff8ae', 75, '2021-01-18 02:18:59', 0),
('740688af-b8c4-ce7b-f0d7-5ffe53b0f0d0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6874426e-93c9-cd44-7589-5fe991e044e2', 90, '2021-01-13 01:58:24', 0),
('740b5d5b-7ad1-1091-63c6-6004f0bb48da', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5cdd1a92-d464-520e-afab-5fe991d72da7', -99, '2021-01-18 02:23:05', 0),
('740f19e4-8931-0a39-b4ba-5ffe56f7204a', '860158ee-3501-2093-b810-5ffe567b916e', '56662706-64d1-1b2a-90f5-5fe991343b9f', -98, '2021-01-18 02:20:17', 0),
('741d334b-65af-1d05-8315-5ffe54ced09a', 'f3ab2114-3037-5119-1375-5ffe5300083d', '57b9ea58-c683-abc5-923c-5fe991836af4', 80, '2021-01-18 02:17:49', 0),
('743195de-45a5-61d0-9f92-6004f0098fb6', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'aca0daac-a0ad-5952-f974-5fe991c6a958', 75, '2021-01-18 02:21:17', 0),
('744dae92-56ee-7692-a181-5ffe5785d976', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6cc3fc48-e397-50dc-68d3-5fe99145e426', 80, '2021-01-18 02:21:56', 0),
('74673d14-7392-3e48-0506-5ffe578f845b', '857d3817-1929-a617-ad2c-5ffe57175f84', '6c6ea30f-0a8a-f174-e2f7-5fe99156d24f', 75, '2021-01-18 02:18:59', 0),
('7469d6e6-454e-6d3c-94ba-5ffe53cfdff3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '65b8c1f5-c153-f472-071a-5fe991ea3090', 90, '2021-01-13 01:58:24', 0),
('746eb5e8-9319-3bf0-54d2-6004f0da2e66', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '57c5b394-b150-f1c0-2a99-5fe9918738a0', 75, '2021-01-18 02:23:05', 0),
('7478f2cd-aadc-ddf2-3c10-5ffe569bc7c6', '860158ee-3501-2093-b810-5ffe567b916e', '5b3d119e-597c-04c4-ac45-5fe991493c92', 80, '2021-01-18 02:20:17', 0),
('7479dd4a-22aa-7b5b-1e53-5ffe544ffe3d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '81bf9049-9f65-48bd-e093-5fe991d0ab74', -98, '2021-01-18 02:17:49', 0),
('74a2b8d6-b275-7b77-39c3-6004f08012d0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd56c52df-f267-856e-3fa9-5fe99172596b', -98, '2021-01-18 02:21:17', 0),
('74b9fa25-ccc3-724f-ff5d-5ffe571591a2', '857d3817-1929-a617-ad2c-5ffe57175f84', '6b7f9d3c-48c8-36f7-80eb-5fe9918dc431', -99, '2021-01-18 02:18:59', 0),
('74bbacb0-5718-2bac-ed20-5ffe57584cc1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c4ba2a31-6dbf-61a9-f6b2-5fe99130e025', -98, '2021-01-18 02:21:56', 0),
('74cfbf17-ff72-1242-096d-5ffe533115ee', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6a687475-1a50-917d-75d3-5fe9918a989d', 90, '2021-01-13 01:58:24', 0),
('74d3fa36-a1b8-8cd9-e372-6004f052562f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'f6190ea9-60c9-f596-ab4c-5fe99100fa2d', -98, '2021-01-18 02:23:05', 0),
('74e2c62e-9b39-3ba5-ea60-5ffe54e92089', 'f3ab2114-3037-5119-1375-5ffe5300083d', '84cd1e95-c8d9-fe85-21d4-5fe9911b9751', 80, '2021-01-18 02:17:49', 0),
('74e794e5-5605-3419-a742-5ffe56f7bf13', '860158ee-3501-2093-b810-5ffe567b916e', '59b8fc02-c443-efe3-2830-5fe9912f396d', 80, '2021-01-18 02:20:17', 0),
('74f89e08-768f-86c4-ac1b-6004f0c0fa12', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'access', -98, '2021-01-18 02:21:17', 0),
('751d4ef6-10a4-561b-a695-6004f0a596bf', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd930d33b-3c66-1ae9-dbc8-5fe9911efa1d', 75, '2021-01-18 02:21:17', 0),
('75230e01-e126-dc09-4244-5ffe5332b578', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b0a335f6-ec5f-19f1-4914-5fe991384431', 90, '2021-01-13 01:58:24', 0),
('7523635c-593a-a464-29b5-5ffe57a33f26', '857d3817-1929-a617-ad2c-5ffe57175f84', '68ae731f-f0cb-25b6-553f-5fe9918a1892', 75, '2021-01-18 02:18:59', 0),
('752ea359-64b5-e0f9-4262-5ffe573d5a97', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c817a692-cbd3-c46c-ea1e-5fe991773119', 80, '2021-01-18 02:21:56', 0),
('7533e061-d517-4fba-ba5d-6004f0cdcf91', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '1308e66b-3607-36e4-94d1-5fe991734e49', 75, '2021-01-18 02:23:05', 0),
('7542c2fe-7c36-d0ef-4722-5ffe54d1815f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '840d2deb-8dd9-b8da-cf64-5fe991c7c617', 80, '2021-01-18 02:17:49', 0),
('7542c9e0-b77d-5156-e0cf-5ffe538f61fc', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '64bbaf2e-7501-4095-0af1-5fe99123fba6', 90, '2021-01-13 01:58:24', 0),
('7549403d-3b97-59cc-4838-5ffe56cbaf30', '860158ee-3501-2093-b810-5ffe567b916e', '5d677e95-6da6-cd45-cd5c-5fe991187363', 80, '2021-01-18 02:20:17', 0),
('757e580d-97a4-8c79-fefe-5ffe57ac8124', '857d3817-1929-a617-ad2c-5ffe57175f84', '6d5fbf99-0522-690a-dabb-5fe99188c4b5', -99, '2021-01-18 02:18:59', 0),
('7592bdef-5f2d-6e41-92a2-6004f089cbdd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd8401e23-96b1-5ad2-a8e2-5fe991eb9081', 75, '2021-01-18 02:21:17', 0),
('759bbea1-83ad-e7ba-42ab-6004f0caab94', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '12446ca6-06bf-d0e7-96a9-5fe99159f62f', 75, '2021-01-18 02:23:05', 0),
('75a7938c-0ee6-ca1d-59f9-5ffe54cfc48a', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8688f3b6-4e6f-c7ac-44dd-5fe9911a1bf1', 80, '2021-01-18 02:17:49', 0),
('75a83f41-0116-2830-cff9-5ffe57f8258b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c742c253-2a4a-cfac-4436-5fe991448121', 80, '2021-01-18 02:21:56', 0),
('75abf322-7a04-6b44-e14f-5ffe5619e3f6', '860158ee-3501-2093-b810-5ffe567b916e', '5c5c0d7a-9ed8-6e33-e3ff-5fe9913458d5', -99, '2021-01-18 02:20:17', 0),
('75b0d50a-5f60-0730-b38f-5ffe5311e291', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '21494c25-046f-a116-25b0-5fe991364750', 89, '2021-01-13 01:58:24', 0),
('75e6b140-a8e3-179e-e238-5ffe57b02357', '857d3817-1929-a617-ad2c-5ffe57175f84', '67aea666-6768-bbe9-f646-5fe99150edf5', 75, '2021-01-18 02:18:59', 0),
('760106f4-88f7-2d39-62b3-6004f0ad5f41', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'f6190ea9-60c9-f596-ab4c-5fe99100fa2d', -98, '2021-01-18 02:21:17', 0),
('7605bb7c-8a07-8bf7-57e9-5ffe544c2cde', 'f3ab2114-3037-5119-1375-5ffe5300083d', '85a8e890-cfc8-9eaa-179b-5fe991c189f0', -99, '2021-01-18 02:17:49', 0),
('76092173-a782-3546-d2a6-6004f0d786d2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'daecfb75-ef5d-32cb-1a04-5fe991f95e2e', 75, '2021-01-18 02:21:17', 0),
('7615e2c3-8ea4-d35b-bf0d-5ffe56ecadd1', '860158ee-3501-2093-b810-5ffe567b916e', '58b5e7b3-a7a3-d9be-d92a-5fe991e6fead', 80, '2021-01-18 02:20:17', 0),
('7618ffba-9754-895d-ca94-6004f09651bc', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '148c44dd-fa1a-55a5-216a-5fe991e2e075', 75, '2021-01-18 02:23:05', 0),
('761b198b-c205-7d8a-3027-5ffe5729a2cc', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c9bc1c63-7f2d-8a15-9aec-5fe99194e016', 80, '2021-01-18 02:21:56', 0),
('761ec4a2-205a-e0cf-a3db-5ffe530817d3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '249953bb-5a0d-a766-7f72-5fe9911b2910', 90, '2021-01-13 01:58:24', 0),
('764af2f5-0134-9f52-cc6d-5ffe57422ea7', '857d3817-1929-a617-ad2c-5ffe57175f84', '703b9d7c-9838-63ac-6400-5fe991e6bba4', -98, '2021-01-18 02:18:59', 0),
('7664d029-982c-43cf-e35d-5ffe5469ec48', 'f3ab2114-3037-5119-1375-5ffe5300083d', '835cd764-a822-7a1d-c7c4-5fe99193125d', 80, '2021-01-18 02:17:49', 0),
('76733b99-c201-0e85-1725-5ffe56aa2bfd', '860158ee-3501-2093-b810-5ffe567b916e', '5e7e6ad5-ffdb-5962-fda0-5fe99175ae99', -99, '2021-01-18 02:20:17', 0),
('767d6769-a1d3-6280-dc5a-5ffe53a61840', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '23bf9702-a009-31db-4218-5fe9918b8d26', 90, '2021-01-13 01:58:24', 0),
('767db5a1-c5d7-4175-58e1-6004f08edb25', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'da0081af-e614-ee32-3eae-5fe991e16020', -99, '2021-01-18 02:21:17', 0),
('768b0302-29dd-610c-9e6f-5ffe574c8e8b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c8e91789-4d8c-33fa-9dc3-5fe9917dcaac', -99, '2021-01-18 02:21:56', 0),
('768e1573-ac85-f7f7-6134-6004f0fc42a5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '13ca2543-865e-d690-0faa-5fe991ac9662', -99, '2021-01-18 02:23:05', 0),
('769a0bd4-9e52-78d7-38bc-5ffe564221ef', '860158ee-3501-2093-b810-5ffe567b916e', '2229f60f-c756-dde0-77b7-5fe991eeb405', 80, '2021-01-18 02:20:17', 0),
('76a675ef-3667-7b3e-cf51-5ffe57baccaa', '857d3817-1929-a617-ad2c-5ffe57175f84', '73df2ce8-8c3e-acfa-bdd7-5fe9913b4b46', 75, '2021-01-18 02:18:59', 0),
('76c0877e-eb8f-3c91-b191-5ffe54767047', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8762c156-1605-4d19-cf81-5fe991f6dbaf', -99, '2021-01-18 02:17:49', 0),
('76dc3cdf-2110-43a7-7631-5ffe564de4a3', '860158ee-3501-2093-b810-5ffe567b916e', '57b9ea58-c683-abc5-923c-5fe991836af4', 80, '2021-01-18 02:20:17', 0),
('76e0a81c-3ea5-2c69-d59f-5ffe53b58c70', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '263b37b8-4d91-690e-c9b7-5fe991906e03', 90, '2021-01-13 01:58:24', 0),
('76efbb27-576a-ee39-2995-6004f0a1bde6', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd75b9bea-abb6-2458-cbb1-5fe991baf382', 75, '2021-01-18 02:21:17', 0),
('76f23223-fd61-426d-c4f5-6004f05a8047', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '116627b2-895a-e79c-9ab8-5fe991da953f', 75, '2021-01-18 02:23:05', 0),
('7702428a-7c2f-6b4e-c9ad-5ffe5769bb1c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c670d173-301d-7eff-dfc6-5fe9912f92bb', 80, '2021-01-18 02:21:56', 0),
('770816bd-6256-c011-a91d-5ffe574ace34', '857d3817-1929-a617-ad2c-5ffe57175f84', '7328b654-183a-be94-e0a2-5fe991dbec80', 75, '2021-01-18 02:18:59', 0),
('771a0572-3be2-6a5b-1a94-5ffe5419b456', 'f3ab2114-3037-5119-1375-5ffe5300083d', '82a3bc12-4b9d-4c45-1469-5fe9918ccd58', 80, '2021-01-18 02:17:49', 0),
('7742f1d7-10f7-9870-4e92-5ffe564fea14', '860158ee-3501-2093-b810-5ffe567b916e', '81bf9049-9f65-48bd-e093-5fe991d0ab74', -98, '2021-01-18 02:20:17', 0),
('774401b7-f55f-747d-0264-5ffe57d26db2', '857d3817-1929-a617-ad2c-5ffe57175f84', '9d4402db-4a7c-87a3-5440-5fe991973b23', 75, '2021-01-18 02:18:59', 0),
('774475ba-8ff9-fc5a-cbc5-6004f07fb2eb', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'delete', 75, '2021-01-18 02:21:17', 0),
('774610e5-02a3-8e65-6265-5ffe532c07b0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '256c3b35-e784-5ec4-a8ae-5fe991aa965b', 90, '2021-01-13 01:58:24', 0),
('774e01a9-c73c-e419-8297-5ffe54b5a86c', 'f3ab2114-3037-5119-1375-5ffe5300083d', '221b12f0-5d05-330c-b7a3-5fe9912efe39', -98, '2021-01-18 02:17:49', 0),
('77569b6c-c239-a98a-3c41-6004f09f90cc', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '1552b40c-ce5c-ec8d-5deb-5fe991cf6636', -99, '2021-01-18 02:23:05', 0),
('77600016-33ce-9851-8107-6004f042f53c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'dbd5aabe-290e-a221-dfee-5fe9917ed553', -99, '2021-01-18 02:21:17', 0),
('77677641-7f81-b3bc-57bf-5ffe570b8ab2', '857d3817-1929-a617-ad2c-5ffe57175f84', '75a7db3b-7d01-17f4-afc6-5fe991d9dfd9', 75, '2021-01-18 02:18:59', 0),
('7769d307-b184-f91b-cde9-5ffe57b33a4c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'caa6f5eb-c27c-81f2-44c4-5fe99148c11a', -99, '2021-01-18 02:21:56', 0),
('777b4071-0aa7-acfb-4753-5ffe548b8915', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a63ff7b8-be9f-5c3d-973a-5fe991a641cd', -98, '2021-01-18 02:17:49', 0),
('77a03060-8f89-aaa5-68db-5ffe566e4c70', '860158ee-3501-2093-b810-5ffe567b916e', '84cd1e95-c8d9-fe85-21d4-5fe9911b9751', 80, '2021-01-18 02:20:17', 0),
('77af86bd-bb53-83a5-82ab-5ffe535ba263', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '22f409ce-6261-ffc6-a5ea-5fe991893cab', 90, '2021-01-13 01:58:24', 0),
('77b2fa58-2d1f-0d1c-4cdb-6004f0e452d0', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '107c132e-ddf3-80ad-ef1e-5fe991b822fe', 75, '2021-01-18 02:23:05', 0),
('77bb4dfa-14ae-6793-d964-6004f05af084', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'edit', 75, '2021-01-18 02:21:17', 0),
('77d0c888-23aa-03b1-441b-5ffe57177ca5', '857d3817-1929-a617-ad2c-5ffe57175f84', '74c25699-1cb1-ce6d-21b8-5fe9919bc181', -99, '2021-01-18 02:18:59', 0),
('77d2316f-27aa-da71-1795-5ffe549a8536', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a9fe76ce-8d27-193f-a8c5-5fe991379ec8', 80, '2021-01-18 02:17:49', 0),
('77d4d8da-208d-3a10-532b-6004f0a246ee', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd65faf8c-dd3c-b418-dbef-5fe99179789c', 75, '2021-01-18 02:21:17', 0),
('77eae11f-02d9-34c5-3712-5ffe571f4e31', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c59c320d-1251-19ea-0062-5fe991e0eaf9', 80, '2021-01-18 02:21:56', 0),
('780a7f31-5a56-633a-8cf9-5ffe5669b679', '860158ee-3501-2093-b810-5ffe567b916e', '840d2deb-8dd9-b8da-cf64-5fe991c7c617', 80, '2021-01-18 02:20:17', 0),
('781cf3f8-15e0-e5f3-19e5-5ffe532e1c61', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2707d3f2-dfdd-5b66-eb98-5fe991924eff', 90, '2021-01-13 01:58:24', 0),
('782380e2-30cb-a393-0dff-6004f01ee89b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '32fdecc0-1055-94d4-259e-5fe991ec34ed', -98, '2021-01-18 02:23:05', 0),
('7829e68d-0e35-2e2e-1890-5ffe578ab9c5', '857d3817-1929-a617-ad2c-5ffe57175f84', '72393ce0-595f-0405-6bcd-5fe991546f2b', 75, '2021-01-18 02:18:59', 0),
('782c4280-6504-f9a2-4a38-5ffe54543103', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a913220b-58c3-edb8-9b22-5fe991ee39a0', 80, '2021-01-18 02:17:49', 0),
('784775c1-5ef3-b942-b40f-6004f0430ef4', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '56662706-64d1-1b2a-90f5-5fe991343b9f', -98, '2021-01-18 02:21:17', 0),
('78487485-9432-21f3-d87b-6004f0f134eb', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'export', 75, '2021-01-18 02:21:17', 0),
('785bc72d-88bb-7d9b-7203-5ffe5768cca0', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9b5bed87-0888-81f7-f9b9-5fe9917ea434', -98, '2021-01-18 02:21:56', 0),
('786be155-1c9e-ef66-61ae-5ffe56ed9cf4', '860158ee-3501-2093-b810-5ffe567b916e', '8688f3b6-4e6f-c7ac-44dd-5fe9911a1bf1', 80, '2021-01-18 02:20:17', 0),
('78779472-30c3-73d4-f12c-5ffe535c9791', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2229f60f-c756-dde0-77b7-5fe991eeb405', 90, '2021-01-13 01:58:24', 0),
('788ac54c-33ed-a8b0-0523-5ffe5473d363', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ab932356-a060-c695-6bce-5fe9914a18c1', 80, '2021-01-18 02:17:49', 0),
('7890e54f-ff64-94a0-ab78-5ffe577e4905', '857d3817-1929-a617-ad2c-5ffe57175f84', '76986dab-ff17-bc47-8526-5fe9911c5da7', -99, '2021-01-18 02:18:59', 0),
('7891aa37-7611-a6e9-4b37-6004f0c9dd20', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '36e3734f-c2aa-d169-9eba-5fe9914c6819', 75, '2021-01-18 02:23:05', 0),
('78b7f976-914c-e8f6-c5bc-6004f05a1ad1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5b3d119e-597c-04c4-ac45-5fe991493c92', 75, '2021-01-18 02:21:17', 0),
('78b80303-6c4c-3ba1-1d42-5ffe575f8210', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9f8d8289-a870-70f7-ebc9-5fe99150962b', 80, '2021-01-18 02:21:56', 0),
('78d18db2-921c-953d-e610-5ffe5635e27f', '860158ee-3501-2093-b810-5ffe567b916e', '85a8e890-cfc8-9eaa-179b-5fe991c189f0', -99, '2021-01-18 02:20:17', 0),
('78e5097a-c893-2359-4c56-5ffe5339af0b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '221b12f0-5d05-330c-b7a3-5fe9912efe39', 89, '2021-01-13 01:58:24', 0),
('78e671e1-2bf6-7633-c3cc-5ffe54497ce4', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'aac9f2e0-a504-9c9e-29de-5fe991d6c366', -99, '2021-01-18 02:17:49', 0),
('78f3f19a-f603-65b7-f10c-6004f0b7f31d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'import', -99, '2021-01-18 02:21:17', 0),
('78fd2a11-0bf0-4f4a-fd97-6004f0b22853', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '35dd7f1a-b6c6-82b5-ca15-5fe9916efb89', 75, '2021-01-18 02:23:05', 0),
('79015303-4888-29be-4d4b-5ffe57b8b679', '857d3817-1929-a617-ad2c-5ffe57175f84', '715bbbc1-3fca-b78e-ff62-5fe991520d0f', 75, '2021-01-18 02:18:59', 0),
('792327ec-a1bf-d958-c1cc-6004f0a0f654', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '59b8fc02-c443-efe3-2830-5fe9912f396d', 75, '2021-01-18 02:21:17', 0),
('792c67d9-4486-cd4f-e4f5-5ffe57dc91d2', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9e6892d0-cea9-a9af-2074-5fe991c2817b', 80, '2021-01-18 02:21:56', 0),
('794051ed-a96d-bac7-a841-5ffe56cb7b48', '860158ee-3501-2093-b810-5ffe567b916e', '835cd764-a822-7a1d-c7c4-5fe99193125d', 80, '2021-01-18 02:20:17', 0),
('7946755a-7f0d-afa4-1bcd-5ffe546641c4', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a8249c4e-35b6-f389-68a0-5fe9919e2360', 80, '2021-01-18 02:17:49', 0),
('7954a2fb-f154-d49b-5666-5ffe5359ae32', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '261fe43f-ae70-119e-7363-5fe991f3234f', 90, '2021-01-13 01:58:24', 0),
('79583b52-1f21-1ce4-daca-5ffe5716a9d8', '857d3817-1929-a617-ad2c-5ffe57175f84', '4a61c49f-2cdb-e7e6-0f51-5fe9913f40c7', -98, '2021-01-18 02:18:59', 0),
('795f5dfe-ab4f-076e-4b85-6004f04d2bcd', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '38b65870-c26f-4a05-b2e8-5fe991357e50', 75, '2021-01-18 02:23:05', 0),
('799988b0-323e-4b30-65d6-5ffe571b2153', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a178b8fc-f7de-94c3-87a0-5fe9910e6673', 80, '2021-01-18 02:21:56', 0),
('799b9b5d-493e-e465-e752-6004f0e08b98', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5d677e95-6da6-cd45-cd5c-5fe991187363', 75, '2021-01-18 02:21:17', 0),
('799cd9ea-9438-5a32-c0b4-5ffe56a48b15', '860158ee-3501-2093-b810-5ffe567b916e', '8762c156-1605-4d19-cf81-5fe991f6dbaf', -99, '2021-01-18 02:20:17', 0),
('79a99ce7-bcd3-04f8-08a1-5ffe542e54d6', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ac6b9b7c-2168-81ca-4234-5fe991a96a8a', -99, '2021-01-18 02:17:49', 0),
('79b1c5c1-1c61-a7e3-0fc8-6004f0237b49', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'list', 75, '2021-01-18 02:21:17', 0),
('79b9f014-1e0f-3229-955b-5ffe574a4e76', '857d3817-1929-a617-ad2c-5ffe57175f84', '4e1109c8-7876-d60e-a048-5fe991d7c4ae', 75, '2021-01-18 02:18:59', 0),
('79c2344d-b519-6108-ad60-6004f08f53d1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '37be1412-83bc-71de-9e8a-5fe9917743e0', -99, '2021-01-18 02:23:05', 0),
('79d9d292-f59e-6701-64d6-5ffe531f6459', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '25330da0-6d1c-e099-5248-5fe991488f96', 90, '2021-01-13 01:58:24', 0),
('7a042c48-ec75-107c-f88c-5ffe561d8d43', '860158ee-3501-2093-b810-5ffe567b916e', '82a3bc12-4b9d-4c45-1469-5fe9918ccd58', 80, '2021-01-18 02:20:17', 0),
('7a0c7bc1-2909-9d45-fc1c-5ffe54b42425', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a73cae80-ffea-1db9-b82e-5fe9918e160a', 80, '2021-01-18 02:17:49', 0),
('7a0fc7a4-b1b8-85e3-0e7c-6004f05b8d9a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5c5c0d7a-9ed8-6e33-e3ff-5fe9913458d5', -99, '2021-01-18 02:21:17', 0),
('7a159df9-c199-529b-45e9-5ffe5707ef56', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a07bf528-55f3-b6d3-38a6-5fe991182187', -99, '2021-01-18 02:21:56', 0),
('7a190c50-2dc3-7c53-7a25-5ffe576f1695', '857d3817-1929-a617-ad2c-5ffe57175f84', '4d1fe09d-5f13-4da2-9290-5fe9912f736b', 75, '2021-01-18 02:18:59', 0),
('7a1fa7df-a11c-bba5-83dc-6004f012b538', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '34ecb272-0044-c320-2fce-5fe991914a29', 75, '2021-01-18 02:23:05', 0),
('7a2c141e-75b8-7af7-18e9-6004f00ce2a3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'massupdate', -99, '2021-01-18 02:21:17', 0),
('7a3de651-f4e4-3dbd-589e-5ffe533f9e10', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '27da2e31-71e5-6694-1bad-5fe9910245e3', 90, '2021-01-13 01:58:24', 0),
('7a6a2256-ca23-b46d-d731-5ffe567e993e', '860158ee-3501-2093-b810-5ffe567b916e', 'a63ff7b8-be9f-5c3d-973a-5fe991a641cd', -98, '2021-01-18 02:20:17', 0),
('7a6a2cde-dbd5-acbb-420b-5ffe5450c41b', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'aa4ac08d-1c76-f179-ae60-5fe99105b293', -98, '2021-01-18 02:17:49', 0),
('7a757dce-6680-d7ad-f448-6004f0725e0f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '58b5e7b3-a7a3-d9be-d92a-5fe991e6fead', 75, '2021-01-18 02:21:17', 0),
('7a8105ad-f013-279c-c5b0-6004f0d28d37', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '39cb74f6-1cc1-cca4-c76e-5fe991963598', -99, '2021-01-18 02:23:05', 0),
('7a85a755-ac31-6467-d264-5ffe5712b73c', '857d3817-1929-a617-ad2c-5ffe57175f84', '4fd10984-05a7-6cfa-a22a-5fe991fbc4fa', 75, '2021-01-18 02:18:59', 0),
('7a8b206f-8e8a-4d7e-9a3b-5ffe57b8869f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9d7799ae-ee03-d123-2003-5fe991750155', 80, '2021-01-18 02:21:56', 0),
('7a9ee0ad-77a2-12ab-8a7b-5ffe5381b18e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2706b8b1-f8f3-607b-c2f7-5fe991057a1c', 90, '2021-01-13 01:58:24', 0),
('7ac88374-187f-e4bf-342b-5ffe54411ce5', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ae303a10-554a-204f-6954-5fe991d9dbeb', 80, '2021-01-18 02:17:49', 0),
('7ad5591e-e2d3-adf9-b3d3-6004f017da9b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5e7e6ad5-ffdb-5962-fda0-5fe99175ae99', -99, '2021-01-18 02:21:17', 0),
('7ad70a46-e784-3aea-0acd-5ffe56b813fd', '860158ee-3501-2093-b810-5ffe567b916e', 'a9fe76ce-8d27-193f-a8c5-5fe991379ec8', 80, '2021-01-18 02:20:17', 0),
('7adff4fe-8e06-7e2a-93a2-6004f086fd83', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'view', 75, '2021-01-18 02:21:17', 0),
('7ae34072-1da9-e64b-9db1-6004f05175bb', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '33f78e57-81f4-699f-4fc6-5fe991f2bfb1', 75, '2021-01-18 02:23:05', 0),
('7aed9015-14e9-c568-8bb8-5ffe5724ee81', '857d3817-1929-a617-ad2c-5ffe57175f84', '4efb3cf7-9b18-608e-0873-5fe991601809', -99, '2021-01-18 02:18:59', 0),
('7b061029-6cd1-2f9b-66f6-5ffe57c1b2d0', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a274c148-9851-b79f-4ff2-5fe9911583c0', -99, '2021-01-18 02:21:56', 0),
('7b0b44fa-634a-320b-cb79-5ffe5387bffe', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '24338af2-5403-8efd-9c15-5fe991863579', 90, '2021-01-13 01:58:24', 0),
('7b1d00e4-c7ef-4626-fdd5-5ffe53a4be5d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ada0ada6-a1ca-ffb8-7957-5fe991054b82', 90, '2021-01-13 01:58:24', 0),
('7b2d1f8f-a758-5414-ac68-5ffe561b0731', '860158ee-3501-2093-b810-5ffe567b916e', 'a913220b-58c3-edb8-9b22-5fe991ee39a0', 80, '2021-01-18 02:20:17', 0),
('7b357de4-329e-c55c-df57-5ffe544d239e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ad33c349-59d2-2345-b811-5fe99100db80', 80, '2021-01-18 02:17:49', 0),
('7b3b943f-9869-d722-31e3-6004f0e11a1c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '57b9ea58-c683-abc5-923c-5fe991836af4', 75, '2021-01-18 02:21:17', 0),
('7b445bec-7b48-679c-3810-5ffe577919dd', '857d3817-1929-a617-ad2c-5ffe57175f84', '4c37daab-be92-019b-381d-5fe99196a7ca', 75, '2021-01-18 02:18:59', 0),
('7b46a7cc-2597-b37a-2f93-6004f03bb3e9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'eefceb17-42d8-076b-4008-5fe991e16df6', 89, '2021-01-18 02:23:05', 0),
('7b709714-61a4-06e0-9f6a-5ffe531d1c77', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '28e3ff10-5af4-07e1-fa1c-5fe9914d87b3', 90, '2021-01-13 01:58:24', 0),
('7b750537-69ac-0c8f-2098-5ffe57378a41', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9c5897c1-c701-76d7-a532-5fe991a24183', 80, '2021-01-18 02:21:56', 0),
('7b82da3e-e1f4-d057-65cc-6004f0608249', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5fed6e74-14c1-5041-37b3-5fe991c316b0', 89, '2021-01-18 02:21:17', 0),
('7b97d300-c10d-d775-7700-5ffe56d1dbb0', '860158ee-3501-2093-b810-5ffe567b916e', 'ab932356-a060-c695-6bce-5fe9914a18c1', 80, '2021-01-18 02:20:17', 0),
('7b98842f-e06e-dbbe-9656-5ffe54226147', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b03796be-b258-728a-c41b-5fe991c3b941', 80, '2021-01-18 02:17:49', 0),
('7b9ffed8-5c08-cea0-04ad-6004f0987f8a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '825521ce-f146-d6f7-410e-5fe991c03d07', -98, '2021-01-18 02:21:17', 0),
('7ba35843-fb4b-24da-dddf-5ffe577509d4', '857d3817-1929-a617-ad2c-5ffe57175f84', '50a7c395-84c7-a636-8650-5fe9914a4078', -99, '2021-01-18 02:18:59', 0),
('7bb1e2de-e6a5-45a7-9772-6004f0b03a06', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '16a00661-6e26-a18d-9739-5fe9917fedee', 75, '2021-01-18 02:23:05', 0),
('7bd64e0b-d926-4a7a-2675-5ffe5723fee7', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c218f0fb-e18c-1a03-5e56-5fe991fdff67', -98, '2021-01-18 02:21:56', 0),
('7bdcf051-3962-594d-f582-5ffe53284cfe', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '23550dea-242e-e641-c100-5fe9914c1d52', 90, '2021-01-13 01:58:24', 0),
('7bf8c24f-812e-4be4-8b44-5ffe548fb40f', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'af35032f-561c-58f6-3331-5fe991c5da84', -99, '2021-01-18 02:17:49', 0),
('7bf9cb69-f7bf-abcb-585c-5ffe5650e5d6', '860158ee-3501-2093-b810-5ffe567b916e', 'aac9f2e0-a504-9c9e-29de-5fe991d6c366', -99, '2021-01-18 02:20:17', 0),
('7c042153-9f97-7aaa-1428-6004f09306aa', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '85f590f8-8305-91ca-f226-5fe9913338cd', 75, '2021-01-18 02:21:17', 0),
('7c0ddab8-a1e3-0b1a-318c-5ffe5706c3ad', '857d3817-1929-a617-ad2c-5ffe57175f84', '4b4a59af-cb8a-d026-7057-5fe991880a95', 75, '2021-01-18 02:18:59', 0),
('7c19e4a3-eb85-80d1-58ed-6004f0bb2358', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'f36d2301-85f6-e277-dd2b-5fe991260aba', 75, '2021-01-18 02:23:05', 0),
('7c21749b-f883-0ad2-1bd1-6004f0d10911', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '63536587-8335-30aa-cab1-5fe991afae1b', 75, '2021-01-18 02:21:17', 0),
('7c3f0a8a-440c-dccb-1b18-5ffe571bba19', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c65b6579-4b12-0fc1-805f-5fe991a8c9e0', 80, '2021-01-18 02:21:56', 0),
('7c44d087-0de3-cf5a-1ea2-5ffe532bf68c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd2d0a027-3572-d6ed-c8b6-5fe991cb1f5d', 89, '2021-01-13 01:58:24', 0),
('7c565163-0a14-e92f-6d00-5ffe5429f46a', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ac57ede7-ba37-daae-9348-5fe991a599f2', 80, '2021-01-18 02:17:49', 0),
('7c6105b6-7818-19de-ff14-5ffe567f0d6e', '860158ee-3501-2093-b810-5ffe567b916e', 'a8249c4e-35b6-f389-68a0-5fe9919e2360', 80, '2021-01-18 02:20:17', 0),
('7c643cb0-87d7-71d5-2e90-6004f0acd203', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '85190e9c-7f1d-56c1-64dc-5fe991744f5d', 75, '2021-01-18 02:21:17', 0),
('7c78e957-d1a6-7c33-7048-6004f036804d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4a7205e3-4f54-b385-fcaf-5fe991185158', 75, '2021-01-18 02:23:05', 0),
('7c7c8a13-254d-9634-74df-5ffe57a63116', '857d3817-1929-a617-ad2c-5ffe57175f84', '5890b264-1737-a341-49a7-5fe991cbc6b6', -98, '2021-01-18 02:18:59', 0),
('7cb1e930-9d28-3fdd-b44a-5ffe575b5a73', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c55a7aab-8278-3955-8f2e-5fe991014824', 80, '2021-01-18 02:21:56', 0),
('7cb34a1f-2661-80bd-c065-5ffe54c1aff7', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b12cce2f-60ac-da2e-547b-5fe9919f721c', -99, '2021-01-18 02:17:49', 0),
('7cb71748-60b3-fb6d-7bde-5ffe53a7e6e2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd657cb55-0375-4273-1649-5fe99107f1cd', 90, '2021-01-13 01:58:24', 0),
('7cbfe079-2245-5816-855b-6004f029ac09', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '87865002-90e3-2347-f433-5fe991d3863d', 75, '2021-01-18 02:21:17', 0),
('7cc4f7e4-09ea-5513-597f-5ffe561fff21', '860158ee-3501-2093-b810-5ffe567b916e', 'ac6b9b7c-2168-81ca-4234-5fe991a96a8a', -99, '2021-01-18 02:20:17', 0),
('7ccd9393-bce5-0087-c0a0-6004f0939d90', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6291e723-4e2f-5086-cb7b-5fe991fdeab0', 75, '2021-01-18 02:21:17', 0),
('7cd2e80b-9b62-1832-7a49-6004f057aa54', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '23eb066a-e61e-518d-57a7-5fe9914c6f06', -99, '2021-01-18 02:23:05', 0),
('7ce6cdcf-dacc-089f-3c47-5ffe57b63ee2', '857d3817-1929-a617-ad2c-5ffe57175f84', '5c6868be-c79e-8603-f447-5fe991f1a410', 75, '2021-01-18 02:18:59', 0),
('7d16407a-dc5e-63e6-6159-5ffe54eeb2a6', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ab456744-738b-c720-3322-5fe991b0dab8', 80, '2021-01-18 02:17:49', 0),
('7d18b893-3d2e-ee5d-473f-5ffe53a3f6e6', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd5947f70-5835-9610-af3c-5fe991225042', 90, '2021-01-13 01:58:24', 0),
('7d1ff20b-742b-1193-264e-5ffe5779fd30', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c85bf0a5-3f3a-438b-ba72-5fe9911f220a', 80, '2021-01-18 02:21:56', 0),
('7d202e6c-b9e0-dbb3-7f10-6004f012378d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '86c03eb9-db71-866e-24b8-5fe99141f72d', -99, '2021-01-18 02:21:17', 0),
('7d21a285-9cb8-b4f1-6f05-5ffe56340e73', '860158ee-3501-2093-b810-5ffe567b916e', 'a73cae80-ffea-1db9-b82e-5fe9918e160a', 80, '2021-01-18 02:20:17', 0),
('7d3cd0a0-9d6b-0031-f9da-6004f03c3e43', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'f0ea58c4-6672-6ed8-d368-5fe991b8d600', 75, '2021-01-18 02:23:05', 0),
('7d48be40-50c5-0b16-0865-5ffe579a3636', '857d3817-1929-a617-ad2c-5ffe57175f84', '5b4bd525-74a5-4e81-8c36-5fe991c0bc0d', 75, '2021-01-18 02:18:59', 0),
('7d733ba8-5f0c-43a5-e21c-6004f0a6597b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '650451c3-2e32-4514-5415-5fe991af7c3c', 75, '2021-01-18 02:21:17', 0),
('7d73c074-93bf-700b-50fa-5ffe5427203e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c78e668a-e9c8-187c-1443-5fe991aafc4c', -98, '2021-01-18 02:17:49', 0),
('7d7f4fa4-a9a0-d85b-4893-5ffe56ea77ba', '860158ee-3501-2093-b810-5ffe567b916e', 'aa4ac08d-1c76-f179-ae60-5fe99105b293', -98, '2021-01-18 02:20:17', 0),
('7d80db01-1806-4aec-1e79-6004f09159f0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8444474a-a792-eeeb-47b3-5fe991cd7ddf', 75, '2021-01-18 02:21:17', 0),
('7d8343cf-39b3-8be5-6625-5ffe531660f5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd7ef8dae-256a-1a9b-9486-5fe991f2477f', 90, '2021-01-13 01:58:24', 0),
('7d87a0e8-ee3d-6326-f541-5ffe572e050b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c76062c6-92e2-d529-9a5f-5fe9919350fd', -99, '2021-01-18 02:21:56', 0),
('7d940276-856a-dc51-7579-5ffe56532356', '860158ee-3501-2093-b810-5ffe567b916e', '221b12f0-5d05-330c-b7a3-5fe9912efe39', -98, '2021-01-18 02:20:17', 0),
('7daadacf-7f89-7e6a-f604-5ffe57f19ed1', '857d3817-1929-a617-ad2c-5ffe57175f84', '5e5257f4-8eed-49c9-1704-5fe991dbea8a', 75, '2021-01-18 02:18:59', 0),
('7dabd671-ba06-e822-effc-6004f032fb90', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '63ba06ec-c8c0-814b-4724-5fe991431a0a', -99, '2021-01-18 02:23:05', 0),
('7dcb0f0a-6539-b5aa-27bc-5ffe57539190', '857d3817-1929-a617-ad2c-5ffe57175f84', '9c89e791-8bd0-75ad-edc8-5fe991482910', -99, '2021-01-18 02:18:59', 0),
('7dcf94a0-8826-ca1a-bfc2-5ffe54e92da9', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'cb3e92a9-b63b-131f-c460-5fe9915c6bd2', 80, '2021-01-18 02:17:49', 0),
('7dd90b93-3bb9-8a0a-b9da-5ffe53c9733e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd714ace0-6c07-939c-935a-5fe991f67888', 90, '2021-01-13 01:58:24', 0),
('7de32393-3722-7fd2-b6f3-5ffe56ddc402', '860158ee-3501-2093-b810-5ffe567b916e', 'ae303a10-554a-204f-6954-5fe991d9dbeb', 80, '2021-01-18 02:20:17', 0),
('7de42e8a-724a-4533-3bb6-6004f05ea43a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '884aeb94-31da-b231-1c15-5fe991188c80', -99, '2021-01-18 02:21:17', 0),
('7e04720e-887e-21f2-4d62-5ffe578b2a95', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c466431a-9117-66a5-32d1-5fe991d14198', 80, '2021-01-18 02:21:56', 0),
('7e08916a-c8b2-a829-353a-6004f07fe01e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'f01fc973-d5fe-d3b7-79db-5fe991f5619e', 75, '2021-01-18 02:23:05', 0),
('7e115f59-95f6-0e50-d12d-6004f01e1853', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '642fcb3a-fe50-4dde-f514-5fe99159c799', -99, '2021-01-18 02:21:17', 0),
('7e150de6-5749-3607-f2e1-5ffe57963db1', '857d3817-1929-a617-ad2c-5ffe57175f84', '5d74330e-218f-2dee-ea38-5fe9913e73a3', -99, '2021-01-18 02:18:59', 0),
('7e2d05f1-cb15-283b-34d9-5ffe5482b3b3', 'f3ab2114-3037-5119-1375-5ffe5300083d', '261fe43f-ae70-119e-7363-5fe991f3234f', 80, '2021-01-18 02:17:49', 0),
('7e310a4c-4d5d-16ad-8375-5ffe54741cff', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ca4f132d-502d-5aee-0cd4-5fe9916973a5', 80, '2021-01-18 02:17:49', 0),
('7e44a089-d008-9c18-781e-5ffe533eb2bb', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd4c47979-6892-d428-422a-5fe9914915d9', 90, '2021-01-13 01:58:24', 0),
('7e45ca31-933f-d320-0c6a-5ffe56d2c28b', '860158ee-3501-2093-b810-5ffe567b916e', 'ad33c349-59d2-2345-b811-5fe99100db80', 80, '2021-01-18 02:20:17', 0),
('7e46d361-39ef-d6f6-f260-6004f058ed1b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '835424a7-ebd5-65f2-beb4-5fe991766bd5', 75, '2021-01-18 02:21:17', 0),
('7e6ba742-54c0-24e9-ef03-6004f04f29c6', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'acb4792d-94aa-f27b-25a7-5fe991990b1d', -98, '2021-01-18 02:23:05', 0),
('7e7a36f0-25c8-d9f0-4734-5ffe5785f491', '857d3817-1929-a617-ad2c-5ffe57175f84', '5a65a785-eedd-5dce-c5c8-5fe991bddcae', 75, '2021-01-18 02:18:59', 0),
('7e7ecbce-0f2d-c737-caf9-5ffe57908f7d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c9604d45-e488-4158-eef5-5fe9914cc27f', -99, '2021-01-18 02:21:56', 0),
('7e8ff294-4e4e-ecb6-ccaf-5ffe542478c4', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'cd0d3d3e-c909-743b-3dd5-5fe991dc1b1f', 80, '2021-01-18 02:17:49', 0),
('7ea7f432-8eae-eaf2-429f-6004f09e7646', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '703b9d7c-9838-63ac-6400-5fe991e6bba4', -98, '2021-01-18 02:21:17', 0),
('7eaf4162-80d6-cb9f-10f6-5ffe56d6ef3f', '860158ee-3501-2093-b810-5ffe567b916e', 'b03796be-b258-728a-c41b-5fe991c3b941', 80, '2021-01-18 02:20:17', 0),
('7eb7c917-ba86-ef1e-1ed3-5ffe53830df2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd8b1b1e7-6336-dbbf-8cf1-5fe99178f96b', 90, '2021-01-13 01:58:24', 0),
('7ebe67d4-1646-ffa0-1ce0-6004f0493abc', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '61ba0986-eeb4-828b-acec-5fe9914de2cd', 75, '2021-01-18 02:21:17', 0),
('7eca999f-84cb-1c15-38f3-6004f0fc43a3', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b05f3683-3b79-cc74-f87f-5fe9911a764c', 75, '2021-01-18 02:23:05', 0),
('7ee2124f-9c0f-e0fc-f6fb-5ffe575d9f48', '857d3817-1929-a617-ad2c-5ffe57175f84', '5f443fd1-639b-ec49-1e45-5fe9911db0d0', -99, '2021-01-18 02:18:59', 0),
('7ee55f01-060b-a06a-0ee0-5ffe54062d95', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'cc23a415-34a1-3d49-5f84-5fe991ade554', -99, '2021-01-18 02:17:49', 0),
('7eec09ac-305c-31b1-f019-5ffe572867c4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c31a5001-3fc7-e99b-4cf0-5fe991815e31', 80, '2021-01-18 02:21:56', 0),
('7f0c5132-bba5-6b2b-a973-6004f004410c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '73df2ce8-8c3e-acfa-bdd7-5fe9913b4b46', 75, '2021-01-18 02:21:17', 0),
('7f1cd840-d697-454d-6eb1-5ffe53343974', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd3d3cf03-be8a-3584-a18c-5fe99113181a', 90, '2021-01-13 01:58:24', 0),
('7f20f0ce-3891-9a0a-0a4f-5ffe56b21228', '860158ee-3501-2093-b810-5ffe567b916e', 'af35032f-561c-58f6-3331-5fe991c5da84', -99, '2021-01-18 02:20:17', 0),
('7f273fea-38c3-f87f-3b4f-6004f0317569', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'af6ced59-b625-ac50-8de2-5fe99176adde', 75, '2021-01-18 02:23:05', 0),
('7f48cb87-edad-9310-5f83-5ffe548b4a84', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c96705f6-2453-523f-1014-5fe991fd5bf1', 80, '2021-01-18 02:17:49', 0),
('7f4c6905-8653-85e1-d998-5ffe5776d95c', '857d3817-1929-a617-ad2c-5ffe57175f84', '598abca7-4b6e-cb2b-644b-5fe991850bfd', 75, '2021-01-18 02:18:59', 0),
('7f4fc454-37e8-b6c3-5564-5ffe576f0159', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e7b869ff-d7dc-a375-69dc-5fe9912999e3', -98, '2021-01-18 02:21:56', 0),
('7f63e358-1e8b-8a8c-c8f1-6004f07ec37f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7328b654-183a-be94-e0a2-5fe991dbec80', 75, '2021-01-18 02:21:17', 0),
('7f80e8c9-6e93-a343-211b-5ffe537fa8bf', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e5950731-4ab0-2b54-5c51-5fe991eb9484', 89, '2021-01-13 01:58:24', 0),
('7f892f81-081b-4018-3dc5-5ffe56527e86', '860158ee-3501-2093-b810-5ffe567b916e', 'ac57ede7-ba37-daae-9348-5fe991a599f2', 80, '2021-01-18 02:20:17', 0),
('7f8bdc2a-195c-a660-e5ba-6004f08bbf40', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b2312d82-92c2-21d0-ce38-5fe991a0e273', 75, '2021-01-18 02:23:05', 0),
('7fa787c7-cee9-4489-fab6-5ffe57c6efc6', '857d3817-1929-a617-ad2c-5ffe57175f84', '56662706-64d1-1b2a-90f5-5fe991343b9f', -98, '2021-01-18 02:18:59', 0),
('7fa7f0ee-259b-65e5-be7d-5ffe5475c049', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'cdf4deca-43a7-96de-523c-5fe9917f19dc', -99, '2021-01-18 02:17:49', 0),
('7fb7821a-d9dd-510e-4bf2-5ffe572962e3', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ebd71d75-44bc-cb91-7b93-5fe99155f256', 80, '2021-01-18 02:21:56', 0),
('7fc1a490-0894-9837-ebc1-6004f039443f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '75a7db3b-7d01-17f4-afc6-5fe991d9dfd9', 75, '2021-01-18 02:21:17', 0),
('7fc92b7b-4da9-bf57-3521-6004f0ab5e4a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '65dedae3-b5b0-d891-450b-5fe9917e0089', -99, '2021-01-18 02:21:17', 0),
('7fe8071d-654d-5d86-4ffe-5ffe53610ea9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '12080549-97d3-9a50-fd3b-5fe99113e041', 90, '2021-01-13 01:58:24', 0),
('7fef82b8-2a47-3130-5a04-5ffe569e49a7', '860158ee-3501-2093-b810-5ffe567b916e', 'b12cce2f-60ac-da2e-547b-5fe9919f721c', -99, '2021-01-18 02:20:17', 0),
('7ff0f81b-feef-cf10-512c-6004f08535c7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b14832c7-ab94-6642-afaa-5fe9918dafa5', -99, '2021-01-18 02:23:05', 0),
('80014768-da36-1731-84d7-5ffe54806c02', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c88c4932-f211-1278-2e83-5fe991d62f1d', 80, '2021-01-18 02:17:49', 0),
('8014cc67-e794-bb61-58be-5ffe57fe056f', '857d3817-1929-a617-ad2c-5ffe57175f84', '5b3d119e-597c-04c4-ac45-5fe991493c92', 75, '2021-01-18 02:18:59', 0),
('80251711-6a1f-ca93-5d3c-6004f0aa60bf', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '74c25699-1cb1-ce6d-21b8-5fe9919bc181', -99, '2021-01-18 02:21:17', 0),
('802e0b55-c35d-f334-95e8-5ffe5740c3b8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ead81cce-59ad-453f-55c2-5fe991497fb5', 80, '2021-01-18 02:21:56', 0),
('804579e3-21e8-f705-9d00-5ffe533ca1e0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '11328ec1-927e-1859-c268-5fe991a3a3cf', 90, '2021-01-13 01:58:24', 0),
('804d0f14-d68a-c94c-e3db-6004f085b3c3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '1308e66b-3607-36e4-94d1-5fe991734e49', 75, '2021-01-18 02:21:17', 0),
('804eed16-7a8f-0a00-4106-6004f020dcb9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ae7dc2b8-f4b3-206f-1ad7-5fe9919d4671', 75, '2021-01-18 02:23:05', 0),
('805a92ac-eab0-cbeb-da77-5ffe549c736f', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a1812648-b7a8-751b-ace4-5fe991b4de0b', -98, '2021-01-18 02:17:49', 0),
('8066a00d-3014-5a7a-cb96-5ffe563a370c', '860158ee-3501-2093-b810-5ffe567b916e', 'ab456744-738b-c720-3322-5fe991b0dab8', 80, '2021-01-18 02:20:17', 0),
('806df996-fb5d-be65-34be-6004f006c5ab', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '60e5d013-6ac0-91dd-15b1-5fe991a95598', 75, '2021-01-18 02:21:17', 0),
('807a2c0e-724a-3a02-f41f-5ffe5777b8c1', '857d3817-1929-a617-ad2c-5ffe57175f84', '59b8fc02-c443-efe3-2830-5fe9912f396d', 75, '2021-01-18 02:18:59', 0),
('8082b829-2fd3-7ed2-2125-6004f01c1846', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '72393ce0-595f-0405-6bcd-5fe991546f2b', 75, '2021-01-18 02:21:17', 0),
('809c4a88-a306-a269-59a5-5ffe57796502', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ed768757-6487-2c69-92de-5fe99150b701', 80, '2021-01-18 02:21:56', 0),
('80ac8040-f9da-6711-6c73-6004f0084f99', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b3117773-7971-9fdc-a876-5fe99184937b', -99, '2021-01-18 02:23:05', 0),
('80ad731b-910c-47a9-8d6e-5ffe53690dc6', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '140e324e-0201-5dd4-5831-5fe991f136fb', 90, '2021-01-13 01:58:24', 0),
('80b70242-4d0b-0fab-89a1-5ffe54ad2397', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a5b46281-8b2a-2314-5bd7-5fe991cb89bd', 80, '2021-01-18 02:17:49', 0),
('80d599e9-91a0-2893-d430-5ffe5666c473', '860158ee-3501-2093-b810-5ffe567b916e', 'c78e668a-e9c8-187c-1443-5fe991aafc4c', -98, '2021-01-18 02:20:17', 0),
('80de4818-508a-0094-7aa8-6004f03d15a3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '76986dab-ff17-bc47-8526-5fe9911c5da7', -99, '2021-01-18 02:21:17', 0),
('80e02cff-3d97-afd2-e55e-5ffe57a8f1b2', '857d3817-1929-a617-ad2c-5ffe57175f84', '5d677e95-6da6-cd45-cd5c-5fe991187363', 75, '2021-01-18 02:18:59', 0),
('80faab5d-76ed-157d-efa4-5ffe5792099d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'eca203fd-ce6d-9048-6970-5fe991ad15e8', -99, '2021-01-18 02:21:56', 0),
('810bebe7-ef35-aa6d-2049-5ffe53b388eb', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '1315cdbc-7372-2004-13f9-5fe991112d5e', 90, '2021-01-13 01:58:24', 0),
('8114072f-594a-d9ec-943d-5ffe546ccdb9', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a4c5d37e-7f45-eb0b-1cf9-5fe9917b9d6a', 80, '2021-01-18 02:17:49', 0),
('81140e12-0e7c-288a-a7c7-6004f032e977', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ad954bf2-3a7d-e3fc-b572-5fe99169f4cb', 75, '2021-01-18 02:23:05', 0),
('811c47bf-b2d0-8377-f2f2-6004f0fc9402', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'f08c06ac-3bfb-3c90-8304-5fe99159c5a2', -98, '2021-01-18 02:21:17', 0),
('813723b9-afc0-fd7d-5400-6004f075c4ee', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '715bbbc1-3fca-b78e-ff62-5fe991520d0f', 75, '2021-01-18 02:21:17', 0),
('81439183-0978-6248-0b8b-5ffe570d8710', '857d3817-1929-a617-ad2c-5ffe57175f84', '5c5c0d7a-9ed8-6e33-e3ff-5fe9913458d5', -99, '2021-01-18 02:18:59', 0),
('81673635-d52b-6dc6-caca-6004f02ae5fe', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd9ea9189-c3e8-1a4b-5501-5fe991433de5', -98, '2021-01-18 02:23:05', 0),
('816ffe83-ca1a-87d7-f704-5ffe57eab3d3', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e9d4c5fa-00c6-380c-2014-5fe991f309f0', 80, '2021-01-18 02:21:56', 0),
('81715531-f687-ac7f-26d8-5ffe5386b480', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '104b7824-509e-9c2c-15b1-5fe991646d62', 90, '2021-01-13 01:58:24', 0),
('8178ed4b-4234-2f61-2004-5ffe5436cd83', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a794fcfe-711b-488f-84dd-5fe991cb8a8f', 80, '2021-01-18 02:17:49', 0),
('8193ef42-a742-cde6-38e4-6004f05b03c0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4a61c49f-2cdb-e7e6-0f51-5fe9913f40c7', -98, '2021-01-18 02:21:17', 0),
('819f7d13-c124-91c7-451e-5ffe564eebd0', '860158ee-3501-2093-b810-5ffe567b916e', 'cb3e92a9-b63b-131f-c460-5fe9915c6bd2', 80, '2021-01-18 02:20:17', 0),
('81a75d39-d3b2-1efd-1384-5ffe57af8b7d', '857d3817-1929-a617-ad2c-5ffe57175f84', '58b5e7b3-a7a3-d9be-d92a-5fe991e6fead', 75, '2021-01-18 02:18:59', 0),
('81aa0f69-c159-bc48-fec2-5ffe5352e968', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b29b67bb-1554-6f56-3284-5fe991a5bebc', 90, '2021-01-13 01:58:24', 0),
('81bf0076-9d62-08b4-a5ed-6004f0031222', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '1308c7c8-01bb-0130-60b8-5fe991c995bc', 75, '2021-01-18 02:21:17', 0),
('81cdeff2-5efa-793e-a3e8-6004f091c75d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'dd826565-45b0-931b-2fd7-5fe991046ec7', 75, '2021-01-18 02:23:05', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('81d1ff46-d0b9-9425-59d3-5ffe5477982f', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a6a9a7bb-1ad5-e90a-9003-5fe99196320b', -99, '2021-01-18 02:17:49', 0),
('81d95b50-b21c-43c8-95f1-5ffe53759a61', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '150306bd-23b9-df24-ee50-5fe99192ff27', 90, '2021-01-13 01:58:24', 0),
('81db5527-955c-74c1-e37c-5ffe576e4325', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ee2d337d-7418-f149-2626-5fe9918c5a0a', -99, '2021-01-18 02:21:56', 0),
('81f51136-5255-eb83-562e-6004f03ebaa0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4e1109c8-7876-d60e-a048-5fe991d7c4ae', 75, '2021-01-18 02:21:17', 0),
('82089264-5d14-ca2d-09d7-5ffe57dacdf1', '857d3817-1929-a617-ad2c-5ffe57175f84', '5e7e6ad5-ffdb-5962-fda0-5fe99175ae99', -99, '2021-01-18 02:18:59', 0),
('82109489-005e-2ca7-19e3-5ffe56e52fcf', '860158ee-3501-2093-b810-5ffe567b916e', 'ca4f132d-502d-5aee-0cd4-5fe9916973a5', 80, '2021-01-18 02:20:17', 0),
('822bbe01-06c2-e2a5-46f1-5ffe547ee1bb', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a3c8b404-bff0-380b-9a97-5fe99126fb9f', 80, '2021-01-18 02:17:49', 0),
('822d8ca8-40bc-ec87-77b9-6004f0fab624', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'dcba0f78-89a8-3481-50d2-5fe99112c4bd', 75, '2021-01-18 02:23:05', 0),
('82403949-bab8-75b8-d826-5ffe53ec9b37', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'f5a10111-5aea-3834-a431-5fe991f1a0ac', 90, '2021-01-13 01:58:24', 0),
('82460e32-88a3-103b-afd4-5ffe577450dd', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e8cad13f-c73b-7e3b-2da3-5fe99127eea5', 80, '2021-01-18 02:21:56', 0),
('824d8298-545f-1932-2940-6004f0c13647', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '1218d852-02f8-a839-5599-5fe9914ce21e', 75, '2021-01-18 02:21:17', 0),
('82564828-56fc-8b00-b07d-6004f0f524f2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4d1fe09d-5f13-4da2-9290-5fe9912f736b', 75, '2021-01-18 02:21:17', 0),
('826efb0b-9fc6-395b-d14c-5ffe572ccda1', '857d3817-1929-a617-ad2c-5ffe57175f84', '57b9ea58-c683-abc5-923c-5fe991836af4', 75, '2021-01-18 02:18:59', 0),
('82806c2b-eb7d-8472-12ac-5ffe56643586', '860158ee-3501-2093-b810-5ffe567b916e', 'cd0d3d3e-c909-743b-3dd5-5fe991dc1b1f', 80, '2021-01-18 02:20:17', 0),
('828598c8-4dc5-b966-4c02-5ffe543035b0', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a893ae5e-04f1-1ad5-14f8-5fe99134dca8', -99, '2021-01-18 02:17:49', 0),
('8294ad12-41bd-9603-2f6b-6004f091559c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'df81e0fc-adc1-5471-6962-5fe9918378ea', 75, '2021-01-18 02:23:05', 0),
('82a5b455-022a-0e94-a619-5ffe537fc0ba', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd9ea9189-c3e8-1a4b-5501-5fe991433de5', 89, '2021-01-13 01:58:24', 0),
('82b03e0e-ffdc-2e44-f7d1-5ffe575220e9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4e54b667-41a1-31b4-9bd6-5fe991e5c5ba', -98, '2021-01-18 02:21:56', 0),
('82b0774d-a744-fd72-dd7f-6004f05fb27e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4fd10984-05a7-6cfa-a22a-5fe991fbc4fa', 75, '2021-01-18 02:21:17', 0),
('82d51b90-220e-e428-738c-6004f03ea6a6', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '149e29e6-93cc-1cba-c2d2-5fe991cc1dc2', 75, '2021-01-18 02:21:17', 0),
('82db8c0a-0aef-0583-0c8f-5ffe57a13c56', '857d3817-1929-a617-ad2c-5ffe57175f84', '81bf9049-9f65-48bd-e093-5fe991d0ab74', -98, '2021-01-18 02:18:59', 0),
('82e12dab-1849-c1bf-8c71-5ffe54c379e5', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a2d06f6c-d1d9-df54-18be-5fe991d6de31', 80, '2021-01-18 02:17:49', 0),
('82f394cd-7fe6-64e4-1874-6004f02ed1cb', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'de609243-74e0-34f1-2942-5fe991ae0a01', -99, '2021-01-18 02:23:05', 0),
('82f4a319-904b-c337-d42c-5ffe5606e52d', '860158ee-3501-2093-b810-5ffe567b916e', 'cc23a415-34a1-3d49-5f84-5fe991ade554', -99, '2021-01-18 02:20:17', 0),
('830a3a26-5dc8-cc90-5159-5ffe5325ad3f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'dd826565-45b0-931b-2fd7-5fe991046ec7', 90, '2021-01-13 01:58:24', 0),
('830a9a0a-f310-4e76-5e1b-6004f0faef70', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4efb3cf7-9b18-608e-0873-5fe991601809', -99, '2021-01-18 02:21:17', 0),
('83240049-e1d6-b308-3829-5ffe57be047b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '52a71728-7481-306e-4188-5fe991897345', 80, '2021-01-18 02:21:56', 0),
('83432971-7053-edef-2117-5ffe5407c33f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8509116a-03b1-6673-110c-5fe991954b03', -98, '2021-01-18 02:17:49', 0),
('8348f5b3-9a91-41a3-60d6-5ffe57ee4883', '857d3817-1929-a617-ad2c-5ffe57175f84', '84cd1e95-c8d9-fe85-21d4-5fe9911b9751', 75, '2021-01-18 02:18:59', 0),
('83521402-e65d-40cb-a7aa-5ffe56530c28', '860158ee-3501-2093-b810-5ffe567b916e', 'c96705f6-2453-523f-1014-5fe991fd5bf1', 80, '2021-01-18 02:20:17', 0),
('8358612a-6d87-8cb4-32bb-6004f0260e7c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'dbd6a8fd-65eb-6bbb-53a2-5fe991982fd5', 75, '2021-01-18 02:23:05', 0),
('835b4b7a-a216-9230-6c1a-6004f04978df', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '13ceea2d-5bbc-21c2-b72c-5fe991b92f9f', -99, '2021-01-18 02:21:17', 0),
('836bdbf4-934b-f78b-c63b-6004f0491391', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4c37daab-be92-019b-381d-5fe99196a7ca', 75, '2021-01-18 02:21:17', 0),
('83741e7a-0d42-9488-f3c8-5ffe537281f6', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'dcba0f78-89a8-3481-50d2-5fe99112c4bd', 90, '2021-01-13 01:58:24', 0),
('8396df75-87ce-6f6e-2cd5-5ffe5787e912', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '51b43259-2704-3b6a-19f5-5fe991eceaf8', 80, '2021-01-18 02:21:56', 0),
('83aa256f-fb43-7e68-c74a-5ffe543e851e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8936f48d-6faf-aae4-427b-5fe9917348c9', 80, '2021-01-18 02:17:49', 0),
('83ab0765-4367-fab5-2ea3-5ffe560f07c2', '860158ee-3501-2093-b810-5ffe567b916e', '261fe43f-ae70-119e-7363-5fe991f3234f', 80, '2021-01-18 02:20:17', 0),
('83ab7f08-7f9b-68e8-2c23-5ffe566540d8', '860158ee-3501-2093-b810-5ffe567b916e', 'cdf4deca-43a7-96de-523c-5fe9917f19dc', -99, '2021-01-18 02:20:17', 0),
('83b42b70-c71f-5083-68fa-5ffe57581256', '857d3817-1929-a617-ad2c-5ffe57175f84', '840d2deb-8dd9-b8da-cf64-5fe991c7c617', 75, '2021-01-18 02:18:59', 0),
('83bf1d4c-e324-eb6f-7454-6004f0d15454', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e0759ad6-eea1-0ce9-1f74-5fe99143a8d2', -99, '2021-01-18 02:23:05', 0),
('83c86675-f5c6-f24a-3511-6004f0ef331d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '50a7c395-84c7-a636-8650-5fe9914a4078', -99, '2021-01-18 02:21:17', 0),
('83d9196f-b19d-fe15-41e5-5ffe53c68ea3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'df81e0fc-adc1-5471-6962-5fe9918378ea', 90, '2021-01-13 01:58:24', 0),
('83e3b2fd-cb08-ce40-6676-6004f0677c9e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '114815ee-8523-c73a-362a-5fe991f9439c', 75, '2021-01-18 02:21:17', 0),
('8402b040-8259-1e2c-a297-5ffe5785fac1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '54a63ebc-eaf8-3281-2825-5fe99141ae0e', 80, '2021-01-18 02:21:56', 0),
('8408adcb-c1c5-c68c-8aef-5ffe541c3095', 'f3ab2114-3037-5119-1375-5ffe5300083d', '883343cc-5856-3f81-0dda-5fe99171e29d', 80, '2021-01-18 02:17:49', 0),
('840e3ad0-4f53-5827-b0d8-5ffe560b4dc6', '860158ee-3501-2093-b810-5ffe567b916e', 'c88c4932-f211-1278-2e83-5fe991d62f1d', 80, '2021-01-18 02:20:17', 0),
('84105b73-9921-6e5b-03a2-5ffe57dc0673', '857d3817-1929-a617-ad2c-5ffe57175f84', '8688f3b6-4e6f-c7ac-44dd-5fe9911a1bf1', 75, '2021-01-18 02:18:59', 0),
('842661e9-cabd-bddd-4e10-6004f05e08fd', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'daeacb16-1c00-4889-efed-5fe9919a972b', 75, '2021-01-18 02:23:05', 0),
('8428b8f2-6c94-e6c2-178a-6004f0322023', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4b4a59af-cb8a-d026-7057-5fe991880a95', 75, '2021-01-18 02:21:17', 0),
('84465ee9-3c91-a7e5-12c6-5ffe53e448f5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'de609243-74e0-34f1-2942-5fe991ae0a01', 90, '2021-01-13 01:58:24', 0),
('84658f41-68bf-b87c-e95c-5ffe57ce0709', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '53a0437c-3949-42b5-b6f7-5fe9915c9b19', -99, '2021-01-18 02:21:56', 0),
('846ea6c7-317c-4480-be61-6004f06c512c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '156a9daf-1314-e4e9-8677-5fe991e24ee1', -99, '2021-01-18 02:21:17', 0),
('847035fe-8e11-7297-a29f-5ffe5418cf03', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8b196f3d-f5c9-3f7b-9f2f-5fe9914dd267', 80, '2021-01-18 02:17:49', 0),
('84722e34-c154-f300-b6c5-5ffe57752017', '857d3817-1929-a617-ad2c-5ffe57175f84', '85a8e890-cfc8-9eaa-179b-5fe991c189f0', -99, '2021-01-18 02:18:59', 0),
('847cde35-2b15-8a4c-2726-5ffe568b1dc9', '860158ee-3501-2093-b810-5ffe567b916e', 'a1812648-b7a8-751b-ace4-5fe991b4de0b', -98, '2021-01-18 02:20:17', 0),
('847f29e6-bab7-be52-bb80-6004f02b10bd', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '63b54b9f-8580-d724-9ede-5fe991fa4f1d', -98, '2021-01-18 02:23:05', 0),
('84890695-59e8-8b00-c813-6004f0a364ad', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7a70175c-e461-3c60-f0b9-5fe9911a6123', -98, '2021-01-18 02:21:17', 0),
('84a88d80-e939-99d9-a8b8-5ffe53517252', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'dbd6a8fd-65eb-6bbb-53a2-5fe991982fd5', 90, '2021-01-13 01:58:24', 0),
('84aa0bfb-8023-afa0-fa69-5ffe57a6ffad', '857d3817-1929-a617-ad2c-5ffe57175f84', '99cfda1f-f957-e4c1-e444-5fe99159b864', 75, '2021-01-18 02:18:59', 0),
('84d1ad03-c9d6-bb1d-df48-5ffe5432f22e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8a3c4ee5-e844-1a52-2808-5fe991728c0f', -99, '2021-01-18 02:17:49', 0),
('84d7d926-8b0d-c8b7-af1e-5ffe57a64ea2', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '50b74da9-8a7e-9868-7664-5fe9910b1f6b', 80, '2021-01-18 02:21:56', 0),
('84dc3a17-1224-0601-3bfc-5ffe574d3f2d', '857d3817-1929-a617-ad2c-5ffe57175f84', '835cd764-a822-7a1d-c7c4-5fe99193125d', 75, '2021-01-18 02:18:59', 0),
('84e2e745-e6f6-9c61-d165-6004f06535e9', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7e00d922-8704-0640-deb7-5fe9912630d1', 75, '2021-01-18 02:21:17', 0),
('84e38637-bc7e-4919-1767-5ffe56c6efc9', '860158ee-3501-2093-b810-5ffe567b916e', 'a5b46281-8b2a-2314-5bd7-5fe991cb89bd', 80, '2021-01-18 02:20:17', 0),
('850aaf3c-b9e3-c733-0efb-6004f05e9f66', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '10679577-ff18-7309-b27c-5fe991b37229', 75, '2021-01-18 02:21:17', 0),
('850fa3d2-207a-5928-b1d3-5ffe5317c1fa', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e0759ad6-eea1-0ce9-1f74-5fe99143a8d2', 90, '2021-01-13 01:58:24', 0),
('85351b6b-adba-d5f1-8a1c-5ffe54ced057', 'f3ab2114-3037-5119-1375-5ffe5300083d', '872bf147-7d38-4099-a281-5fe991390670', 80, '2021-01-18 02:17:49', 0),
('853f67ca-6e85-e388-d410-6004f0b5b120', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7d1e9133-c151-88c0-eaec-5fe991c34593', 75, '2021-01-18 02:21:17', 0),
('8545f249-422a-b236-cde4-5ffe57d962ea', '857d3817-1929-a617-ad2c-5ffe57175f84', '8762c156-1605-4d19-cf81-5fe991f6dbaf', -99, '2021-01-18 02:18:59', 0),
('854cea15-f758-e4e9-61b5-5ffe57856b97', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '55abbde3-056b-14ab-2bc9-5fe991cc6632', -99, '2021-01-18 02:21:56', 0),
('854e083b-d5ec-cb5f-5fd3-5ffe56b9d9b8', '860158ee-3501-2093-b810-5ffe567b916e', 'a4c5d37e-7f45-eb0b-1cf9-5fe9917b9d6a', 80, '2021-01-18 02:20:17', 0),
('8580741b-6f72-0657-ec3d-5ffe532dfe52', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'daeacb16-1c00-4889-efed-5fe9919a972b', 90, '2021-01-13 01:58:24', 0),
('8599a8a2-830c-45af-c6ac-6004f04c4ebe', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7fb8f225-a99e-f07d-efab-5fe991f451cb', 75, '2021-01-18 02:21:17', 0),
('859d38ee-3fba-9e69-c149-5ffe54099400', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8bf64f92-13f1-2135-3a28-5fe991084f6b', -99, '2021-01-18 02:17:49', 0),
('85a27246-51cd-2708-e453-5ffe568ece28', '860158ee-3501-2093-b810-5ffe567b916e', 'a794fcfe-711b-488f-84dd-5fe991cb8a8f', 80, '2021-01-18 02:20:17', 0),
('85a5bf81-8fd8-7acf-8cf3-5ffe57d80aec', '857d3817-1929-a617-ad2c-5ffe57175f84', '82a3bc12-4b9d-4c45-1469-5fe9918ccd58', 75, '2021-01-18 02:18:59', 0),
('85aa62bb-ddd0-64ae-81db-6004f09a348f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '66ca2eb6-2154-1395-dd3a-5fe991a1c703', -98, '2021-01-18 02:21:17', 0),
('85c68138-eef5-8b13-8d10-5ffe576d61ce', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4f6918e3-10f8-acdf-72fc-5fe9913d462c', 80, '2021-01-18 02:21:56', 0),
('85df99d3-98b7-c79c-d914-5ffe53452c90', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7b77e868-a008-0ee4-4b88-5fe991fbb3d5', 89, '2021-01-13 01:58:24', 0),
('85e66dd6-3b98-c43d-c44e-6004f051e3fc', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '679d59ba-8e91-1b1a-d6c8-5fe991802c2c', 75, '2021-01-18 02:23:05', 0),
('85f3293c-8ed5-82f1-79f3-6004f04e3258', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7edf4208-d92c-4f4d-4e1a-5fe991304f60', -99, '2021-01-18 02:21:17', 0),
('85fec131-3f45-7c48-3d2f-5ffe54ba50d0', 'f3ab2114-3037-5119-1375-5ffe5300083d', '862b5b74-cced-59b5-0fe7-5fe991e5983b', 80, '2021-01-18 02:17:49', 0),
('86005aa8-bbb7-f9f9-d0d9-5ffe57d39f47', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a63ff7b8-be9f-5c3d-973a-5fe991a641cd', -98, '2021-01-18 02:18:59', 0),
('8637d213-6053-3e42-ade4-5ffe57aa155b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b27fc4e4-d383-31f9-2f97-5fe9919ef44a', -98, '2021-01-18 02:21:56', 0),
('8642c2e7-9db6-9a57-a79d-5ffe53277dad', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7f7790f1-571f-1cf9-9c6d-5fe991d79535', 90, '2021-01-13 01:58:24', 0),
('86468da0-64e5-f336-dd77-6004f0d4aeeb', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6a84c729-64b1-eea6-96e2-5fe9919c2ee3', 75, '2021-01-18 02:21:17', 0),
('864b2bfd-e696-5e25-bef3-6004f0a1dead', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7c4a05ce-6ac7-4196-607c-5fe9911b0e45', 75, '2021-01-18 02:21:17', 0),
('865406dd-a7d9-0d15-c59d-5ffe56302ce4', '860158ee-3501-2093-b810-5ffe567b916e', 'a6a9a7bb-1ad5-e90a-9003-5fe99196320b', -99, '2021-01-18 02:20:17', 0),
('86599d97-051e-e419-ffb6-5ffe5772383a', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a9fe76ce-8d27-193f-a8c5-5fe991379ec8', 75, '2021-01-18 02:18:59', 0),
('865fb048-4399-8b18-c60f-5ffe54e0c0a2', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'a3dd0e7e-396e-6394-b676-5fe9917eb3e6', -98, '2021-01-18 02:17:49', 0),
('86a4687b-28a0-0776-5b3d-5ffe53c800ff', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7e7333ec-e694-5625-49be-5fe991c00256', 90, '2021-01-13 01:58:24', 0),
('86a6f3e7-e58c-ae68-5eea-5ffe5719a3e8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b6b96afa-bc9a-9505-7fec-5fe99129a947', 80, '2021-01-18 02:21:56', 0),
('86ae52a7-48c1-4657-60c8-5ffe560ca92c', '860158ee-3501-2093-b810-5ffe567b916e', 'a3c8b404-bff0-380b-9a97-5fe99126fb9f', 80, '2021-01-18 02:20:17', 0),
('86aef4ff-da9e-9f53-e910-6004f09909ee', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '80904afb-9a34-7ce1-e2a7-5fe9913a83f3', -99, '2021-01-18 02:21:17', 0),
('86c04ea6-9043-3b0c-f625-5ffe5412701f', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'dbdb0c61-8f47-3c40-57b4-5fe991fe567d', 80, '2021-01-18 02:17:49', 0),
('86d5bc35-fcfa-cb9c-1fe1-5ffe579c2290', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a913220b-58c3-edb8-9b22-5fe991ee39a0', 75, '2021-01-18 02:18:59', 0),
('86ecf473-76c0-5995-b3f6-6004f0b029a3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '699a76dc-beed-8aa3-4142-5fe9916ff8ae', 75, '2021-01-18 02:21:17', 0),
('8707d174-4b46-d8b6-03a7-5ffe539553f6', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8191f8f9-f2d2-5239-86a4-5fe991d76f58', 90, '2021-01-13 01:58:24', 0),
('8711842e-e57e-20db-4569-6004f0c17233', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7b5d68fd-4c97-3b86-4ae3-5fe991594e2a', 75, '2021-01-18 02:21:17', 0),
('87139b55-4315-22ff-fcd5-5ffe568da83e', '860158ee-3501-2093-b810-5ffe567b916e', 'a893ae5e-04f1-1ad5-14f8-5fe99134dca8', -99, '2021-01-18 02:20:17', 0),
('8717dc01-930f-e1a8-fd9f-5ffe578ced8f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b59fe417-a393-ffd9-baed-5fe9919fd0ca', 80, '2021-01-18 02:21:56', 0),
('87212945-fb11-1b45-3cfe-5ffe540829cc', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ce6e0f93-2998-985d-7b87-5fe991d71448', 80, '2021-01-18 02:17:49', 0),
('87513eda-707e-4c63-1d61-5ffe57387a82', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ab932356-a060-c695-6bce-5fe9914a18c1', 75, '2021-01-18 02:18:59', 0),
('876ca5d2-851f-e9df-5b7a-5ffe532f3261', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8077ec7d-7ca4-306c-77eb-5fe991763a20', 90, '2021-01-13 01:58:24', 0),
('877522b0-18de-adc6-d931-6004f062c6f5', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4ff60533-381d-3326-53bc-5fe991d1b06f', -98, '2021-01-18 02:21:17', 0),
('877c760f-13c5-1e63-d5a8-5ffe56d3b2ce', '860158ee-3501-2093-b810-5ffe567b916e', 'a2d06f6c-d1d9-df54-18be-5fe991d6de31', 80, '2021-01-18 02:20:17', 0),
('8783fff4-1245-8b7a-a4b2-5ffe54204837', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'f496047a-6f9e-53a2-3f3a-5fe99169c2d7', 80, '2021-01-18 02:17:49', 0),
('878e152e-e95d-4ce7-4d43-5ffe572714df', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b92414b1-a4b1-858b-43cd-5fe991d91b88', 80, '2021-01-18 02:21:56', 0),
('8793e934-e963-9d4b-71dd-6004f0fff156', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6c6ea30f-0a8a-f174-e2f7-5fe99156d24f', 75, '2021-01-18 02:21:17', 0),
('87b1d9eb-6a22-e01b-843f-5ffe57fb581b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'aac9f2e0-a504-9c9e-29de-5fe991d6c366', -99, '2021-01-18 02:18:59', 0),
('87c275e2-b3d5-f644-ae75-5ffe53d7a7e1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7d77f594-2730-b283-bae1-5fe991f01c06', 90, '2021-01-13 01:58:24', 0),
('87d607ec-d094-4b0c-667e-5ffe533284c8', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'aca0daac-a0ad-5952-f974-5fe991c6a958', 90, '2021-01-13 01:58:24', 0),
('87d8e39a-ceb2-7cee-f0b1-6004f08f85a0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8e98077b-58ce-c7a3-04fb-5fe9912226b7', 75, '2021-01-18 02:21:17', 0),
('87e5fa86-4e49-ce8f-a537-5ffe54500cff', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e8300251-c3bb-5889-1e43-5fe99135777f', -99, '2021-01-18 02:17:49', 0),
('87e9c396-4e5d-f270-1ecd-5ffe561391ef', '860158ee-3501-2093-b810-5ffe567b916e', '8509116a-03b1-6673-110c-5fe991954b03', -98, '2021-01-18 02:20:17', 0),
('8803f55c-8a9e-45c3-6b8d-5ffe570a7c1d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b7e8a2b4-1cbb-a89d-510a-5fe991a230cd', -99, '2021-01-18 02:21:56', 0),
('8810d8d1-0e69-1a22-fa13-5ffe57cfa511', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a8249c4e-35b6-f389-68a0-5fe9919e2360', 75, '2021-01-18 02:18:59', 0),
('881f068d-e4ee-d4a0-83c1-5ffe532160ce', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '82699b01-9611-007e-98a9-5fe99151f456', 90, '2021-01-13 01:58:24', 0),
('882c98cf-7cfb-9984-478a-6004f0fbc1c8', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '818e07d5-f7cb-310c-95f2-5fe991b1ee79', 75, '2021-01-18 02:21:17', 0),
('8839e110-f8bf-e159-3932-6004f014a25b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6b7f9d3c-48c8-36f7-80eb-5fe9918dc431', -99, '2021-01-18 02:21:17', 0),
('88483b96-d351-7d90-f166-5ffe5434abe3', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'c20c0b36-47c2-af55-32d7-5fe9914f650f', 80, '2021-01-18 02:17:49', 0),
('8851cca8-2b23-5a96-b31d-5ffe56e2357e', '860158ee-3501-2093-b810-5ffe567b916e', '8936f48d-6faf-aae4-427b-5fe9917348c9', 80, '2021-01-18 02:20:17', 0),
('8869e281-fbc8-e1cd-49c2-5ffe57a547b6', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ac6b9b7c-2168-81ca-4234-5fe991a96a8a', -99, '2021-01-18 02:18:59', 0),
('886e4248-2fd6-7ff7-1f68-5ffe57922bab', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b4919591-7b1f-f68c-6105-5fe9910a4a31', 80, '2021-01-18 02:21:56', 0),
('887e426a-d418-1164-7b66-5ffe535ba9b3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7c8270f3-df3b-a74d-58df-5fe99110aa48', 90, '2021-01-13 01:58:24', 0),
('88971303-c804-86af-a5a8-6004f085ef31', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ac220371-2277-878b-d774-5fe991a38a1c', 75, '2021-01-18 02:21:17', 0),
('88a16e31-ac1f-49c4-90c7-5ffe54803e62', 'f3ab2114-3037-5119-1375-5ffe5300083d', '100d44d4-2ad9-3006-5249-5fe99105dfc7', -99, '2021-01-18 02:17:49', 0),
('88bf0a30-2d5c-0e3d-2fa5-5ffe567251b0', '860158ee-3501-2093-b810-5ffe567b916e', '883343cc-5856-3f81-0dda-5fe99171e29d', 80, '2021-01-18 02:20:17', 0),
('88c3057d-5f56-850f-3427-5ffe54f81a5e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '25330da0-6d1c-e099-5248-5fe991488f96', 80, '2021-01-18 02:17:49', 0),
('88d892d4-32f1-6cd8-06a9-5ffe57f4a72e', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a73cae80-ffea-1db9-b82e-5fe9918e160a', 75, '2021-01-18 02:18:59', 0),
('88de0e2e-91da-7e17-e4ae-5ffe538a9e1f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd56c52df-f267-856e-3fa9-5fe99172596b', 89, '2021-01-13 01:58:24', 0),
('88dfb076-71f7-8e4d-03b6-6004f0392e3d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '68ae731f-f0cb-25b6-553f-5fe9918a1892', 75, '2021-01-18 02:21:17', 0),
('88f462db-3bef-d875-f72f-6004f07f1f20', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9dc8093f-c633-9026-010c-5fe99184be95', -99, '2021-01-18 02:21:17', 0),
('890a3389-98af-8e5e-10e6-5ffe54efdfc5', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b20b0384-6478-f201-f7a9-5fe9917d9cf0', 80, '2021-01-18 02:17:49', 0),
('89163fd0-6d74-2628-5dfb-5ffe561b8451', '860158ee-3501-2093-b810-5ffe567b916e', '8b196f3d-f5c9-3f7b-9f2f-5fe9914dd267', 80, '2021-01-18 02:20:17', 0),
('893677b3-00ef-cac0-ab97-5ffe53d2d734', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd930d33b-3c66-1ae9-dbc8-5fe9911efa1d', 90, '2021-01-13 01:58:24', 0),
('894ce534-6fd3-7dfe-6cf1-6004f0d8fcee', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '70d70eac-d310-32f6-369c-5fe991e453bc', 75, '2021-01-18 02:21:17', 0),
('8954ce5c-c070-b8bb-c2a3-5ffe57ed3956', '857d3817-1929-a617-ad2c-5ffe57175f84', 'aa4ac08d-1c76-f179-ae60-5fe99105b293', -98, '2021-01-18 02:18:59', 0),
('895e4532-9731-b013-fb06-5ffe545ad20c', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4560b1d3-d8ef-07c0-24ee-5fe991cad1e2', -98, '2021-01-18 02:17:49', 0),
('898197ff-e5d7-806e-9cc7-5ffe56ab1cb0', '860158ee-3501-2093-b810-5ffe567b916e', '8a3c4ee5-e844-1a52-2808-5fe991728c0f', -99, '2021-01-18 02:20:17', 0),
('898eec89-c4c2-7ad9-8950-5ffe53f9b915', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd8401e23-96b1-5ad2-a8e2-5fe991eb9081', 90, '2021-01-13 01:58:24', 0),
('89a35fab-1db0-4b5b-ab45-5ffe57b71121', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ba59377a-0727-05f3-8480-5fe991ba772f', -99, '2021-01-18 02:21:56', 0),
('89a5b3c0-8358-a1af-7b71-6004f0e5368b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'bb8c07ac-0928-929b-4833-5fe99115ee88', -99, '2021-01-18 02:21:17', 0),
('89b604c5-0ba4-bb28-fb98-5ffe5661712c', '860158ee-3501-2093-b810-5ffe567b916e', '25330da0-6d1c-e099-5248-5fe991488f96', 80, '2021-01-18 02:20:17', 0),
('89b82933-67d7-d8b3-158d-5ffe541792a1', 'f3ab2114-3037-5119-1375-5ffe5300083d', '49263512-3bb7-46b1-5871-5fe991aef925', 80, '2021-01-18 02:17:49', 0),
('89c66d62-f392-e5f6-0afa-5ffe57de4f32', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ae303a10-554a-204f-6954-5fe991d9dbeb', 75, '2021-01-18 02:18:59', 0),
('89e547b7-bd97-73ec-902b-5ffe566eb253', '860158ee-3501-2093-b810-5ffe567b916e', '872bf147-7d38-4099-a281-5fe991390670', 80, '2021-01-18 02:20:17', 0),
('89f073fb-206e-2dd2-d99a-5ffe53207d52', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'daecfb75-ef5d-32cb-1a04-5fe991f95e2e', 90, '2021-01-13 01:58:24', 0),
('8a0767b8-a8b3-90d4-6e8a-6004f0aeb3a2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '624407ba-eaf2-35d5-476b-5fe991cd595f', 75, '2021-01-18 02:21:17', 0),
('8a0861bc-83af-b88e-7654-6004f0129e01', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '66b44762-ea3b-234b-6f81-5fe9919fa9b5', 75, '2021-01-18 02:23:05', 0),
('8a24fc68-00e0-5b1b-0949-5ffe57be4345', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ad33c349-59d2-2345-b811-5fe99100db80', 75, '2021-01-18 02:18:59', 0),
('8a4b3a7f-e3b3-6581-0008-5ffe53eab990', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'da0081af-e614-ee32-3eae-5fe991e16020', 90, '2021-01-13 01:58:24', 0),
('8a5f244b-2ca2-ac38-a069-5ffe545c329e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4852587d-2ed7-392a-225d-5fe991f70e21', 80, '2021-01-18 02:17:49', 0),
('8a66955c-a6d7-aeee-403e-6004f01c2ced', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '81bf9049-9f65-48bd-e093-5fe991d0ab74', -98, '2021-01-18 02:21:17', 0),
('8a710a0b-5ff4-d56f-ec23-6004f0ed64a2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '697557a6-ce3a-5b71-4d6d-5fe9912db974', 75, '2021-01-18 02:23:05', 0),
('8a730905-c759-8c53-4e48-6004f01e776e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '12446ca6-06bf-d0e7-96a9-5fe99159f62f', 75, '2021-01-18 02:21:17', 0),
('8a85dd10-abd0-9c1a-5c4c-5ffe56781a14', '860158ee-3501-2093-b810-5ffe567b916e', '8bf64f92-13f1-2135-3a28-5fe991084f6b', -99, '2021-01-18 02:20:17', 0),
('8a92bf52-bbc0-f3df-025c-5ffe57b492ee', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b03796be-b258-728a-c41b-5fe991c3b941', 75, '2021-01-18 02:18:59', 0),
('8aa7d418-f613-f7ef-49c2-5ffe53ec2d7b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd75b9bea-abb6-2458-cbb1-5fe991baf382', 90, '2021-01-13 01:58:24', 0),
('8abe0115-fb9a-b6cc-92a2-6004f02c4ff4', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '84cd1e95-c8d9-fe85-21d4-5fe9911b9751', 75, '2021-01-18 02:21:17', 0),
('8abeddd1-dc99-babb-247f-5ffe5402df44', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4b0b105d-c49d-64fd-880d-5fe991434844', 80, '2021-01-18 02:17:49', 0),
('8ae7f6fd-4cac-b53f-ed97-6004f0d386ab', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6874426e-93c9-cd44-7589-5fe991e044e2', -99, '2021-01-18 02:23:05', 0),
('8aee47a1-ade4-87ac-662d-5ffe57e4072f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b394b3f8-0da3-df98-94ab-5fe99179f361', 80, '2021-01-18 02:21:56', 0),
('8afb10df-7512-d0af-023c-5ffe5666c20d', '860158ee-3501-2093-b810-5ffe567b916e', '862b5b74-cced-59b5-0fe7-5fe991e5983b', 80, '2021-01-18 02:20:17', 0),
('8b09e158-f301-b99d-7031-5ffe53a2145b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'dbd5aabe-290e-a221-dfee-5fe9917ed553', 90, '2021-01-13 01:58:24', 0),
('8b15ccc0-e0cf-078f-dee1-5ffe579c7242', '857d3817-1929-a617-ad2c-5ffe57175f84', 'af35032f-561c-58f6-3331-5fe991c5da84', -99, '2021-01-18 02:18:59', 0),
('8b1b6f9e-5a8b-7437-18b0-5ffe5407d7a4', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4a307772-951d-ff69-8455-5fe991fa4630', -99, '2021-01-18 02:17:49', 0),
('8b1bb917-7fb1-b825-5aec-6004f05c8d5e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '840d2deb-8dd9-b8da-cf64-5fe991c7c617', 75, '2021-01-18 02:21:17', 0),
('8b5108b0-0d1e-6bbf-8f45-5ffe57db45c6', '857d3817-1929-a617-ad2c-5ffe57175f84', '9e0af605-864a-1d4f-c6b6-5fe9917f12da', -99, '2021-01-18 02:18:59', 0),
('8b5a6950-8326-80eb-a819-5ffe56521da4', '860158ee-3501-2093-b810-5ffe567b916e', 'a3dd0e7e-396e-6394-b676-5fe9917eb3e6', -98, '2021-01-18 02:20:17', 0),
('8b5ab5f8-a7c9-fc8e-3cd5-6004f0afbdfe', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '65b8c1f5-c153-f472-071a-5fe991ea3090', 75, '2021-01-18 02:23:05', 0),
('8b6d26b8-6010-f094-8a3e-5ffe538331e9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd65faf8c-dd3c-b418-dbef-5fe99179789c', 90, '2021-01-13 01:58:24', 0),
('8b8d8617-79b4-5af4-05ad-5ffe57533ebb', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9b590855-d45d-2b3f-dc76-5fe991a05eaa', -98, '2021-01-18 02:21:56', 0),
('8b8e8288-7fa6-0f48-ab61-5ffe577bc33b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ac57ede7-ba37-daae-9348-5fe991a599f2', 75, '2021-01-18 02:18:59', 0),
('8ba96581-9f04-58a9-18dd-6004f058f5df', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8688f3b6-4e6f-c7ac-44dd-5fe9911a1bf1', 75, '2021-01-18 02:21:17', 0),
('8bbf09fb-0211-3648-9242-6004f05ecbf6', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6a687475-1a50-917d-75d3-5fe9918a989d', -99, '2021-01-18 02:23:05', 0),
('8bc5b3d7-7b74-dcd0-b1b5-5ffe532d590d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7a70175c-e461-3c60-f0b9-5fe9911a6123', 89, '2021-01-13 01:58:24', 0),
('8bca2d47-fa0e-ba64-9f94-5ffe549323f4', 'f3ab2114-3037-5119-1375-5ffe5300083d', '47662a0f-8676-9eee-4919-5fe9911a954f', 80, '2021-01-18 02:17:49', 0),
('8bf09d0f-97e2-bb4c-d0ee-5ffe5737a1db', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b12cce2f-60ac-da2e-547b-5fe9919f721c', -99, '2021-01-18 02:18:59', 0),
('8bf4af12-7d30-894c-975a-6004f041579b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6d5fbf99-0522-690a-dabb-5fe99188c4b5', -99, '2021-01-18 02:21:17', 0),
('8c02964a-17e5-dd66-1de8-5ffe5709495a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9eeea38f-7536-6b8e-cd5f-5fe99168e8ca', 80, '2021-01-18 02:21:56', 0),
('8c092ed1-89eb-cc69-ed9c-5ffe56382d91', '860158ee-3501-2093-b810-5ffe567b916e', 'dbdb0c61-8f47-3c40-57b4-5fe991fe567d', 80, '2021-01-18 02:20:17', 0),
('8c28f31c-9c82-76b5-4dfe-6004f057822d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '64bbaf2e-7501-4095-0af1-5fe99123fba6', 75, '2021-01-18 02:23:05', 0),
('8c329a72-3185-cc22-e413-5ffe53f76033', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7e00d922-8704-0640-deb7-5fe9912630d1', 90, '2021-01-13 01:58:24', 0),
('8c35dff7-8159-8571-7de4-5ffe54ce72b2', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4bfafc04-0639-1b18-8f38-5fe9912385c2', -99, '2021-01-18 02:17:49', 0),
('8c648c89-5619-2b24-399a-5ffe57c50c94', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ab456744-738b-c720-3322-5fe991b0dab8', 75, '2021-01-18 02:18:59', 0),
('8c6a0d88-4230-c1d0-d7e3-5ffe57cb179f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9e0fe800-79ba-5cd5-06ef-5fe991984322', 80, '2021-01-18 02:21:56', 0),
('8c8fde66-2e8b-108d-633b-6004f08e621d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3551a270-f18f-bc61-d9ab-5fe991257d80', -98, '2021-01-18 02:23:05', 0),
('8c9c3c0e-7ad5-d84b-910c-5ffe5431fd15', 'f3ab2114-3037-5119-1375-5ffe5300083d', '468a5f69-7fc3-6e53-0551-5fe99174b182', 80, '2021-01-18 02:17:49', 0),
('8c9cb66b-a260-1c04-bb53-5ffe5613d957', '860158ee-3501-2093-b810-5ffe567b916e', 'ce6e0f93-2998-985d-7b87-5fe991d71448', 80, '2021-01-18 02:20:17', 0),
('8ca7e456-bf5b-ccdf-eaec-5ffe53c9a01e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7d1e9133-c151-88c0-eaec-5fe991c34593', 90, '2021-01-13 01:58:24', 0),
('8cccf1ea-ca1b-e678-95ea-5ffe5762b9a3', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a0add8a9-b932-fbce-14dd-5fe9913ae8a5', 80, '2021-01-18 02:21:56', 0),
('8cd2cecd-a475-e4d7-ccd0-6004f0664542', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '67aea666-6768-bbe9-f646-5fe99150edf5', 75, '2021-01-18 02:21:17', 0),
('8ce40d27-28b8-acab-bee2-5ffe57a2847b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c78e668a-e9c8-187c-1443-5fe991aafc4c', -98, '2021-01-18 02:18:59', 0),
('8cf71ef9-cf04-df4a-1ffd-6004f0279925', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3917de13-cf89-17f0-e38d-5fe99121f8ee', 75, '2021-01-18 02:23:05', 0),
('8d02be9a-25b3-6536-293b-5ffe56eff107', '860158ee-3501-2093-b810-5ffe567b916e', 'f496047a-6f9e-53a2-3f3a-5fe99169c2d7', 80, '2021-01-18 02:20:17', 0),
('8d02efb8-b0e3-dc47-7f1f-5ffe5468fa98', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ab881f0b-8357-88f0-96b1-5fe991a4e4c1', -98, '2021-01-18 02:17:49', 0),
('8d0f3b53-430c-cc2e-e8a7-5ffe53a43953', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7fb8f225-a99e-f07d-efab-5fe991f451cb', 90, '2021-01-13 01:58:24', 0),
('8d3b18c6-9bfb-4999-78db-5ffe5793d246', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9fce588d-18cd-c0d3-f89b-5fe9911c9c0a', -99, '2021-01-18 02:21:56', 0),
('8d5f3be1-8deb-5733-8e64-5ffe54d54869', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'af9eb37a-1a01-b0a6-fd0d-5fe99153846a', 80, '2021-01-18 02:17:49', 0),
('8d60d6eb-a080-b8cc-fd4d-5ffe572ec5f7', '857d3817-1929-a617-ad2c-5ffe57175f84', 'cb3e92a9-b63b-131f-c460-5fe9915c6bd2', 75, '2021-01-18 02:18:59', 0),
('8d627e38-09dc-f970-5b44-6004f0cbeef7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3826d8ff-0a94-78ba-1f41-5fe991cc13d7', 75, '2021-01-18 02:23:05', 0),
('8d632b18-f5b4-7a19-194b-5ffe56895b42', '860158ee-3501-2093-b810-5ffe567b916e', 'e8300251-c3bb-5889-1e43-5fe99135777f', -99, '2021-01-18 02:20:17', 0),
('8d65b1e0-0632-1341-f1ca-5ffe53d9ee68', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7edf4208-d92c-4f4d-4e1a-5fe991304f60', 90, '2021-01-13 01:58:24', 0),
('8db7ec8c-7b66-ba72-1a34-5ffe57912229', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9d30721c-158f-c056-692b-5fe99127c260', 80, '2021-01-18 02:21:56', 0),
('8dc0d99a-d32d-bfd7-98df-5ffe54a890d1', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ae9d5dd6-d898-6aea-e9e3-5fe99117c20d', 80, '2021-01-18 02:17:49', 0),
('8dc47593-5841-59d6-a49b-5ffe57696d53', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ca4f132d-502d-5aee-0cd4-5fe9916973a5', 75, '2021-01-18 02:18:59', 0),
('8dcad8cf-a766-8a49-7f7e-5ffe563cb899', '860158ee-3501-2093-b810-5ffe567b916e', 'c20c0b36-47c2-af55-32d7-5fe9914f650f', 80, '2021-01-18 02:20:17', 0),
('8dcc9404-9459-549c-f2d2-6004f051e54b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'e5950731-4ab0-2b54-5c51-5fe991eb9484', -98, '2021-01-18 02:21:17', 0),
('8dcddd4d-2bde-da6e-f84d-6004f0ba4431', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3ba2a8c3-0658-9208-ad4a-5fe991362626', 75, '2021-01-18 02:23:05', 0),
('8dd2f0e9-cc82-7109-a74b-5ffe53b22929', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7c4a05ce-6ac7-4196-607c-5fe9911b0e45', 90, '2021-01-13 01:58:24', 0),
('8de7fda5-3703-4450-ad29-6004f0561176', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '85a8e890-cfc8-9eaa-179b-5fe991c189f0', -99, '2021-01-18 02:21:17', 0),
('8e1007de-2d16-9a80-bc24-6004f07b0d31', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd3d3cf03-be8a-3584-a18c-5fe99113181a', 75, '2021-01-18 02:21:17', 0),
('8e17e33c-b727-85e2-5a89-5ffe545a468d', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b1a64d3e-879f-53ba-d1b5-5fe991bc50df', 80, '2021-01-18 02:17:49', 0),
('8e1bb1e5-6a25-e2fc-e733-5ffe573db5e0', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a18349b9-01ec-38ff-9453-5fe9917637c6', -99, '2021-01-18 02:21:56', 0),
('8e29af9f-ffa7-3d07-73e1-6004f0f3f5d5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3a20c576-4d3d-4596-153d-5fe991eab6b4', -99, '2021-01-18 02:23:05', 0),
('8e2d09c0-6bc5-e5c8-f779-5ffe57577126', '857d3817-1929-a617-ad2c-5ffe57175f84', 'cd0d3d3e-c909-743b-3dd5-5fe991dc1b1f', 75, '2021-01-18 02:18:59', 0),
('8e2fa199-f91f-ea7c-7d38-5ffe53d85621', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '80904afb-9a34-7ce1-e2a7-5fe9913a83f3', 90, '2021-01-13 01:58:24', 0),
('8e379e5b-33a3-4770-5683-5ffe5617847e', '860158ee-3501-2093-b810-5ffe567b916e', '100d44d4-2ad9-3006-5249-5fe99105dfc7', -99, '2021-01-18 02:20:17', 0),
('8e78478c-57bd-a1f4-3e95-5ffe547c6c56', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b0a335f6-ec5f-19f1-4914-5fe991384431', -99, '2021-01-18 02:17:49', 0),
('8e839ef0-2312-776f-60b3-5ffe5756ee56', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9c4db416-fd51-21e4-e198-5fe9910a31e4', 80, '2021-01-18 02:21:56', 0),
('8e9132f0-e0f1-1fe8-c84b-5ffe57e1b020', '857d3817-1929-a617-ad2c-5ffe57175f84', 'cc23a415-34a1-3d49-5f84-5fe991ade554', -99, '2021-01-18 02:18:59', 0),
('8e9281d7-5884-a5c1-0f82-5ffe53bbb818', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7b5d68fd-4c97-3b86-4ae3-5fe991594e2a', 90, '2021-01-13 01:58:24', 0),
('8e95872d-7f4e-d6e6-01a2-6004f0af32d3', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '374897c0-70e4-0345-a9e4-5fe9911d4e4e', 75, '2021-01-18 02:23:05', 0),
('8e9a6061-c917-6e62-379a-5ffe5654a98a', '860158ee-3501-2093-b810-5ffe567b916e', 'b20b0384-6478-f201-f7a9-5fe9917d9cf0', 80, '2021-01-18 02:20:17', 0),
('8eaf8f3f-e5ec-2df2-e7d7-6004f0b82f50', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '835cd764-a822-7a1d-c7c4-5fe99193125d', 75, '2021-01-18 02:21:17', 0),
('8eb68d27-2038-1084-a647-6004f04459ad', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '12080549-97d3-9a50-fd3b-5fe99113e041', 75, '2021-01-18 02:21:17', 0),
('8ee500ff-a832-c804-e36a-5ffe54a3c9f7', 'f3ab2114-3037-5119-1375-5ffe5300083d', '27da2e31-71e5-6694-1bad-5fe9910245e3', 80, '2021-01-18 02:17:49', 0),
('8ee5700d-44a5-ecd4-fb56-5ffe54046351', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ada0ada6-a1ca-ffb8-7957-5fe991054b82', 80, '2021-01-18 02:17:49', 0),
('8ef3d212-cdea-1858-d765-5ffe5736871c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '31268c7a-771e-45dc-ad3e-5fe99197378d', -98, '2021-01-18 02:21:56', 0),
('8efa5602-9636-9fd9-f7e1-5ffe5321c03e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '896f387c-3192-39ce-cf8f-5fe9910f31dc', 89, '2021-01-13 01:58:24', 0),
('8f09e44c-99ab-33ce-02c5-5ffe57c83d3d', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c96705f6-2453-523f-1014-5fe991fd5bf1', 75, '2021-01-18 02:18:59', 0),
('8f25d7c4-602b-e315-1316-6004f0d92b33', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3cbabe1f-c724-bcf3-7dd2-5fe991c08fe0', -99, '2021-01-18 02:23:05', 0),
('8f36316e-cd0f-472f-e77b-5ffe56733f62', '860158ee-3501-2093-b810-5ffe567b916e', '4560b1d3-d8ef-07c0-24ee-5fe991cad1e2', -98, '2021-01-18 02:20:17', 0),
('8f4953f5-0d97-181e-399d-6004f05d5aee', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8762c156-1605-4d19-cf81-5fe991f6dbaf', -99, '2021-01-18 02:21:17', 0),
('8f4d2435-2139-d8b5-5e53-5ffe5427e906', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b29b67bb-1554-6f56-3284-5fe991a5bebc', -99, '2021-01-18 02:17:49', 0),
('8f4fa8c4-8f64-37b1-6834-5ffe5302db2e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8d251326-d46e-e47a-bdf7-5fe9913c58f1', 90, '2021-01-13 01:58:24', 0),
('8f6a6622-9f92-4b78-99af-5ffe574ab10a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '359e58d4-672f-8450-0502-5fe991d90d53', 80, '2021-01-18 02:21:56', 0),
('8f7a4319-3f26-0c94-3eaf-5ffe5771685c', '857d3817-1929-a617-ad2c-5ffe57175f84', 'cdf4deca-43a7-96de-523c-5fe9917f19dc', -99, '2021-01-18 02:18:59', 0),
('8f965285-b45d-fe11-32d5-5ffe561e5e14', '860158ee-3501-2093-b810-5ffe567b916e', '49263512-3bb7-46b1-5871-5fe991aef925', 80, '2021-01-18 02:20:17', 0),
('8f9e3efc-8882-858c-aa2d-6004f01d545b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '11328ec1-927e-1859-c268-5fe991a3a3cf', 75, '2021-01-18 02:21:17', 0),
('8fa4b06d-bfb4-f161-78d5-6004f0e7aad5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '3665eb75-d663-c9b0-c26f-5fe9918ce9d1', 75, '2021-01-18 02:23:05', 0),
('8fa6a760-2da4-75e0-aac5-5ffe53db68fd', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8c32852a-7c8d-5cd3-6e2f-5fe9914a7895', 90, '2021-01-13 01:58:24', 0),
('8fadc066-2bab-5437-e029-5ffe54d9a621', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'aca0daac-a0ad-5952-f974-5fe991c6a958', 80, '2021-01-18 02:17:49', 0),
('8fd1b121-e3a6-7d3a-700c-5ffe571cbbf3', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '34832776-1f41-d9d6-3c88-5fe991652abf', 80, '2021-01-18 02:21:56', 0),
('8fd87a56-a2fb-d70c-ce99-5ffe57a50aa5', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c88c4932-f211-1278-2e83-5fe991d62f1d', 75, '2021-01-18 02:18:59', 0),
('8ff72d92-46f7-23c1-3baa-5ffe562a6bb0', '860158ee-3501-2093-b810-5ffe567b916e', '4852587d-2ed7-392a-225d-5fe991f70e21', 80, '2021-01-18 02:20:17', 0),
('900a21d5-0a88-313b-a010-5ffe534450f6', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8f1522ea-a950-b5f2-b9d6-5fe99134927b', 90, '2021-01-13 01:58:24', 0),
('90141d0a-9c23-b68f-8f1a-6004f0cfb53c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd57006b7-e7f1-a8df-7b38-5fe9914a3d6e', -98, '2021-01-18 02:23:05', 0),
('901610f5-adaf-1bcb-8a42-5ffe54c17d1d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5fed6e74-14c1-5041-37b3-5fe991c316b0', 89, '2021-01-18 02:17:49', 0),
('9034c946-0baa-5c10-b7ad-5ffe571ec8c1', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a1812648-b7a8-751b-ace4-5fe991b4de0b', -98, '2021-01-18 02:18:59', 0),
('90422f0d-a5f1-1579-7281-5ffe57e23e58', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '37da10a0-4b60-17b3-572d-5fe99146d1f5', 80, '2021-01-18 02:21:56', 0),
('9051d4bc-0e57-14f8-da97-6004f0dbc5ca', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '82a3bc12-4b9d-4c45-1469-5fe9918ccd58', 75, '2021-01-18 02:21:17', 0),
('905ef401-d598-29aa-864c-5ffe5637a2a3', '860158ee-3501-2093-b810-5ffe567b916e', '4b0b105d-c49d-64fd-880d-5fe991434844', 80, '2021-01-18 02:20:17', 0),
('906f1bf4-eae3-26ea-78ea-5ffe530afd02', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8e123978-8a99-2be4-e394-5fe9916e1de0', 90, '2021-01-13 01:58:24', 0),
('9070e760-a1db-0ef2-e594-5ffe541c9308', 'f3ab2114-3037-5119-1375-5ffe5300083d', '63536587-8335-30aa-cab1-5fe991afae1b', 80, '2021-01-18 02:17:49', 0),
('908362db-f0ec-657c-443c-6004f04baf55', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '140e324e-0201-5dd4-5831-5fe991f136fb', 75, '2021-01-18 02:21:17', 0),
('90863299-37d4-c011-73cc-6004f013f672', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '11168e71-dfb6-25c7-423a-5fe9913e4838', 75, '2021-01-18 02:23:05', 0),
('909d30b9-ad8e-57c7-fcec-5ffe574cc91b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a5b46281-8b2a-2314-5bd7-5fe991cb89bd', 75, '2021-01-18 02:18:59', 0),
('90b189e9-f385-81ae-d848-5ffe57623aa5', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '36b9debc-cf61-2e05-e0c1-5fe99114a8b1', -99, '2021-01-18 02:21:56', 0),
('90b999f0-a076-063b-50af-5ffe56b607f2', '860158ee-3501-2093-b810-5ffe567b916e', '4a307772-951d-ff69-8455-5fe991fa4630', -99, '2021-01-18 02:20:17', 0),
('90c70dc3-e24b-8178-f88c-5ffe532da656', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8b3e78a3-e5c1-2e16-f0a7-5fe9917788ca', 90, '2021-01-13 01:58:24', 0),
('90d73c96-5d8b-042b-03de-5ffe547fc474', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6291e723-4e2f-5086-cb7b-5fe991fdeab0', 80, '2021-01-18 02:17:49', 0),
('90ee820f-3f32-442a-71ba-6004f0b4c25c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '102a85b0-a8da-085d-303f-5fe9913862b6', 75, '2021-01-18 02:23:05', 0),
('9108f990-0c61-28f8-35d1-5ffe577d0b9b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '336abce4-cd82-bacf-2be2-5fe9917ce5f3', 80, '2021-01-18 02:21:56', 0),
('91094338-e084-67ed-63aa-5ffe571574b3', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a4c5d37e-7f45-eb0b-1cf9-5fe9917b9d6a', 75, '2021-01-18 02:18:59', 0),
('9122dbde-717c-8031-692c-5ffe56d4dd15', '860158ee-3501-2093-b810-5ffe567b916e', '47662a0f-8676-9eee-4919-5fe9911a954f', 80, '2021-01-18 02:20:17', 0),
('912c00fd-abda-4c17-cc62-5ffe532e1b38', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9002ab21-67ef-78bb-3774-5fe991d97cf4', 90, '2021-01-13 01:58:24', 0),
('913bb5a1-8e32-e252-0c42-5ffe548216cd', 'f3ab2114-3037-5119-1375-5ffe5300083d', '650451c3-2e32-4514-5415-5fe991af7c3c', 80, '2021-01-18 02:17:49', 0),
('915f27e3-425a-5335-8861-6004f0b315b1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '13119046-55d9-f4c7-8f0c-5fe991870bc3', 75, '2021-01-18 02:23:05', 0),
('916bc7f4-dfb4-9423-ea22-5ffe579a0892', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a794fcfe-711b-488f-84dd-5fe991cb8a8f', 75, '2021-01-18 02:18:59', 0),
('91776a3c-858a-5d70-3697-5ffe56a7bd35', '860158ee-3501-2093-b810-5ffe567b916e', '4bfafc04-0639-1b18-8f38-5fe9912385c2', -99, '2021-01-18 02:20:17', 0),
('91802a7f-80bc-9f19-31da-5ffe57710b2a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '38f7e37c-3780-9415-9113-5fe9915aee28', -99, '2021-01-18 02:21:56', 0),
('918d9e0d-3ae3-dacc-6ce2-5ffe53e4222e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8a4ef12f-2db6-bed2-069b-5fe991f829f8', 90, '2021-01-13 01:58:24', 0),
('919be874-d69a-adc7-59d6-6004f0fec1e1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '1315cdbc-7372-2004-13f9-5fe991112d5e', -99, '2021-01-18 02:21:17', 0),
('919fce20-bb3d-e84e-9b53-5ffe54538f9f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '642fcb3a-fe50-4dde-f514-5fe99159c799', -99, '2021-01-18 02:17:49', 0),
('91c76fa0-40cb-b567-ee72-5ffe572ad0cc', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a6a9a7bb-1ad5-e90a-9003-5fe99196320b', -99, '2021-01-18 02:18:59', 0),
('91ca2cbb-97c8-bb90-aaf0-6004f07546b5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '1224a14c-5751-b0f7-2546-5fe99171ecf5', -99, '2021-01-18 02:23:05', 0),
('91d188c9-b7cb-c5ee-35f4-5ffe5613649f', '860158ee-3501-2093-b810-5ffe567b916e', '468a5f69-7fc3-6e53-0551-5fe99174b182', 80, '2021-01-18 02:20:17', 0),
('91de0535-12e8-d39b-a88f-5ffe5709eb50', '857d3817-1929-a617-ad2c-5ffe57175f84', '990beb29-a1a8-9051-e65a-5fe9919d686d', 75, '2021-01-18 02:18:59', 0),
('91e9d35d-6ad8-94bb-e43b-5ffe53280ca1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'f08c06ac-3bfb-3c90-8304-5fe99159c5a2', 89, '2021-01-13 01:58:24', 0),
('91eb7d0f-25c3-15d5-4bb3-5ffe57f9037c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '324a8fc4-a1f5-0ff1-9dfe-5fe99155b682', 80, '2021-01-18 02:21:56', 0),
('920716b6-9a78-08fc-a3b8-5ffe54a3e446', 'f3ab2114-3037-5119-1375-5ffe5300083d', '61ba0986-eeb4-828b-acec-5fe9914de2cd', 80, '2021-01-18 02:17:49', 0),
('9226f822-2432-3b14-4adf-5ffe57e083fb', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a3c8b404-bff0-380b-9a97-5fe99126fb9f', 75, '2021-01-18 02:18:59', 0),
('922b8a1c-db61-84a5-8e0c-5ffe56634278', '860158ee-3501-2093-b810-5ffe567b916e', 'ab881f0b-8357-88f0-96b1-5fe991a4e4c1', -98, '2021-01-18 02:20:17', 0),
('922fa8cd-a200-18f5-f8e1-6004f0fc2625', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'f48c0261-22b6-af87-604d-5fe9918bf017', 75, '2021-01-18 02:23:05', 0),
('9248c31e-baae-4ba1-2e10-5ffe53ee3257', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '1308c7c8-01bb-0130-60b8-5fe991c995bc', 90, '2021-01-13 01:58:24', 0),
('92605944-fd40-3897-f96f-5ffe57b885c1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e1294056-4128-6d77-cf89-5fe991e10d4b', -98, '2021-01-18 02:21:56', 0),
('92616f24-9bd7-75f3-91a9-5ffe54c40e4f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '65dedae3-b5b0-d891-450b-5fe9917e0089', -99, '2021-01-18 02:17:49', 0),
('9282fd4e-ea28-6707-1fc7-6004f012129e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '104b7824-509e-9c2c-15b1-5fe991646d62', 75, '2021-01-18 02:21:17', 0),
('928549a4-8e91-76fd-c050-5ffe57aac305', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a893ae5e-04f1-1ad5-14f8-5fe99134dca8', -99, '2021-01-18 02:18:59', 0),
('9286555a-2179-0ee3-5a98-5ffe560aeb9b', '860158ee-3501-2093-b810-5ffe567b916e', 'af9eb37a-1a01-b0a6-fd0d-5fe99153846a', 80, '2021-01-18 02:20:17', 0),
('92950994-09ab-e656-7b5e-5ffe5343e131', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5fed6e74-14c1-5041-37b3-5fe991c316b0', 89, '2021-01-13 01:58:24', 0),
('92981ad3-c13a-3983-5542-6004f004ea38', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '1400ff85-edb1-8f1e-ecfb-5fe9914372ae', -99, '2021-01-18 02:23:05', 0),
('92ab7fa6-a0ab-cd8b-91d5-5ffe534aec1f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '1218d852-02f8-a839-5599-5fe9914ce21e', 90, '2021-01-13 01:58:24', 0),
('92c108c8-0b74-ae1d-38b1-5ffe5736c44e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e651281c-d5fd-1e65-c965-5fe991ccde64', 80, '2021-01-18 02:21:56', 0),
('92ca9113-7a68-b8f5-a38f-5ffe54eef1b7', 'f3ab2114-3037-5119-1375-5ffe5300083d', '60e5d013-6ac0-91dd-15b1-5fe991a95598', 80, '2021-01-18 02:17:49', 0),
('92df2efc-bebb-d65c-2cd6-5ffe56f503f2', '860158ee-3501-2093-b810-5ffe567b916e', 'ae9d5dd6-d898-6aea-e9e3-5fe99117c20d', 80, '2021-01-18 02:20:17', 0),
('92ec22ea-fd16-760b-0614-5ffe57d9ed3c', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a2d06f6c-d1d9-df54-18be-5fe991d6de31', 75, '2021-01-18 02:18:59', 0),
('93109628-4b5a-4461-d145-5ffe53166604', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '149e29e6-93cc-1cba-c2d2-5fe991cc1dc2', 90, '2021-01-13 01:58:24', 0),
('9320d409-ea4b-3834-367b-6004f08b5ac0', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e54e0225-640f-567a-882a-5fe991cbc6b9', 75, '2021-01-18 02:23:05', 0),
('93240ba2-1688-0f2d-fe73-5ffe54d24dc2', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'cdd1e182-c278-af31-6a4e-5fe991051755', 89, '2021-01-18 02:17:49', 0),
('932578b4-a320-582a-e3fe-5ffe5791d907', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e59920e8-2c35-973a-d33c-5fe991e47b1d', 80, '2021-01-18 02:21:56', 0),
('935f0e7b-29ef-c6f0-bff5-5ffe5772dd6f', '857d3817-1929-a617-ad2c-5ffe57175f84', '8509116a-03b1-6673-110c-5fe991954b03', -98, '2021-01-18 02:18:59', 0),
('9365e445-a6a5-98fa-7b62-6004f0f37ce2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '150306bd-23b9-df24-ee50-5fe99192ff27', -99, '2021-01-18 02:21:17', 0),
('9370447d-ba73-a4d8-44f0-5ffe5378466e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '13ceea2d-5bbc-21c2-b72c-5fe991b92f9f', 90, '2021-01-13 01:58:24', 0),
('93813902-7587-c4c7-2d08-5ffe54a9906d', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd189edb6-d4c6-af84-aed6-5fe9919e773d', 80, '2021-01-18 02:17:49', 0),
('9383feb5-8315-43b4-7131-5ffe57c672ea', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e8072daa-fce4-2cee-14e3-5fe991410489', 80, '2021-01-18 02:21:56', 0),
('938e8b87-1cbc-7ad3-b1f8-5ffe56a770ba', '860158ee-3501-2093-b810-5ffe567b916e', 'b1a64d3e-879f-53ba-d1b5-5fe991bc50df', 80, '2021-01-18 02:20:17', 0),
('9394ec85-9047-aef0-1f7d-6004f05239c5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '582d4670-fa7e-c32e-af44-5fe991a87c45', -98, '2021-01-18 02:23:05', 0),
('93c35270-42fd-8ded-d597-5ffe57d72da1', '857d3817-1929-a617-ad2c-5ffe57175f84', '8936f48d-6faf-aae4-427b-5fe9917348c9', 75, '2021-01-18 02:18:59', 0),
('93c5b4da-bd3b-63f6-0e3a-5ffe53474a88', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '114815ee-8523-c73a-362a-5fe991f9439c', 90, '2021-01-13 01:58:24', 0),
('93d704d0-7f45-f6b5-10d4-5ffe549926db', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd0a1d2a6-ffea-4a9d-4bb6-5fe991ef9ffe', 80, '2021-01-18 02:17:49', 0),
('93e6d3a1-5943-1331-bb94-5ffe56a6dcae', '860158ee-3501-2093-b810-5ffe567b916e', 'b0a335f6-ec5f-19f1-4914-5fe991384431', -99, '2021-01-18 02:20:17', 0),
('93eb702d-a059-966c-71b0-5ffe575e2272', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e70a07f9-978a-eb0f-5fe3-5fe99197714d', -99, '2021-01-18 02:21:56', 0),
('9401b6b0-6918-7f1b-36bb-6004f0f9f205', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5c0702a3-1f94-2c28-aef8-5fe991aa5d5a', 75, '2021-01-18 02:23:05', 0),
('941ebb3b-8fdb-e2a9-d59c-5ffe57c5f0f6', '857d3817-1929-a617-ad2c-5ffe57175f84', '883343cc-5856-3f81-0dda-5fe99171e29d', 75, '2021-01-18 02:18:59', 0),
('94298e29-a2c4-0af6-2567-5ffe539e795d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '156a9daf-1314-e4e9-8677-5fe991e24ee1', 90, '2021-01-13 01:58:24', 0),
('9433ec40-961b-5246-02f9-5ffe548cdfcc', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd39fc1ec-9a70-7ef0-8b64-5fe9912bbeaf', 80, '2021-01-18 02:17:49', 0),
('9437541f-39e6-942e-3cbb-5ffe560bad30', '860158ee-3501-2093-b810-5ffe567b916e', 'ada0ada6-a1ca-ffb8-7957-5fe991054b82', 80, '2021-01-18 02:20:17', 0),
('9458447b-4ca0-e964-2813-5ffe5701e5a5', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e4e302c6-3fb2-9304-85f8-5fe9913267cd', 80, '2021-01-18 02:21:56', 0),
('945cdb04-d02b-5e97-81cd-6004f0822d5b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'f5a10111-5aea-3834-a431-5fe991f1a0ac', 75, '2021-01-18 02:21:17', 0),
('9469cecb-c548-c72f-336a-6004f0aef454', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5b0e9519-f4aa-ba7d-2b28-5fe991e20867', 75, '2021-01-18 02:23:05', 0),
('9474074c-a6d5-0905-f3ee-5ffe56e97a10', '860158ee-3501-2093-b810-5ffe567b916e', '27da2e31-71e5-6694-1bad-5fe9910245e3', 80, '2021-01-18 02:20:17', 0),
('948097a3-7a45-9612-5646-5ffe57e0cf35', '857d3817-1929-a617-ad2c-5ffe57175f84', '8b196f3d-f5c9-3f7b-9f2f-5fe9914dd267', 75, '2021-01-18 02:18:59', 0),
('94872251-0b10-20b4-93be-5ffe532efaf8', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '10679577-ff18-7309-b27c-5fe991b37229', 90, '2021-01-13 01:58:24', 0),
('948c27d8-efce-f1d7-a08d-5ffe56703b55', '860158ee-3501-2093-b810-5ffe567b916e', 'b29b67bb-1554-6f56-3284-5fe991a5bebc', -99, '2021-01-18 02:20:17', 0),
('948fa10b-980b-7f7f-0e74-5ffe5476ae47', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd27d6ac9-0dc4-e687-467d-5fe9919ba898', -99, '2021-01-18 02:17:49', 0),
('94ad06b6-4cdf-87ea-b5ff-5ffe54142420', 'f3ab2114-3037-5119-1375-5ffe5300083d', '2706b8b1-f8f3-607b-c2f7-5fe991057a1c', -99, '2021-01-18 02:17:49', 0),
('94b5766e-d321-fa4a-29f2-5ffe57e231b1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e8ff7685-9599-b1b4-e206-5fe9910525ef', -99, '2021-01-18 02:21:56', 0),
('94dcb62a-c9fc-371b-481b-6004f0871370', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5dd4bc31-c591-33f4-58de-5fe991e1aaa8', 75, '2021-01-18 02:23:05', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('94dfd5ed-6a7d-3962-ca82-5ffe5654d8c5', '860158ee-3501-2093-b810-5ffe567b916e', 'aca0daac-a0ad-5952-f974-5fe991c6a958', 80, '2021-01-18 02:20:17', 0),
('94e66524-6f29-a799-8e1f-5ffe531d914b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6bcd468f-05a5-bcf4-564d-5fe991e0de54', 89, '2021-01-13 01:58:24', 0),
('94eacf55-e4a1-03b3-7103-5ffe579b812b', '857d3817-1929-a617-ad2c-5ffe57175f84', '8a3c4ee5-e844-1a52-2808-5fe991728c0f', -99, '2021-01-18 02:18:59', 0),
('94f53b1a-9f39-98f1-d0e5-5ffe543bd084', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'cfb885ed-0011-0629-a460-5fe99177479c', 80, '2021-01-18 02:17:49', 0),
('951c08d3-094c-2f11-c3dd-6004f0e93d39', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '148c44dd-fa1a-55a5-216a-5fe991e2e075', 75, '2021-01-18 02:21:17', 0),
('95279212-7ffc-c729-decb-5ffe571f2179', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e42c95a9-569b-ed17-52d5-5fe9910ba6e9', 80, '2021-01-18 02:21:56', 0),
('9532cdad-7e76-6320-5329-5ffe563a0c26', '860158ee-3501-2093-b810-5ffe567b916e', '5fed6e74-14c1-5041-37b3-5fe991c316b0', 89, '2021-01-18 02:20:17', 0),
('953af36a-0dbc-7c69-0256-6004f0a6a2eb', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '87328551-5fbc-ff3f-e0f1-5fe99100990f', -98, '2021-01-18 02:21:17', 0),
('95456f10-b3be-106a-e743-6004f0e43e33', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5ce9badf-a070-6591-2e16-5fe991d43544', -99, '2021-01-18 02:23:05', 0),
('9546da9b-4e1c-6c68-d555-5ffe53ef551f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6f37cdc5-64de-e0cb-0398-5fe991c753dd', 90, '2021-01-13 01:58:24', 0),
('95592984-35b8-978a-b2d1-5ffe571dd0a2', '857d3817-1929-a617-ad2c-5ffe57175f84', '872bf147-7d38-4099-a281-5fe991390670', 75, '2021-01-18 02:18:59', 0),
('958cdf5a-319e-f6d0-685c-5ffe567e92de', '860158ee-3501-2093-b810-5ffe567b916e', '63536587-8335-30aa-cab1-5fe991afae1b', 80, '2021-01-18 02:20:17', 0),
('9594652f-1c46-d341-8954-5ffe57ece855', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '56a6bf95-4af3-f5f0-259a-5fe991106ab5', -98, '2021-01-18 02:21:56', 0),
('9596babb-96b3-123f-387a-5ffe5407e51c', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd46c9d4a-4566-775c-c818-5fe991e6739e', -99, '2021-01-18 02:17:49', 0),
('95a69ccd-9ac7-bf9c-144d-5ffe53ce58e2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6e736f3a-1b1d-ec66-c34f-5fe9916edc56', 90, '2021-01-13 01:58:24', 0),
('95b3c6ba-c3ca-978a-628f-6004f00ad4a7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5a1e6717-7bf9-3dfd-57de-5fe99132f137', 75, '2021-01-18 02:23:05', 0),
('95c95a2c-0bf9-1939-6bcd-5ffe57fc3bf7', '857d3817-1929-a617-ad2c-5ffe57175f84', '8bf64f92-13f1-2135-3a28-5fe991084f6b', -99, '2021-01-18 02:18:59', 0),
('95e8d157-d740-45e0-c440-5ffe56fa7075', '860158ee-3501-2093-b810-5ffe567b916e', '6291e723-4e2f-5086-cb7b-5fe991fdeab0', 80, '2021-01-18 02:20:17', 0),
('95f52bcd-6574-176a-b63e-5ffe54a69ad1', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'cec82ba1-feb9-f717-4fc3-5fe991f6a31b', 80, '2021-01-18 02:17:49', 0),
('95f9e47c-4a04-c0ed-5b18-5ffe57cae4d9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5a5c77c9-0168-2cf4-88a5-5fe9911dc650', 80, '2021-01-18 02:21:56', 0),
('96049dc6-e6e3-51fb-e755-5ffe53aa0dee', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '70b85345-f9e6-4479-50bf-5fe991d4f6ee', 90, '2021-01-13 01:58:24', 0),
('9624f8e4-40be-392b-29c4-6004f00ec9b9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5eb3c820-bf11-cc6b-e123-5fe991053126', -99, '2021-01-18 02:23:05', 0),
('962b015e-3d96-b522-d041-6004f01945f4', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8ad528ed-feb4-75f8-27c4-5fe9915a5cfc', 75, '2021-01-18 02:21:17', 0),
('96307903-fb1e-f82a-ec46-5ffe575345d5', '857d3817-1929-a617-ad2c-5ffe57175f84', '862b5b74-cced-59b5-0fe7-5fe991e5983b', 75, '2021-01-18 02:18:59', 0),
('964d78a6-f6db-6981-845b-5ffe563038eb', '860158ee-3501-2093-b810-5ffe567b916e', '650451c3-2e32-4514-5415-5fe991af7c3c', 80, '2021-01-18 02:20:17', 0),
('96512a37-6200-929d-89df-5ffe542ec0cf', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3caecfce-8fa3-6dca-d275-5fe991ae7128', 89, '2021-01-18 02:17:49', 0),
('965c3bf0-0d75-6871-69e5-5ffe53f22871', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6ff6bc3b-22a7-25f3-b41a-5fe9917a810d', 90, '2021-01-13 01:58:24', 0),
('9664d3e4-8f16-a9cd-1c12-5ffe57b03795', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '597578a9-e100-d14a-98a9-5fe991cb2926', 80, '2021-01-18 02:21:56', 0),
('968e8187-9c9b-72b6-85f1-5ffe571c844c', '857d3817-1929-a617-ad2c-5ffe57175f84', 'a3dd0e7e-396e-6394-b676-5fe9917eb3e6', -98, '2021-01-18 02:18:59', 0),
('9692fb96-214c-e0be-ad4b-6004f0cb6571', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '59287b25-b69c-a8dd-6784-5fe991db46b6', 75, '2021-01-18 02:23:05', 0),
('96a96d9f-c869-3e05-c480-5ffe560bbf0b', '860158ee-3501-2093-b810-5ffe567b916e', '642fcb3a-fe50-4dde-f514-5fe99159c799', -99, '2021-01-18 02:20:17', 0),
('96b5e16c-2a0d-8179-1c27-5ffe543dcb6c', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4075fdc3-dde1-c555-a841-5fe991ed277c', 80, '2021-01-18 02:17:49', 0),
('96c90e72-8849-f666-723e-5ffe57c4a06f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5c10a0c5-ddae-9e33-afae-5fe991ed07ff', 80, '2021-01-18 02:21:56', 0),
('96f3ea96-c365-89b2-2b5f-5ffe57172511', '857d3817-1929-a617-ad2c-5ffe57175f84', 'dbdb0c61-8f47-3c40-57b4-5fe991fe567d', 75, '2021-01-18 02:18:59', 0),
('96fd65bc-3612-35d8-db28-5ffe53e485b7', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6d9aa8e5-15b0-7074-59f5-5fe991e77181', 90, '2021-01-13 01:58:24', 0),
('96ff9396-39ba-4453-fbe8-6004f09c64d3', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e1294056-4128-6d77-cf89-5fe991e10d4b', -98, '2021-01-18 02:23:05', 0),
('97048687-8370-16b7-0ce8-6004f04bb922', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8a0f118c-c330-84ca-6b98-5fe991e394d8', 75, '2021-01-18 02:21:17', 0),
('971ee480-9e8f-c4db-c868-5ffe5481f772', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3f88e746-8c1a-3fdb-0587-5fe991bd8ab1', 80, '2021-01-18 02:17:49', 0),
('97357d14-5060-a5c4-3f9d-5ffe57262f81', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5b413545-d4fd-c9b7-d6d2-5fe991c152ad', -99, '2021-01-18 02:21:56', 0),
('97451822-0d0e-4e4e-6dc4-5ffe563f71db', '860158ee-3501-2093-b810-5ffe567b916e', '61ba0986-eeb4-828b-acec-5fe9914de2cd', 80, '2021-01-18 02:20:17', 0),
('97590ae0-2369-1b02-2191-5ffe537a25a9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7195a6d5-a70c-c709-6fc4-5fe991771207', 90, '2021-01-13 01:58:24', 0),
('975ef59c-223d-d14c-1de1-5ffe57d46721', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ce6e0f93-2998-985d-7b87-5fe991d71448', 75, '2021-01-18 02:18:59', 0),
('9768f3ca-4362-a7a6-5cbd-6004f0243614', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e651281c-d5fd-1e65-c965-5fe991ccde64', 75, '2021-01-18 02:23:05', 0),
('97785557-999c-906b-4c8c-5ffe54037020', 'f3ab2114-3037-5119-1375-5ffe5300083d', '42399d77-03d4-1a1d-d87f-5fe9916d2287', 80, '2021-01-18 02:17:49', 0),
('9797dfb8-41b8-084f-9e8a-5ffe57c03775', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '58a5dcde-f29e-9c98-9c07-5fe991eb4315', 80, '2021-01-18 02:21:56', 0),
('97a36010-c106-5918-8b5e-5ffe56d45b55', '860158ee-3501-2093-b810-5ffe567b916e', '65dedae3-b5b0-d891-450b-5fe9917e0089', -99, '2021-01-18 02:20:17', 0),
('97bf40ba-48c0-f2ed-c5d1-5ffe533886a5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6cc3fc48-e397-50dc-68d3-5fe99145e426', 90, '2021-01-13 01:58:24', 0),
('97c1078a-5079-bbfb-17a6-5ffe5787ce1d', '857d3817-1929-a617-ad2c-5ffe57175f84', 'f496047a-6f9e-53a2-3f3a-5fe99169c2d7', 75, '2021-01-18 02:18:59', 0),
('97d55c84-3194-39ae-c1e2-6004f0280ba4', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e59920e8-2c35-973a-d33c-5fe991e47b1d', 75, '2021-01-18 02:23:05', 0),
('97ddad57-28af-5b01-86b8-5ffe54c32958', 'f3ab2114-3037-5119-1375-5ffe5300083d', '41448afe-1d6a-8576-b32b-5fe991645daa', -99, '2021-01-18 02:17:49', 0),
('97f05e00-0dd1-2c25-0efb-6004f0c7eae8', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8caa545c-91aa-b64d-29e7-5fe9916b7bd3', 75, '2021-01-18 02:21:17', 0),
('98022b4a-3fba-0998-5ab0-5ffe56cbf1f7', '860158ee-3501-2093-b810-5ffe567b916e', '60e5d013-6ac0-91dd-15b1-5fe991a95598', 80, '2021-01-18 02:20:17', 0),
('980c2b95-579c-7f58-b864-5ffe57d6998a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5cdd1a92-d464-520e-afab-5fe991d72da7', -99, '2021-01-18 02:21:56', 0),
('981c8110-0a9d-b491-e4a5-5ffe53ab3d8a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c4ba2a31-6dbf-61a9-f6b2-5fe99130e025', 89, '2021-01-13 01:58:24', 0),
('9826aa5f-8322-a10e-5051-5ffe573940d1', '857d3817-1929-a617-ad2c-5ffe57175f84', 'e8300251-c3bb-5889-1e43-5fe99135777f', -99, '2021-01-18 02:18:59', 0),
('9837b504-ba61-4815-08f6-5ffe540c6ba5', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3e86a2ea-35c6-889b-3f5d-5fe991d821af', 80, '2021-01-18 02:17:49', 0),
('9840f5a8-41f4-1a8a-e009-6004f030f719', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e8072daa-fce4-2cee-14e3-5fe991410489', 75, '2021-01-18 02:23:05', 0),
('985962f1-2069-3c08-384f-5ffe568bfe6b', '860158ee-3501-2093-b810-5ffe567b916e', 'cdd1e182-c278-af31-6a4e-5fe991051755', -98, '2021-01-18 02:20:17', 0),
('985b0adc-1b30-b0d8-3f30-5ffe53fdac9e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '63536587-8335-30aa-cab1-5fe991afae1b', 90, '2021-01-13 01:58:24', 0),
('985d0c56-3187-ba9f-dc9e-5ffe57d10afe', '857d3817-1929-a617-ad2c-5ffe57175f84', '42f23425-20bd-24a2-89cc-5fe991fb719d', -98, '2021-01-18 02:18:59', 0),
('9878e1fc-b28c-2d09-17b9-5ffe57f093f3', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '57c5b394-b150-f1c0-2a99-5fe9918738a0', 80, '2021-01-18 02:21:56', 0),
('987faf2d-dd76-6a75-5d24-5ffe5315cb5a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c817a692-cbd3-c46c-ea1e-5fe991773119', 90, '2021-01-13 01:58:24', 0),
('9887e2c7-b36d-f2e0-bbf2-5ffe575f2076', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c20c0b36-47c2-af55-32d7-5fe9914f650f', 75, '2021-01-18 02:18:59', 0),
('98985db3-d7a7-c14a-f2d4-5ffe54b180a6', 'f3ab2114-3037-5119-1375-5ffe5300083d', '430405ce-5261-7d6a-90bc-5fe99110d0a2', -99, '2021-01-18 02:17:49', 0),
('98a3ffae-973c-6aa4-a3e9-6004f0a38aac', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e70a07f9-978a-eb0f-5fe3-5fe99197714d', -99, '2021-01-18 02:23:05', 0),
('98bb01aa-66e0-8462-e0d6-6004f0f370e5', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8baebba3-3e27-b455-5c5c-5fe991b5f301', -99, '2021-01-18 02:21:17', 0),
('98bee340-2468-5dd5-2369-5ffe56dd99b5', '860158ee-3501-2093-b810-5ffe567b916e', 'd189edb6-d4c6-af84-aed6-5fe9919e773d', 80, '2021-01-18 02:20:17', 0),
('98d3cfef-1954-883b-54af-5ffe574dab46', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '582d4670-fa7e-c32e-af44-5fe991a87c45', -98, '2021-01-18 02:21:56', 0),
('98e4b69a-44fe-5e22-292b-5ffe53190ee3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c742c253-2a4a-cfac-4436-5fe991448121', 90, '2021-01-13 01:58:24', 0),
('98f4445f-f0ad-9ed9-bac2-5ffe541f1b26', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3d95bbb1-ce50-817f-44ea-5fe991c104d8', 80, '2021-01-18 02:17:49', 0),
('98f6c649-e25f-fc75-0733-5ffe5759d768', '857d3817-1929-a617-ad2c-5ffe57175f84', '100d44d4-2ad9-3006-5249-5fe99105dfc7', -99, '2021-01-18 02:18:59', 0),
('9916545e-654f-621a-bb80-6004f06e880f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e4e302c6-3fb2-9304-85f8-5fe9913267cd', 75, '2021-01-18 02:23:05', 0),
('991a5e6a-4573-1697-3bdf-5ffe56b8b3cc', '860158ee-3501-2093-b810-5ffe567b916e', 'd0a1d2a6-ffea-4a9d-4bb6-5fe991ef9ffe', 80, '2021-01-18 02:20:17', 0),
('9931cd57-9a7f-4974-ffb8-5ffe57b0443e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5c0702a3-1f94-2c28-aef8-5fe991aa5d5a', 80, '2021-01-18 02:21:56', 0),
('99490780-ca40-51b0-13cb-5ffe539fac7f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c9bc1c63-7f2d-8a15-9aec-5fe99194e016', 90, '2021-01-13 01:58:24', 0),
('99525d44-50cf-1420-13d5-5ffe5435157b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9ca10601-c27e-5c20-5956-5fe9919ccad4', -98, '2021-01-18 02:17:49', 0),
('996ae29c-6b01-85e0-04fb-5ffe5613de92', '860158ee-3501-2093-b810-5ffe567b916e', 'd39fc1ec-9a70-7ef0-8b64-5fe9912bbeaf', 80, '2021-01-18 02:20:17', 0),
('996b1708-3d1b-d441-12b9-5ffe57d9db4d', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b20b0384-6478-f201-f7a9-5fe9917d9cf0', 75, '2021-01-18 02:18:59', 0),
('997c3306-5957-bdb2-7585-6004f0be843d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '89348a43-0ceb-7fc3-bda1-5fe99191fc57', 75, '2021-01-18 02:21:17', 0),
('998548c4-3979-3133-e979-6004f0d2ef9f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e8ff7685-9599-b1b4-e206-5fe9910525ef', -99, '2021-01-18 02:23:05', 0),
('9996b626-1d03-e98b-6bcf-5ffe577bfecf', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5b0e9519-f4aa-ba7d-2b28-5fe991e20867', 80, '2021-01-18 02:21:56', 0),
('99a90dfb-0f0e-1766-75d8-5ffe54607512', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'de2e0848-be5e-0abe-c6db-5fe991aa483f', 80, '2021-01-18 02:17:49', 0),
('99aeb213-82df-9fb2-a456-5ffe53aa7675', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c8e91789-4d8c-33fa-9dc3-5fe9917dcaac', 90, '2021-01-13 01:58:24', 0),
('99c8096a-4fa6-ac29-15a9-5ffe560b1a7a', '860158ee-3501-2093-b810-5ffe567b916e', 'd27d6ac9-0dc4-e687-467d-5fe9919ba898', -99, '2021-01-18 02:20:17', 0),
('99cc9776-9c14-9865-cea9-5ffe57b36f97', '857d3817-1929-a617-ad2c-5ffe57175f84', '4560b1d3-d8ef-07c0-24ee-5fe991cad1e2', -98, '2021-01-18 02:18:59', 0),
('99ed83f9-c44b-abe3-efa1-6004f0cc3aa7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e42c95a9-569b-ed17-52d5-5fe9910ba6e9', 75, '2021-01-18 02:23:05', 0),
('9a050525-d174-0b0d-2c4c-5ffe570a78c6', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5dd4bc31-c591-33f4-58de-5fe991e1aaa8', 80, '2021-01-18 02:21:56', 0),
('9a0770ef-2a0b-8082-3f15-5ffe540b8453', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'cd310a2b-1462-a6c9-ca96-5fe9919756ad', 80, '2021-01-18 02:17:49', 0),
('9a08507b-4b96-6868-f7a5-5ffe53cd96ef', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c670d173-301d-7eff-dfc6-5fe9912f92bb', 90, '2021-01-13 01:58:24', 0),
('9a2dd0e7-dbb3-e7a0-5618-5ffe571d4261', '857d3817-1929-a617-ad2c-5ffe57175f84', '49263512-3bb7-46b1-5871-5fe991aef925', 75, '2021-01-18 02:18:59', 0),
('9a36094d-1dd2-79f2-aa1d-5ffe5643c36b', '860158ee-3501-2093-b810-5ffe567b916e', '2706b8b1-f8f3-607b-c2f7-5fe991057a1c', -99, '2021-01-18 02:20:17', 0),
('9a37eb15-82a2-b686-aacd-5ffe56d568a7', '860158ee-3501-2093-b810-5ffe567b916e', 'cfb885ed-0011-0629-a460-5fe99177479c', 80, '2021-01-18 02:20:17', 0),
('9a3e3b16-d82c-ee2d-364e-6004f0a580b8', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8d914baf-1423-7020-8944-5fe9911e99af', -99, '2021-01-18 02:21:17', 0),
('9a575d88-8a3a-ff64-87df-6004f0df999f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '896f387c-3192-39ce-cf8f-5fe9910f31dc', 89, '2021-01-18 02:23:05', 0),
('9a6cd5c9-1b1b-aeda-81b7-5ffe53f040fe', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'caa6f5eb-c27c-81f2-44c4-5fe99148c11a', 90, '2021-01-13 01:58:24', 0),
('9a6f881a-357c-3c96-6148-5ffe54245cb6', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'fdb10bca-f265-c42d-8e94-5fe991226d9c', 80, '2021-01-18 02:17:49', 0),
('9a73011b-2596-ac04-dbba-5ffe54f8358b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '24338af2-5403-8efd-9c15-5fe991863579', 80, '2021-01-18 02:17:49', 0),
('9a77df60-8d29-b0ae-bd56-5ffe577be6e1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5ce9badf-a070-6591-2e16-5fe991d43544', -99, '2021-01-18 02:21:56', 0),
('9a99fd72-2fef-c609-fa0c-5ffe56e15d66', '860158ee-3501-2093-b810-5ffe567b916e', 'd46c9d4a-4566-775c-c818-5fe991e6739e', -99, '2021-01-18 02:20:17', 0),
('9a9b29e4-8620-ef21-23a7-5ffe57aaf808', '857d3817-1929-a617-ad2c-5ffe57175f84', '4852587d-2ed7-392a-225d-5fe991f70e21', 75, '2021-01-18 02:18:59', 0),
('9abac5aa-3c92-d9b3-2c84-6004f0ffba59', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8d251326-d46e-e47a-bdf7-5fe9913c58f1', 75, '2021-01-18 02:23:05', 0),
('9acc92f3-8cd2-36ab-091d-5ffe53949d9b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c59c320d-1251-19ea-0062-5fe991e0eaf9', 90, '2021-01-13 01:58:24', 0),
('9ad49e31-9c40-0a4d-6516-5ffe548207a0', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'edd80716-4770-8f9e-58e4-5fe991dcf437', -99, '2021-01-18 02:17:49', 0),
('9aeb7136-d358-774c-37a1-5ffe57c96f90', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5a1e6717-7bf9-3dfd-57de-5fe99132f137', 80, '2021-01-18 02:21:56', 0),
('9af06db1-496f-fc04-9de3-5ffe56ca173f', '860158ee-3501-2093-b810-5ffe567b916e', 'cec82ba1-feb9-f717-4fc3-5fe991f6a31b', 80, '2021-01-18 02:20:17', 0),
('9b00a8ea-8012-e98c-6998-6004f082bfe5', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '882106df-3bf3-d817-5575-5fe9914d26eb', 75, '2021-01-18 02:21:17', 0),
('9b0806b0-02a8-f50e-87d5-5ffe571fbc7f', '857d3817-1929-a617-ad2c-5ffe57175f84', '4b0b105d-c49d-64fd-880d-5fe991434844', 75, '2021-01-18 02:18:59', 0),
('9b24b29e-f975-7372-fad0-6004f02fca1c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8c32852a-7c8d-5cd3-6e2f-5fe9914a7895', 75, '2021-01-18 02:23:05', 0),
('9b2b5259-2756-46f9-bf4a-5ffe53e16779', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9b5bed87-0888-81f7-f9b9-5fe9917ea434', 89, '2021-01-13 01:58:24', 0),
('9b38b794-7994-e220-6da9-5ffe54cd7d01', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ba0d0b5d-0fea-e94c-a366-5fe991b36938', 80, '2021-01-18 02:17:49', 0),
('9b45b64e-d7dc-d494-2b9b-5ffe56c20e4e', '860158ee-3501-2093-b810-5ffe567b916e', '3caecfce-8fa3-6dca-d275-5fe991ae7128', -98, '2021-01-18 02:20:17', 0),
('9b62ef28-f4a1-d822-250a-5ffe5731633c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5eb3c820-bf11-cc6b-e123-5fe991053126', -99, '2021-01-18 02:21:56', 0),
('9b736e05-a88e-1533-a2d3-5ffe575552a9', '857d3817-1929-a617-ad2c-5ffe57175f84', '4a307772-951d-ff69-8455-5fe991fa4630', -99, '2021-01-18 02:18:59', 0),
('9b8a6a1a-c707-2347-5d32-6004f0059cb2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8f1522ea-a950-b5f2-b9d6-5fe99134927b', 75, '2021-01-18 02:23:05', 0),
('9b907355-572b-bb8a-2b8c-5ffe538cbb0e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9f8d8289-a870-70f7-ebc9-5fe99150962b', 90, '2021-01-13 01:58:24', 0),
('9ba1620f-5306-1284-7ece-5ffe561edfa7', '860158ee-3501-2093-b810-5ffe567b916e', '4075fdc3-dde1-c555-a841-5fe991ed277c', 80, '2021-01-18 02:20:17', 0),
('9bbf1961-99e4-393a-3541-6004f069cf38', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '21494c25-046f-a116-25b0-5fe991364750', -98, '2021-01-18 02:21:17', 0),
('9bc2b5ab-3f14-5edf-bf2c-5ffe57014e75', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '59287b25-b69c-a8dd-6784-5fe991db46b6', 80, '2021-01-18 02:21:56', 0),
('9bda9cab-6764-a627-e2d0-5ffe5462b102', 'f3ab2114-3037-5119-1375-5ffe5300083d', '10bb9476-6a76-c89c-3b36-5fe9919e22c0', -99, '2021-01-18 02:17:49', 0),
('9be1b857-bb57-d398-1f4a-5ffe57c42c21', '857d3817-1929-a617-ad2c-5ffe57175f84', '47662a0f-8676-9eee-4919-5fe9911a954f', 75, '2021-01-18 02:18:59', 0),
('9be4bb4d-f744-95bc-bd9f-6004f0a5d65c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8e123978-8a99-2be4-e394-5fe9916e1de0', -99, '2021-01-18 02:23:05', 0),
('9bee9a6d-a824-bceb-13f2-5ffe5342002a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9e6892d0-cea9-a9af-2074-5fe991c2817b', 90, '2021-01-13 01:58:24', 0),
('9c158ad3-49c3-60cf-860c-5ffe5636038e', '860158ee-3501-2093-b810-5ffe567b916e', '3f88e746-8c1a-3fdb-0587-5fe991bd8ab1', 80, '2021-01-18 02:20:17', 0),
('9c333a2f-14cc-46d2-ccc3-5ffe5787a5aa', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2d90831f-294c-d495-b00e-5fe99120c84b', -98, '2021-01-18 02:21:56', 0),
('9c3869d1-fc4f-d28c-845f-5ffe54d2c11b', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ab5b0857-c791-bdac-00d8-5fe991750992', 80, '2021-01-18 02:17:49', 0),
('9c45eca3-049b-97bf-e062-6004f01ed49b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8b3e78a3-e5c1-2e16-f0a7-5fe9917788ca', 75, '2021-01-18 02:23:05', 0),
('9c4870fd-9bc8-e1ac-5c1a-5ffe578b3335', '857d3817-1929-a617-ad2c-5ffe57175f84', '4bfafc04-0639-1b18-8f38-5fe9912385c2', -99, '2021-01-18 02:18:59', 0),
('9c596424-642c-66f1-3f15-5ffe533b9468', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a178b8fc-f7de-94c3-87a0-5fe9910e6673', 90, '2021-01-13 01:58:24', 0),
('9c74a66b-e37c-8d1e-5a11-6004f03f711b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '249953bb-5a0d-a766-7f72-5fe9911b2910', 75, '2021-01-18 02:21:17', 0),
('9c79cb57-4ad8-74a6-5db6-5ffe568c9dca', '860158ee-3501-2093-b810-5ffe567b916e', '42399d77-03d4-1a1d-d87f-5fe9916d2287', 80, '2021-01-18 02:20:17', 0),
('9c9896c6-67ad-c07b-a3a7-5ffe5430b057', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'acb4792d-94aa-f27b-25a7-5fe991990b1d', -98, '2021-01-18 02:17:49', 0),
('9c9b3a53-12c7-e204-1825-5ffe5764e2ea', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '31629781-4af4-be0c-a30f-5fe9910c941f', 80, '2021-01-18 02:21:56', 0),
('9ca17337-495c-1e88-d735-6004f02b3f70', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9002ab21-67ef-78bb-3774-5fe991d97cf4', -99, '2021-01-18 02:23:05', 0),
('9ca8d01f-db85-cd47-a6fc-5ffe57419d4e', '857d3817-1929-a617-ad2c-5ffe57175f84', '468a5f69-7fc3-6e53-0551-5fe99174b182', 75, '2021-01-18 02:18:59', 0),
('9cbc5b44-bcb6-523a-ab19-5ffe5346b14e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a07bf528-55f3-b6d3-38a6-5fe991182187', 90, '2021-01-13 01:58:24', 0),
('9cdbbfe8-4218-cffc-8efc-5ffe56d38cd9', '860158ee-3501-2093-b810-5ffe567b916e', '41448afe-1d6a-8576-b32b-5fe991645daa', -99, '2021-01-18 02:20:17', 0),
('9cfb2c14-3a52-c32c-84f0-5ffe57e91ea8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '30907e87-cef7-8470-d09f-5fe991aa6b60', 80, '2021-01-18 02:21:56', 0),
('9cffbe96-ff75-a7d7-d329-5ffe54479f8e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b05f3683-3b79-cc74-f87f-5fe9911a764c', 80, '2021-01-18 02:17:49', 0),
('9d09b518-4a18-ab30-9142-6004f0d90a9c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8a4ef12f-2db6-bed2-069b-5fe991f829f8', 75, '2021-01-18 02:23:05', 0),
('9d1a94a5-2491-e66c-ec4e-5ffe53bcc5f3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9d7799ae-ee03-d123-2003-5fe991750155', 90, '2021-01-13 01:58:24', 0),
('9d1f951d-e099-a3db-d021-5ffe5789de71', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ab881f0b-8357-88f0-96b1-5fe991a4e4c1', -98, '2021-01-18 02:18:59', 0),
('9d29bb7e-e6fe-55ac-dde4-6004f0904e90', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '23bf9702-a009-31db-4218-5fe9918b8d26', 75, '2021-01-18 02:21:17', 0),
('9d3740dd-1d11-0d82-999c-5ffe562d0af0', '860158ee-3501-2093-b810-5ffe567b916e', '3e86a2ea-35c6-889b-3f5d-5fe991d821af', 80, '2021-01-18 02:20:17', 0),
('9d56f2bb-ff02-2f18-0516-5ffe54995429', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'af6ced59-b625-ac50-8de2-5fe99176adde', 80, '2021-01-18 02:17:49', 0),
('9d6979db-cfb4-1e41-be7b-5ffe57babac8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '33263540-f87b-3a9b-79e4-5fe991e48244', 80, '2021-01-18 02:21:56', 0),
('9d6d00f3-4099-b4fe-eb7c-6004f0a1903f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'cdd1e182-c278-af31-6a4e-5fe991051755', 89, '2021-01-18 02:23:05', 0),
('9d7684c2-62ce-660f-c3d3-5ffe532a6dde', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a274c148-9851-b79f-4ff2-5fe9911583c0', 90, '2021-01-13 01:58:24', 0),
('9d8f4892-e383-125b-275e-5ffe5769a47e', '857d3817-1929-a617-ad2c-5ffe57175f84', 'af9eb37a-1a01-b0a6-fd0d-5fe99153846a', 75, '2021-01-18 02:18:59', 0),
('9dc992fb-3e52-1524-1ada-6004f0f53247', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd189edb6-d4c6-af84-aed6-5fe9919e773d', 75, '2021-01-18 02:23:05', 0),
('9dd1b59e-b950-5392-6652-5ffe537831ac', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9c5897c1-c701-76d7-a532-5fe991a24183', 90, '2021-01-13 01:58:24', 0),
('9dd6f3d0-e849-e0ee-5fc8-5ffe57ca2dd7', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '322e80f4-ada8-e2ec-5a5d-5fe991d1b589', -99, '2021-01-18 02:21:56', 0),
('9de1bb03-58b5-a15d-c0ac-6004f0d8a815', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '263b37b8-4d91-690e-c9b7-5fe991906e03', 75, '2021-01-18 02:21:17', 0),
('9de1fd92-8289-67ea-217a-5ffe567d0314', '860158ee-3501-2093-b810-5ffe567b916e', '430405ce-5261-7d6a-90bc-5fe99110d0a2', -99, '2021-01-18 02:20:17', 0),
('9dedd321-6b7a-c0ba-b8ca-5ffe57333792', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ae9d5dd6-d898-6aea-e9e3-5fe99117c20d', 75, '2021-01-18 02:18:59', 0),
('9e29054b-4db4-252e-1fd1-5ffe53de9fa5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c218f0fb-e18c-1a03-5e56-5fe991fdff67', 89, '2021-01-13 01:58:24', 0),
('9e37f2cd-28ee-e7ad-25ef-6004f007f65c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd0a1d2a6-ffea-4a9d-4bb6-5fe991ef9ffe', 75, '2021-01-18 02:23:05', 0),
('9e3f5015-aaba-7af6-2027-5ffe57b0da20', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2fbc1ce8-e226-d32f-6533-5fe99185fa50', 80, '2021-01-18 02:21:56', 0),
('9e430031-722a-22b2-1380-5ffe5669e4fa', '860158ee-3501-2093-b810-5ffe567b916e', '3d95bbb1-ce50-817f-44ea-5fe991c104d8', 80, '2021-01-18 02:20:17', 0),
('9e54a7a3-0d22-ceb0-37ee-5ffe57797588', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b1a64d3e-879f-53ba-d1b5-5fe991bc50df', 75, '2021-01-18 02:18:59', 0),
('9e707893-3ab1-ab20-b639-5ffe5499050a', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b2312d82-92c2-21d0-ce38-5fe991a0e273', 80, '2021-01-18 02:17:49', 0),
('9e7c0a79-6133-3a5b-4837-5ffe53671bcd', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6291e723-4e2f-5086-cb7b-5fe991fdeab0', 90, '2021-01-13 01:58:24', 0),
('9e84b179-802d-4c65-d795-5ffe53bfcbd9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c65b6579-4b12-0fc1-805f-5fe991a8c9e0', 90, '2021-01-13 01:58:24', 0),
('9e9a71cb-1609-cdd6-ffb8-6004f0c3406e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '256c3b35-e784-5ec4-a8ae-5fe991aa965b', -99, '2021-01-18 02:21:17', 0),
('9e9c0799-e424-7289-f82e-5ffe561d0173', '860158ee-3501-2093-b810-5ffe567b916e', '9ca10601-c27e-5c20-5956-5fe9919ccad4', -98, '2021-01-18 02:20:17', 0),
('9e9ef850-6348-0e46-3d66-6004f073f309', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd39fc1ec-9a70-7ef0-8b64-5fe9912bbeaf', 75, '2021-01-18 02:23:05', 0),
('9ea0628b-130c-02aa-9504-5ffe57949708', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '33fafaba-2190-9302-4782-5fe991f7de24', -99, '2021-01-18 02:21:56', 0),
('9eae230e-0cf8-d8bd-d570-5ffe57730180', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b0a335f6-ec5f-19f1-4914-5fe991384431', -99, '2021-01-18 02:18:59', 0),
('9ee11e49-417b-a15d-e2ac-5ffe5316f18c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c55a7aab-8278-3955-8f2e-5fe991014824', 90, '2021-01-13 01:58:24', 0),
('9eea0d77-b2f2-a170-2eab-5ffe57a2dc7d', '857d3817-1929-a617-ad2c-5ffe57175f84', '46e1336a-7c3c-2718-031e-5fe991d96425', 75, '2021-01-18 02:18:59', 0),
('9ef781e7-2182-032c-39e0-5ffe56fff21b', '860158ee-3501-2093-b810-5ffe567b916e', 'de2e0848-be5e-0abe-c6db-5fe991aa483f', 80, '2021-01-18 02:20:17', 0),
('9f06eee8-8216-ecb1-4679-6004f0d25252', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd27d6ac9-0dc4-e687-467d-5fe9919ba898', -99, '2021-01-18 02:23:05', 0),
('9f09d049-8791-4ec0-80a3-5ffe57e65b3c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2eeaf781-6ecd-a955-acca-5fe991e8dedc', 80, '2021-01-18 02:21:56', 0),
('9f1a3c0f-396a-ace4-b288-5ffe57cca39a', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ada0ada6-a1ca-ffb8-7957-5fe991054b82', 75, '2021-01-18 02:18:59', 0),
('9f4c016f-1b72-fbb2-6360-5ffe53459d59', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c85bf0a5-3f3a-438b-ba72-5fe9911f220a', 90, '2021-01-13 01:58:24', 0),
('9f530347-76f6-c051-95d5-6004f0d00f75', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '22f409ce-6261-ffc6-a5ea-5fe991893cab', 75, '2021-01-18 02:21:17', 0),
('9f531094-22dc-0289-7379-5ffe56a4f532', '860158ee-3501-2093-b810-5ffe567b916e', 'cd310a2b-1462-a6c9-ca96-5fe9919756ad', 80, '2021-01-18 02:20:17', 0),
('9f5ec59b-a3eb-cf38-b192-5ffe5716cce5', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'f6190ea9-60c9-f596-ab4c-5fe99100fa2d', -98, '2021-01-18 02:21:56', 0),
('9f64b96f-8d3c-c350-e152-6004f08809fc', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'cfb885ed-0011-0629-a460-5fe99177479c', 75, '2021-01-18 02:23:05', 0),
('9f6b05c9-1139-f013-7de5-6004f0ec9f2d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '13ca2543-865e-d690-0faa-5fe991ac9662', -99, '2021-01-18 02:21:17', 0),
('9f889e9d-f10a-27ef-86fe-5ffe5474815e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b14832c7-ab94-6642-afaa-5fe9918dafa5', -99, '2021-01-18 02:17:49', 0),
('9f8d1482-a0fa-cc47-afd6-5ffe57e47730', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b29b67bb-1554-6f56-3284-5fe991a5bebc', -99, '2021-01-18 02:18:59', 0),
('9fbf546f-7cb4-4e52-6a61-5ffe56c7adc7', '860158ee-3501-2093-b810-5ffe567b916e', 'fdb10bca-f265-c42d-8e94-5fe991226d9c', 80, '2021-01-18 02:20:17', 0),
('9fcbb261-48bf-da85-6980-5ffe57cccdfd', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '1308e66b-3607-36e4-94d1-5fe991734e49', 80, '2021-01-18 02:21:56', 0),
('9fce5232-2b54-b947-eefc-6004f0cc48ad', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd46c9d4a-4566-775c-c818-5fe991e6739e', -99, '2021-01-18 02:23:05', 0),
('9fe3d4ac-18db-d37a-b9e6-5ffe53fef830', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c76062c6-92e2-d529-9a5f-5fe9919350fd', 90, '2021-01-13 01:58:24', 0),
('9ff55df2-ecf4-b656-f02c-5ffe57ae3b33', '857d3817-1929-a617-ad2c-5ffe57175f84', 'aca0daac-a0ad-5952-f974-5fe991c6a958', 75, '2021-01-18 02:18:59', 0),
('9ffefdae-15ae-a84b-b958-5ffe544e0855', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ae7dc2b8-f4b3-206f-1ad7-5fe9919d4671', 80, '2021-01-18 02:17:49', 0),
('a00cfaba-272f-d900-b49c-6004f09b27eb', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2707d3f2-dfdd-5b66-eb98-5fe991924eff', -99, '2021-01-18 02:21:17', 0),
('a017fbbd-4c9b-ac72-0d0f-5ffe5644b60d', '860158ee-3501-2093-b810-5ffe567b916e', 'edd80716-4770-8f9e-58e4-5fe991dcf437', -99, '2021-01-18 02:20:17', 0),
('a0315815-b6e2-14e2-b9f4-6004f0ed14ec', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'cec82ba1-feb9-f717-4fc3-5fe991f6a31b', 75, '2021-01-18 02:23:05', 0),
('a0415cf0-3bb8-ffce-cbec-5ffe57052b6b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '12446ca6-06bf-d0e7-96a9-5fe99159f62f', 80, '2021-01-18 02:21:56', 0),
('a04caf49-ce60-c87d-0f02-5ffe534c270a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c466431a-9117-66a5-32d1-5fe991d14198', 90, '2021-01-13 01:58:24', 0),
('a04e5087-9714-9914-a320-5ffe57823755', '857d3817-1929-a617-ad2c-5ffe57175f84', '5fed6e74-14c1-5041-37b3-5fe991c316b0', 89, '2021-01-18 02:18:59', 0),
('a0720b57-709f-3810-297c-5ffe56f742e7', '860158ee-3501-2093-b810-5ffe567b916e', '24338af2-5403-8efd-9c15-5fe991863579', 80, '2021-01-18 02:20:17', 0),
('a07e5506-286a-cf59-6fdb-5ffe56dbead4', '860158ee-3501-2093-b810-5ffe567b916e', 'ba0d0b5d-0fea-e94c-a366-5fe991b36938', 80, '2021-01-18 02:20:17', 0),
('a0833dce-c4b3-c358-5e21-5ffe548c9c50', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'b3117773-7971-9fdc-a876-5fe99184937b', -99, '2021-01-18 02:17:49', 0),
('a099cfe5-b4ca-11b1-8d4d-6004f08fc1ef', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7b77e868-a008-0ee4-4b88-5fe991fbb3d5', -98, '2021-01-18 02:23:05', 0),
('a0a177a3-7b42-e698-5140-5ffe57a17d43', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '148c44dd-fa1a-55a5-216a-5fe991e2e075', 80, '2021-01-18 02:21:56', 0),
('a0a7911d-a989-d3ba-f1b8-5ffe572b200c', '857d3817-1929-a617-ad2c-5ffe57175f84', '63536587-8335-30aa-cab1-5fe991afae1b', 75, '2021-01-18 02:18:59', 0),
('a0aedd9d-3c97-4137-44a1-5ffe536de8fe', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c9604d45-e488-4158-eef5-5fe9914cc27f', 90, '2021-01-13 01:58:24', 0),
('a0c45ad0-2168-679f-bf0c-6004f001a9c3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2229f60f-c756-dde0-77b7-5fe991eeb405', 75, '2021-01-18 02:21:17', 0),
('a0dcefa0-481d-c087-f63b-5ffe56298b3e', '860158ee-3501-2093-b810-5ffe567b916e', '10bb9476-6a76-c89c-3b36-5fe9919e22c0', -99, '2021-01-18 02:20:17', 0),
('a0ef5969-88ec-88d4-7e36-5ffe54ca4656', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ad954bf2-3a7d-e3fc-b572-5fe99169f4cb', 80, '2021-01-18 02:17:49', 0),
('a0fa4b13-fd2d-96d2-9bbb-6004f0c3ffc4', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7f7790f1-571f-1cf9-9c6d-5fe991d79535', 75, '2021-01-18 02:23:05', 0),
('a103407f-6ae8-ee0b-38fd-5ffe57626953', '857d3817-1929-a617-ad2c-5ffe57175f84', '6291e723-4e2f-5086-cb7b-5fe991fdeab0', 75, '2021-01-18 02:18:59', 0),
('a1070a82-d79f-f46c-2700-5ffe54e43378', 'f3ab2114-3037-5119-1375-5ffe5300083d', '28e3ff10-5af4-07e1-fa1c-5fe9914d87b3', -99, '2021-01-18 02:17:49', 0),
('a11539dd-0ccf-9c69-03e3-5ffe572661ea', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '13ca2543-865e-d690-0faa-5fe991ac9662', -99, '2021-01-18 02:21:56', 0),
('a11bf362-d5db-fc76-c087-5ffe53f09a25', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c31a5001-3fc7-e99b-4cf0-5fe991815e31', 90, '2021-01-13 01:58:24', 0),
('a1404d8c-2c65-e01e-7303-5ffe5609a213', '860158ee-3501-2093-b810-5ffe567b916e', 'ab5b0857-c791-bdac-00d8-5fe991750992', 80, '2021-01-18 02:20:17', 0),
('a154b3ed-960d-de46-605b-5ffe543d5d43', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3b495310-2762-2a33-fae5-5fe99197f1c9', 89, '2021-01-18 02:17:49', 0),
('a15c5336-d72e-9603-3f13-6004f08989ea', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7e7333ec-e694-5625-49be-5fe991c00256', 75, '2021-01-18 02:23:05', 0),
('a16b8ad2-932f-6320-5a7d-5ffe53843df7', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e7b869ff-d7dc-a375-69dc-5fe9912999e3', 89, '2021-01-13 01:58:24', 0),
('a16fcc30-ab3c-9716-052c-5ffe5778548d', '857d3817-1929-a617-ad2c-5ffe57175f84', '650451c3-2e32-4514-5415-5fe991af7c3c', 75, '2021-01-18 02:18:59', 0),
('a17aa5fc-dfdb-f899-4997-5ffe5756583f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '116627b2-895a-e79c-9ab8-5fe991da953f', 80, '2021-01-18 02:21:56', 0),
('a17bf199-d0da-d54a-e9e7-6004f09134cd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4560b1d3-d8ef-07c0-24ee-5fe991cad1e2', -98, '2021-01-18 02:21:17', 0),
('a1a9108c-99fc-fc78-c8ed-5ffe5692ac7a', '860158ee-3501-2093-b810-5ffe567b916e', 'acb4792d-94aa-f27b-25a7-5fe991990b1d', -98, '2021-01-18 02:20:17', 0),
('a1ba679b-e285-524d-5977-6004f0adeeec', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8191f8f9-f2d2-5239-86a4-5fe991d76f58', 75, '2021-01-18 02:23:05', 0),
('a1bee446-dec4-909a-e7fc-5ffe5417defc', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3e49521b-d827-7b2a-0b53-5fe991cb254a', 80, '2021-01-18 02:17:49', 0),
('a1cf7790-e3ec-e480-ab81-5ffe530b4062', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ebd71d75-44bc-cb91-7b93-5fe99155f256', 90, '2021-01-13 01:58:24', 0),
('a1d93585-9d53-689f-97d0-5ffe57484024', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '1552b40c-ce5c-ec8d-5deb-5fe991cf6636', -99, '2021-01-18 02:21:56', 0),
('a1df3d83-aca9-8691-f962-5ffe572fe6d2', '857d3817-1929-a617-ad2c-5ffe57175f84', '642fcb3a-fe50-4dde-f514-5fe99159c799', -99, '2021-01-18 02:18:59', 0),
('a20d31aa-2756-70ef-f4a1-5ffe5616e10d', '860158ee-3501-2093-b810-5ffe567b916e', 'b05f3683-3b79-cc74-f87f-5fe9911a764c', 80, '2021-01-18 02:20:17', 0),
('a219609c-aa6c-5d3f-bc46-6004f0661f74', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8077ec7d-7ca4-306c-77eb-5fe991763a20', -99, '2021-01-18 02:23:05', 0),
('a22faa5c-ab94-528f-c84e-5ffe53be6dda', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ead81cce-59ad-453f-55c2-5fe991497fb5', 90, '2021-01-13 01:58:24', 0),
('a235f830-ffdd-a5f7-30ca-5ffe546b9e2f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3d9d1f58-38f0-6da8-84eb-5fe991bd1d59', 80, '2021-01-18 02:17:49', 0),
('a23e87e3-7d3c-17a3-3dc9-5ffe57a670bd', '857d3817-1929-a617-ad2c-5ffe57175f84', '61ba0986-eeb4-828b-acec-5fe9914de2cd', 75, '2021-01-18 02:18:59', 0),
('a242626b-21d8-8106-6f09-5ffe574bd6a4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '107c132e-ddf3-80ad-ef1e-5fe991b822fe', 80, '2021-01-18 02:21:56', 0),
('a24f9c5a-b0cc-2002-86cc-6004f05da1d6', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '49263512-3bb7-46b1-5871-5fe991aef925', 75, '2021-01-18 02:21:17', 0),
('a26cb27d-982d-cfdb-b2cb-5ffe56d367d5', '860158ee-3501-2093-b810-5ffe567b916e', 'af6ced59-b625-ac50-8de2-5fe99176adde', 80, '2021-01-18 02:20:17', 0),
('a28a9eab-b87b-46cd-6426-6004f0825da1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7d77f594-2730-b283-bae1-5fe991f01c06', 75, '2021-01-18 02:23:05', 0),
('a28e4709-373e-6be0-6f75-5ffe5377b1b3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ed768757-6487-2c69-92de-5fe99150b701', 90, '2021-01-13 01:58:24', 0),
('a291ba25-c6fd-ad7f-fb66-5ffe57971f45', '857d3817-1929-a617-ad2c-5ffe57175f84', '65dedae3-b5b0-d891-450b-5fe9917e0089', -99, '2021-01-18 02:18:59', 0),
('a2a4c8fc-807b-18b0-8be7-5ffe575a03a6', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '825521ce-f146-d6f7-410e-5fe991c03d07', -98, '2021-01-18 02:21:56', 0),
('a2aacd8c-fe33-5244-34ef-5ffe540925cd', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3fa45ef5-762f-980f-aaa7-5fe99118be9d', 80, '2021-01-18 02:17:49', 0),
('a2d21b23-e632-2d8b-77f6-5ffe56c1016b', '860158ee-3501-2093-b810-5ffe567b916e', 'b2312d82-92c2-21d0-ce38-5fe991a0e273', 80, '2021-01-18 02:20:17', 0),
('a2ed0d41-1c12-a2bd-1631-5ffe531a663c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'eca203fd-ce6d-9048-6970-5fe991ad15e8', 90, '2021-01-13 01:58:24', 0),
('a2f5f242-15e1-d798-af77-6004f021da14', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '82699b01-9611-007e-98a9-5fe99151f456', -99, '2021-01-18 02:23:05', 0),
('a2f7f174-b4c9-d93c-031a-5ffe57d538fa', '857d3817-1929-a617-ad2c-5ffe57175f84', '60e5d013-6ac0-91dd-15b1-5fe991a95598', 75, '2021-01-18 02:18:59', 0),
('a30262ac-3d49-e98c-aecc-5ffe575a735d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '85f590f8-8305-91ca-f226-5fe9913338cd', 80, '2021-01-18 02:21:56', 0),
('a3124df5-5242-10b1-0541-5ffe54d87a89', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3eeb41f2-d7de-94e6-393e-5fe99172b71f', -99, '2021-01-18 02:17:49', 0),
('a32cffce-72a7-f190-ecbf-6004f0043214', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4852587d-2ed7-392a-225d-5fe991f70e21', 75, '2021-01-18 02:21:17', 0),
('a3311365-a088-984d-e46d-5ffe56fcd061', '860158ee-3501-2093-b810-5ffe567b916e', 'b14832c7-ab94-6642-afaa-5fe9918dafa5', -99, '2021-01-18 02:20:17', 0),
('a34a1085-a620-44e0-f973-5ffe53c73d96', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e9d4c5fa-00c6-380c-2014-5fe991f309f0', 90, '2021-01-13 01:58:24', 0),
('a35e2fc9-abc1-2779-8b82-6004f04a4e5f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7c8270f3-df3b-a74d-58df-5fe99110aa48', 75, '2021-01-18 02:23:05', 0),
('a36d6260-ebea-07eb-abff-5ffe57530b8a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '85190e9c-7f1d-56c1-64dc-5fe991744f5d', 80, '2021-01-18 02:21:56', 0),
('a3720088-b23a-feec-5b3d-5ffe57c3b370', '857d3817-1929-a617-ad2c-5ffe57175f84', 'cdd1e182-c278-af31-6a4e-5fe991051755', 89, '2021-01-18 02:18:59', 0),
('a373802b-68fd-d07b-edf3-5ffe545fdb86', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3ca85a97-4cd3-c3df-3213-5fe9917403bb', 80, '2021-01-18 02:17:49', 0),
('a38cc923-b37e-c825-0c62-5ffe56cc9059', '860158ee-3501-2093-b810-5ffe567b916e', 'ae7dc2b8-f4b3-206f-1ad7-5fe9919d4671', 80, '2021-01-18 02:20:17', 0),
('a3ac8865-d65a-306b-3788-5ffe53818b96', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ee2d337d-7418-f149-2626-5fe9918c5a0a', 90, '2021-01-13 01:58:24', 0),
('a3baeae3-b4a4-badb-c5a7-6004f0ac4f6e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a63ff7b8-be9f-5c3d-973a-5fe991a641cd', -98, '2021-01-18 02:23:05', 0),
('a3d31386-17ae-2ca0-c396-5ffe573b406d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '87865002-90e3-2347-f433-5fe991d3863d', 80, '2021-01-18 02:21:56', 0),
('a3e007c6-bb48-64d9-9a6b-5ffe5375c287', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '650451c3-2e32-4514-5415-5fe991af7c3c', 90, '2021-01-13 01:58:24', 0),
('a3e2bf7b-321a-1ee7-8122-5ffe5416bc7b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '40482d37-640a-72bc-f077-5fe9915e67a0', -99, '2021-01-18 02:17:49', 0),
('a3e9f6af-445d-f40c-7666-5ffe57af0f95', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd189edb6-d4c6-af84-aed6-5fe9919e773d', 75, '2021-01-18 02:18:59', 0),
('a3f73914-aaa6-4360-2568-5ffe56932cda', '860158ee-3501-2093-b810-5ffe567b916e', 'b3117773-7971-9fdc-a876-5fe99184937b', -99, '2021-01-18 02:20:17', 0),
('a40b9743-ed72-dc4b-4a3f-6004f025b78a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4b0b105d-c49d-64fd-880d-5fe991434844', 75, '2021-01-18 02:21:17', 0),
('a40cb0ec-6800-2077-0a2f-5ffe53b7c0ad', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e8cad13f-c73b-7e3b-2da3-5fe99127eea5', 90, '2021-01-13 01:58:24', 0),
('a41b0d1b-3bf0-79ca-3716-6004f008ca43', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a9fe76ce-8d27-193f-a8c5-5fe991379ec8', 75, '2021-01-18 02:23:05', 0),
('a43db5a8-2486-e51e-c400-5ffe57afe042', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '86c03eb9-db71-866e-24b8-5fe99141f72d', -99, '2021-01-18 02:21:56', 0),
('a449ffb3-f421-b012-e110-5ffe57dafb9b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd0a1d2a6-ffea-4a9d-4bb6-5fe991ef9ffe', 75, '2021-01-18 02:18:59', 0),
('a44cdba8-9659-39bd-1360-5ffe5401007d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3c078834-32c4-617f-9fd6-5fe991bf28e0', 80, '2021-01-18 02:17:49', 0),
('a45f4a6f-eeb1-649b-3c06-5ffe56c1e131', '860158ee-3501-2093-b810-5ffe567b916e', 'ad954bf2-3a7d-e3fc-b572-5fe99169f4cb', 80, '2021-01-18 02:20:17', 0),
('a473056a-af22-6538-fc02-5ffe53ed1299', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4e54b667-41a1-31b4-9bd6-5fe991e5c5ba', 89, '2021-01-13 01:58:24', 0),
('a47e2ac0-28f2-874f-e247-6004f07aa745', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a913220b-58c3-edb8-9b22-5fe991ee39a0', 75, '2021-01-18 02:23:05', 0),
('a4800dd0-3b11-327d-4783-5ffe570ea0d2', '857d3817-1929-a617-ad2c-5ffe57175f84', '45f6fd66-02e2-8dcd-e44c-5fe9914c4eae', 75, '2021-01-18 02:18:59', 0),
('a4961637-d791-191f-e0fd-5ffe5774a13d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8444474a-a792-eeeb-47b3-5fe991cd7ddf', 80, '2021-01-18 02:21:56', 0),
('a4a7b433-c207-3fc6-9cb7-5ffe570b0d1e', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd39fc1ec-9a70-7ef0-8b64-5fe9912bbeaf', 75, '2021-01-18 02:18:59', 0),
('a4b2ef1f-ac15-64e3-c250-5ffe5478d99d', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ee33075d-445e-7c77-cbcb-5fe991df87e3', -98, '2021-01-18 02:17:49', 0),
('a4b85f11-3fb7-918b-00c5-5ffe56cb589d', '860158ee-3501-2093-b810-5ffe567b916e', '3b495310-2762-2a33-fae5-5fe99197f1c9', -98, '2021-01-18 02:20:17', 0),
('a4d67370-be3a-cdea-d809-5ffe53eb6e01', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '52a71728-7481-306e-4188-5fe991897345', 90, '2021-01-13 01:58:24', 0),
('a4eab27c-78be-2148-3aef-6004f03d1a79', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ab932356-a060-c695-6bce-5fe9914a18c1', 75, '2021-01-18 02:23:05', 0),
('a4ec1a6d-0484-db0b-4c40-6004f08a8b99', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4a307772-951d-ff69-8455-5fe991fa4630', -99, '2021-01-18 02:21:17', 0),
('a4f87f3b-b2a5-00ed-1f86-5ffe57b1a150', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '884aeb94-31da-b231-1c15-5fe991188c80', -99, '2021-01-18 02:21:56', 0),
('a51be679-6a21-233c-ebd9-5ffe577cec34', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd27d6ac9-0dc4-e687-467d-5fe9919ba898', -99, '2021-01-18 02:18:59', 0),
('a5244138-dd58-ff7d-a0a6-5ffe56a54d00', '860158ee-3501-2093-b810-5ffe567b916e', '3e49521b-d827-7b2a-0b53-5fe991cb254a', 80, '2021-01-18 02:20:17', 0),
('a52468d8-060a-ff3a-798f-5ffe5417d284', 'f3ab2114-3037-5119-1375-5ffe5300083d', '41de0022-b274-6bbf-b53d-5fe991a8c09e', 80, '2021-01-18 02:17:49', 0),
('a53562df-b6aa-9f2d-6151-5ffe5322595c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '51b43259-2704-3b6a-19f5-5fe991eceaf8', 90, '2021-01-13 01:58:24', 0),
('a54ea111-078a-866c-359f-6004f0cf3780', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'aac9f2e0-a504-9c9e-29de-5fe991d6c366', -99, '2021-01-18 02:23:05', 0),
('a55f6529-29fe-0146-3ad7-5ffe571d9493', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '835424a7-ebd5-65f2-beb4-5fe991766bd5', 80, '2021-01-18 02:21:56', 0),
('a57ec931-ec3d-6462-f0c9-5ffe57f94553', '857d3817-1929-a617-ad2c-5ffe57175f84', 'cfb885ed-0011-0629-a460-5fe99177479c', 75, '2021-01-18 02:18:59', 0),
('a582a948-0bfe-7cf8-5e00-5ffe56d2eb70', '860158ee-3501-2093-b810-5ffe567b916e', '3d9d1f58-38f0-6da8-84eb-5fe991bd1d59', 80, '2021-01-18 02:20:17', 0),
('a59dc80f-839f-b1b5-5fb7-5ffe53123c4c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '54a63ebc-eaf8-3281-2825-5fe99141ae0e', 90, '2021-01-13 01:58:24', 0),
('a5b94d96-cb84-4848-d46c-6004f032d2d7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a8249c4e-35b6-f389-68a0-5fe9919e2360', 75, '2021-01-18 02:23:05', 0),
('a5c0024e-01ea-b2e1-06bb-5ffe57719d2e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '32fdecc0-1055-94d4-259e-5fe991ec34ed', -98, '2021-01-18 02:21:56', 0),
('a5cc7de1-8104-a3e5-0c33-6004f0352a2a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '47662a0f-8676-9eee-4919-5fe9911a954f', 75, '2021-01-18 02:21:17', 0),
('a5d4d49d-c302-140f-2439-5ffe5441a9c5', 'f3ab2114-3037-5119-1375-5ffe5300083d', '34d90e2b-2058-ea74-6222-5fe99179e083', 80, '2021-01-18 02:17:49', 0),
('a5e263d1-333b-06ab-1b51-5ffe57f52100', '857d3817-1929-a617-ad2c-5ffe57175f84', 'd46c9d4a-4566-775c-c818-5fe991e6739e', -99, '2021-01-18 02:18:59', 0),
('a60261d0-47b8-1a16-0ca6-5ffe5343d2a1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '53a0437c-3949-42b5-b6f7-5fe9915c9b19', 90, '2021-01-13 01:58:24', 0),
('a62530ca-faef-a3be-4ce2-6004f0a0a74d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ac6b9b7c-2168-81ca-4234-5fe991a96a8a', -99, '2021-01-18 02:23:05', 0),
('a626ad93-df43-13dd-5fee-5ffe57877c87', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '36e3734f-c2aa-d169-9eba-5fe9914c6819', 80, '2021-01-18 02:21:56', 0),
('a63fb114-f650-94ce-86b6-5ffe57362304', '857d3817-1929-a617-ad2c-5ffe57175f84', 'cec82ba1-feb9-f717-4fc3-5fe991f6a31b', 75, '2021-01-18 02:18:59', 0),
('a643964b-b46e-24fe-4352-5ffe54ce0fdb', 'f3ab2114-3037-5119-1375-5ffe5300083d', '5a000560-7280-a1b7-e8f7-5fe99195e88a', 80, '2021-01-18 02:17:49', 0),
('a66803a8-263a-e213-cbb4-5ffe5648ae44', '860158ee-3501-2093-b810-5ffe567b916e', '28e3ff10-5af4-07e1-fa1c-5fe9914d87b3', -99, '2021-01-18 02:20:17', 0),
('a6869b24-7e4e-c4d0-e9da-5ffe576f5df9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '35dd7f1a-b6c6-82b5-ca15-5fe9916efb89', 80, '2021-01-18 02:21:56', 0),
('a69485bc-8f43-5d48-94af-6004f0e6d040', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a73cae80-ffea-1db9-b82e-5fe9918e160a', 75, '2021-01-18 02:23:05', 0),
('a69c1d0b-84e0-62d3-fdc9-5ffe571fe8fe', '857d3817-1929-a617-ad2c-5ffe57175f84', '3caecfce-8fa3-6dca-d275-5fe991ae7128', 89, '2021-01-18 02:18:59', 0),
('a6a80c8f-96b1-9ada-c642-6004f092fbfa', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4bfafc04-0639-1b18-8f38-5fe9912385c2', -99, '2021-01-18 02:21:17', 0),
('a6afbd21-5c95-20ee-3110-5ffe546f977d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4d8a0aa3-32ab-6e3d-a53e-5fe99166c344', -99, '2021-01-18 02:17:49', 0),
('a6b4733c-c7b6-8069-3966-5ffe56cf406b', '860158ee-3501-2093-b810-5ffe567b916e', '3fa45ef5-762f-980f-aaa7-5fe99118be9d', 80, '2021-01-18 02:20:17', 0),
('a6e6b4d2-aa63-e810-8bca-5ffe57f538af', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '38b65870-c26f-4a05-b2e8-5fe991357e50', 80, '2021-01-18 02:21:56', 0),
('a6fdc649-0d8c-5534-140b-6004f08476e9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c78e668a-e9c8-187c-1443-5fe991aafc4c', -98, '2021-01-18 02:23:05', 0),
('a70723fe-a69c-8264-69ce-5ffe577b219b', '857d3817-1929-a617-ad2c-5ffe57175f84', '4075fdc3-dde1-c555-a841-5fe991ed277c', 75, '2021-01-18 02:18:59', 0),
('a71cde1d-059c-a045-0720-5ffe54413be4', 'f3ab2114-3037-5119-1375-5ffe5300083d', '23e709d5-278b-953a-b425-5fe9912b1de3', 80, '2021-01-18 02:17:49', 0),
('a720d0ab-29c1-c7fb-ba30-5ffe5326ad25', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '50b74da9-8a7e-9868-7664-5fe9910b1f6b', 90, '2021-01-13 01:58:24', 0),
('a7492158-e36f-4b82-f7cf-5ffe575aeb85', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '37be1412-83bc-71de-9e8a-5fe9917743e0', -99, '2021-01-18 02:21:56', 0),
('a74c0582-62df-805a-8e74-5ffe5404556e', 'f3ab2114-3037-5119-1375-5ffe5300083d', '23550dea-242e-e641-c100-5fe9914c1d52', 80, '2021-01-18 02:17:49', 0),
('a7571b47-00e6-ca5d-24b5-5ffe56d10995', '860158ee-3501-2093-b810-5ffe567b916e', '3eeb41f2-d7de-94e6-393e-5fe99172b71f', -99, '2021-01-18 02:20:17', 0),
('a75c6a4a-6c81-d1f8-2f55-6004f0910b5c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'cb3e92a9-b63b-131f-c460-5fe9915c6bd2', 75, '2021-01-18 02:23:05', 0),
('a76637d2-8fa5-61cd-9d5b-5ffe57c8d102', '857d3817-1929-a617-ad2c-5ffe57175f84', '3f88e746-8c1a-3fdb-0587-5fe991bd8ab1', 75, '2021-01-18 02:18:59', 0),
('a77cae3b-0ce1-bc6c-6960-6004f04e9ea1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '468a5f69-7fc3-6e53-0551-5fe99174b182', 75, '2021-01-18 02:21:17', 0),
('a7932b70-f987-d91f-2b3a-5ffe54bb5729', 'f3ab2114-3037-5119-1375-5ffe5300083d', '660901ef-f92f-3dc1-aed9-5fe9918feb95', -99, '2021-01-18 02:17:49', 0),
('a7a7a3c3-7a6e-0f3e-6070-5ffe570fffb2', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '34ecb272-0044-c320-2fce-5fe991914a29', 80, '2021-01-18 02:21:56', 0),
('a7c149d8-174f-6b86-490a-5ffe5650464e', '860158ee-3501-2093-b810-5ffe567b916e', '3ca85a97-4cd3-c3df-3213-5fe9917403bb', 80, '2021-01-18 02:20:17', 0),
('a7c46d02-5150-f50a-1aaa-6004f0566dfa', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ca4f132d-502d-5aee-0cd4-5fe9916973a5', 75, '2021-01-18 02:23:05', 0),
('a7c82707-257d-99d8-aa74-5ffe57092eea', '857d3817-1929-a617-ad2c-5ffe57175f84', '42399d77-03d4-1a1d-d87f-5fe9916d2287', 75, '2021-01-18 02:18:59', 0),
('a807ee9b-a16a-4b20-4e15-5ffe546a397a', 'f3ab2114-3037-5119-1375-5ffe5300083d', '6560009a-e8c7-dbae-1288-5fe99128b793', 80, '2021-01-18 02:17:49', 0),
('a815f623-6228-576f-0f68-5ffe57f77707', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '39cb74f6-1cc1-cca4-c76e-5fe991963598', -99, '2021-01-18 02:21:56', 0),
('a81af485-7a65-0145-e3bc-5ffe5607ac8e', '860158ee-3501-2093-b810-5ffe567b916e', '40482d37-640a-72bc-f077-5fe9915e67a0', -99, '2021-01-18 02:20:17', 0),
('a82c39d9-0404-a5ec-201a-5ffe57a54c45', '857d3817-1929-a617-ad2c-5ffe57175f84', '41448afe-1d6a-8576-b32b-5fe991645daa', -99, '2021-01-18 02:18:59', 0),
('a82e1d7a-23ba-0857-4d87-6004f0b1e3b8', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'cd0d3d3e-c909-743b-3dd5-5fe991dc1b1f', 75, '2021-01-18 02:23:05', 0),
('a850f8a5-7930-d41e-159a-5ffe538789f2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '55abbde3-056b-14ab-2bc9-5fe991cc6632', 90, '2021-01-13 01:58:24', 0),
('a85a55d9-e79c-2c33-0eba-6004f043c708', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6bcd468f-05a5-bcf4-564d-5fe991e0de54', -98, '2021-01-18 02:21:17', 0),
('a881096b-b054-07fd-59d4-5ffe57f3192b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '33f78e57-81f4-699f-4fc6-5fe991f2bfb1', 80, '2021-01-18 02:21:56', 0),
('a88682d4-9cb3-c9cf-a271-5ffe5708f4b9', '857d3817-1929-a617-ad2c-5ffe57175f84', '3e86a2ea-35c6-889b-3f5d-5fe991d821af', 75, '2021-01-18 02:18:59', 0),
('a886ba8a-3f3d-c488-dbd8-5ffe54fcb28a', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'eefceb17-42d8-076b-4008-5fe991e16df6', 89, '2021-01-18 02:17:49', 0),
('a888d6d4-9673-2092-2cd1-6004f0846d53', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'cc23a415-34a1-3d49-5f84-5fe991ade554', -99, '2021-01-18 02:23:05', 0),
('a8c20ec7-decc-5c8a-54ce-5ffe5312605a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4f6918e3-10f8-acdf-72fc-5fe9913d462c', 90, '2021-01-13 01:58:24', 0),
('a8daa650-fbf2-6b8a-0f84-5ffe57457cee', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2732a0e6-5f36-20ee-3fb9-5fe99121cf30', 89, '2021-01-18 02:21:56', 0),
('a8e9de77-175a-242d-09ef-5ffe5747f671', '857d3817-1929-a617-ad2c-5ffe57175f84', '430405ce-5261-7d6a-90bc-5fe99110d0a2', -99, '2021-01-18 02:18:59', 0),
('a8f2842d-5576-24dc-d2ed-6004f06b2eec', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c96705f6-2453-523f-1014-5fe991fd5bf1', 75, '2021-01-18 02:23:05', 0),
('a907a265-822b-7089-ea6d-5ffe543dc0d5', 'f3ab2114-3037-5119-1375-5ffe5300083d', '16a00661-6e26-a18d-9739-5fe9917fedee', 80, '2021-01-18 02:17:49', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('a932f601-9493-460b-e522-5ffe53e7f5aa', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b27fc4e4-d383-31f9-2f97-5fe9919ef44a', 89, '2021-01-13 01:58:24', 0),
('a93faab3-8285-5857-a128-6004f068fd47', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6f37cdc5-64de-e0cb-0398-5fe991c753dd', 75, '2021-01-18 02:21:17', 0),
('a9453806-cf18-a3ca-2ff2-5ffe575e8a98', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2b496d64-3d03-a85e-b5d3-5fe991019c1d', 80, '2021-01-18 02:21:56', 0),
('a94dc2b7-c079-2a8f-696a-5ffe5732e5ac', '857d3817-1929-a617-ad2c-5ffe57175f84', '3d95bbb1-ce50-817f-44ea-5fe991c104d8', 75, '2021-01-18 02:18:59', 0),
('a956cf96-f6f5-8538-0f93-6004f0d5d2f6', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'cdf4deca-43a7-96de-523c-5fe9917f19dc', -99, '2021-01-18 02:23:05', 0),
('a9870082-6bac-1d5e-c9ca-5ffe57aae6c0', '857d3817-1929-a617-ad2c-5ffe57175f84', '48bd518c-335e-0f97-a7e0-5fe991ada2ca', 75, '2021-01-18 02:18:59', 0),
('a9889ef7-b355-6693-f940-5ffe549a683a', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'f36d2301-85f6-e277-dd2b-5fe991260aba', 80, '2021-01-18 02:17:49', 0),
('a9a59a42-8f74-1d7e-91d8-5ffe53159127', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b6b96afa-bc9a-9505-7fec-5fe99129a947', 90, '2021-01-13 01:58:24', 0),
('a9ae00d2-d354-b15f-05c2-5ffe57087167', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2a1f9f0a-f984-6834-3682-5fe991d443ea', 80, '2021-01-18 02:21:56', 0),
('a9b8bfa9-31a2-fb0a-af02-5ffe575cb2fa', '857d3817-1929-a617-ad2c-5ffe57175f84', '9ca10601-c27e-5c20-5956-5fe9919ccad4', -98, '2021-01-18 02:18:59', 0),
('a9c05ea4-a936-71a9-75af-6004f0e32554', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c88c4932-f211-1278-2e83-5fe991d62f1d', 75, '2021-01-18 02:23:05', 0),
('a9eb0aa3-442b-4900-28fd-6004f04008b0', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '116627b2-895a-e79c-9ab8-5fe991da953f', 75, '2021-01-18 02:21:17', 0),
('aa083e04-b48a-2d37-3fab-5ffe5457298d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4a7205e3-4f54-b385-fcaf-5fe991185158', 80, '2021-01-18 02:17:49', 0),
('aa138e01-10f7-1f2e-1653-5ffe573b2ba5', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2d2b027c-488d-50dd-9ea4-5fe99146ebb8', 80, '2021-01-18 02:21:56', 0),
('aa1641a5-5a4b-6f2f-badb-5ffe5718c4f5', '857d3817-1929-a617-ad2c-5ffe57175f84', 'de2e0848-be5e-0abe-c6db-5fe991aa483f', 75, '2021-01-18 02:18:59', 0),
('aa195010-64d1-8539-d8ce-6004f0b8f98f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6e736f3a-1b1d-ec66-c34f-5fe9916edc56', 75, '2021-01-18 02:21:17', 0),
('aa1992be-127f-62f2-11f7-5ffe531610eb', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b59fe417-a393-ffd9-baed-5fe9919fd0ca', 90, '2021-01-13 01:58:24', 0),
('aa1f716e-ece9-5500-f56f-6004f045dbea', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a1812648-b7a8-751b-ace4-5fe991b4de0b', -98, '2021-01-18 02:23:05', 0),
('aa5f0a09-c28c-7339-da2a-5ffe561f929f', '860158ee-3501-2093-b810-5ffe567b916e', '3c078834-32c4-617f-9fd6-5fe991bf28e0', 80, '2021-01-18 02:20:17', 0),
('aa7cbbaf-b5ca-c247-3aa8-5ffe576911cb', '857d3817-1929-a617-ad2c-5ffe57175f84', 'cd310a2b-1462-a6c9-ca96-5fe9919756ad', 75, '2021-01-18 02:18:59', 0),
('aa800770-6cb8-b548-2898-5ffe5707b099', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2c394a82-e49f-ebe1-84f2-5fe991d8fe80', -99, '2021-01-18 02:21:56', 0),
('aa831e76-2157-a3df-3c6e-5ffe541de637', 'f3ab2114-3037-5119-1375-5ffe5300083d', '23eb066a-e61e-518d-57a7-5fe9914c6f06', -99, '2021-01-18 02:17:49', 0),
('aa83bdde-d481-73f4-51b3-6004f037fb53', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a5b46281-8b2a-2314-5bd7-5fe991cb89bd', 75, '2021-01-18 02:23:05', 0),
('aa902700-87eb-2d5c-123c-5ffe5374dec8', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b92414b1-a4b1-858b-43cd-5fe991d91b88', 90, '2021-01-13 01:58:24', 0),
('aaba0cde-b5e5-6826-76ea-5ffe53744b5d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '642fcb3a-fe50-4dde-f514-5fe99159c799', 90, '2021-01-13 01:58:24', 0),
('aac93ae8-0646-e7ec-3b8a-5ffe5638ef4b', '860158ee-3501-2093-b810-5ffe567b916e', 'ee33075d-445e-7c77-cbcb-5fe991df87e3', -98, '2021-01-18 02:20:17', 0),
('aad0de27-ff25-5989-9786-5ffe57b5c195', '857d3817-1929-a617-ad2c-5ffe57175f84', 'fdb10bca-f265-c42d-8e94-5fe991226d9c', 75, '2021-01-18 02:18:59', 0),
('aae60a29-b695-e801-10d3-6004f0837911', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a4c5d37e-7f45-eb0b-1cf9-5fe9917b9d6a', 75, '2021-01-18 02:23:05', 0),
('aae8b788-274f-c7b6-8c5a-5ffe5759c6e8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '29305214-b60b-aa3d-5ec2-5fe991da434c', 80, '2021-01-18 02:21:56', 0),
('aaefdcc9-0cbd-8504-d2a4-5ffe540ceed7', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'f0ea58c4-6672-6ed8-d368-5fe991b8d600', 80, '2021-01-18 02:17:49', 0),
('aaf228a5-0fb9-587f-4b48-6004f029d26b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '70b85345-f9e6-4479-50bf-5fe991d4f6ee', 75, '2021-01-18 02:21:17', 0),
('ab03cd04-21a4-3972-6f2e-5ffe53d99516', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b7e8a2b4-1cbb-a89d-510a-5fe991a230cd', 90, '2021-01-13 01:58:24', 0),
('ab35a0fd-c7f4-d2c7-8b89-5ffe5781ad47', '857d3817-1929-a617-ad2c-5ffe57175f84', 'edd80716-4770-8f9e-58e4-5fe991dcf437', -99, '2021-01-18 02:18:59', 0),
('ab37cee9-7250-64d1-61a7-5ffe56e495ec', '860158ee-3501-2093-b810-5ffe567b916e', '41de0022-b274-6bbf-b53d-5fe991a8c09e', 80, '2021-01-18 02:20:17', 0),
('ab49c690-a049-9241-10a1-6004f0475122', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a794fcfe-711b-488f-84dd-5fe991cb8a8f', 75, '2021-01-18 02:23:05', 0),
('ab4a5793-7371-a140-0525-5ffe5756e7ce', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2e337fa1-1d69-a9dd-0ce9-5fe9914393e1', -99, '2021-01-18 02:21:56', 0),
('ab54fa71-f422-7d74-c9cd-5ffe54f0f08b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '63ba06ec-c8c0-814b-4724-5fe991431a0a', -99, '2021-01-18 02:17:49', 0),
('ab711a7a-3883-ec24-cbce-5ffe5313f046', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b4919591-7b1f-f68c-6105-5fe9910a4a31', 90, '2021-01-13 01:58:24', 0),
('ab9b1537-d655-dd66-1dfc-5ffe579832cc', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ba0d0b5d-0fea-e94c-a366-5fe991b36938', 75, '2021-01-18 02:18:59', 0),
('aba9c9b4-5c9d-68f8-c4c9-5ffe56d8e708', '860158ee-3501-2093-b810-5ffe567b916e', '34d90e2b-2058-ea74-6222-5fe99179e083', 80, '2021-01-18 02:20:17', 0),
('abb6e44a-ea50-f67f-c7cb-5ffe54aa2029', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'f01fc973-d5fe-d3b7-79db-5fe991f5619e', 80, '2021-01-18 02:17:49', 0),
('abb82483-9bd7-5c67-845e-5ffe57114c33', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '2842847c-275e-f04f-e50b-5fe991f01580', 80, '2021-01-18 02:21:56', 0),
('abbb985e-4984-7eb6-9c84-6004f01d32d3', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a6a9a7bb-1ad5-e90a-9003-5fe99196320b', -99, '2021-01-18 02:23:05', 0),
('abcf8c85-20e7-e20b-aaf5-6004f0914a4b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6ff6bc3b-22a7-25f3-b41a-5fe9917a810d', -99, '2021-01-18 02:21:17', 0),
('abe3a17b-e570-07bb-9bce-5ffe53c8d506', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ba59377a-0727-05f3-8480-5fe991ba772f', 90, '2021-01-13 01:58:24', 0),
('abf13e1f-8494-197b-e6e4-5ffe5798bf6f', '857d3817-1929-a617-ad2c-5ffe57175f84', '10bb9476-6a76-c89c-3b36-5fe9919e22c0', -99, '2021-01-18 02:18:59', 0),
('ac19cf3c-e8aa-6ef0-78b9-5ffe578129ff', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '87328551-5fbc-ff3f-e0f1-5fe99100990f', -98, '2021-01-18 02:21:56', 0),
('ac1f5c7c-78c3-47f7-dd59-5ffe56b73905', '860158ee-3501-2093-b810-5ffe567b916e', '5a000560-7280-a1b7-e8f7-5fe99195e88a', 80, '2021-01-18 02:20:17', 0),
('ac235b25-c5c5-b934-b99a-6004f0c8223f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a3c8b404-bff0-380b-9a97-5fe99126fb9f', 75, '2021-01-18 02:23:05', 0),
('ac4ad822-38ec-ee54-6af8-5ffe57127064', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ab5b0857-c791-bdac-00d8-5fe991750992', 75, '2021-01-18 02:18:59', 0),
('ac4d928f-6c64-106d-3ce2-5ffe537062d8', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b394b3f8-0da3-df98-94ab-5fe99179f361', 90, '2021-01-13 01:58:24', 0),
('ac820dbb-70ad-a91b-fb00-5ffe57fe81c6', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8ad528ed-feb4-75f8-27c4-5fe9915a5cfc', 80, '2021-01-18 02:21:56', 0),
('ac87c133-0f11-722d-91c3-6004f0f735cb', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a893ae5e-04f1-1ad5-14f8-5fe99134dca8', -99, '2021-01-18 02:23:05', 0),
('ac8a3c80-66cf-9d7e-66c4-5ffe5688d18a', '860158ee-3501-2093-b810-5ffe567b916e', '4d8a0aa3-32ab-6e3d-a53e-5fe99166c344', -99, '2021-01-18 02:20:17', 0),
('ac990873-c6aa-c8f7-d81b-5ffe561bc8f5', '860158ee-3501-2093-b810-5ffe567b916e', '23550dea-242e-e641-c100-5fe9914c1d52', 80, '2021-01-18 02:20:17', 0),
('aca02082-b98e-2e3c-4010-6004f009845e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6d9aa8e5-15b0-7074-59f5-5fe991e77181', 75, '2021-01-18 02:21:17', 0),
('acabd3b2-f2e2-7d96-d150-5ffe57d7433f', '857d3817-1929-a617-ad2c-5ffe57175f84', 'acb4792d-94aa-f27b-25a7-5fe991990b1d', -98, '2021-01-18 02:18:59', 0),
('acafab46-bedf-2acb-4236-5ffe53a9b065', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9b590855-d45d-2b3f-dc76-5fe991a05eaa', 89, '2021-01-13 01:58:24', 0),
('acdd9264-9f10-c802-d428-5ffe56e4e0d0', '860158ee-3501-2093-b810-5ffe567b916e', '23e709d5-278b-953a-b425-5fe9912b1de3', 80, '2021-01-18 02:20:17', 0),
('ace713bf-5968-7b3d-b661-5ffe57586128', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8a0f118c-c330-84ca-6b98-5fe991e394d8', 80, '2021-01-18 02:21:56', 0),
('acf590f6-e6b6-a949-8e30-6004f0f3b334', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a2d06f6c-d1d9-df54-18be-5fe991d6de31', 75, '2021-01-18 02:23:05', 0),
('ad089383-1265-cfcb-5eb2-5ffe578825fa', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b05f3683-3b79-cc74-f87f-5fe9911a764c', 75, '2021-01-18 02:18:59', 0),
('ad1b1124-ab60-e148-277d-5ffe53982d64', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9eeea38f-7536-6b8e-cd5f-5fe99168e8ca', 90, '2021-01-13 01:58:24', 0),
('ad36fac1-43ca-0c60-30b1-5ffe56c77531', '860158ee-3501-2093-b810-5ffe567b916e', '660901ef-f92f-3dc1-aed9-5fe9918feb95', -99, '2021-01-18 02:20:17', 0),
('ad5ced4b-9e21-fa53-33db-6004f03cd537', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c218f0fb-e18c-1a03-5e56-5fe991fdff67', -98, '2021-01-18 02:23:05', 0),
('ad68f28b-8692-ca14-ac28-5ffe57dafab5', '857d3817-1929-a617-ad2c-5ffe57175f84', 'af6ced59-b625-ac50-8de2-5fe99176adde', 75, '2021-01-18 02:18:59', 0),
('ad7bc91e-d160-c887-aad5-6004f07f1aa2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '7195a6d5-a70c-c709-6fc4-5fe991771207', -99, '2021-01-18 02:21:17', 0),
('ad80f6e8-8dd5-78f7-6511-5ffe57103069', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8caa545c-91aa-b64d-29e7-5fe9916b7bd3', 80, '2021-01-18 02:21:56', 0),
('ad8c0394-c10b-5d25-e4c1-5ffe537d1733', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9e0fe800-79ba-5cd5-06ef-5fe991984322', 90, '2021-01-13 01:58:24', 0),
('ada1fa19-b16b-63d8-6852-5ffe56ccabf7', '860158ee-3501-2093-b810-5ffe567b916e', '6560009a-e8c7-dbae-1288-5fe99128b793', 80, '2021-01-18 02:20:17', 0),
('ada7031b-270e-ccb9-312a-5ffe54d0439d', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd2d0a027-3572-d6ed-c8b6-5fe991cb1f5d', -98, '2021-01-18 02:17:49', 0),
('adbbfaa1-9f94-9a3b-b0be-6004f00dbc73', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c65b6579-4b12-0fc1-805f-5fe991a8c9e0', 75, '2021-01-18 02:23:05', 0),
('adcf7d43-ab97-9548-de08-5ffe57cc42bf', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b2312d82-92c2-21d0-ce38-5fe991a0e273', 75, '2021-01-18 02:18:59', 0),
('adf1c6f1-8455-c156-5ad0-5ffe57bed598', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8baebba3-3e27-b455-5c5c-5fe991b5f301', -99, '2021-01-18 02:21:56', 0),
('adfd5655-7d9f-1e74-5401-5ffe562a5efa', '860158ee-3501-2093-b810-5ffe567b916e', 'eefceb17-42d8-076b-4008-5fe991e16df6', 89, '2021-01-18 02:20:17', 0),
('ae05ec93-a957-1f71-7ed2-5ffe53d81efb', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a0add8a9-b932-fbce-14dd-5fe9913ae8a5', 90, '2021-01-13 01:58:24', 0),
('ae1e19a9-5072-41e8-f12d-6004f00030b2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c55a7aab-8278-3955-8f2e-5fe991014824', 75, '2021-01-18 02:23:05', 0),
('ae2f5d6d-d341-8bdc-c3eb-5ffe57fe985d', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b14832c7-ab94-6642-afaa-5fe9918dafa5', -99, '2021-01-18 02:18:59', 0),
('ae5765cb-5785-8c61-058d-5ffe57499011', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '89348a43-0ceb-7fc3-bda1-5fe99191fc57', 80, '2021-01-18 02:21:56', 0),
('ae5d16fe-9141-c74f-45b7-6004f04ca6bf', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '6cc3fc48-e397-50dc-68d3-5fe99145e426', 75, '2021-01-18 02:21:17', 0),
('ae5ee16a-0c7b-d86e-44e1-5ffe56321035', '860158ee-3501-2093-b810-5ffe567b916e', '16a00661-6e26-a18d-9739-5fe9917fedee', 80, '2021-01-18 02:20:17', 0),
('ae6ccf01-986f-aaf6-a246-5ffe53bdca8f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9fce588d-18cd-c0d3-f89b-5fe9911c9c0a', 90, '2021-01-13 01:58:24', 0),
('ae796dd2-78e3-b670-8c81-6004f04c89e2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c85bf0a5-3f3a-438b-ba72-5fe9911f220a', 75, '2021-01-18 02:23:05', 0),
('ae9509a5-b404-6f49-416a-5ffe57310891', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ae7dc2b8-f4b3-206f-1ad7-5fe9919d4671', 75, '2021-01-18 02:18:59', 0),
('aec0087b-0597-ae56-62ce-5ffe57335fd5', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8d914baf-1423-7020-8944-5fe9911e99af', -99, '2021-01-18 02:21:56', 0),
('aec52c51-7c83-a206-62af-5ffe53eb70b6', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9d30721c-158f-c056-692b-5fe99127c260', 90, '2021-01-13 01:58:24', 0),
('aed9eff6-6223-0098-89c7-6004f038e928', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c76062c6-92e2-d529-9a5f-5fe9919350fd', -99, '2021-01-18 02:23:05', 0),
('aeeddf31-2fed-74e9-3a77-5ffe573f3bf4', '857d3817-1929-a617-ad2c-5ffe57175f84', 'b3117773-7971-9fdc-a876-5fe99184937b', -99, '2021-01-18 02:18:59', 0),
('af113155-46a0-0314-c9f4-5ffe5685ebeb', '860158ee-3501-2093-b810-5ffe567b916e', 'f36d2301-85f6-e277-dd2b-5fe991260aba', 80, '2021-01-18 02:20:17', 0),
('af1ea64d-6742-7115-9da9-6004f066069b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3b495310-2762-2a33-fae5-5fe99197f1c9', -98, '2021-01-18 02:21:17', 0),
('af23d903-1d47-7f41-ab02-5ffe53f1fd7b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a18349b9-01ec-38ff-9453-5fe9917637c6', 90, '2021-01-13 01:58:24', 0),
('af2dbc37-39e2-03f7-0419-6004f03dcab0', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c466431a-9117-66a5-32d1-5fe991d14198', 75, '2021-01-18 02:23:05', 0),
('af2f2fdc-5eb0-90a9-ec4f-5ffe575e478e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '882106df-3bf3-d817-5575-5fe9914d26eb', 80, '2021-01-18 02:21:56', 0),
('af3f0eca-3fb7-f012-c89c-5ffe57a9d6ef', '857d3817-1929-a617-ad2c-5ffe57175f84', '47ab75be-caa2-8677-1598-5fe99188c136', -99, '2021-01-18 02:18:59', 0),
('af51a874-1763-085b-a727-5ffe570a203d', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ad954bf2-3a7d-e3fc-b572-5fe99169f4cb', 75, '2021-01-18 02:18:59', 0),
('af63c585-3d2a-75e9-22d1-5ffe56a1bca6', '860158ee-3501-2093-b810-5ffe567b916e', '4a7205e3-4f54-b385-fcaf-5fe991185158', 80, '2021-01-18 02:20:17', 0),
('af7ad7aa-b29a-4d3d-0f89-5ffe534d08f0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '9c4db416-fd51-21e4-e198-5fe9910a31e4', 90, '2021-01-13 01:58:24', 0),
('af90eaf4-8aef-0cd9-8a14-6004f043d12e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c9604d45-e488-4158-eef5-5fe9914cc27f', -99, '2021-01-18 02:23:05', 0),
('af970281-c556-6229-6969-5ffe57124ba9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '66ca2eb6-2154-1395-dd3a-5fe991a1c703', -98, '2021-01-18 02:21:56', 0),
('afad639e-39ae-0dcd-38cb-5ffe577d08f3', '857d3817-1929-a617-ad2c-5ffe57175f84', '3b495310-2762-2a33-fae5-5fe99197f1c9', 89, '2021-01-18 02:18:59', 0),
('afbda57f-eb55-54b4-afa9-5ffe569acb43', '860158ee-3501-2093-b810-5ffe567b916e', '23eb066a-e61e-518d-57a7-5fe9914c6f06', -99, '2021-01-18 02:20:17', 0),
('afd31aed-5777-9671-3398-5ffe535a67cd', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '31268c7a-771e-45dc-ad3e-5fe99197378d', 89, '2021-01-13 01:58:24', 0),
('afd862b5-b598-9e43-7414-6004f05117ba', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3e49521b-d827-7b2a-0b53-5fe991cb254a', 75, '2021-01-18 02:21:17', 0),
('afef3c23-9da0-667e-05dc-6004f0f3918d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c31a5001-3fc7-e99b-4cf0-5fe991815e31', 75, '2021-01-18 02:23:05', 0),
('aff83417-b5b3-4a61-f254-5ffe5797e829', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6a84c729-64b1-eea6-96e2-5fe9919c2ee3', 80, '2021-01-18 02:21:56', 0),
('b0123461-3df4-82d3-166b-5ffe5710d856', '857d3817-1929-a617-ad2c-5ffe57175f84', '3e49521b-d827-7b2a-0b53-5fe991cb254a', 75, '2021-01-18 02:18:59', 0),
('b02ef3fe-5cf4-f36d-e7b2-5ffe5330499f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '359e58d4-672f-8450-0502-5fe991d90d53', 90, '2021-01-13 01:58:24', 0),
('b0353a2f-330c-a27d-82e5-5ffe5680b73e', '860158ee-3501-2093-b810-5ffe567b916e', 'f0ea58c4-6672-6ed8-d368-5fe991b8d600', 80, '2021-01-18 02:20:17', 0),
('b04f86dd-1fb8-8eb1-b54a-6004f0ea7313', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e7b869ff-d7dc-a375-69dc-5fe9912999e3', -98, '2021-01-18 02:23:05', 0),
('b0602f7a-fbab-bc1d-2084-5ffe57200156', '857d3817-1929-a617-ad2c-5ffe57175f84', '3d9d1f58-38f0-6da8-84eb-5fe991bd1d59', 75, '2021-01-18 02:18:59', 0),
('b061348d-9021-85eb-f290-5ffe5712d6f0', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '699a76dc-beed-8aa3-4142-5fe9916ff8ae', 80, '2021-01-18 02:21:56', 0),
('b092d01d-bd91-bcce-e678-6004f0848642', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3d9d1f58-38f0-6da8-84eb-5fe991bd1d59', 75, '2021-01-18 02:21:17', 0),
('b094c03c-e8a1-8144-af25-5ffe568352c8', '860158ee-3501-2093-b810-5ffe567b916e', '63ba06ec-c8c0-814b-4724-5fe991431a0a', -99, '2021-01-18 02:20:17', 0),
('b0ad48a9-22b1-c912-d836-6004f04ce873', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ebd71d75-44bc-cb91-7b93-5fe99155f256', 75, '2021-01-18 02:23:05', 0),
('b0bb8b33-6e2b-cb44-377d-5ffe5797f678', '857d3817-1929-a617-ad2c-5ffe57175f84', '3fa45ef5-762f-980f-aaa7-5fe99118be9d', 75, '2021-01-18 02:18:59', 0),
('b0c9f3d0-775b-35dd-ac2a-5ffe57c435d6', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6c6ea30f-0a8a-f174-e2f7-5fe99156d24f', 80, '2021-01-18 02:21:56', 0),
('b0d08d77-3ec6-6ca8-ea4a-5ffe538477d1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '34832776-1f41-d9d6-3c88-5fe991652abf', 90, '2021-01-13 01:58:24', 0),
('b0fa01c9-7b2c-432d-c4ca-5ffe56afeda2', '860158ee-3501-2093-b810-5ffe567b916e', 'f01fc973-d5fe-d3b7-79db-5fe991f5619e', 80, '2021-01-18 02:20:17', 0),
('b109f2b2-1aaf-60ce-e03e-6004f084555b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ead81cce-59ad-453f-55c2-5fe991497fb5', 75, '2021-01-18 02:23:05', 0),
('b111a5b8-76fc-f5dd-2a8b-5ffe577be64a', '857d3817-1929-a617-ad2c-5ffe57175f84', '3eeb41f2-d7de-94e6-393e-5fe99172b71f', -99, '2021-01-18 02:18:59', 0),
('b1275393-e084-4ca0-ee85-5ffe53dafbbd', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '37da10a0-4b60-17b3-572d-5fe99146d1f5', 90, '2021-01-13 01:58:24', 0),
('b14282f0-9ba7-d48e-bc78-6004f0b7d38c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3fa45ef5-762f-980f-aaa7-5fe99118be9d', 75, '2021-01-18 02:21:17', 0),
('b14c3d6d-8115-ecbd-81a7-5ffe57174ecf', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6b7f9d3c-48c8-36f7-80eb-5fe9918dc431', -99, '2021-01-18 02:21:56', 0),
('b1694f30-3468-8b9a-491a-6004f01ef602', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ed768757-6487-2c69-92de-5fe99150b701', 75, '2021-01-18 02:23:05', 0),
('b1764309-ed6c-c808-e146-5ffe57dc3ec1', '857d3817-1929-a617-ad2c-5ffe57175f84', '3ca85a97-4cd3-c3df-3213-5fe9917403bb', 75, '2021-01-18 02:18:59', 0),
('b17c0a85-2bec-f347-35b2-5ffe5375fd4d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '61ba0986-eeb4-828b-acec-5fe9914de2cd', 90, '2021-01-13 01:58:24', 0),
('b1847979-ca05-d1da-c761-5ffe532009b0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '36b9debc-cf61-2e05-e0c1-5fe99114a8b1', 90, '2021-01-13 01:58:24', 0),
('b1ba52a3-cd5d-2a2e-9d4e-5ffe57f7ef4b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '68ae731f-f0cb-25b6-553f-5fe9918a1892', 80, '2021-01-18 02:21:56', 0),
('b1cb7714-ea63-6a69-c403-6004f00419a1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'eca203fd-ce6d-9048-6970-5fe991ad15e8', -99, '2021-01-18 02:23:05', 0),
('b1cdb289-8c10-c233-ff2d-5ffe57efe3af', '857d3817-1929-a617-ad2c-5ffe57175f84', '40482d37-640a-72bc-f077-5fe9915e67a0', -99, '2021-01-18 02:18:59', 0),
('b1fd46c5-b3c0-c807-cf98-6004f0e031c5', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3eeb41f2-d7de-94e6-393e-5fe99172b71f', -99, '2021-01-18 02:21:17', 0),
('b227e9db-b4a9-c629-03b9-5ffe571568b7', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6d5fbf99-0522-690a-dabb-5fe99188c4b5', -99, '2021-01-18 02:21:56', 0),
('b230afbe-f40f-7a6b-a803-5ffe57a8e571', '857d3817-1929-a617-ad2c-5ffe57175f84', '3c078834-32c4-617f-9fd6-5fe991bf28e0', 75, '2021-01-18 02:18:59', 0),
('b2337f38-cd15-1e4d-6bce-6004f0ddfece', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e9d4c5fa-00c6-380c-2014-5fe991f309f0', 75, '2021-01-18 02:23:05', 0),
('b23a4d91-b4e3-c386-bc81-5ffe532920d8', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '336abce4-cd82-bacf-2be2-5fe9917ce5f3', 90, '2021-01-13 01:58:24', 0),
('b285f81f-6ad1-413b-b590-5ffe57daaa69', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ee33075d-445e-7c77-cbcb-5fe991df87e3', -98, '2021-01-18 02:18:59', 0),
('b29502e7-b31b-c07f-4b01-5ffe53fa14ce', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '38f7e37c-3780-9415-9113-5fe9915aee28', 90, '2021-01-13 01:58:24', 0),
('b2976f41-726f-8ef0-f57b-5ffe5796aee4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '67aea666-6768-bbe9-f646-5fe99150edf5', 80, '2021-01-18 02:21:56', 0),
('b299d342-ac88-63a1-3963-6004f0424ce0', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ee2d337d-7418-f149-2626-5fe9918c5a0a', -99, '2021-01-18 02:23:05', 0),
('b2af1d97-05e9-b845-a461-6004f0f2d50e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3ca85a97-4cd3-c3df-3213-5fe9917403bb', 75, '2021-01-18 02:21:17', 0),
('b2ea31ac-3a94-0666-399d-5ffe57c29a34', '857d3817-1929-a617-ad2c-5ffe57175f84', '41de0022-b274-6bbf-b53d-5fe991a8c09e', 75, '2021-01-18 02:18:59', 0),
('b2f654da-c31f-0b7f-0877-5ffe5741c9cf', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '703b9d7c-9838-63ac-6400-5fe991e6bba4', 89, '2021-01-18 02:21:56', 0),
('b2f79e6c-cff1-1f86-d51b-5ffe5324da46', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '324a8fc4-a1f5-0ff1-9dfe-5fe99155b682', 90, '2021-01-13 01:58:24', 0),
('b3019c60-b7cb-a8f5-2645-6004f0e0efc7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e8cad13f-c73b-7e3b-2da3-5fe99127eea5', 75, '2021-01-18 02:23:05', 0),
('b34d4127-51af-4125-596f-5ffe57ecd4a9', '857d3817-1929-a617-ad2c-5ffe57175f84', '34d90e2b-2058-ea74-6222-5fe99179e083', 75, '2021-01-18 02:18:59', 0),
('b35b7b36-deca-d9ec-a2c7-5ffe53b2e9ca', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e1294056-4128-6d77-cf89-5fe991e10d4b', 89, '2021-01-13 01:58:24', 0),
('b35c7818-973f-bc81-fe81-6004f0cbbfce', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '40482d37-640a-72bc-f077-5fe9915e67a0', -99, '2021-01-18 02:21:17', 0),
('b35f6aa4-2a35-c478-e275-5ffe571def1b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '73df2ce8-8c3e-acfa-bdd7-5fe9913b4b46', 80, '2021-01-18 02:21:56', 0),
('b36b0e04-ca5e-025c-7154-5ffe56b1182f', '860158ee-3501-2093-b810-5ffe567b916e', 'd2d0a027-3572-d6ed-c8b6-5fe991cb1f5d', -98, '2021-01-18 02:20:17', 0),
('b3a5c502-d71d-7468-11cd-5ffe57eb2ac2', '857d3817-1929-a617-ad2c-5ffe57175f84', '5a000560-7280-a1b7-e8f7-5fe99195e88a', 75, '2021-01-18 02:18:59', 0),
('b3cd1b2b-3872-bb91-ebc2-5ffe538b9034', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e651281c-d5fd-1e65-c965-5fe991ccde64', 90, '2021-01-13 01:58:24', 0),
('b3d16f6d-1597-cb88-0dd1-5ffe5788a686', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '7328b654-183a-be94-e0a2-5fe991dbec80', 80, '2021-01-18 02:21:56', 0),
('b4059fec-6b0e-d87e-271d-5ffe5708ff3c', '857d3817-1929-a617-ad2c-5ffe57175f84', '4d8a0aa3-32ab-6e3d-a53e-5fe99166c344', -99, '2021-01-18 02:18:59', 0),
('b410bf5b-a6bf-48be-1812-6004f03c9696', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3c078834-32c4-617f-9fd6-5fe991bf28e0', 75, '2021-01-18 02:21:17', 0),
('b427c528-e6c4-45e6-b8aa-5ffe53a3e253', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e59920e8-2c35-973a-d33c-5fe991e47b1d', 90, '2021-01-13 01:58:24', 0),
('b4397f2b-9653-1ca5-ac46-5ffe57c9d532', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '75a7db3b-7d01-17f4-afc6-5fe991d9dfd9', 80, '2021-01-18 02:21:56', 0),
('b43ede22-605a-6e31-e45a-6004f0fd0c8b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c4ba2a31-6dbf-61a9-f6b2-5fe99130e025', -98, '2021-01-18 02:23:05', 0),
('b4450601-2b4d-a12e-eb2d-5ffe543a7419', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd657cb55-0375-4273-1649-5fe99107f1cd', 80, '2021-01-18 02:17:49', 0),
('b44904f9-3dff-116c-12d0-6004f0c168be', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '1552b40c-ce5c-ec8d-5deb-5fe991cf6636', -99, '2021-01-18 02:21:17', 0),
('b467e0ef-e6bd-fe10-7752-5ffe57d7b3f6', '857d3817-1929-a617-ad2c-5ffe57175f84', '23e709d5-278b-953a-b425-5fe9912b1de3', 75, '2021-01-18 02:18:59', 0),
('b4851604-ac24-26a8-9537-5ffe53aed6d3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e8072daa-fce4-2cee-14e3-5fe991410489', 90, '2021-01-13 01:58:24', 0),
('b49d4c9c-ce62-99a4-d716-5ffe57d057b5', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '74c25699-1cb1-ce6d-21b8-5fe9919bc181', -99, '2021-01-18 02:21:56', 0),
('b4bb2d62-a7ef-2e60-c510-6004f00946cb', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c817a692-cbd3-c46c-ea1e-5fe991773119', 75, '2021-01-18 02:23:05', 0),
('b4c05fd4-8dff-6f61-73d2-6004f0e9c638', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2732a0e6-5f36-20ee-3fb9-5fe99121cf30', 89, '2021-01-18 02:21:17', 0),
('b4c46a44-9b7d-e3a4-490b-5ffe5797295c', '857d3817-1929-a617-ad2c-5ffe57175f84', '660901ef-f92f-3dc1-aed9-5fe9918feb95', -99, '2021-01-18 02:18:59', 0),
('b4dc0bae-7d7e-8271-34b2-5ffe5725f49b', '857d3817-1929-a617-ad2c-5ffe57175f84', '450a84c1-7709-a7c1-22e0-5fe9913729a1', 75, '2021-01-18 02:18:59', 0),
('b4e69060-5c35-fbb7-cd23-5ffe53421f52', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e70a07f9-978a-eb0f-5fe3-5fe99197714d', 90, '2021-01-13 01:58:24', 0),
('b5093ef0-646e-c473-053c-5ffe57ee2665', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '72393ce0-595f-0405-6bcd-5fe991546f2b', 80, '2021-01-18 02:21:56', 0),
('b51eb56d-b3c4-cc9a-820d-5ffe57b6df84', '857d3817-1929-a617-ad2c-5ffe57175f84', '6560009a-e8c7-dbae-1288-5fe99128b793', 75, '2021-01-18 02:18:59', 0),
('b5312252-1494-5d03-3293-6004f0bee5d7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c742c253-2a4a-cfac-4436-5fe991448121', 75, '2021-01-18 02:23:05', 0),
('b543d064-1426-389d-ce8e-5ffe53a11372', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e4e302c6-3fb2-9304-85f8-5fe9913267cd', 90, '2021-01-13 01:58:24', 0),
('b56aa77b-79c7-60af-0c0b-5ffe57a7435e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '76986dab-ff17-bc47-8526-5fe9911c5da7', -99, '2021-01-18 02:21:56', 0),
('b572e752-0b8b-ef7e-c181-5ffe5704e44b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'eefceb17-42d8-076b-4008-5fe991e16df6', 89, '2021-01-18 02:18:59', 0),
('b57476e8-ad3a-ac29-bb97-6004f0d364a2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2b496d64-3d03-a85e-b5d3-5fe991019c1d', 75, '2021-01-18 02:21:17', 0),
('b5a2cc49-80b7-b410-1efc-5ffe539b0a49', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e8ff7685-9599-b1b4-e206-5fe9910525ef', 90, '2021-01-13 01:58:24', 0),
('b5c95bc3-b042-092b-685a-5ffe57ac7853', '857d3817-1929-a617-ad2c-5ffe57175f84', '16a00661-6e26-a18d-9739-5fe9917fedee', 75, '2021-01-18 02:18:59', 0),
('b5d09fcd-4293-1c6a-e6a2-5ffe57294b5c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '715bbbc1-3fca-b78e-ff62-5fe991520d0f', 80, '2021-01-18 02:21:56', 0),
('b5fea917-145a-cf02-7219-5ffe53b01571', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e42c95a9-569b-ed17-52d5-5fe9910ba6e9', 90, '2021-01-13 01:58:24', 0),
('b61cd5ef-3642-19eb-ec27-6004f008420c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2a1f9f0a-f984-6834-3682-5fe991d443ea', 75, '2021-01-18 02:21:17', 0),
('b635cab5-0fa7-c6b4-35da-5ffe5770e30f', '857d3817-1929-a617-ad2c-5ffe57175f84', 'f36d2301-85f6-e277-dd2b-5fe991260aba', 75, '2021-01-18 02:18:59', 0),
('b648429a-12ce-7820-8ec0-5ffe57d3ed08', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4a61c49f-2cdb-e7e6-0f51-5fe9913f40c7', 89, '2021-01-18 02:21:56', 0),
('b65544e8-1a72-fba4-de55-5ffe532c385c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '56a6bf95-4af3-f5f0-259a-5fe991106ab5', 89, '2021-01-13 01:58:24', 0),
('b685de07-1873-f65a-a927-6004f056c793', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c9bc1c63-7f2d-8a15-9aec-5fe99194e016', 75, '2021-01-18 02:23:05', 0),
('b68c0ed5-d2d3-0f2f-b082-5ffe57289b59', '857d3817-1929-a617-ad2c-5ffe57175f84', '4a7205e3-4f54-b385-fcaf-5fe991185158', 75, '2021-01-18 02:18:59', 0),
('b69e8244-7a4e-a3de-754b-5ffe577ad67c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4e1109c8-7876-d60e-a048-5fe991d7c4ae', 80, '2021-01-18 02:21:56', 0),
('b6b4b8e9-a410-c383-f1d2-5ffe53bdf9cc', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5a5c77c9-0168-2cf4-88a5-5fe9911dc650', 90, '2021-01-13 01:58:24', 0),
('b6d48f70-80ea-554b-1f68-6004f071c789', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2d2b027c-488d-50dd-9ea4-5fe99146ebb8', 75, '2021-01-18 02:21:17', 0),
('b6e6f997-2f5f-1c2b-4f17-5ffe571d6040', '857d3817-1929-a617-ad2c-5ffe57175f84', '23eb066a-e61e-518d-57a7-5fe9914c6f06', -99, '2021-01-18 02:18:59', 0),
('b6f99ae4-aebd-0a5c-a79b-5ffe57e15746', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4d1fe09d-5f13-4da2-9290-5fe9912f736b', 80, '2021-01-18 02:21:56', 0),
('b703e509-e0ea-cf77-c2aa-6004f0fe37db', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c8e91789-4d8c-33fa-9dc3-5fe9917dcaac', -99, '2021-01-18 02:23:05', 0),
('b70c1235-51c2-bc81-a5fb-5ffe53bb32e9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '597578a9-e100-d14a-98a9-5fe991cb2926', 90, '2021-01-13 01:58:24', 0),
('b7489b51-a662-e4f8-0256-5ffe57809b6d', '857d3817-1929-a617-ad2c-5ffe57175f84', 'f0ea58c4-6672-6ed8-d368-5fe991b8d600', 75, '2021-01-18 02:18:59', 0),
('b7637b1a-d4f4-20d5-d836-5ffe579b6107', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4fd10984-05a7-6cfa-a22a-5fe991fbc4fa', 80, '2021-01-18 02:21:56', 0),
('b768865c-b189-9bf5-feea-5ffe5327fbaf', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5c10a0c5-ddae-9e33-afae-5fe991ed07ff', 90, '2021-01-13 01:58:24', 0),
('b783afa3-2314-7cb5-7c90-6004f01dcfb2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c670d173-301d-7eff-dfc6-5fe9912f92bb', 75, '2021-01-18 02:23:05', 0),
('b792ba6e-504c-c33e-1de8-6004f0150b72', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2c394a82-e49f-ebe1-84f2-5fe991d8fe80', -99, '2021-01-18 02:21:17', 0),
('b7a8f76e-ac8a-e4b0-519c-5ffe5770814a', '857d3817-1929-a617-ad2c-5ffe57175f84', '63ba06ec-c8c0-814b-4724-5fe991431a0a', -99, '2021-01-18 02:18:59', 0),
('b7bf80fe-5bfc-bc3d-4d21-5ffe535e575b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5b413545-d4fd-c9b7-d6d2-5fe991c152ad', 90, '2021-01-13 01:58:24', 0),
('b7c10da9-acad-4f45-f470-5ffe5368f861', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '65dedae3-b5b0-d891-450b-5fe9917e0089', 90, '2021-01-13 01:58:24', 0),
('b7c98d14-fd87-a4a3-a210-5ffe5765e3e8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4efb3cf7-9b18-608e-0873-5fe991601809', -99, '2021-01-18 02:21:56', 0),
('b7f3764e-5b1e-9954-591d-6004f012023f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'caa6f5eb-c27c-81f2-44c4-5fe99148c11a', -99, '2021-01-18 02:23:05', 0),
('b811e0a8-53b7-690e-6b95-5ffe5712d946', '857d3817-1929-a617-ad2c-5ffe57175f84', 'f01fc973-d5fe-d3b7-79db-5fe991f5619e', 75, '2021-01-18 02:18:59', 0),
('b8150e6a-ef45-d95d-44a2-5ffe530acc83', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '58a5dcde-f29e-9c98-9c07-5fe991eb4315', 90, '2021-01-13 01:58:24', 0),
('b8293ac8-c0b5-e20d-17f6-5ffe571b7877', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4c37daab-be92-019b-381d-5fe99196a7ca', 80, '2021-01-18 02:21:56', 0),
('b84c2d06-2e50-6e85-52bb-6004f0022065', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '29305214-b60b-aa3d-5ec2-5fe991da434c', 75, '2021-01-18 02:21:17', 0),
('b8785a24-a9b7-8b7a-d9b4-6004f0d7e3d5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c59c320d-1251-19ea-0062-5fe991e0eaf9', 75, '2021-01-18 02:23:05', 0),
('b87cab11-be1c-b744-43e6-5ffe53b7f975', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5cdd1a92-d464-520e-afab-5fe991d72da7', 90, '2021-01-13 01:58:24', 0),
('b888b610-f9ff-d678-b28c-5ffe57abc0d9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '50a7c395-84c7-a636-8650-5fe9914a4078', -99, '2021-01-18 02:21:56', 0),
('b8e508bb-1b5e-2f92-64b6-5ffe53fa4811', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '57c5b394-b150-f1c0-2a99-5fe9918738a0', 90, '2021-01-13 01:58:24', 0),
('b8ed2947-0357-9af1-e3b9-5ffe57321348', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4b4a59af-cb8a-d026-7057-5fe991880a95', 80, '2021-01-18 02:21:56', 0),
('b8f35f6e-9e8f-fcad-d5fa-6004f0d8e64e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9b5bed87-0888-81f7-f9b9-5fe9917ea434', -98, '2021-01-18 02:23:05', 0),
('b9019847-4ce5-7ac3-fa61-6004f0a143cd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2e337fa1-1d69-a9dd-0ce9-5fe9914393e1', -99, '2021-01-18 02:21:17', 0),
('b93ffa9f-362d-ea6c-d372-5ffe53fb0774', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '582d4670-fa7e-c32e-af44-5fe991a87c45', 89, '2021-01-13 01:58:24', 0),
('b949b512-a309-7c33-168d-5ffe574de431', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5890b264-1737-a341-49a7-5fe991cbc6b6', -98, '2021-01-18 02:21:56', 0),
('b94e0dc5-e039-955f-aa1e-5ffe5676aa5c', '860158ee-3501-2093-b810-5ffe567b916e', 'd657cb55-0375-4273-1649-5fe99107f1cd', 80, '2021-01-18 02:20:17', 0),
('b971ebfa-8ada-d103-f9b7-6004f0fb698d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9f8d8289-a870-70f7-ebc9-5fe99150962b', 75, '2021-01-18 02:23:05', 0),
('b9a135cc-5f3f-7677-bb77-5ffe530d6040', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5c0702a3-1f94-2c28-aef8-5fe991aa5d5a', 90, '2021-01-13 01:58:24', 0),
('b9a1c22e-fb33-baef-9b45-5ffe5746c802', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5c6868be-c79e-8603-f447-5fe991f1a410', 80, '2021-01-18 02:21:56', 0),
('b9bb4d34-c971-33f8-9d8e-6004f011c591', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2842847c-275e-f04f-e50b-5fe991f01580', 75, '2021-01-18 02:21:17', 0),
('b9e88130-59ca-119c-5fd5-6004f0c89653', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9e6892d0-cea9-a9af-2074-5fe991c2817b', 75, '2021-01-18 02:23:05', 0),
('b9fb6fe4-1da3-f46c-f7c2-5ffe57d7b6f1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5b4bd525-74a5-4e81-8c36-5fe991c0bc0d', 80, '2021-01-18 02:21:56', 0),
('b9ff98fe-3db7-d0c5-5aef-5ffe53816bd7', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5b0e9519-f4aa-ba7d-2b28-5fe991e20867', 90, '2021-01-13 01:58:24', 0),
('ba5f2b48-6447-b2c1-98b3-5ffe578ecbc8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5e5257f4-8eed-49c9-1704-5fe991dbea8a', 80, '2021-01-18 02:21:56', 0),
('ba5fab8a-4d08-5630-ad3f-5ffe53e8a901', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5dd4bc31-c591-33f4-58de-5fe991e1aaa8', 90, '2021-01-13 01:58:24', 0),
('ba621eb4-bc6b-f114-bbab-6004f0dbf21e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a178b8fc-f7de-94c3-87a0-5fe9910e6673', 75, '2021-01-18 02:23:05', 0),
('ba7649bd-1dfb-a139-3a9e-6004f00ac714', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2d90831f-294c-d495-b00e-5fe99120c84b', -98, '2021-01-18 02:21:17', 0),
('bab9ec26-7994-28b9-faaf-5ffe57489ad9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5d74330e-218f-2dee-ea38-5fe9913e73a3', -99, '2021-01-18 02:21:56', 0),
('bacfe464-78b0-27e2-cb0a-5ffe53aa78ba', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5ce9badf-a070-6591-2e16-5fe991d43544', 90, '2021-01-13 01:58:24', 0),
('bad1f4f5-c446-a768-bccc-6004f09f435c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a07bf528-55f3-b6d3-38a6-5fe991182187', -99, '2021-01-18 02:23:05', 0),
('bb14acdc-a1b6-af6d-91f2-5ffe5702c159', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5a65a785-eedd-5dce-c5c8-5fe991bddcae', 80, '2021-01-18 02:21:56', 0),
('bb180c94-f207-5e8f-df62-5ffe5409d32e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd5947f70-5835-9610-af3c-5fe991225042', 80, '2021-01-18 02:17:49', 0),
('bb2ef97c-0790-5fa2-926a-6004f06baa27', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '31629781-4af4-be0c-a30f-5fe9910c941f', 75, '2021-01-18 02:21:17', 0),
('bb3465d5-99b2-6d43-0f0e-5ffe53716a3c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5a1e6717-7bf9-3dfd-57de-5fe99132f137', 90, '2021-01-13 01:58:24', 0),
('bb47c5f3-1542-0dd6-fdce-6004f06286a8', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9d7799ae-ee03-d123-2003-5fe991750155', 75, '2021-01-18 02:23:05', 0),
('bb670ad5-8035-bbcb-0cb6-5ffe57798e73', '857d3817-1929-a617-ad2c-5ffe57175f84', '4992f727-3935-17df-a9f2-5fe991e9af52', -99, '2021-01-18 02:18:59', 0),
('bb700228-739f-a31d-fe02-5ffe574abfe0', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5f443fd1-639b-ec49-1e45-5fe9911db0d0', -99, '2021-01-18 02:21:56', 0),
('bb9aab74-04e9-950e-3f78-5ffe53b30646', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5eb3c820-bf11-cc6b-e123-5fe991053126', 90, '2021-01-13 01:58:24', 0),
('bbc8e0d0-4447-8661-72ce-6004f02ee959', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a274c148-9851-b79f-4ff2-5fe9911583c0', -99, '2021-01-18 02:23:05', 0),
('bbdbb347-eb57-32e9-492f-5ffe57f4be58', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '598abca7-4b6e-cb2b-644b-5fe991850bfd', 80, '2021-01-18 02:21:56', 0),
('bbe8304f-1a93-523b-58ef-6004f0212d3f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '30907e87-cef7-8470-d09f-5fe991aa6b60', 75, '2021-01-18 02:21:17', 0),
('bc024f8f-45db-6221-0bb6-5ffe53cd7d63', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '59287b25-b69c-a8dd-6784-5fe991db46b6', 90, '2021-01-13 01:58:24', 0),
('bc3d1023-0623-c533-a3e0-5ffe57a270eb', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '56662706-64d1-1b2a-90f5-5fe991343b9f', -98, '2021-01-18 02:21:56', 0),
('bc42e23e-a67d-168a-c784-6004f08df580', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9c5897c1-c701-76d7-a532-5fe991a24183', 75, '2021-01-18 02:23:05', 0),
('bc6efdfe-3b8e-aa23-ce87-5ffe5301a825', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2d90831f-294c-d495-b00e-5fe99120c84b', 89, '2021-01-13 01:58:24', 0),
('bc98038d-69dd-1c9d-fc7e-5ffe576d92d8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5b3d119e-597c-04c4-ac45-5fe991493c92', 80, '2021-01-18 02:21:56', 0),
('bca00e76-51d3-cf45-67de-6004f05b5ddd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '33263540-f87b-3a9b-79e4-5fe991e48244', 75, '2021-01-18 02:21:17', 0),
('bcb70fa8-ba6f-47a9-db68-6004f00ccbb2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '42f23425-20bd-24a2-89cc-5fe991fb719d', -98, '2021-01-18 02:23:05', 0),
('bcd742d7-2b2e-2909-3677-5ffe53c191af', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '31629781-4af4-be0c-a30f-5fe9910c941f', 90, '2021-01-13 01:58:24', 0),
('bd010140-0ffc-ed5e-1d14-5ffe57a62893', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '59b8fc02-c443-efe3-2830-5fe9912f396d', 80, '2021-01-18 02:21:56', 0),
('bd3ca863-1047-2980-3bc8-5ffe53f0d87f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '30907e87-cef7-8470-d09f-5fe991aa6b60', 90, '2021-01-13 01:58:24', 0),
('bd45710b-7208-b57c-8eeb-6004f0cafc3a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '46e1336a-7c3c-2718-031e-5fe991d96425', 75, '2021-01-18 02:23:05', 0),
('bd649ee4-26ff-bfc5-4727-5ffe5791a498', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5d677e95-6da6-cd45-cd5c-5fe991187363', 80, '2021-01-18 02:21:56', 0),
('bd6f0510-bb50-5460-71ce-6004f0f0e62a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '322e80f4-ada8-e2ec-5a5d-5fe991d1b589', -99, '2021-01-18 02:21:17', 0),
('bd98f451-236a-2ba3-9ef5-5ffe530caa3f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '33263540-f87b-3a9b-79e4-5fe991e48244', 90, '2021-01-13 01:58:24', 0),
('bdc60360-5102-a4e6-5654-5ffe57cc1cd7', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5c5c0d7a-9ed8-6e33-e3ff-5fe9913458d5', -99, '2021-01-18 02:21:56', 0),
('bdd39117-ebed-2e59-1cd8-6004f090a9da', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '45f6fd66-02e2-8dcd-e44c-5fe9914c4eae', 75, '2021-01-18 02:23:05', 0),
('bdf61682-83cb-9fc3-2ba4-5ffe533afd74', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '322e80f4-ada8-e2ec-5a5d-5fe991d1b589', 90, '2021-01-13 01:58:24', 0),
('be235f1d-7883-d767-f306-5ffe57859eee', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '58b5e7b3-a7a3-d9be-d92a-5fe991e6fead', 80, '2021-01-18 02:21:56', 0),
('be46dba8-de80-773b-307b-6004f01b95ce', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2fbc1ce8-e226-d32f-6533-5fe99185fa50', 75, '2021-01-18 02:21:17', 0),
('be5c71d9-4ebe-d85c-3436-5ffe53865af2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2fbc1ce8-e226-d32f-6533-5fe99185fa50', 90, '2021-01-13 01:58:24', 0),
('be6c3d8c-07a7-84ef-0b29-6004f0035837', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '48bd518c-335e-0f97-a7e0-5fe991ada2ca', 75, '2021-01-18 02:23:05', 0),
('be7ebf7c-63a3-e1ab-fe4a-5ffe5750c063', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5e7e6ad5-ffdb-5962-fda0-5fe99175ae99', -99, '2021-01-18 02:21:56', 0),
('bece5176-bfc6-3b4a-e99f-5ffe537a6012', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '33fafaba-2190-9302-4782-5fe991f7de24', 90, '2021-01-13 01:58:24', 0),
('bede0585-3c79-d07f-33dc-5ffe578d3e37', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '57b9ea58-c683-abc5-923c-5fe991836af4', 80, '2021-01-18 02:21:56', 0),
('beeb01e7-d85c-a98a-23bf-6004f0285e4e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '107c132e-ddf3-80ad-ef1e-5fe991b822fe', 75, '2021-01-18 02:21:17', 0),
('bf01d5bb-2996-936a-cc36-6004f07710ce', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '47ab75be-caa2-8677-1598-5fe99188c136', -99, '2021-01-18 02:23:05', 0),
('bf1ba1c4-adba-078c-b1ff-6004f0328600', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '33fafaba-2190-9302-4782-5fe991f7de24', -99, '2021-01-18 02:21:17', 0),
('bf310758-132e-af5c-8c2a-5ffe53048f30', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '60e5d013-6ac0-91dd-15b1-5fe991a95598', 90, '2021-01-13 01:58:24', 0),
('bf34a792-16cd-579e-2c2d-5ffe53a74aa7', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2eeaf781-6ecd-a955-acca-5fe991e8dedc', 90, '2021-01-13 01:58:24', 0),
('bf3ecd18-8b50-1a14-ff9b-5ffe57fe6301', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '81bf9049-9f65-48bd-e093-5fe991d0ab74', -98, '2021-01-18 02:21:56', 0),
('bf8098d8-413c-b068-264b-6004f0401fac', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '450a84c1-7709-a7c1-22e0-5fe9913729a1', 75, '2021-01-18 02:23:05', 0),
('bf92689e-a2ac-5c5d-ba01-5ffe53bece71', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'f6190ea9-60c9-f596-ab4c-5fe99100fa2d', 89, '2021-01-13 01:58:24', 0),
('bf97df8b-0d75-ddb6-91e7-5ffe57775163', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '84cd1e95-c8d9-fe85-21d4-5fe9911b9751', 80, '2021-01-18 02:21:56', 0),
('bfa20aca-47fe-12bd-a772-5ffe5609764f', '860158ee-3501-2093-b810-5ffe567b916e', 'd5947f70-5835-9610-af3c-5fe991225042', 80, '2021-01-18 02:20:17', 0),
('bff35edc-210c-65d3-b4aa-5ffe57501fe7', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '840d2deb-8dd9-b8da-cf64-5fe991c7c617', 80, '2021-01-18 02:21:56', 0),
('bff3637c-7cad-c97d-c57c-5ffe53ee98f3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '1308e66b-3607-36e4-94d1-5fe991734e49', 90, '2021-01-13 01:58:24', 0),
('bff795d7-4650-d4bd-1dc7-6004f0d2f35f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2eeaf781-6ecd-a955-acca-5fe991e8dedc', 75, '2021-01-18 02:21:17', 0),
('bffd5526-9a78-2ae8-b486-6004f0e4cd4e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4992f727-3935-17df-a9f2-5fe991e9af52', -99, '2021-01-18 02:23:05', 0),
('c0466f5b-afb0-dee7-de89-5ffe579b1a51', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8688f3b6-4e6f-c7ac-44dd-5fe9911a1bf1', 80, '2021-01-18 02:21:56', 0),
('c05e6d84-e3f6-f90f-b25b-5ffe53946265', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '12446ca6-06bf-d0e7-96a9-5fe99159f62f', 90, '2021-01-13 01:58:24', 0),
('c075310b-56f1-f433-e8ad-6004f0dc5c36', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4425d96b-3beb-dc6f-46e8-5fe991b01e56', 75, '2021-01-18 02:23:05', 0),
('c0b8d869-8330-96bc-0999-5ffe572f0b11', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '85a8e890-cfc8-9eaa-179b-5fe991c189f0', -99, '2021-01-18 02:21:56', 0),
('c0bfc19b-98ab-9424-5c07-5ffe53e68cf5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '148c44dd-fa1a-55a5-216a-5fe991e2e075', 90, '2021-01-13 01:58:24', 0),
('c0db7a9d-32cf-8a0f-0d88-6004f02d39ab', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3caecfce-8fa3-6dca-d275-5fe991ae7128', -98, '2021-01-18 02:21:17', 0),
('c0e5e67a-c16f-0456-f06a-6004f040b6ac', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '97d98f8c-5748-2aaf-fb6f-5fe9919492d8', -98, '2021-01-18 02:23:05', 0),
('c1100d80-f726-bdfb-b7a8-5ffe57f7f910', '857d3817-1929-a617-ad2c-5ffe57175f84', '4425d96b-3beb-dc6f-46e8-5fe991b01e56', 75, '2021-01-18 02:18:59', 0),
('c11f4731-f4bd-0793-5126-5ffe578b33a3', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '835cd764-a822-7a1d-c7c4-5fe99193125d', 80, '2021-01-18 02:21:56', 0),
('c12c998f-c2a9-40b7-3f41-5ffe53928569', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '13ca2543-865e-d690-0faa-5fe991ac9662', 90, '2021-01-13 01:58:24', 0),
('c15482b8-ba6d-8aac-e92f-6004f06e3cde', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9bbb2f8b-4e7c-7598-3cd7-5fe991f5abce', 75, '2021-01-18 02:23:05', 0),
('c1898e7e-85ce-78d4-f45f-5ffe535f9032', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '116627b2-895a-e79c-9ab8-5fe991da953f', 90, '2021-01-13 01:58:24', 0),
('c1904a1d-c5d2-0523-5039-5ffe570d6219', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8762c156-1605-4d19-cf81-5fe991f6dbaf', -99, '2021-01-18 02:21:56', 0),
('c19a01f4-bcbf-ed76-0e43-5ffe546ba434', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd7ef8dae-256a-1a9b-9486-5fe991f2477f', 80, '2021-01-18 02:17:49', 0),
('c1b921c3-8ebd-3337-d818-6004f0ef738e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4075fdc3-dde1-c555-a841-5fe991ed277c', 75, '2021-01-18 02:21:17', 0),
('c1bfc6ac-cb6d-048f-4197-6004f0680d53', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9a9f7b66-cc05-ac3d-373a-5fe9917492bd', 75, '2021-01-18 02:23:05', 0),
('c1e36ee4-58a3-eba6-8e4a-5ffe5726ea8c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '82a3bc12-4b9d-4c45-1469-5fe9918ccd58', 80, '2021-01-18 02:21:56', 0),
('c1f29e64-0de6-d667-ecf7-5ffe53567294', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '1552b40c-ce5c-ec8d-5deb-5fe991cf6636', 90, '2021-01-13 01:58:24', 0),
('c22e1cfd-bd88-4e38-0d43-6004f01fa519', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9d4402db-4a7c-87a3-5440-5fe991973b23', 75, '2021-01-18 02:23:05', 0),
('c2377f93-78ce-981c-ba46-5ffe575d5965', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a63ff7b8-be9f-5c3d-973a-5fe991a641cd', -98, '2021-01-18 02:21:56', 0),
('c25c266e-4f18-a7b7-c067-5ffe5313eba3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '107c132e-ddf3-80ad-ef1e-5fe991b822fe', 90, '2021-01-13 01:58:24', 0),
('c2935ffd-fb96-a820-5302-5ffe57df87b1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a9fe76ce-8d27-193f-a8c5-5fe991379ec8', 80, '2021-01-18 02:21:56', 0),
('c294c557-4da6-c77a-2807-6004f0bfc994', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3f88e746-8c1a-3fdb-0587-5fe991bd8ab1', 75, '2021-01-18 02:21:17', 0),
('c29e18f6-383a-c32d-c197-6004f05961ef', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9c89e791-8bd0-75ad-edc8-5fe991482910', -99, '2021-01-18 02:23:05', 0),
('c2e282f9-5e9a-19d9-5ffd-5ffe576c0b06', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a913220b-58c3-edb8-9b22-5fe991ee39a0', 80, '2021-01-18 02:21:56', 0),
('c31303b8-c741-3d14-54dc-6004f0610211', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '99cfda1f-f957-e4c1-e444-5fe99159b864', 75, '2021-01-18 02:23:05', 0),
('c3423899-5815-31fe-565c-5ffe579eddb2', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ab932356-a060-c695-6bce-5fe9914a18c1', 80, '2021-01-18 02:21:56', 0),
('c3600e6c-7ae4-2ff7-620d-5ffe54dfaf88', 'f3ab2114-3037-5119-1375-5ffe5300083d', '63b54b9f-8580-d724-9ede-5fe991fa4f1d', 89, '2021-01-18 02:17:49', 0),
('c371f5d7-70e3-5573-67a8-6004f0b951f7', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '42399d77-03d4-1a1d-d87f-5fe9916d2287', 75, '2021-01-18 02:21:17', 0),
('c37c1a23-ae5d-f7d4-8dfe-6004f0cacacb', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9e0af605-864a-1d4f-c6b6-5fe9917f12da', -99, '2021-01-18 02:23:05', 0),
('c39760ab-f593-3c32-e2fc-5ffe53bb581a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '825521ce-f146-d6f7-410e-5fe991c03d07', 89, '2021-01-13 01:58:24', 0),
('c3a09d08-8867-8e86-f0b8-5ffe57057f7d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'aac9f2e0-a504-9c9e-29de-5fe991d6c366', -99, '2021-01-18 02:21:56', 0),
('c3df9820-585c-b647-c388-6004f0cb3495', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '990beb29-a1a8-9051-e65a-5fe9919d686d', 75, '2021-01-18 02:23:05', 0),
('c40630f7-2220-e07a-7b43-5ffe53826e78', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '85f590f8-8305-91ca-f226-5fe9913338cd', 90, '2021-01-13 01:58:24', 0),
('c4073b28-da50-ff20-3cdc-5ffe571b76f1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a8249c4e-35b6-f389-68a0-5fe9919e2360', 80, '2021-01-18 02:21:56', 0),
('c44bed32-b9d0-47df-4910-6004f0de1177', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'a3dd0e7e-396e-6394-b676-5fe9917eb3e6', -98, '2021-01-18 02:23:05', 0),
('c450d671-1fa4-3362-d976-6004f08e8d34', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '41448afe-1d6a-8576-b32b-5fe991645daa', -99, '2021-01-18 02:21:17', 0),
('c4649aa8-975e-8ad7-4fd1-5ffe57d00270', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ac6b9b7c-2168-81ca-4234-5fe991a96a8a', -99, '2021-01-18 02:21:56', 0),
('c480366e-fc4e-3699-0bc5-5ffe53da8cd9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '85190e9c-7f1d-56c1-64dc-5fe991744f5d', 90, '2021-01-13 01:58:24', 0),
('c4b31690-af10-fd24-941b-6004f0b95bff', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'dbdb0c61-8f47-3c40-57b4-5fe991fe567d', 75, '2021-01-18 02:23:05', 0),
('c4be795b-1fb7-149f-ef8b-5ffe57701512', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a73cae80-ffea-1db9-b82e-5fe9918e160a', 80, '2021-01-18 02:21:56', 0),
('c4ea42c4-5dad-7594-98bf-5ffe53f936c9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '87865002-90e3-2347-f433-5fe991d3863d', 90, '2021-01-13 01:58:24', 0),
('c50f2d7c-52a0-1df0-ee16-6004f0ea69cc', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3e86a2ea-35c6-889b-3f5d-5fe991d821af', 75, '2021-01-18 02:21:17', 0),
('c5197018-9d24-97a7-eed4-6004f0ffcaf4', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ce6e0f93-2998-985d-7b87-5fe991d71448', 75, '2021-01-18 02:23:05', 0),
('c51b0c07-87fc-0460-b81d-5ffe53fc4083', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'cdd1e182-c278-af31-6a4e-5fe991051755', 89, '2021-01-13 01:58:24', 0),
('c51e0dea-0b82-6d69-446a-5ffe577c58db', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'aa4ac08d-1c76-f179-ae60-5fe99105b293', -98, '2021-01-18 02:21:56', 0),
('c558ee67-e8f5-8252-dde1-5ffe53b423f5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '86c03eb9-db71-866e-24b8-5fe99141f72d', 90, '2021-01-13 01:58:24', 0),
('c577ee9e-7de7-8315-1092-5ffe579617e7', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ae303a10-554a-204f-6954-5fe991d9dbeb', 80, '2021-01-18 02:21:56', 0),
('c58199f0-a67e-cfc6-0a42-6004f0e4bf5d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'f496047a-6f9e-53a2-3f3a-5fe99169c2d7', 75, '2021-01-18 02:23:05', 0),
('c5b9af44-8218-2160-14e0-5ffe539ef368', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8444474a-a792-eeeb-47b3-5fe991cd7ddf', 90, '2021-01-13 01:58:24', 0),
('c5d9e2ff-e6b5-3567-d6bb-5ffe57a7a165', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ad33c349-59d2-2345-b811-5fe99100db80', 80, '2021-01-18 02:21:56', 0),
('c5e32c9e-d419-9c3a-1eeb-6004f056e249', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'e8300251-c3bb-5889-1e43-5fe99135777f', -99, '2021-01-18 02:23:05', 0),
('c5e6261c-2193-e4bc-8fa5-6004f0f52295', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '430405ce-5261-7d6a-90bc-5fe99110d0a2', -99, '2021-01-18 02:21:17', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('c6223595-4cd8-57c0-1173-5ffe532c7a37', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '884aeb94-31da-b231-1c15-5fe991188c80', 90, '2021-01-13 01:58:24', 0),
('c63af7fa-fb5c-5f1e-63c7-5ffe57dd1036', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b03796be-b258-728a-c41b-5fe991c3b941', 80, '2021-01-18 02:21:56', 0),
('c649e99e-add8-1854-3cd8-6004f0dba7e3', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'c20c0b36-47c2-af55-32d7-5fe9914f650f', 75, '2021-01-18 02:23:05', 0),
('c6530ae7-a84f-84e6-7148-5ffe56ca8577', '860158ee-3501-2093-b810-5ffe567b916e', 'd7ef8dae-256a-1a9b-9486-5fe991f2477f', 80, '2021-01-18 02:20:17', 0),
('c690c8e9-5a30-1368-1e11-5ffe53f7c734', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '835424a7-ebd5-65f2-beb4-5fe991766bd5', 90, '2021-01-13 01:58:24', 0),
('c697990b-7dd9-bad0-4f11-5ffe5718fa10', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'af35032f-561c-58f6-3331-5fe991c5da84', -99, '2021-01-18 02:21:56', 0),
('c6b17552-e219-8f6a-0777-6004f024cf61', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '100d44d4-2ad9-3006-5249-5fe99105dfc7', -99, '2021-01-18 02:23:05', 0),
('c6c2b96d-d6bc-2d0c-5959-6004f0349164', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '3d95bbb1-ce50-817f-44ea-5fe991c104d8', 75, '2021-01-18 02:21:17', 0),
('c6f1d4eb-7263-7ff4-5ba1-5ffe532dbd36', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '32fdecc0-1055-94d4-259e-5fe991ec34ed', 89, '2021-01-13 01:58:24', 0),
('c6fd58c0-f9de-911d-3ed4-5ffe5753e264', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ac57ede7-ba37-daae-9348-5fe991a599f2', 80, '2021-01-18 02:21:56', 0),
('c7145a97-9a1f-1489-9738-6004f089b05b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b20b0384-6478-f201-f7a9-5fe9917d9cf0', 75, '2021-01-18 02:23:05', 0),
('c754b01b-5efa-56f5-dfe6-5ffe53762f07', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '36e3734f-c2aa-d169-9eba-5fe9914c6819', 90, '2021-01-13 01:58:24', 0),
('c75d7005-2ce1-8d65-85bb-5ffe575875fe', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b12cce2f-60ac-da2e-547b-5fe9919f721c', -99, '2021-01-18 02:21:56', 0),
('c75e021a-74f0-2199-6f17-5ffe57eb7449', '857d3817-1929-a617-ad2c-5ffe57175f84', '4ff60533-381d-3326-53bc-5fe991d1b06f', -98, '2021-01-18 02:18:59', 0),
('c780fd4d-7189-cbfc-b1c9-6004f03790e5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'aa4ac08d-1c76-f179-ae60-5fe99105b293', -98, '2021-01-18 02:23:05', 0),
('c7968fd8-cade-18fb-e9f5-6004f064788a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4e54b667-41a1-31b4-9bd6-5fe991e5c5ba', -98, '2021-01-18 02:21:17', 0),
('c7bc01d6-6e91-e4b8-b50a-5ffe53ee2d92', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '35dd7f1a-b6c6-82b5-ca15-5fe9916efb89', 90, '2021-01-13 01:58:24', 0),
('c7bf9cd9-7356-74e8-b7fd-5ffe574c001b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ab456744-738b-c720-3322-5fe991b0dab8', 80, '2021-01-18 02:21:56', 0),
('c7e0a070-b36c-2025-1e56-6004f02b74c7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ae303a10-554a-204f-6954-5fe991d9dbeb', 75, '2021-01-18 02:23:05', 0),
('c812ae39-baac-1264-ccc1-5ffe537fdf8e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '38b65870-c26f-4a05-b2e8-5fe991357e50', 90, '2021-01-13 01:58:24', 0),
('c827ea48-3435-a395-cc18-5ffe570014bc', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c78e668a-e9c8-187c-1443-5fe991aafc4c', -98, '2021-01-18 02:21:56', 0),
('c841eccc-0f9d-3365-ba8f-6004f0e2b70a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ad33c349-59d2-2345-b811-5fe99100db80', 75, '2021-01-18 02:23:05', 0),
('c84b0c6e-1c18-6618-97bb-5ffe54e7db08', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd714ace0-6c07-939c-935a-5fe991f67888', -99, '2021-01-18 02:17:49', 0),
('c8736281-ef54-c52f-a9d0-5ffe5361690b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '37be1412-83bc-71de-9e8a-5fe9917743e0', 90, '2021-01-13 01:58:24', 0),
('c8749d66-794f-e032-f2a0-6004f0cbae69', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '52a71728-7481-306e-4188-5fe991897345', 75, '2021-01-18 02:21:17', 0),
('c88747b4-6b4c-51a7-a805-5ffe57ab001f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'cb3e92a9-b63b-131f-c460-5fe9915c6bd2', 80, '2021-01-18 02:21:56', 0),
('c8aa0634-5f08-2253-4704-6004f0a7e473', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b03796be-b258-728a-c41b-5fe991c3b941', 75, '2021-01-18 02:23:05', 0),
('c8cc81cf-7c2a-5582-21f0-5ffe53bf4cef', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '34ecb272-0044-c320-2fce-5fe991914a29', 90, '2021-01-13 01:58:24', 0),
('c8e6b668-23dd-ea22-7f46-5ffe57f7b162', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ca4f132d-502d-5aee-0cd4-5fe9916973a5', 80, '2021-01-18 02:21:56', 0),
('c912e81f-a2e6-3d30-9aba-6004f092c097', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'af35032f-561c-58f6-3331-5fe991c5da84', -99, '2021-01-18 02:23:05', 0),
('c928dfaf-0945-d3ab-4113-5ffe53d00cb3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '39cb74f6-1cc1-cca4-c76e-5fe991963598', 90, '2021-01-13 01:58:24', 0),
('c9400ab8-19ab-bef6-83cc-6004f02b7e5d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '32fdecc0-1055-94d4-259e-5fe991ec34ed', -98, '2021-01-18 02:21:17', 0),
('c94312c8-3be0-5444-e42c-5ffe57c59f7a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'cd0d3d3e-c909-743b-3dd5-5fe991dc1b1f', 80, '2021-01-18 02:21:56', 0),
('c95fa5e3-17cb-b445-f2c9-6004f05ca97e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '51b43259-2704-3b6a-19f5-5fe991eceaf8', 75, '2021-01-18 02:21:17', 0),
('c97d1d3e-8194-e5c1-32da-6004f0aa8b06', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ac57ede7-ba37-daae-9348-5fe991a599f2', 75, '2021-01-18 02:23:05', 0),
('c984dda4-2e3c-7176-cfa2-5ffe53fd0520', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '33f78e57-81f4-699f-4fc6-5fe991f2bfb1', 90, '2021-01-13 01:58:24', 0),
('c9ad262e-9b94-107a-0573-5ffe57ba3465', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'cc23a415-34a1-3d49-5f84-5fe991ade554', -99, '2021-01-18 02:21:56', 0),
('c9e04507-e293-9e65-cbac-5ffe53f9337d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2732a0e6-5f36-20ee-3fb9-5fe99121cf30', 89, '2021-01-13 01:58:24', 0),
('c9e49d3f-b7af-d5c9-777e-6004f0142e34', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b12cce2f-60ac-da2e-547b-5fe9919f721c', -99, '2021-01-18 02:23:05', 0),
('ca1d5cc1-73f2-5e20-c3f2-5ffe570b7176', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c96705f6-2453-523f-1014-5fe991fd5bf1', 80, '2021-01-18 02:21:56', 0),
('ca20ee50-a936-3b05-2674-6004f07fc498', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '54a63ebc-eaf8-3281-2825-5fe99141ae0e', 75, '2021-01-18 02:21:17', 0),
('ca3a4ee9-0c5a-5e85-0318-5ffe5306c9bb', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2b496d64-3d03-a85e-b5d3-5fe991019c1d', 90, '2021-01-13 01:58:24', 0),
('ca4cd6fe-09f4-c1ce-71c9-6004f08a7395', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ab456744-738b-c720-3322-5fe991b0dab8', 75, '2021-01-18 02:23:05', 0),
('ca7bd110-7255-f6cd-7fda-5ffe57ae5797', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'cdf4deca-43a7-96de-523c-5fe9917f19dc', -99, '2021-01-18 02:21:56', 0),
('ca9b4751-26f9-2e59-521d-5ffe53ff5ca3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2a1f9f0a-f984-6834-3682-5fe991d443ea', 90, '2021-01-13 01:58:24', 0),
('caba8eb8-66b9-6b48-b6de-6004f0175bb8', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ee33075d-445e-7c77-cbcb-5fe991df87e3', -98, '2021-01-18 02:23:05', 0),
('cad804f8-ddc2-58ff-d915-5ffe531c9a13', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd189edb6-d4c6-af84-aed6-5fe9919e773d', 90, '2021-01-13 01:58:24', 0),
('cadece82-e4ba-e8c2-721d-6004f08754a8', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '53a0437c-3949-42b5-b6f7-5fe9915c9b19', -99, '2021-01-18 02:21:17', 0),
('cae36db8-dae4-c7c6-fc6a-5ffe57b24ed7', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c88c4932-f211-1278-2e83-5fe991d62f1d', 80, '2021-01-18 02:21:56', 0),
('caf4109d-2412-1b81-5f51-5ffe53a01e5b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2d2b027c-488d-50dd-9ea4-5fe99146ebb8', 90, '2021-01-13 01:58:24', 0),
('cb214b4e-bd6e-f76d-7297-6004f0f23a78', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '41de0022-b274-6bbf-b53d-5fe991a8c09e', 75, '2021-01-18 02:23:05', 0),
('cb454692-0d45-d5b6-49df-5ffe5749ff37', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a1812648-b7a8-751b-ace4-5fe991b4de0b', -98, '2021-01-18 02:21:56', 0),
('cb57437a-1780-316e-189f-5ffe5356c994', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2c394a82-e49f-ebe1-84f2-5fe991d8fe80', 90, '2021-01-13 01:58:24', 0),
('cb92cbce-b104-1705-3a8d-6004f063ab75', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '50b74da9-8a7e-9868-7664-5fe9910b1f6b', 75, '2021-01-18 02:21:17', 0),
('cb9a2578-3f3c-7dd7-98f9-6004f07ad348', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '34d90e2b-2058-ea74-6222-5fe99179e083', 75, '2021-01-18 02:23:05', 0),
('cba67ad6-48a1-f15a-14b1-5ffe57bf386e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a5b46281-8b2a-2314-5bd7-5fe991cb89bd', 80, '2021-01-18 02:21:56', 0),
('cbb110d1-83d1-1a42-84c6-5ffe53a417f4', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '29305214-b60b-aa3d-5ec2-5fe991da434c', 90, '2021-01-13 01:58:24', 0),
('cbfc75c7-e541-db1c-64e9-5ffe577374ee', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a4c5d37e-7f45-eb0b-1cf9-5fe9917b9d6a', 80, '2021-01-18 02:21:56', 0),
('cc03b6c0-b9ee-aa22-b3c9-6004f0c7b7a0', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5a000560-7280-a1b7-e8f7-5fe99195e88a', 75, '2021-01-18 02:23:05', 0),
('cc08512e-95a4-d691-9ad7-5ffe53cb34e6', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2e337fa1-1d69-a9dd-0ce9-5fe9914393e1', 90, '2021-01-13 01:58:24', 0),
('cc501731-7bda-0fd0-79b3-6004f0d53be3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '55abbde3-056b-14ab-2bc9-5fe991cc6632', -99, '2021-01-18 02:21:17', 0),
('cc6a7714-276c-c798-8b0d-5ffe5382c634', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '2842847c-275e-f04f-e50b-5fe991f01580', 90, '2021-01-13 01:58:24', 0),
('cc70f770-94e6-8dfe-193d-5ffe573b9b5e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a794fcfe-711b-488f-84dd-5fe991cb8a8f', 80, '2021-01-18 02:21:56', 0),
('cc710b0f-e7a3-53e3-a328-5ffe567f7166', '860158ee-3501-2093-b810-5ffe567b916e', 'd714ace0-6c07-939c-935a-5fe991f67888', -99, '2021-01-18 02:20:17', 0),
('cc7337c3-90fd-ca89-310e-6004f0385800', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4d8a0aa3-32ab-6e3d-a53e-5fe99166c344', -99, '2021-01-18 02:23:05', 0),
('ccd98fc2-1dab-ae67-d1e6-5ffe5786eb36', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a6a9a7bb-1ad5-e90a-9003-5fe99196320b', -99, '2021-01-18 02:21:56', 0),
('ccdabc3a-505c-cd5e-ba28-6004f068c853', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '23e709d5-278b-953a-b425-5fe9912b1de3', 75, '2021-01-18 02:23:05', 0),
('cd051a3b-5ebe-4215-397c-5ffe5387c83c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '87328551-5fbc-ff3f-e0f1-5fe99100990f', 89, '2021-01-13 01:58:24', 0),
('cd090a38-52e6-2f47-1f5f-6004f0f15ddd', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '4f6918e3-10f8-acdf-72fc-5fe9913d462c', 75, '2021-01-18 02:21:17', 0),
('cd36c452-d7e1-2c2f-96ba-5ffe5751635b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a3c8b404-bff0-380b-9a97-5fe99126fb9f', 80, '2021-01-18 02:21:56', 0),
('cd4cf4ad-df14-664c-3884-6004f0947c87', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '660901ef-f92f-3dc1-aed9-5fe9918feb95', -99, '2021-01-18 02:23:05', 0),
('cd5e0530-cf20-09bc-4531-5ffe57852b72', '857d3817-1929-a617-ad2c-5ffe57175f84', '8e98077b-58ce-c7a3-04fb-5fe9912226b7', 75, '2021-01-18 02:18:59', 0),
('cd610789-6e6f-d7d0-c7c0-5ffe53f1430a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8ad528ed-feb4-75f8-27c4-5fe9915a5cfc', 90, '2021-01-13 01:58:24', 0),
('cd9e4f23-0800-2aee-0ba4-5ffe57d616fe', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a893ae5e-04f1-1ad5-14f8-5fe99134dca8', -99, '2021-01-18 02:21:56', 0),
('cdb0705d-725d-41b5-84f7-6004f092e263', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '6560009a-e8c7-dbae-1288-5fe99128b793', 75, '2021-01-18 02:23:05', 0),
('cdc3fed6-2b1a-6e6a-a210-5ffe532680ad', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8a0f118c-c330-84ca-6b98-5fe991e394d8', 90, '2021-01-13 01:58:24', 0),
('cdcf53a9-fed9-70ab-1c50-6004f0416993', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b27fc4e4-d383-31f9-2f97-5fe9919ef44a', -98, '2021-01-18 02:21:17', 0),
('ce0ca127-3177-1899-a78a-5ffe575d62a8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a2d06f6c-d1d9-df54-18be-5fe991d6de31', 80, '2021-01-18 02:21:56', 0),
('ce1ffb0a-100b-ad86-6cff-6004f0b7db64', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9ca10601-c27e-5c20-5956-5fe9919ccad4', -98, '2021-01-18 02:23:05', 0),
('ce29396c-292c-0d66-3dc4-5ffe5383120e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8caa545c-91aa-b64d-29e7-5fe9916b7bd3', 90, '2021-01-13 01:58:24', 0),
('ce67d4ac-abf0-3740-b26b-5ffe57dd8c6b', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8509116a-03b1-6673-110c-5fe991954b03', -98, '2021-01-18 02:21:56', 0),
('ce6c08bf-1aad-c0d6-eb5e-5ffe54545f34', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd4c47979-6892-d428-422a-5fe9914915d9', 80, '2021-01-18 02:17:49', 0),
('ce6dccae-5c80-bc70-f72c-6004f071d357', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b6b96afa-bc9a-9505-7fec-5fe99129a947', 75, '2021-01-18 02:21:17', 0),
('ce8034f4-baef-5705-e728-5ffe53583ac5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8baebba3-3e27-b455-5c5c-5fe991b5f301', 90, '2021-01-13 01:58:24', 0),
('ce8cb405-8b38-ee3f-36dc-6004f0fbf398', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'de2e0848-be5e-0abe-c6db-5fe991aa483f', 75, '2021-01-18 02:23:05', 0),
('cecc10d4-6d63-3156-eec2-5ffe575a0b8d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8936f48d-6faf-aae4-427b-5fe9917348c9', 80, '2021-01-18 02:21:56', 0),
('cedcb16d-f2b3-e580-d9f7-5ffe53c340a4', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '89348a43-0ceb-7fc3-bda1-5fe99191fc57', 90, '2021-01-13 01:58:24', 0),
('cef9a9cd-faa5-c6bd-2b73-6004f01c66c7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'cd310a2b-1462-a6c9-ca96-5fe9919756ad', 75, '2021-01-18 02:23:05', 0),
('cf135ac9-cf24-c41d-6d92-6004f0c8ba18', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b59fe417-a393-ffd9-baed-5fe9919fd0ca', 75, '2021-01-18 02:21:17', 0),
('cf34f51d-c2b3-928b-f191-5ffe576f7120', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '883343cc-5856-3f81-0dda-5fe99171e29d', 80, '2021-01-18 02:21:56', 0),
('cf5df2de-415e-e89f-a5fd-6004f09caa38', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'fdb10bca-f265-c42d-8e94-5fe991226d9c', 75, '2021-01-18 02:23:05', 0),
('cf7dde8f-4b3a-6d67-5cfd-5ffe53856537', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8d914baf-1423-7020-8944-5fe9911e99af', 90, '2021-01-13 01:58:24', 0),
('cf9bf3ba-126d-f80f-3c44-5ffe57bd4dd4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8b196f3d-f5c9-3f7b-9f2f-5fe9914dd267', 80, '2021-01-18 02:21:56', 0),
('cfb6d103-4e2e-c1b3-e558-6004f04adb56', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b92414b1-a4b1-858b-43cd-5fe991d91b88', 75, '2021-01-18 02:21:17', 0),
('cfc1ca36-818a-d48b-4f67-6004f07c1d77', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'edd80716-4770-8f9e-58e4-5fe991dcf437', -99, '2021-01-18 02:23:05', 0),
('cfd73bae-2582-e0c3-3dce-5ffe53163b64', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '882106df-3bf3-d817-5575-5fe9914d26eb', 90, '2021-01-13 01:58:24', 0),
('d004d9d1-51db-295f-a40b-5ffe5717824a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8a3c4ee5-e844-1a52-2808-5fe991728c0f', -99, '2021-01-18 02:21:56', 0),
('d02cf2a2-7c5e-bf06-c719-6004f0a19a58', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ba0d0b5d-0fea-e94c-a366-5fe991b36938', 75, '2021-01-18 02:23:05', 0),
('d038ef99-9332-45d6-0064-5ffe53069230', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '66ca2eb6-2154-1395-dd3a-5fe991a1c703', 89, '2021-01-13 01:58:24', 0),
('d057f5e8-ecdf-b1b5-95f6-6004f03cc4a1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b7e8a2b4-1cbb-a89d-510a-5fe991a230cd', -99, '2021-01-18 02:21:17', 0),
('d06781dc-ec3c-e15a-8049-5ffe57cf4d7f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '872bf147-7d38-4099-a281-5fe991390670', 80, '2021-01-18 02:21:56', 0),
('d0911d0f-e6da-95e1-6224-6004f0739084', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '10bb9476-6a76-c89c-3b36-5fe9919e22c0', -99, '2021-01-18 02:23:05', 0),
('d092dcf4-b8e6-f77f-16fa-5ffe536743c5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6a84c729-64b1-eea6-96e2-5fe9919c2ee3', 90, '2021-01-13 01:58:24', 0),
('d0c93b35-4d55-2332-9855-5ffe57f17582', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '8bf64f92-13f1-2135-3a28-5fe991084f6b', -99, '2021-01-18 02:21:56', 0),
('d0feada6-2417-1d13-d7e5-6004f0953b49', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b4919591-7b1f-f68c-6105-5fe9910a4a31', 75, '2021-01-18 02:21:17', 0),
('d105d115-b572-e35b-2f7a-6004f0e7fcfc', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ab5b0857-c791-bdac-00d8-5fe991750992', 75, '2021-01-18 02:23:05', 0),
('d12c2739-5876-31fa-1771-5ffe57ed1f20', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '862b5b74-cced-59b5-0fe7-5fe991e5983b', 80, '2021-01-18 02:21:56', 0),
('d12e58cb-6033-be8b-74ca-5ffe53bc519d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '699a76dc-beed-8aa3-4142-5fe9916ff8ae', 90, '2021-01-13 01:58:24', 0),
('d1760d98-baa8-2042-3175-5ffe535bbf2f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd0a1d2a6-ffea-4a9d-4bb6-5fe991ef9ffe', 90, '2021-01-13 01:58:24', 0),
('d179d911-593a-a02b-c0ad-6004f032d58c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ab881f0b-8357-88f0-96b1-5fe991a4e4c1', -98, '2021-01-18 02:23:05', 0),
('d1845d2c-60de-a6ad-e8d8-5ffe577204af', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'a3dd0e7e-396e-6394-b676-5fe9917eb3e6', -98, '2021-01-18 02:21:56', 0),
('d18deeb5-3dca-f239-1b66-5ffe53ccdea5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6c6ea30f-0a8a-f174-e2f7-5fe99156d24f', 90, '2021-01-13 01:58:24', 0),
('d1a6a614-3123-6367-d8cc-6004f06f7bd7', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'ba59377a-0727-05f3-8480-5fe991ba772f', -99, '2021-01-18 02:21:17', 0),
('d1df8dba-d1c6-a2c3-4bd1-5ffe57c4fe19', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'dbdb0c61-8f47-3c40-57b4-5fe991fe567d', 80, '2021-01-18 02:21:56', 0),
('d1e1f50e-d06a-6c99-cec2-6004f072701f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'af9eb37a-1a01-b0a6-fd0d-5fe99153846a', 75, '2021-01-18 02:23:05', 0),
('d1f29d89-6fd7-a1dc-3a6d-5ffe53c77645', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6b7f9d3c-48c8-36f7-80eb-5fe9918dc431', 90, '2021-01-13 01:58:24', 0),
('d2399291-02c0-bf08-83b5-5ffe575a49c1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ce6e0f93-2998-985d-7b87-5fe991d71448', 80, '2021-01-18 02:21:56', 0),
('d23a3ec6-13fd-ff88-02b3-6004f0017620', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ae9d5dd6-d898-6aea-e9e3-5fe99117c20d', 75, '2021-01-18 02:23:05', 0),
('d246ef1f-d54a-dac2-4d27-6004f0c84f1f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'b394b3f8-0da3-df98-94ab-5fe99179f361', 75, '2021-01-18 02:21:17', 0),
('d2572899-66ae-4cc7-4e3f-5ffe534486ba', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '68ae731f-f0cb-25b6-553f-5fe9918a1892', 90, '2021-01-13 01:58:24', 0),
('d290058b-e85f-0733-ab12-5ffe56fee743', '860158ee-3501-2093-b810-5ffe567b916e', 'd4c47979-6892-d428-422a-5fe9914915d9', 80, '2021-01-18 02:20:17', 0),
('d2921c07-f80f-f76f-d314-6004f072d83e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b1a64d3e-879f-53ba-d1b5-5fe991bc50df', 75, '2021-01-18 02:23:05', 0),
('d29b3af3-4662-d53a-8209-5ffe57035287', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'f496047a-6f9e-53a2-3f3a-5fe99169c2d7', 80, '2021-01-18 02:21:56', 0),
('d2a6032c-7aeb-3bdc-d0dc-5ffe570b57cf', '857d3817-1929-a617-ad2c-5ffe57175f84', '818e07d5-f7cb-310c-95f2-5fe991b1ee79', 75, '2021-01-18 02:18:59', 0),
('d2bb413f-ffd0-d074-51cd-5ffe530a677e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '6d5fbf99-0522-690a-dabb-5fe99188c4b5', 90, '2021-01-13 01:58:24', 0),
('d2e1c7dc-5309-7f08-71ba-6004f055ce67', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9b590855-d45d-2b3f-dc76-5fe991a05eaa', -98, '2021-01-18 02:21:17', 0),
('d2f560ea-3b57-eb69-915f-6004f056794d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b0a335f6-ec5f-19f1-4914-5fe991384431', -99, '2021-01-18 02:23:05', 0),
('d2f968c6-ab36-a8a5-e62d-5ffe57636f61', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'e8300251-c3bb-5889-1e43-5fe99135777f', -99, '2021-01-18 02:21:56', 0),
('d31f8d17-b0a4-e1c1-71b0-5ffe53d84426', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '67aea666-6768-bbe9-f646-5fe99150edf5', 90, '2021-01-13 01:58:24', 0),
('d350730c-ba07-bc28-946a-6004f07f53dd', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ada0ada6-a1ca-ffb8-7957-5fe991054b82', 75, '2021-01-18 02:23:05', 0),
('d358e1d9-a7fc-70e8-18b2-5ffe577b0e80', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'c20c0b36-47c2-af55-32d7-5fe9914f650f', 80, '2021-01-18 02:21:56', 0),
('d3858ae4-2f1f-9730-61fb-5ffe534defed', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '703b9d7c-9838-63ac-6400-5fe991e6bba4', 89, '2021-01-13 01:58:24', 0),
('d385ea6e-f378-d5d6-815f-6004f0206bca', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9eeea38f-7536-6b8e-cd5f-5fe99168e8ca', 75, '2021-01-18 02:21:17', 0),
('d3accf6f-5e99-d8b3-122a-6004f04e73be', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'b29b67bb-1554-6f56-3284-5fe991a5bebc', -99, '2021-01-18 02:23:05', 0),
('d3afc6f9-149a-aa35-7cc0-5ffe571c9ef6', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '100d44d4-2ad9-3006-5249-5fe99105dfc7', -99, '2021-01-18 02:21:56', 0),
('d3e2025b-9be9-3350-294b-6004f0588dab', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '36e3734f-c2aa-d169-9eba-5fe9914c6819', 75, '2021-01-18 02:21:17', 0),
('d3e93ef2-b24d-21cc-692e-5ffe536a36d5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '73df2ce8-8c3e-acfa-bdd7-5fe9913b4b46', 90, '2021-01-13 01:58:24', 0),
('d40f955e-9e64-f6ec-1e58-5ffe57e825f0', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b20b0384-6478-f201-f7a9-5fe9917d9cf0', 80, '2021-01-18 02:21:56', 0),
('d416d429-37ef-93f7-96a1-6004f047fbf8', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'aca0daac-a0ad-5952-f974-5fe991c6a958', 75, '2021-01-18 02:23:05', 0),
('d444cdfa-17af-c4eb-0590-6004f036545e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9e0fe800-79ba-5cd5-06ef-5fe991984322', 75, '2021-01-18 02:21:17', 0),
('d44943ef-8637-079c-fdd1-5ffe5365fc87', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '7328b654-183a-be94-e0a2-5fe991dbec80', 90, '2021-01-13 01:58:24', 0),
('d4704add-5f7b-a9a6-e836-5ffe57ed7b7a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4560b1d3-d8ef-07c0-24ee-5fe991cad1e2', -98, '2021-01-18 02:21:56', 0),
('d4781d3e-8317-c4f1-ade5-6004f08532d0', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd56c52df-f267-856e-3fa9-5fe99172596b', -98, '2021-01-18 02:23:05', 0),
('d4b72b10-d23e-c123-3418-5ffe5362e117', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '75a7db3b-7d01-17f4-afc6-5fe991d9dfd9', 90, '2021-01-13 01:58:24', 0),
('d4d935c1-fb8f-151d-7009-5ffe573d3692', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '49263512-3bb7-46b1-5871-5fe991aef925', 80, '2021-01-18 02:21:56', 0),
('d4de1fde-f323-ee84-ef7e-6004f07e0f1a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd930d33b-3c66-1ae9-dbc8-5fe9911efa1d', 75, '2021-01-18 02:23:05', 0),
('d5139757-67e0-9a16-8e09-6004f041ca59', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a0add8a9-b932-fbce-14dd-5fe9913ae8a5', 75, '2021-01-18 02:21:17', 0),
('d51af7e4-44e3-a196-a799-5ffe53149c10', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '74c25699-1cb1-ce6d-21b8-5fe9919bc181', 90, '2021-01-13 01:58:24', 0),
('d52d57ec-625a-5116-84ca-5ffe57d5ee9f', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4852587d-2ed7-392a-225d-5fe991f70e21', 80, '2021-01-18 02:21:56', 0),
('d5310a09-56d0-b1d0-0b06-5ffe5471a528', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd8b1b1e7-6336-dbbf-8cf1-5fe99178f96b', -99, '2021-01-18 02:17:49', 0),
('d53d4cb6-e864-dd09-544d-6004f0cc0653', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd8401e23-96b1-5ad2-a8e2-5fe991eb9081', 75, '2021-01-18 02:23:05', 0),
('d57d3d46-6e32-cef8-65a1-5ffe53746060', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '72393ce0-595f-0405-6bcd-5fe991546f2b', 90, '2021-01-13 01:58:24', 0),
('d58cb76d-f214-72cd-4a5b-5ffe57f2f18d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4b0b105d-c49d-64fd-880d-5fe991434844', 80, '2021-01-18 02:21:56', 0),
('d5a7a296-cd3c-6247-a4f0-6004f0d029e5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'daecfb75-ef5d-32cb-1a04-5fe991f95e2e', 75, '2021-01-18 02:23:05', 0),
('d5e0ab6b-06b0-71e9-b173-6004f06315f2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9fce588d-18cd-c0d3-f89b-5fe9911c9c0a', -99, '2021-01-18 02:21:17', 0),
('d5e702fa-6e82-103a-2786-5ffe53bd2926', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '76986dab-ff17-bc47-8526-5fe9911c5da7', 90, '2021-01-13 01:58:24', 0),
('d5f17c67-b55a-fb8b-650d-5ffe57a1af6e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4a307772-951d-ff69-8455-5fe991fa4630', -99, '2021-01-18 02:21:56', 0),
('d60da6fc-56a0-4135-a2b3-6004f002dfbc', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'da0081af-e614-ee32-3eae-5fe991e16020', -99, '2021-01-18 02:23:05', 0),
('d643477a-e83d-a307-e5f7-5ffe53d785a2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '715bbbc1-3fca-b78e-ff62-5fe991520d0f', 90, '2021-01-13 01:58:24', 0),
('d6586bfc-f58e-95aa-4509-5ffe57e4d6c5', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '47662a0f-8676-9eee-4919-5fe9911a954f', 80, '2021-01-18 02:21:56', 0),
('d677fb0a-b1a0-90c8-10a2-6004f09a349a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd75b9bea-abb6-2458-cbb1-5fe991baf382', 75, '2021-01-18 02:23:05', 0),
('d6a751f0-a880-cb3f-f4dc-6004f01537a8', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9d30721c-158f-c056-692b-5fe99127c260', 75, '2021-01-18 02:21:17', 0),
('d6ae313e-7230-1191-6d33-5ffe53e72ef7', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4a61c49f-2cdb-e7e6-0f51-5fe9913f40c7', 89, '2021-01-13 01:58:24', 0),
('d6b89e8d-753f-be4f-41fc-5ffe572e09c9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4bfafc04-0639-1b18-8f38-5fe9912385c2', -99, '2021-01-18 02:21:56', 0),
('d6e3ef75-16b2-00fa-968b-6004f04f69e9', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'dbd5aabe-290e-a221-dfee-5fe9917ed553', -99, '2021-01-18 02:23:05', 0),
('d7121872-b077-a4ba-e42b-5ffe53604f26', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4e1109c8-7876-d60e-a048-5fe991d7c4ae', 90, '2021-01-13 01:58:24', 0),
('d716cee0-a322-27df-4127-5ffe57060724', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '468a5f69-7fc3-6e53-0551-5fe99174b182', 80, '2021-01-18 02:21:56', 0),
('d75078ad-dab5-f535-7302-6004f049a0ec', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'd65faf8c-dd3c-b418-dbef-5fe99179789c', 75, '2021-01-18 02:23:05', 0),
('d76bac52-735c-13a3-60dd-6004f0a3ac59', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'a18349b9-01ec-38ff-9453-5fe9917637c6', -99, '2021-01-18 02:21:17', 0),
('d76fd72b-1238-f7b3-b657-5ffe57c68389', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ab881f0b-8357-88f0-96b1-5fe991a4e4c1', -98, '2021-01-18 02:21:56', 0),
('d77cf2df-f812-817c-463b-5ffe53d6d464', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4d1fe09d-5f13-4da2-9290-5fe9912f736b', 90, '2021-01-13 01:58:24', 0),
('d7bb0235-e359-fd07-deb1-5ffe5358cf13', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd39fc1ec-9a70-7ef0-8b64-5fe9912bbeaf', 90, '2021-01-13 01:58:24', 0),
('d7bf5ad6-7f9d-dd48-a8bb-6004f0efc004', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '56662706-64d1-1b2a-90f5-5fe991343b9f', -98, '2021-01-18 02:23:05', 0),
('d7d7650b-86f6-d555-09f9-5ffe57e859ce', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'af9eb37a-1a01-b0a6-fd0d-5fe99153846a', 80, '2021-01-18 02:21:56', 0),
('d7debf0a-aa0f-96db-1400-5ffe53644462', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4fd10984-05a7-6cfa-a22a-5fe991fbc4fa', 90, '2021-01-13 01:58:24', 0),
('d82bd1ad-9e5b-9b96-3c57-6004f0c67fa2', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5b3d119e-597c-04c4-ac45-5fe991493c92', 75, '2021-01-18 02:23:05', 0),
('d82cf5d0-7147-0bbd-ffb4-6004f0fb1269', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '9c4db416-fd51-21e4-e198-5fe9910a31e4', 75, '2021-01-18 02:21:17', 0),
('d83a09db-cb68-324f-3b21-5ffe569ac0b3', '860158ee-3501-2093-b810-5ffe567b916e', 'd8b1b1e7-6336-dbbf-8cf1-5fe99178f96b', -99, '2021-01-18 02:20:17', 0),
('d83b5737-db40-261c-0932-5ffe5704d313', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ae9d5dd6-d898-6aea-e9e3-5fe99117c20d', 80, '2021-01-18 02:21:56', 0),
('d847c6fb-bdfa-bfa4-d7da-5ffe530be7f1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4efb3cf7-9b18-608e-0873-5fe991601809', 90, '2021-01-13 01:58:24', 0),
('d893e772-cbc8-2731-5f11-6004f0e403eb', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '59b8fc02-c443-efe3-2830-5fe9912f396d', 75, '2021-01-18 02:23:05', 0),
('d89e7fdf-51af-425b-f9ab-5ffe53aeca68', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4c37daab-be92-019b-381d-5fe99196a7ca', 90, '2021-01-13 01:58:24', 0),
('d8a426b8-6df4-2af3-d16c-5ffe5750e9cc', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b1a64d3e-879f-53ba-d1b5-5fe991bc50df', 80, '2021-01-18 02:21:56', 0),
('d8ae06b0-159f-97e9-51b9-5ffe57cac85b', '857d3817-1929-a617-ad2c-5ffe57175f84', 'ac220371-2277-878b-d774-5fe991a38a1c', 75, '2021-01-18 02:18:59', 0),
('d8f3c6be-76ed-100f-f208-6004f0c865b5', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '31268c7a-771e-45dc-ad3e-5fe99197378d', -98, '2021-01-18 02:21:17', 0),
('d905f605-e5ec-6d1f-aea5-6004f08332a5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5d677e95-6da6-cd45-cd5c-5fe991187363', 75, '2021-01-18 02:23:05', 0),
('d90efc84-e479-0d50-d255-5ffe5784941c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b0a335f6-ec5f-19f1-4914-5fe991384431', -99, '2021-01-18 02:21:56', 0),
('d93b1634-0dc9-f6fb-be36-5ffe5331a2e3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '50a7c395-84c7-a636-8650-5fe9914a4078', 90, '2021-01-13 01:58:24', 0),
('d963b73a-74e4-651a-fc7d-6004f092c196', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5c5c0d7a-9ed8-6e33-e3ff-5fe9913458d5', -99, '2021-01-18 02:23:05', 0),
('d981f396-5866-1154-d3e9-5ffe572dae16', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ada0ada6-a1ca-ffb8-7957-5fe991054b82', 80, '2021-01-18 02:21:56', 0),
('d996f683-23cb-3fae-facb-5ffe5316aed2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4b4a59af-cb8a-d026-7057-5fe991880a95', 90, '2021-01-13 01:58:24', 0),
('d9b95369-9204-5bdf-0115-6004f021a030', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '359e58d4-672f-8450-0502-5fe991d90d53', 75, '2021-01-18 02:21:17', 0),
('d9c33cb5-1142-a5b2-aa2f-6004f022eb97', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '58b5e7b3-a7a3-d9be-d92a-5fe991e6fead', 75, '2021-01-18 02:23:05', 0),
('d9e2ac4a-798a-3897-d4c8-5ffe576f8312', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b29b67bb-1554-6f56-3284-5fe991a5bebc', -99, '2021-01-18 02:21:56', 0),
('da00ca3c-86df-4631-1a7d-5ffe53e9c90b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5890b264-1737-a341-49a7-5fe991cbc6b6', 89, '2021-01-13 01:58:24', 0),
('da326c38-05e6-3cb1-b97f-6004f0b62d2f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '5e7e6ad5-ffdb-5962-fda0-5fe99175ae99', -99, '2021-01-18 02:23:05', 0),
('da434e17-c349-ccf0-7184-5ffe5755616e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'aca0daac-a0ad-5952-f974-5fe991c6a958', 80, '2021-01-18 02:21:56', 0),
('da67c1ad-0e88-6953-cc36-5ffe5340bc14', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5c6868be-c79e-8603-f447-5fe991f1a410', 90, '2021-01-13 01:58:24', 0),
('da84dbb8-1139-aad8-8bf8-6004f01cf08a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '34832776-1f41-d9d6-3c88-5fe991652abf', 75, '2021-01-18 02:21:17', 0),
('daa1e3ca-43a0-f6fd-cffd-6004f0e8ef40', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '57b9ea58-c683-abc5-923c-5fe991836af4', 75, '2021-01-18 02:23:05', 0),
('daab8c4e-b9f1-bac1-7034-5ffe57d690d4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5fed6e74-14c1-5041-37b3-5fe991c316b0', 89, '2021-01-18 02:21:56', 0),
('dac6dcc6-fa86-178f-5236-5ffe531a68d2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5b4bd525-74a5-4e81-8c36-5fe991c0bc0d', 90, '2021-01-13 01:58:24', 0),
('db031272-d80b-689f-7901-6004f09f34fc', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '825521ce-f146-d6f7-410e-5fe991c03d07', -98, '2021-01-18 02:23:05', 0),
('db116796-e27a-42db-4d64-5ffe578fad60', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '63536587-8335-30aa-cab1-5fe991afae1b', 80, '2021-01-18 02:21:56', 0),
('db25bd51-bf9b-4cb7-6df3-5ffe535bd0d8', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5e5257f4-8eed-49c9-1704-5fe991dbea8a', 90, '2021-01-13 01:58:24', 0),
('db56c0ff-cf85-7ec1-b09e-6004f0c51f96', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '37da10a0-4b60-17b3-572d-5fe99146d1f5', 75, '2021-01-18 02:21:17', 0),
('db7080c7-40b4-fb16-7022-6004f04a6061', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '85f590f8-8305-91ca-f226-5fe9913338cd', 75, '2021-01-18 02:23:05', 0),
('db740ab8-6b7f-7fba-04b0-5ffe549cb52d', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd3d3cf03-be8a-3584-a18c-5fe99113181a', 80, '2021-01-18 02:17:49', 0),
('db7cb250-2bbf-f724-6aa4-5ffe57379cc1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6291e723-4e2f-5086-cb7b-5fe991fdeab0', 80, '2021-01-18 02:21:56', 0),
('db8bf547-32eb-e4dc-5299-5ffe53607326', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5d74330e-218f-2dee-ea38-5fe9913e73a3', 90, '2021-01-13 01:58:24', 0),
('dbc00ed7-ebbd-8798-0243-5ffe5672ec9d', '860158ee-3501-2093-b810-5ffe567b916e', 'e54e0225-640f-567a-882a-5fe991cbc6b9', 80, '2021-01-18 02:20:17', 0),
('dbd49901-fdd2-df79-2374-6004f026a27f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '85190e9c-7f1d-56c1-64dc-5fe991744f5d', 75, '2021-01-18 02:23:05', 0),
('dbe208b2-eab5-f3ec-4416-5ffe57359d69', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '650451c3-2e32-4514-5415-5fe991af7c3c', 80, '2021-01-18 02:21:56', 0),
('dbed4a4d-73b0-3d76-a6cc-5ffe53ce56c7', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5a65a785-eedd-5dce-c5c8-5fe991bddcae', 90, '2021-01-13 01:58:24', 0),
('dc0f6cec-016f-a1e9-01a5-6004f09aaca1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '36b9debc-cf61-2e05-e0c1-5fe99114a8b1', -99, '2021-01-18 02:21:17', 0),
('dc397888-b74a-0a55-1ce3-6004f0b72be8', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '87865002-90e3-2347-f433-5fe991d3863d', 75, '2021-01-18 02:23:05', 0),
('dc4a2870-f6b7-f6c9-394a-5ffe57b4e174', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '642fcb3a-fe50-4dde-f514-5fe99159c799', -99, '2021-01-18 02:21:56', 0),
('dc4fad39-7a6f-acac-a8e2-5ffe53c11d42', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5f443fd1-639b-ec49-1e45-5fe9911db0d0', 90, '2021-01-13 01:58:24', 0),
('dc9b0038-1f5c-8a57-158c-6004f0b36c61', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '86c03eb9-db71-866e-24b8-5fe99141f72d', -99, '2021-01-18 02:23:05', 0),
('dcb994d3-33f4-3522-b239-5ffe57aec104', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '61ba0986-eeb4-828b-acec-5fe9914de2cd', 80, '2021-01-18 02:21:56', 0),
('dcbedea2-ff26-20c5-2cf3-5ffe5301581d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '598abca7-4b6e-cb2b-644b-5fe991850bfd', 90, '2021-01-13 01:58:24', 0),
('dcc15bd9-956b-cea3-12af-6004f0d01310', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '336abce4-cd82-bacf-2be2-5fe9917ce5f3', 75, '2021-01-18 02:21:17', 0),
('dd03477b-9ff0-a58a-70a6-6004f0c9eb6f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8444474a-a792-eeeb-47b3-5fe991cd7ddf', 75, '2021-01-18 02:23:05', 0),
('dd20f7b0-7fbd-130d-c060-5ffe53259e87', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '56662706-64d1-1b2a-90f5-5fe991343b9f', 89, '2021-01-13 01:58:24', 0),
('dd2b386a-ee73-1615-ac70-5ffe57897ff2', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '65dedae3-b5b0-d891-450b-5fe9917e0089', -99, '2021-01-18 02:21:56', 0),
('dd671d77-088f-4b53-1678-6004f09abdf4', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '38f7e37c-3780-9415-9113-5fe9915aee28', -99, '2021-01-18 02:21:17', 0),
('dd763bd5-00ef-9c66-a378-6004f0e8cb8f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '884aeb94-31da-b231-1c15-5fe991188c80', -99, '2021-01-18 02:23:05', 0),
('dd8833ec-94a4-68af-d1ee-5ffe538b0a5c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5b3d119e-597c-04c4-ac45-5fe991493c92', 90, '2021-01-13 01:58:24', 0),
('dd8f617f-c5ed-7345-78d5-5ffe57ce9c0a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '60e5d013-6ac0-91dd-15b1-5fe991a95598', 80, '2021-01-18 02:21:56', 0),
('dd9c073f-c2fb-f9db-09cb-5ffe5372106e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd27d6ac9-0dc4-e687-467d-5fe9919ba898', 90, '2021-01-13 01:58:24', 0),
('dddb1568-e036-7afe-d853-6004f09e0326', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '835424a7-ebd5-65f2-beb4-5fe991766bd5', 75, '2021-01-18 02:23:05', 0),
('ddf19f73-034d-07a5-f6b1-5ffe5795193a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'cdd1e182-c278-af31-6a4e-5fe991051755', 89, '2021-01-18 02:21:56', 0),
('de07ce0e-4f25-94b3-f161-6004f0b0438f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '324a8fc4-a1f5-0ff1-9dfe-5fe99155b682', 75, '2021-01-18 02:21:17', 0),
('de2d1941-2b89-95f1-b7c3-5ffe539d689e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '59b8fc02-c443-efe3-2830-5fe9912f396d', 90, '2021-01-13 01:58:24', 0),
('de4920bf-930a-f6d0-d7cd-6004f071e55d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '703b9d7c-9838-63ac-6400-5fe991e6bba4', -98, '2021-01-18 02:23:05', 0),
('de55cb34-19c9-9025-1d82-5ffe57ef1de1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd189edb6-d4c6-af84-aed6-5fe9919e773d', 80, '2021-01-18 02:21:56', 0),
('de6f0a0e-3a51-7d8e-e330-6004f03ebd2c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '35dd7f1a-b6c6-82b5-ca15-5fe9916efb89', 75, '2021-01-18 02:21:17', 0),
('de9058b4-9526-cb8f-bd7d-5ffe53bbc20f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5d677e95-6da6-cd45-cd5c-5fe991187363', 90, '2021-01-13 01:58:24', 0),
('dea8a3b8-cb4e-6955-1b00-6004f0416c14', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '73df2ce8-8c3e-acfa-bdd7-5fe9913b4b46', 75, '2021-01-18 02:23:05', 0),
('deaa0a54-4fcc-041a-ea1b-5ffe57be118e', '857d3817-1929-a617-ad2c-5ffe57175f84', '9dc8093f-c633-9026-010c-5fe99184be95', -99, '2021-01-18 02:18:59', 0),
('deb9315b-0fe8-83fb-ae19-5ffe571b4660', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd0a1d2a6-ffea-4a9d-4bb6-5fe991ef9ffe', 80, '2021-01-18 02:21:56', 0),
('decaa5b8-8832-d9fd-f5fb-6004f07b1e35', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5890b264-1737-a341-49a7-5fe991cbc6b6', -98, '2021-01-18 02:21:17', 0),
('def52a82-3f83-2d1b-0b8d-5ffe536b1ce3', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5c5c0d7a-9ed8-6e33-e3ff-5fe9913458d5', 90, '2021-01-13 01:58:24', 0),
('df1b83b3-a9eb-f2e0-ab94-6004f07b8d11', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7328b654-183a-be94-e0a2-5fe991dbec80', 75, '2021-01-18 02:23:05', 0),
('df26c2d5-90ed-25ce-f687-5ffe572a6ffb', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd39fc1ec-9a70-7ef0-8b64-5fe9912bbeaf', 80, '2021-01-18 02:21:56', 0),
('df542d06-4ef3-01fb-062d-5ffe53958b9f', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '58b5e7b3-a7a3-d9be-d92a-5fe991e6fead', 90, '2021-01-13 01:58:24', 0),
('df8824b8-6a73-b31a-78df-6004f0c06e7e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '75a7db3b-7d01-17f4-afc6-5fe991d9dfd9', 75, '2021-01-18 02:23:05', 0),
('df8d5bf1-6fb2-95fb-d7f7-6004f0f5abc5', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5c6868be-c79e-8603-f447-5fe991f1a410', 75, '2021-01-18 02:21:17', 0),
('df97aa98-b886-5d05-db47-5ffe5754e1d7', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd27d6ac9-0dc4-e687-467d-5fe9919ba898', -99, '2021-01-18 02:21:56', 0),
('dfb369a2-acf6-2f04-3125-5ffe532bb201', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '5e7e6ad5-ffdb-5962-fda0-5fe99175ae99', 90, '2021-01-13 01:58:24', 0),
('dffbd218-5331-cfad-8433-6004f037de6f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '74c25699-1cb1-ce6d-21b8-5fe9919bc181', -99, '2021-01-18 02:23:05', 0),
('dffd76ec-a024-705e-2e2c-5ffe544de7cf', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'access', 89, '2021-01-18 02:17:49', 0),
('dffe674f-380c-f424-a9df-5ffe57815226', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'cfb885ed-0011-0629-a460-5fe99177479c', 80, '2021-01-18 02:21:56', 0),
('e011d880-d0b5-94f4-c716-5ffe5343f5b1', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '57b9ea58-c683-abc5-923c-5fe991836af4', 90, '2021-01-13 01:58:24', 0),
('e044308a-bc26-3279-907c-6004f0bb8c78', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5b4bd525-74a5-4e81-8c36-5fe991c0bc0d', 75, '2021-01-18 02:21:17', 0),
('e061ea42-3bb5-5915-4c16-6004f0e759b1', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '72393ce0-595f-0405-6bcd-5fe991546f2b', 75, '2021-01-18 02:23:05', 0),
('e069aaac-56cd-4d21-dba4-5ffe5337c061', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '81bf9049-9f65-48bd-e093-5fe991d0ab74', 89, '2021-01-13 01:58:24', 0),
('e082aa76-af8c-9c47-a244-5ffe571d68bb', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'd46c9d4a-4566-775c-c818-5fe991e6739e', -99, '2021-01-18 02:21:56', 0),
('e0a4342d-d26b-0da6-e4de-5ffe54cdd636', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'delete', 80, '2021-01-18 02:17:49', 0),
('e0c2c96e-601b-8e6b-109e-6004f08532a0', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '76986dab-ff17-bc47-8526-5fe9911c5da7', -99, '2021-01-18 02:23:05', 0),
('e0c69ab7-546a-96ed-a4fa-5ffe53a3ad70', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '84cd1e95-c8d9-fe85-21d4-5fe9911b9751', 90, '2021-01-13 01:58:24', 0),
('e0df51c3-2ad5-f706-d38b-5ffe57020b6e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'cec82ba1-feb9-f717-4fc3-5fe991f6a31b', 80, '2021-01-18 02:21:56', 0),
('e10c1281-18ee-4b30-a7f3-6004f09025ee', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5e5257f4-8eed-49c9-1704-5fe991dbea8a', 75, '2021-01-18 02:21:17', 0),
('e123f2e1-a9ed-dae7-1725-5ffe539604d5', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '840d2deb-8dd9-b8da-cf64-5fe991c7c617', 90, '2021-01-13 01:58:24', 0),
('e12c161c-fa96-0607-d489-6004f03f5fe5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '715bbbc1-3fca-b78e-ff62-5fe991520d0f', 75, '2021-01-18 02:23:05', 0),
('e12d20c7-2565-1bee-da29-5ffe5499909e', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'edit', 80, '2021-01-18 02:17:49', 0),
('e14ca774-c67c-48b8-19eb-5ffe571b91fb', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3caecfce-8fa3-6dca-d275-5fe991ae7128', -98, '2021-01-18 02:21:56', 0),
('e15a07bd-ec5c-1aee-98a5-5ffe548d52d2', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'e5950731-4ab0-2b54-5c51-5fe991eb9484', 89, '2021-01-18 02:17:49', 0),
('e1820801-61f0-e48c-438e-5ffe53eb8a1a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8688f3b6-4e6f-c7ac-44dd-5fe9911a1bf1', 90, '2021-01-13 01:58:24', 0),
('e193266d-629d-ee69-bfa2-6004f03e82b3', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4a61c49f-2cdb-e7e6-0f51-5fe9913f40c7', 89, '2021-01-18 02:23:05', 0),
('e1b71fdb-532b-52d9-e961-5ffe57545cba', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4075fdc3-dde1-c555-a841-5fe991ed277c', 80, '2021-01-18 02:21:56', 0),
('e1ccccc8-0518-75c1-0e59-6004f0a6738d', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5d74330e-218f-2dee-ea38-5fe9913e73a3', -99, '2021-01-18 02:21:17', 0),
('e1e08b43-445e-b0be-45fb-5ffe5315231b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '85a8e890-cfc8-9eaa-179b-5fe991c189f0', 90, '2021-01-13 01:58:24', 0),
('e1e0b5a7-6279-75fa-dfec-5ffe54f4affb', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'export', 80, '2021-01-18 02:17:49', 0),
('e1fd8be0-8e3c-c66b-b9e8-6004f0e67b6b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4e1109c8-7876-d60e-a048-5fe991d7c4ae', 75, '2021-01-18 02:23:05', 0),
('e2135ea2-0ec5-7a4d-46e2-5ffe5642f3f0', '860158ee-3501-2093-b810-5ffe567b916e', 'access', 89, '2021-01-18 02:20:17', 0),
('e21ba91e-9426-9c30-2712-5ffe5754d6bf', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3f88e746-8c1a-3fdb-0587-5fe991bd8ab1', 80, '2021-01-18 02:21:56', 0),
('e23eee56-a2ab-0f01-1827-5ffe537f3b82', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '835cd764-a822-7a1d-c7c4-5fe99193125d', 90, '2021-01-13 01:58:24', 0),
('e259bf45-3c54-251a-2bcf-6004f0e6050a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4d1fe09d-5f13-4da2-9290-5fe9912f736b', 75, '2021-01-18 02:23:05', 0),
('e281ff6e-d218-4d19-567d-5ffe574c3f00', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '42399d77-03d4-1a1d-d87f-5fe9916d2287', 80, '2021-01-18 02:21:56', 0),
('e2851dbc-fe14-07df-49c7-5ffe548212bd', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'import', -99, '2021-01-18 02:17:49', 0),
('e297117a-ea8a-fff2-4c3f-5ffe53d86415', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8762c156-1605-4d19-cf81-5fe991f6dbaf', 90, '2021-01-13 01:58:24', 0),
('e298c047-4693-3395-f620-6004f01f0211', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5a65a785-eedd-5dce-c5c8-5fe991bddcae', 75, '2021-01-18 02:21:17', 0),
('e2bc8a0c-4cd3-1911-98d7-6004f050045b', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4fd10984-05a7-6cfa-a22a-5fe991fbc4fa', 75, '2021-01-18 02:23:05', 0),
('e2cece97-9071-8de9-28ab-5ffe5640f994', '860158ee-3501-2093-b810-5ffe567b916e', 'delete', 80, '2021-01-18 02:20:17', 0),
('e2e72932-f27c-1322-f2ad-5ffe577df965', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '41448afe-1d6a-8576-b32b-5fe991645daa', -99, '2021-01-18 02:21:56', 0),
('e2f8c391-3240-07db-86f6-5ffe5415d052', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'list', 80, '2021-01-18 02:17:49', 0),
('e307bb34-e03f-9ede-f321-5ffe530733a8', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '82a3bc12-4b9d-4c45-1469-5fe9918ccd58', 90, '2021-01-13 01:58:24', 0),
('e317d3c7-2b0a-f9b0-a943-6004f0e0614e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4efb3cf7-9b18-608e-0873-5fe991601809', -99, '2021-01-18 02:23:05', 0),
('e33f029b-38a2-3ef2-e6d6-5ffe566cf1d8', '860158ee-3501-2093-b810-5ffe567b916e', 'd3d3cf03-be8a-3584-a18c-5fe99113181a', 80, '2021-01-18 02:20:17', 0),
('e34c3cbf-ddde-f001-a229-5ffe57c2d778', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3e86a2ea-35c6-889b-3f5d-5fe991d821af', 80, '2021-01-18 02:21:56', 0),
('e34fd86c-b547-606f-ffff-5ffe56a930fd', '860158ee-3501-2093-b810-5ffe567b916e', 'edit', 80, '2021-01-18 02:20:17', 0),
('e35cf013-aca0-3da3-fe94-5ffe5440cb58', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'massupdate', -99, '2021-01-18 02:17:49', 0),
('e3626b51-4656-1e58-4984-6004f021eced', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '5f443fd1-639b-ec49-1e45-5fe9911db0d0', -99, '2021-01-18 02:21:17', 0),
('e3726c13-c0ad-010c-c38a-5ffe534510c9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a63ff7b8-be9f-5c3d-973a-5fe991a641cd', 89, '2021-01-13 01:58:24', 0),
('e37cef14-1ffd-59a1-ba2a-6004f0c58a8d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4c37daab-be92-019b-381d-5fe99196a7ca', 75, '2021-01-18 02:23:05', 0),
('e3860dc6-568c-33b5-f7c4-5ffe5336dcab', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'cfb885ed-0011-0629-a460-5fe99177479c', 90, '2021-01-13 01:58:24', 0),
('e3b77deb-f375-4a7e-4367-5ffe5796dd5e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '430405ce-5261-7d6a-90bc-5fe99110d0a2', -99, '2021-01-18 02:21:56', 0),
('e3c7000a-b832-cf29-e7ff-5ffe5636a85d', '860158ee-3501-2093-b810-5ffe567b916e', 'export', 80, '2021-01-18 02:20:17', 0),
('e3c92fb2-4b40-bb35-2650-5ffe546d5f0b', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'view', 80, '2021-01-18 02:17:49', 0),
('e3d335a7-a2b7-2cf0-5c0b-5ffe531c78f2', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a9fe76ce-8d27-193f-a8c5-5fe991379ec8', 90, '2021-01-13 01:58:24', 0),
('e3db07ce-3ec5-8e45-7c6a-6004f0b11baf', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '50a7c395-84c7-a636-8650-5fe9914a4078', -99, '2021-01-18 02:23:05', 0),
('e41176af-b2e6-63a4-feb7-5ffe5791c4e6', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3d95bbb1-ce50-817f-44ea-5fe991c104d8', 80, '2021-01-18 02:21:56', 0),
('e430a3b0-4966-9686-f54e-6004f08846d9', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '598abca7-4b6e-cb2b-644b-5fe991850bfd', 75, '2021-01-18 02:21:17', 0),
('e43301f6-e0b3-f92c-eaf9-5ffe53ccc3c4', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a913220b-58c3-edb8-9b22-5fe991ee39a0', 90, '2021-01-13 01:58:24', 0),
('e4363816-5d66-6e4a-b543-5ffe54dafc02', 'f3ab2114-3037-5119-1375-5ffe5300083d', '97d98f8c-5748-2aaf-fb6f-5fe9919492d8', -98, '2021-01-18 02:17:49', 0),
('e4457393-7626-af5e-1594-6004f0c3c46d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4b4a59af-cb8a-d026-7057-5fe991880a95', 75, '2021-01-18 02:23:05', 0),
('e473dd80-00b7-c51f-e10c-5ffe57aece57', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '9ca10601-c27e-5c20-5956-5fe9919ccad4', -98, '2021-01-18 02:21:56', 0),
('e487289b-52dc-7943-6e2e-5ffe53477d8c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ab932356-a060-c695-6bce-5fe9914a18c1', 90, '2021-01-13 01:58:24', 0),
('e4ac8e8d-4241-2e0b-69a5-6004f0f418cc', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7a70175c-e461-3c60-f0b9-5fe9911a6123', 89, '2021-01-18 02:23:05', 0),
('e4b80def-0344-f31e-5d32-5ffe56ef332b', '860158ee-3501-2093-b810-5ffe567b916e', 'import', -99, '2021-01-18 02:20:17', 0),
('e4d86b9a-88dd-c08f-4366-6004f07d1c4a', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8509116a-03b1-6673-110c-5fe991954b03', -98, '2021-01-18 02:21:17', 0),
('e4dc6103-e262-fd3d-2284-5ffe572a265c', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'de2e0848-be5e-0abe-c6db-5fe991aa483f', 80, '2021-01-18 02:21:56', 0),
('e4e34f79-ccee-06a3-0c3d-5ffe54f84b84', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9bbb2f8b-4e7c-7598-3cd7-5fe991f5abce', 80, '2021-01-18 02:17:49', 0),
('e4f7a380-7f89-7be5-c2f6-5ffe5351ccba', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'aac9f2e0-a504-9c9e-29de-5fe991d6c366', 90, '2021-01-13 01:58:24', 0),
('e50893ba-92ea-c096-30fc-6004f0ffaa0c', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7e00d922-8704-0640-deb7-5fe9912630d1', 75, '2021-01-18 02:23:05', 0),
('e51b099d-ed08-8bc7-ad2e-5ffe57d166e1', '857d3817-1929-a617-ad2c-5ffe57175f84', '70d70eac-d310-32f6-369c-5fe991e453bc', 75, '2021-01-18 02:18:59', 0),
('e53e28ff-7017-9892-b113-5ffe56f540e0', '860158ee-3501-2093-b810-5ffe567b916e', 'list', 80, '2021-01-18 02:20:17', 0),
('e543ea64-d045-dd49-27f0-5ffe573369a5', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'cd310a2b-1462-a6c9-ca96-5fe9919756ad', 80, '2021-01-18 02:21:56', 0),
('e5587914-032d-7e41-6687-5ffe543ae9cd', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9a9f7b66-cc05-ac3d-373a-5fe9917492bd', 80, '2021-01-18 02:17:49', 0),
('e565601d-66e7-e0c3-124e-5ffe53b61f9b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a8249c4e-35b6-f389-68a0-5fe9919e2360', 90, '2021-01-13 01:58:24', 0),
('e571ba7b-e5af-b09c-7be7-6004f0754042', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7d1e9133-c151-88c0-eaec-5fe991c34593', 75, '2021-01-18 02:23:05', 0),
('e57c7fde-e326-a513-7cf2-6004f03d7e04', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8936f48d-6faf-aae4-427b-5fe9917348c9', 75, '2021-01-18 02:21:17', 0),
('e5a5aec9-786a-7822-24b8-5ffe572b176a', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'fdb10bca-f265-c42d-8e94-5fe991226d9c', 80, '2021-01-18 02:21:56', 0),
('e5b74a57-3e5e-22d1-3ae9-5ffe5665b68a', '860158ee-3501-2093-b810-5ffe567b916e', 'massupdate', -99, '2021-01-18 02:20:17', 0),
('e5c3cd44-f3f4-0622-6fea-5ffe535f7a6c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ac6b9b7c-2168-81ca-4234-5fe991a96a8a', 90, '2021-01-13 01:58:24', 0),
('e5d009bc-e09b-f70a-df20-5ffe5408ca13', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9d4402db-4a7c-87a3-5440-5fe991973b23', 80, '2021-01-18 02:17:49', 0),
('e5d8538c-f15c-d1a5-5574-6004f0dc8a1f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7fb8f225-a99e-f07d-efab-5fe991f451cb', 75, '2021-01-18 02:23:05', 0),
('e6065233-b7fc-f732-c8f4-5ffe57ffa571', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'edd80716-4770-8f9e-58e4-5fe991dcf437', -99, '2021-01-18 02:21:56', 0),
('e61a037f-03ea-1985-e069-6004f0facac1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '883343cc-5856-3f81-0dda-5fe99171e29d', 75, '2021-01-18 02:21:17', 0),
('e626fdd3-e2d7-5fea-0d70-5ffe530b3689', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a73cae80-ffea-1db9-b82e-5fe9918e160a', 90, '2021-01-13 01:58:24', 0),
('e62c12e9-9ff5-837c-f271-5ffe56f2b240', '860158ee-3501-2093-b810-5ffe567b916e', 'view', 80, '2021-01-18 02:20:17', 0),
('e63035f1-37b3-f6d9-cf13-6004f030a5e4', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7edf4208-d92c-4f4d-4e1a-5fe991304f60', -99, '2021-01-18 02:23:05', 0),
('e63ffe21-c33a-ec83-af70-5ffe545aa586', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9c89e791-8bd0-75ad-edc8-5fe991482910', -99, '2021-01-18 02:17:49', 0),
('e66f7e31-87e2-a616-2789-5ffe576b79b1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ba0d0b5d-0fea-e94c-a366-5fe991b36938', 80, '2021-01-18 02:21:56', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('e68b9784-8f66-a66a-9ea0-5ffe53b96ba7', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'aa4ac08d-1c76-f179-ae60-5fe99105b293', 89, '2021-01-13 01:58:24', 0),
('e68fea65-9756-7f5b-a537-6004f07e2014', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7c4a05ce-6ac7-4196-607c-5fe9911b0e45', 75, '2021-01-18 02:23:05', 0),
('e696e6f3-ad72-c297-6968-5ffe56d4fbbb', '860158ee-3501-2093-b810-5ffe567b916e', '97d98f8c-5748-2aaf-fb6f-5fe9919492d8', -98, '2021-01-18 02:20:17', 0),
('e6a3619e-8a07-26e7-76b2-5ffe54baef17', 'f3ab2114-3037-5119-1375-5ffe5300083d', '99cfda1f-f957-e4c1-e444-5fe99159b864', 80, '2021-01-18 02:17:49', 0),
('e6b87102-8c99-09d9-1c86-6004f000b9c2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8b196f3d-f5c9-3f7b-9f2f-5fe9914dd267', 75, '2021-01-18 02:21:17', 0),
('e6eb24b1-8124-670d-c96a-5ffe57c2137e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '10bb9476-6a76-c89c-3b36-5fe9919e22c0', -99, '2021-01-18 02:21:56', 0),
('e6f5c954-ff97-e308-fe00-5ffe534e0ed9', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ae303a10-554a-204f-6954-5fe991d9dbeb', 90, '2021-01-13 01:58:24', 0),
('e6fc96de-6aff-ca67-d8c2-6004f0588d45', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '80904afb-9a34-7ce1-e2a7-5fe9913a83f3', -99, '2021-01-18 02:23:05', 0),
('e701ca64-4498-e075-9563-5ffe54bdbb82', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9e0af605-864a-1d4f-c6b6-5fe9917f12da', -99, '2021-01-18 02:17:49', 0),
('e70713ac-2281-f8e3-355e-5ffe566df952', '860158ee-3501-2093-b810-5ffe567b916e', '9bbb2f8b-4e7c-7598-3cd7-5fe991f5abce', 80, '2021-01-18 02:20:17', 0),
('e7592038-cd9d-2905-d121-6004f0e7d0b3', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '7b5d68fd-4c97-3b86-4ae3-5fe991594e2a', 75, '2021-01-18 02:23:05', 0),
('e75ad282-8d65-fba6-8d71-6004f0d0d590', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8a3c4ee5-e844-1a52-2808-5fe991728c0f', -99, '2021-01-18 02:21:17', 0),
('e75ef5f1-4cc6-cecb-78a5-5ffe53ba5641', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ad33c349-59d2-2345-b811-5fe99100db80', 90, '2021-01-13 01:58:24', 0),
('e761c793-618e-ab15-5a76-5ffe57a5efe9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ab5b0857-c791-bdac-00d8-5fe991750992', 80, '2021-01-18 02:21:56', 0),
('e761e5e8-4041-cccb-b83b-5ffe548d0666', 'f3ab2114-3037-5119-1375-5ffe5300083d', '990beb29-a1a8-9051-e65a-5fe9919d686d', 80, '2021-01-18 02:17:49', 0),
('e76e71d9-2397-ab6b-ca29-5ffe56a765b0', '860158ee-3501-2093-b810-5ffe567b916e', '9a9f7b66-cc05-ac3d-373a-5fe9917492bd', 80, '2021-01-18 02:20:17', 0),
('e7b21e26-92f2-9bda-c6ec-5ffe532c31ab', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b03796be-b258-728a-c41b-5fe991c3b941', 90, '2021-01-13 01:58:24', 0),
('e7ba2501-6196-4eb4-cbab-5ffe57cdaf17', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'acb4792d-94aa-f27b-25a7-5fe991990b1d', -98, '2021-01-18 02:21:56', 0),
('e7bc56fa-b7d6-061b-a59d-6004f0d7653d', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '4ff60533-381d-3326-53bc-5fe991d1b06f', -98, '2021-01-18 02:23:05', 0),
('e7cb715c-1f74-0b12-6454-5ffe568cac26', '860158ee-3501-2093-b810-5ffe567b916e', '9d4402db-4a7c-87a3-5440-5fe991973b23', 80, '2021-01-18 02:20:17', 0),
('e7cf57ae-16d6-393a-90ce-5ffe54916b77', 'f3ab2114-3037-5119-1375-5ffe5300083d', '42f23425-20bd-24a2-89cc-5fe991fb719d', -98, '2021-01-18 02:17:49', 0),
('e7feb8d7-7310-1923-19a4-6004f0bacda9', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '872bf147-7d38-4099-a281-5fe991390670', 75, '2021-01-18 02:21:17', 0),
('e8100bc7-e530-b12e-1dee-5ffe53d70a20', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'af35032f-561c-58f6-3331-5fe991c5da84', 90, '2021-01-13 01:58:24', 0),
('e81a2967-1f36-4fd1-ebb4-5ffe57ed67fc', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b05f3683-3b79-cc74-f87f-5fe9911a764c', 80, '2021-01-18 02:21:56', 0),
('e81cfc00-168f-49e4-5b7d-6004f0081b25', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8e98077b-58ce-c7a3-04fb-5fe9912226b7', 75, '2021-01-18 02:23:05', 0),
('e8342b72-9e17-390c-ac91-5ffe56d8945f', '860158ee-3501-2093-b810-5ffe567b916e', '9c89e791-8bd0-75ad-edc8-5fe991482910', -99, '2021-01-18 02:20:17', 0),
('e834fd12-d732-fc9b-0d90-5ffe54556e1c', 'f3ab2114-3037-5119-1375-5ffe5300083d', '46e1336a-7c3c-2718-031e-5fe991d96425', 80, '2021-01-18 02:17:49', 0),
('e870f0b5-389f-8928-57bb-5ffe53d514f0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ac57ede7-ba37-daae-9348-5fe991a599f2', 90, '2021-01-13 01:58:24', 0),
('e87c5542-300d-a56f-1c0f-6004f070a6e4', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '818e07d5-f7cb-310c-95f2-5fe991b1ee79', 75, '2021-01-18 02:23:05', 0),
('e87d089e-03bd-12c1-2a50-6004f0801aef', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '38b65870-c26f-4a05-b2e8-5fe991357e50', 75, '2021-01-18 02:21:17', 0),
('e882cfe5-d374-7604-fb4a-5ffe57e16586', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'af6ced59-b625-ac50-8de2-5fe99176adde', 80, '2021-01-18 02:21:56', 0),
('e8901d1e-750f-5ed6-2818-5ffe548c6f9a', 'f3ab2114-3037-5119-1375-5ffe5300083d', '45f6fd66-02e2-8dcd-e44c-5fe9914c4eae', 80, '2021-01-18 02:17:49', 0),
('e89806e9-bbf3-bb45-279a-5ffe5447e4dc', 'f3ab2114-3037-5119-1375-5ffe5300083d', '12080549-97d3-9a50-fd3b-5fe99113e041', 80, '2021-01-18 02:17:49', 0),
('e89ac994-b455-3a2c-93c7-5ffe56c811b8', '860158ee-3501-2093-b810-5ffe567b916e', '99cfda1f-f957-e4c1-e444-5fe99159b864', 80, '2021-01-18 02:20:17', 0),
('e8a12a22-2275-186b-e247-6004f0f2f30c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '8bf64f92-13f1-2135-3a28-5fe991084f6b', -99, '2021-01-18 02:21:17', 0),
('e8caf28b-b198-4f23-8e89-5ffe53fd7c00', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'b12cce2f-60ac-da2e-547b-5fe9919f721c', 90, '2021-01-13 01:58:24', 0),
('e8dedce8-65a1-abb6-5be8-6004f030117e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'ac220371-2277-878b-d774-5fe991a38a1c', 75, '2021-01-18 02:23:05', 0),
('e8ef174c-5e49-0902-9791-5ffe54d91169', 'f3ab2114-3037-5119-1375-5ffe5300083d', '48bd518c-335e-0f97-a7e0-5fe991ada2ca', 80, '2021-01-18 02:17:49', 0),
('e8f315a3-87c5-e420-6fe6-5ffe573cbf05', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b2312d82-92c2-21d0-ce38-5fe991a0e273', 80, '2021-01-18 02:21:56', 0),
('e8fea5eb-3e56-40c3-3312-5ffe562f0177', '860158ee-3501-2093-b810-5ffe567b916e', '9e0af605-864a-1d4f-c6b6-5fe9917f12da', -99, '2021-01-18 02:20:17', 0),
('e92f5182-747f-548b-b548-5ffe53be38fb', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ab456744-738b-c720-3322-5fe991b0dab8', 90, '2021-01-13 01:58:24', 0),
('e93ddfc2-cdf1-0dfc-956f-6004f013bff7', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '9dc8093f-c633-9026-010c-5fe99184be95', -99, '2021-01-18 02:23:05', 0),
('e943c7b5-8879-47ca-c421-6004f0887dae', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '862b5b74-cced-59b5-0fe7-5fe991e5983b', 75, '2021-01-18 02:21:17', 0),
('e94ddaa3-3e4f-2811-077f-5ffe5462fe23', 'f3ab2114-3037-5119-1375-5ffe5300083d', '47ab75be-caa2-8677-1598-5fe99188c136', -99, '2021-01-18 02:17:49', 0),
('e95601c0-fbff-f4f6-15a5-5ffe57f233bc', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b14832c7-ab94-6642-afaa-5fe9918dafa5', -99, '2021-01-18 02:21:56', 0),
('e96660c5-0642-fe28-0fcd-5ffe567d7787', '860158ee-3501-2093-b810-5ffe567b916e', '990beb29-a1a8-9051-e65a-5fe9919d686d', 80, '2021-01-18 02:20:17', 0),
('e988555b-e870-2f0d-8064-5ffe5312777e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c78e668a-e9c8-187c-1443-5fe991aafc4c', 89, '2021-01-13 01:58:24', 0),
('e98b0f17-daee-2cec-204d-5ffe53db3c24', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'd46c9d4a-4566-775c-c818-5fe991e6739e', 90, '2021-01-13 01:58:24', 0),
('e9ad87e4-8802-55d7-5db9-6004f03fa2ce', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '70d70eac-d310-32f6-369c-5fe991e453bc', 75, '2021-01-18 02:23:05', 0),
('e9b7b5be-a679-81ec-372d-5ffe57841120', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ae7dc2b8-f4b3-206f-1ad7-5fe9919d4671', 80, '2021-01-18 02:21:56', 0),
('e9b808ba-fa9c-ff34-1c46-5ffe54ee5bee', 'f3ab2114-3037-5119-1375-5ffe5300083d', '450a84c1-7709-a7c1-22e0-5fe9913729a1', 80, '2021-01-18 02:17:49', 0),
('e9b84a27-12f8-7658-8038-5ffe56c7529d', '860158ee-3501-2093-b810-5ffe567b916e', '42f23425-20bd-24a2-89cc-5fe991fb719d', -98, '2021-01-18 02:20:17', 0),
('e9ea2f43-ba8d-d948-e404-6004f02140cf', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '221b12f0-5d05-330c-b7a3-5fe9912efe39', -98, '2021-01-18 02:21:17', 0),
('e9ecedf3-e6bc-5e94-b06c-5ffe532edd53', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'cb3e92a9-b63b-131f-c460-5fe9915c6bd2', 90, '2021-01-13 01:58:24', 0),
('ea02c4b4-7d34-2078-0cb9-5ffe56d1dce4', '860158ee-3501-2093-b810-5ffe567b916e', '46e1336a-7c3c-2718-031e-5fe991d96425', 80, '2021-01-18 02:20:17', 0),
('ea14729b-7aad-fb60-2289-5ffe577dadc1', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'b3117773-7971-9fdc-a876-5fe99184937b', -99, '2021-01-18 02:21:56', 0),
('ea1991a9-d662-8341-e58e-6004f02aed45', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'bb8c07ac-0928-929b-4833-5fe99115ee88', -99, '2021-01-18 02:23:05', 0),
('ea1f95a5-422c-ebf4-2039-5ffe547bed17', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4992f727-3935-17df-a9f2-5fe991e9af52', -99, '2021-01-18 02:17:49', 0),
('ea47091c-7682-b218-074f-5ffe5362c5af', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ca4f132d-502d-5aee-0cd4-5fe9916973a5', 90, '2021-01-13 01:58:24', 0),
('ea6b0383-4063-2dcb-8232-5ffe56becfed', '860158ee-3501-2093-b810-5ffe567b916e', 'e5950731-4ab0-2b54-5c51-5fe991eb9484', -98, '2021-01-18 02:20:17', 0),
('ea78015f-7a85-fa78-8c54-5ffe5745c974', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ad954bf2-3a7d-e3fc-b572-5fe99169f4cb', 80, '2021-01-18 02:21:56', 0),
('ea7bec2d-ae0a-0263-7502-5ffe54f5d2a9', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4425d96b-3beb-dc6f-46e8-5fe991b01e56', 80, '2021-01-18 02:17:49', 0),
('ea88891b-b38d-21ae-490e-6004f09e548e', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '624407ba-eaf2-35d5-476b-5fe991cd595f', 75, '2021-01-18 02:23:05', 0),
('ea914e52-2955-f4f9-2c64-6004f0c2891f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '261fe43f-ae70-119e-7363-5fe991f3234f', 75, '2021-01-18 02:21:17', 0),
('ea9fa030-c277-64fc-24f5-5ffe56d0e8ea', '860158ee-3501-2093-b810-5ffe567b916e', '45f6fd66-02e2-8dcd-e44c-5fe9914c4eae', 80, '2021-01-18 02:20:17', 0),
('eaa0d4b7-d519-455e-e0e9-5ffe532fb876', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'cd0d3d3e-c909-743b-3dd5-5fe991dc1b1f', 90, '2021-01-13 01:58:24', 0),
('ead8f2a2-9d4b-c496-2335-5ffe54d4c01d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '4ff60533-381d-3326-53bc-5fe991d1b06f', -98, '2021-01-18 02:17:49', 0),
('eadc3af0-5c52-e0e4-4964-5ffe5772d102', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3b495310-2762-2a33-fae5-5fe99197f1c9', -98, '2021-01-18 02:21:56', 0),
('eae6069f-1ff9-a411-3059-5ffe577d1227', '857d3817-1929-a617-ad2c-5ffe57175f84', 'bb8c07ac-0928-929b-4833-5fe99115ee88', -99, '2021-01-18 02:18:59', 0),
('eae9f6d0-e90c-a682-1391-6004f0269bdf', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '81bf9049-9f65-48bd-e093-5fe991d0ab74', -98, '2021-01-18 02:23:05', 0),
('eaeeee0f-89a5-ac54-43fe-5ffe5617aee9', '860158ee-3501-2093-b810-5ffe567b916e', '48bd518c-335e-0f97-a7e0-5fe991ada2ca', 80, '2021-01-18 02:20:17', 0),
('eafdcd57-0a0e-025a-8ced-5ffe530aff0e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'cc23a415-34a1-3d49-5f84-5fe991ade554', 90, '2021-01-13 01:58:24', 0),
('eb2f86fd-dc5c-d18f-c97e-5ffe548103ea', 'f3ab2114-3037-5119-1375-5ffe5300083d', '8e98077b-58ce-c7a3-04fb-5fe9912226b7', 80, '2021-01-18 02:17:49', 0),
('eb3475f2-e9ae-3b2d-43c0-5ffe57bdb354', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3e49521b-d827-7b2a-0b53-5fe991cb254a', 80, '2021-01-18 02:21:56', 0),
('eb37ff75-cade-429f-d678-6004f05e07b1', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '25330da0-6d1c-e099-5248-5fe991488f96', 75, '2021-01-18 02:21:17', 0),
('eb394e40-cfbc-8cb5-813c-5ffe563a5793', '860158ee-3501-2093-b810-5ffe567b916e', '47ab75be-caa2-8677-1598-5fe99188c136', -99, '2021-01-18 02:20:17', 0),
('eb565911-deb2-e27a-fc79-6004f0f769cd', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '84cd1e95-c8d9-fe85-21d4-5fe9911b9751', 75, '2021-01-18 02:23:05', 0),
('eb5a315b-3ec7-6faf-35d0-5ffe538ae27c', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c96705f6-2453-523f-1014-5fe991fd5bf1', 90, '2021-01-13 01:58:24', 0),
('eb838076-293f-6cdb-26a0-5ffe56fb98f0', '860158ee-3501-2093-b810-5ffe567b916e', '450a84c1-7709-a7c1-22e0-5fe9913729a1', 80, '2021-01-18 02:20:17', 0),
('eb917922-0adc-abff-0514-5ffe57eb1865', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3d9d1f58-38f0-6da8-84eb-5fe991bd1d59', 80, '2021-01-18 02:21:56', 0),
('eb94b59c-7aea-52e3-834f-5ffe5451d8a2', 'f3ab2114-3037-5119-1375-5ffe5300083d', '818e07d5-f7cb-310c-95f2-5fe991b1ee79', 80, '2021-01-18 02:17:49', 0),
('ebc14a18-98b0-a362-2c72-5ffe531d7099', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'cdf4deca-43a7-96de-523c-5fe9917f19dc', 90, '2021-01-13 01:58:24', 0),
('ebc3a648-3dd5-6806-6dd1-6004f0412dd5', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '840d2deb-8dd9-b8da-cf64-5fe991c7c617', 75, '2021-01-18 02:23:05', 0),
('ebdda624-cd7e-a1d4-c78c-6004f0e106fc', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '27da2e31-71e5-6694-1bad-5fe9910245e3', 75, '2021-01-18 02:21:17', 0),
('ebf208ee-1825-35b7-a8c2-5ffe5705db09', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3fa45ef5-762f-980f-aaa7-5fe99118be9d', 80, '2021-01-18 02:21:56', 0),
('ebf755e2-be8c-6a6c-27d3-5ffe54ae86b2', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'ac220371-2277-878b-d774-5fe991a38a1c', 80, '2021-01-18 02:17:49', 0),
('ec1b5644-fc57-8759-abbe-5ffe5380d3a4', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c88c4932-f211-1278-2e83-5fe991d62f1d', 90, '2021-01-13 01:58:24', 0),
('ec24b61d-ae37-3d36-d9e1-6004f0c58d48', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8688f3b6-4e6f-c7ac-44dd-5fe9911a1bf1', 75, '2021-01-18 02:23:05', 0),
('ec275d19-77d9-a7a7-39e3-5ffe56986ef1', '860158ee-3501-2093-b810-5ffe567b916e', '4992f727-3935-17df-a9f2-5fe991e9af52', -99, '2021-01-18 02:20:17', 0),
('ec523d87-6e51-cdcf-019b-5ffe57649c5d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3eeb41f2-d7de-94e6-393e-5fe99172b71f', -99, '2021-01-18 02:21:56', 0),
('ec598116-c955-a3e1-4496-5ffe54c993a9', 'f3ab2114-3037-5119-1375-5ffe5300083d', '9dc8093f-c633-9026-010c-5fe99184be95', -99, '2021-01-18 02:17:49', 0),
('ec74e98b-8d69-2464-f231-5ffe565bdb19', '860158ee-3501-2093-b810-5ffe567b916e', '4425d96b-3beb-dc6f-46e8-5fe991b01e56', 80, '2021-01-18 02:20:17', 0),
('ec79000b-fd1c-2071-6fd8-5ffe535bda10', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a1812648-b7a8-751b-ace4-5fe991b4de0b', 89, '2021-01-13 01:58:24', 0),
('ec84578c-35d0-8349-9a03-6004f079ce80', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '2706b8b1-f8f3-607b-c2f7-5fe991057a1c', -99, '2021-01-18 02:21:17', 0),
('ec948bc6-98ee-6dcc-3791-6004f050b316', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '85a8e890-cfc8-9eaa-179b-5fe991c189f0', -99, '2021-01-18 02:23:05', 0),
('ecb5876f-b359-c9df-3cba-5ffe5712ec43', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3ca85a97-4cd3-c3df-3213-5fe9917403bb', 80, '2021-01-18 02:21:56', 0),
('ecb634e3-954d-0390-9ccb-5ffe54f68b3f', 'f3ab2114-3037-5119-1375-5ffe5300083d', '70d70eac-d310-32f6-369c-5fe991e453bc', 80, '2021-01-18 02:17:49', 0),
('ecd212ea-8a99-9c81-1e3b-5ffe568f712b', '860158ee-3501-2093-b810-5ffe567b916e', '4ff60533-381d-3326-53bc-5fe991d1b06f', -98, '2021-01-18 02:20:17', 0),
('ecd4c2da-1991-0dca-2912-5ffe53daa606', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a5b46281-8b2a-2314-5bd7-5fe991cb89bd', 90, '2021-01-13 01:58:24', 0),
('ed033980-aa5f-cabf-0bbf-6004f08f760a', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '835cd764-a822-7a1d-c7c4-5fe99193125d', 75, '2021-01-18 02:23:05', 0),
('ed134a3f-82ab-d46c-5dcb-5ffe57a89a35', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '40482d37-640a-72bc-f077-5fe9915e67a0', -99, '2021-01-18 02:21:56', 0),
('ed1e904d-48e0-1a11-c24f-5ffe542306ed', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'bb8c07ac-0928-929b-4833-5fe99115ee88', -99, '2021-01-18 02:17:49', 0),
('ed267744-4b6a-1e20-31f6-5ffe56f586e4', '860158ee-3501-2093-b810-5ffe567b916e', '8e98077b-58ce-c7a3-04fb-5fe9912226b7', 80, '2021-01-18 02:20:17', 0),
('ed2ac595-420c-ec57-70ae-6004f02c4b32', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '24338af2-5403-8efd-9c15-5fe991863579', 75, '2021-01-18 02:21:17', 0),
('ed2e0bd5-5bd5-4176-e3c9-5ffe53256e94', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a4c5d37e-7f45-eb0b-1cf9-5fe9917b9d6a', 90, '2021-01-13 01:58:24', 0),
('ed71bde9-cc6d-2154-4b49-5ffe57b44f52', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '3c078834-32c4-617f-9fd6-5fe991bf28e0', 80, '2021-01-18 02:21:56', 0),
('ed7279e3-ac09-27d0-bccf-5ffe56b5c6a5', '860158ee-3501-2093-b810-5ffe567b916e', '818e07d5-f7cb-310c-95f2-5fe991b1ee79', 80, '2021-01-18 02:20:17', 0),
('ed7a8afd-03f6-2847-7189-6004f030354f', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '8762c156-1605-4d19-cf81-5fe991f6dbaf', -99, '2021-01-18 02:23:05', 0),
('ed7b9828-17bb-e117-7e0f-5ffe549df211', 'f3ab2114-3037-5119-1375-5ffe5300083d', '624407ba-eaf2-35d5-476b-5fe991cd595f', 80, '2021-01-18 02:17:49', 0),
('ed89ee88-161e-7f65-61a7-5ffe53e229be', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a794fcfe-711b-488f-84dd-5fe991cb8a8f', 90, '2021-01-13 01:58:24', 0),
('edc86bce-1874-a40f-4e6e-5ffe5635309b', '860158ee-3501-2093-b810-5ffe567b916e', 'ac220371-2277-878b-d774-5fe991a38a1c', 80, '2021-01-18 02:20:17', 0),
('edcd2cf9-7f8b-e293-1a6a-5ffe57858208', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'ee33075d-445e-7c77-cbcb-5fe991df87e3', -98, '2021-01-18 02:21:56', 0),
('edd268fd-692f-1447-30d4-6004f0d996e2', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '28e3ff10-5af4-07e1-fa1c-5fe9914d87b3', -99, '2021-01-18 02:21:17', 0),
('ede375f4-13fb-2093-3242-5ffe5474eec4', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3551a270-f18f-bc61-d9ab-5fe991257d80', -98, '2021-01-18 02:17:49', 0),
('edec0d98-c51f-d829-6e4b-5ffe53245e6a', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a6a9a7bb-1ad5-e90a-9003-5fe99196320b', 90, '2021-01-13 01:58:24', 0),
('edf186d9-3652-8129-9afb-6004f0a09a73', '5996d131-9bb4-c4d6-f674-6004f0d8afab', '82a3bc12-4b9d-4c45-1469-5fe9918ccd58', 75, '2021-01-18 02:23:05', 0),
('ee1ae676-7494-863b-3dfe-5ffe563b9a55', '860158ee-3501-2093-b810-5ffe567b916e', '9dc8093f-c633-9026-010c-5fe99184be95', -99, '2021-01-18 02:20:17', 0),
('ee1e07a0-4840-4fdc-d961-5ffe5489a11b', 'f3ab2114-3037-5119-1375-5ffe5300083d', '11328ec1-927e-1859-c268-5fe991a3a3cf', 80, '2021-01-18 02:17:49', 0),
('ee34bb58-e1bb-38e2-0dae-5ffe57a148a8', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '41de0022-b274-6bbf-b53d-5fe991a8c09e', 80, '2021-01-18 02:21:56', 0),
('ee42fbf7-2d35-6a42-b64c-5ffe531be1e0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a3c8b404-bff0-380b-9a97-5fe99126fb9f', 90, '2021-01-13 01:58:24', 0),
('ee470b9b-b79c-300a-c8b5-5ffe545cf276', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3917de13-cf89-17f0-e38d-5fe99121f8ee', 80, '2021-01-18 02:17:49', 0),
('ee6a20c4-33b1-57e7-55f1-5ffe56d787e5', '860158ee-3501-2093-b810-5ffe567b916e', '70d70eac-d310-32f6-369c-5fe991e453bc', 80, '2021-01-18 02:20:17', 0),
('ee8ddb2d-5c3c-8047-fee1-5ffe57982c4e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '34d90e2b-2058-ea74-6222-5fe99179e083', 80, '2021-01-18 02:21:56', 0),
('ee96d56e-ac8f-b4da-4cd5-6004f0e6a41c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '23550dea-242e-e641-c100-5fe9914c1d52', 75, '2021-01-18 02:21:17', 0),
('eea30d95-c6f7-9582-529e-5ffe544178c9', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3826d8ff-0a94-78ba-1f41-5fe991cc13d7', 80, '2021-01-18 02:17:49', 0),
('eea78cf6-d1ae-0007-8e69-5ffe53465343', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a893ae5e-04f1-1ad5-14f8-5fe99134dca8', 90, '2021-01-13 01:58:24', 0),
('eebe0e35-e515-c4b7-d550-5ffe56b2c636', '860158ee-3501-2093-b810-5ffe567b916e', 'bb8c07ac-0928-929b-4833-5fe99115ee88', -99, '2021-01-18 02:20:17', 0),
('ef0188a3-7df3-064f-7c61-5ffe57942ae4', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '5a000560-7280-a1b7-e8f7-5fe99195e88a', 80, '2021-01-18 02:21:56', 0),
('ef044fdc-fab3-b9c0-264d-5ffe543715cf', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3ba2a8c3-0658-9208-ad4a-5fe991362626', 80, '2021-01-18 02:17:49', 0),
('ef0534d7-084f-29a9-1000-5ffe539d8f51', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a2d06f6c-d1d9-df54-18be-5fe991d6de31', 90, '2021-01-13 01:58:24', 0),
('ef15c050-47d8-7d30-630c-5ffe5643f01f', '860158ee-3501-2093-b810-5ffe567b916e', '624407ba-eaf2-35d5-476b-5fe991cd595f', 80, '2021-01-18 02:20:17', 0),
('ef62e5dc-ceef-39b7-cd5e-5ffe569fa920', '860158ee-3501-2093-b810-5ffe567b916e', '3551a270-f18f-bc61-d9ab-5fe991257d80', -98, '2021-01-18 02:20:17', 0),
('ef630948-1ba0-fe04-6ead-5ffe54d66234', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3a20c576-4d3d-4596-153d-5fe991eab6b4', -99, '2021-01-18 02:17:49', 0),
('ef63af79-ded9-55f3-b70c-6004f07b711b', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd2d0a027-3572-d6ed-c8b6-5fe991cb1f5d', -98, '2021-01-18 02:21:17', 0),
('ef70100a-149e-4414-8acc-5ffe53b73a65', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8509116a-03b1-6673-110c-5fe991954b03', 89, '2021-01-13 01:58:24', 0),
('ef753c25-1726-87b9-ac8c-5ffe573e07b5', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4d8a0aa3-32ab-6e3d-a53e-5fe99166c344', -99, '2021-01-18 02:21:56', 0),
('efb10c3a-039a-5e39-5183-5ffe53169225', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'cec82ba1-feb9-f717-4fc3-5fe991f6a31b', 90, '2021-01-13 01:58:24', 0),
('efc62556-4ab0-01d7-a9a0-5ffe5648c1a0', '860158ee-3501-2093-b810-5ffe567b916e', '3917de13-cf89-17f0-e38d-5fe99121f8ee', 80, '2021-01-18 02:20:17', 0),
('efcc819b-2c06-9bbf-1dc7-5ffe531c1482', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8936f48d-6faf-aae4-427b-5fe9917348c9', 90, '2021-01-13 01:58:24', 0),
('efe73c00-0fc5-0dea-ca21-5ffe571d684e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '23e709d5-278b-953a-b425-5fe9912b1de3', 80, '2021-01-18 02:21:56', 0),
('f01a1108-fe42-4794-8b6b-5ffe54704b5d', 'f3ab2114-3037-5119-1375-5ffe5300083d', '374897c0-70e4-0345-a9e4-5fe9911d4e4e', 80, '2021-01-18 02:17:49', 0),
('f02573c0-05b6-e4ad-05ba-5ffe56c739e4', '860158ee-3501-2093-b810-5ffe567b916e', '3826d8ff-0a94-78ba-1f41-5fe991cc13d7', 80, '2021-01-18 02:20:17', 0),
('f02fc101-45c4-0055-674c-6004f0eacf6c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd657cb55-0375-4273-1649-5fe99107f1cd', 75, '2021-01-18 02:21:17', 0),
('f036e74f-df6d-a440-3e89-5ffe53936687', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '883343cc-5856-3f81-0dda-5fe99171e29d', 90, '2021-01-13 01:58:24', 0),
('f04fd03f-095b-4040-9b5b-5ffe574d0b50', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '660901ef-f92f-3dc1-aed9-5fe9918feb95', -99, '2021-01-18 02:21:56', 0),
('f081f799-7203-76eb-8409-5ffe56f81590', '860158ee-3501-2093-b810-5ffe567b916e', '3ba2a8c3-0658-9208-ad4a-5fe991362626', 80, '2021-01-18 02:20:17', 0),
('f083c4c2-35f0-f96b-6c01-5ffe5480bac6', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3cbabe1f-c724-bcf3-7dd2-5fe991c08fe0', -99, '2021-01-18 02:17:49', 0),
('f08f03af-fba1-c5c4-e980-5ffe56f5a7c4', '860158ee-3501-2093-b810-5ffe567b916e', '12080549-97d3-9a50-fd3b-5fe99113e041', 80, '2021-01-18 02:20:17', 0),
('f0a3b0c8-3727-bc2c-78b4-5ffe534a6c7d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8b196f3d-f5c9-3f7b-9f2f-5fe9914dd267', 90, '2021-01-13 01:58:24', 0),
('f0b7606f-5eca-f56d-ac15-5ffe57204d2d', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '6560009a-e8c7-dbae-1288-5fe99128b793', 80, '2021-01-18 02:21:56', 0),
('f0dc25ce-406d-ba95-280c-6004f0c95cc3', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd5947f70-5835-9610-af3c-5fe991225042', 75, '2021-01-18 02:21:17', 0),
('f0ea04ae-674c-ff3e-4818-5ffe57b104be', '857d3817-1929-a617-ad2c-5ffe57175f84', '624407ba-eaf2-35d5-476b-5fe991cd595f', 75, '2021-01-18 02:18:59', 0),
('f0eddff1-8c01-fa57-a7a4-5ffe54421f01', 'f3ab2114-3037-5119-1375-5ffe5300083d', '3665eb75-d663-c9b0-c26f-5fe9918ce9d1', 80, '2021-01-18 02:17:49', 0),
('f0eee476-61fc-2acf-8630-5ffe56684589', '860158ee-3501-2093-b810-5ffe567b916e', '3a20c576-4d3d-4596-153d-5fe991eab6b4', -99, '2021-01-18 02:20:17', 0),
('f0fceda7-1f6e-274a-ad8e-5ffe5379452b', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8a3c4ee5-e844-1a52-2808-5fe991728c0f', 90, '2021-01-13 01:58:24', 0),
('f11c4a13-8b3f-5b7d-e6c2-5ffe57c77577', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'eefceb17-42d8-076b-4008-5fe991e16df6', 89, '2021-01-18 02:21:56', 0),
('f14b2494-0781-7f5c-b7a6-5ffe54843e05', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'd57006b7-e7f1-a8df-7b38-5fe9914a3d6e', -98, '2021-01-18 02:17:49', 0),
('f154194e-9fae-6b90-b70e-5ffe568fb21a', '860158ee-3501-2093-b810-5ffe567b916e', '374897c0-70e4-0345-a9e4-5fe9911d4e4e', 80, '2021-01-18 02:20:17', 0),
('f15f53fb-7841-6d8a-9eeb-5ffe53190021', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '872bf147-7d38-4099-a281-5fe991390670', 90, '2021-01-13 01:58:24', 0),
('f18adfff-68d8-c46f-eab3-5ffe57135a9e', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '16a00661-6e26-a18d-9739-5fe9917fedee', 80, '2021-01-18 02:21:56', 0),
('f199794b-f669-b862-c730-6004f0580f72', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd7ef8dae-256a-1a9b-9486-5fe991f2477f', 75, '2021-01-18 02:21:17', 0),
('f1bbc88f-38bd-9ffb-40b6-5ffe56134405', '860158ee-3501-2093-b810-5ffe567b916e', '3cbabe1f-c724-bcf3-7dd2-5fe991c08fe0', -99, '2021-01-18 02:20:17', 0),
('f1c23ece-5274-2a5e-bd54-5ffe53a7fd9d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '8bf64f92-13f1-2135-3a28-5fe991084f6b', 90, '2021-01-13 01:58:24', 0),
('f1eeadd7-8a1f-b6ba-7c1f-5ffe57eb72d9', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'f36d2301-85f6-e277-dd2b-5fe991260aba', 80, '2021-01-18 02:21:56', 0),
('f1f185bc-321d-917e-4584-5ffe54a889ed', 'f3ab2114-3037-5119-1375-5ffe5300083d', '11168e71-dfb6-25c7-423a-5fe9913e4838', 80, '2021-01-18 02:17:49', 0),
('f21740aa-96c9-7690-7208-5ffe5644135d', '860158ee-3501-2093-b810-5ffe567b916e', '3665eb75-d663-c9b0-c26f-5fe9918ce9d1', 80, '2021-01-18 02:20:17', 0),
('f21debdb-6bed-aee5-389b-5ffe53fd0c00', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '862b5b74-cced-59b5-0fe7-5fe991e5983b', 90, '2021-01-13 01:58:24', 0),
('f252d0f9-6771-206f-9eb5-5ffe5714acaf', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '4a7205e3-4f54-b385-fcaf-5fe991185158', 80, '2021-01-18 02:21:56', 0),
('f258e2b0-af96-4174-dce6-5ffe54adfcf7', 'f3ab2114-3037-5119-1375-5ffe5300083d', '102a85b0-a8da-085d-303f-5fe9913862b6', 80, '2021-01-18 02:17:49', 0),
('f2610b62-9911-c77c-c220-6004f03e6b8c', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd714ace0-6c07-939c-935a-5fe991f67888', -99, '2021-01-18 02:21:17', 0),
('f26e3916-1230-0861-bfb8-5ffe56d8bbe6', '860158ee-3501-2093-b810-5ffe567b916e', 'd57006b7-e7f1-a8df-7b38-5fe9914a3d6e', -98, '2021-01-18 02:20:17', 0),
('f28988c6-5951-914e-34e5-5ffe53909f4e', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'a3dd0e7e-396e-6394-b676-5fe9917eb3e6', 89, '2021-01-13 01:58:24', 0),
('f2b858b1-9995-f272-49ad-5ffe54d4e422', 'f3ab2114-3037-5119-1375-5ffe5300083d', '13119046-55d9-f4c7-8f0c-5fe991870bc3', 80, '2021-01-18 02:17:49', 0),
('f2c28c16-69db-0ae7-97e3-5ffe570487be', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '23eb066a-e61e-518d-57a7-5fe9914c6f06', -99, '2021-01-18 02:21:56', 0),
('f2c3fd33-608f-81cd-d783-5ffe56cafba9', '860158ee-3501-2093-b810-5ffe567b916e', '11168e71-dfb6-25c7-423a-5fe9913e4838', 80, '2021-01-18 02:20:17', 0),
('f2e2e47c-3c17-a90c-1323-5ffe5324d714', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'dbdb0c61-8f47-3c40-57b4-5fe991fe567d', 90, '2021-01-13 01:58:24', 0),
('f2f58c0a-dec5-3cae-6ac3-5ffe5790bb2e', '857d3817-1929-a617-ad2c-5ffe57175f84', 'access', 89, '2021-01-18 02:18:59', 0),
('f3185282-6008-e38a-3ad5-5ffe565d86d7', '860158ee-3501-2093-b810-5ffe567b916e', '102a85b0-a8da-085d-303f-5fe9913862b6', 80, '2021-01-18 02:20:17', 0),
('f325aabc-c1a4-0e32-b96d-5ffe574e5cbe', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'f0ea58c4-6672-6ed8-d368-5fe991b8d600', 80, '2021-01-18 02:21:56', 0),
('f32a0dac-cae7-c178-7292-6004f0a8c083', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd4c47979-6892-d428-422a-5fe9914915d9', 75, '2021-01-18 02:21:17', 0),
('f34722a1-8da3-fca5-28a3-5ffe530f0d39', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'ce6e0f93-2998-985d-7b87-5fe991d71448', 90, '2021-01-13 01:58:24', 0),
('f35960da-043e-86a7-bdd5-5ffe54d78b31', 'f3ab2114-3037-5119-1375-5ffe5300083d', '1224a14c-5751-b0f7-2546-5fe99171ecf5', -99, '2021-01-18 02:17:49', 0),
('f37780d5-c092-4165-10f6-5ffe566b2880', '860158ee-3501-2093-b810-5ffe567b916e', '13119046-55d9-f4c7-8f0c-5fe991870bc3', 80, '2021-01-18 02:20:17', 0),
('f3917e40-08b6-929b-b138-5ffe57c973c6', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '63ba06ec-c8c0-814b-4724-5fe991431a0a', -99, '2021-01-18 02:21:56', 0),
('f3980e4b-f294-4ec8-9515-6004f057b99e', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '37be1412-83bc-71de-9e8a-5fe9917743e0', -99, '2021-01-18 02:21:17', 0),
('f3a207d3-e8ff-8ded-d796-5ffe5330fb8d', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'f496047a-6f9e-53a2-3f3a-5fe99169c2d7', 90, '2021-01-13 01:58:24', 0),
('f3c0d5ab-c7b0-7662-ab8f-5ffe54f18f80', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'f48c0261-22b6-af87-604d-5fe9918bf017', 80, '2021-01-18 02:17:49', 0),
('f3d90da2-a8b4-6eab-1626-5ffe54a3cebc', 'f3ab2114-3037-5119-1375-5ffe5300083d', '140e324e-0201-5dd4-5831-5fe991f136fb', 80, '2021-01-18 02:17:49', 0),
('f3d919c9-60b0-95c8-4690-5ffe56ad34f6', '860158ee-3501-2093-b810-5ffe567b916e', '1224a14c-5751-b0f7-2546-5fe99171ecf5', -99, '2021-01-18 02:20:17', 0),
('f3eeb17d-135d-34f2-2252-6004f020df27', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'd8b1b1e7-6336-dbbf-8cf1-5fe99178f96b', -99, '2021-01-18 02:21:17', 0),
('f3fd5cc7-e38e-1169-6126-5ffe575f7553', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'f01fc973-d5fe-d3b7-79db-5fe991f5619e', 80, '2021-01-18 02:21:56', 0),
('f404efe1-6c31-6a5b-d697-5ffe5365b8c0', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'e8300251-c3bb-5889-1e43-5fe99135777f', 90, '2021-01-13 01:58:24', 0),
('f4e8097d-716a-2b5d-4c53-5ffe53431bca', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '3caecfce-8fa3-6dca-d275-5fe991ae7128', 89, '2021-01-13 01:58:24', 0),
('f76a09f5-567b-f0f1-78b0-5ffe56f07796', '860158ee-3501-2093-b810-5ffe567b916e', '11328ec1-927e-1859-c268-5fe991a3a3cf', 80, '2021-01-18 02:20:17', 0),
('f79209ba-d56f-6281-dfb7-5ffe574165ad', '857d3817-1929-a617-ad2c-5ffe57175f84', '3551a270-f18f-bc61-d9ab-5fe991257d80', -98, '2021-01-18 02:18:59', 0),
('f9a60437-1100-cac3-269f-5ffe54fdc810', 'f3ab2114-3037-5119-1375-5ffe5300083d', '1315cdbc-7372-2004-13f9-5fe991112d5e', -99, '2021-01-18 02:17:49', 0),
('fa9f0f29-44a2-09d0-816d-5ffe53f8a7eb', '29bd53cb-8518-e723-c48d-5ffe53d6834a', '4075fdc3-dde1-c555-a841-5fe991ed277c', 90, '2021-01-13 01:58:24', 0),
('fd58093b-dabb-f3ef-0a6a-6004f08d775f', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', '34ecb272-0044-c320-2fce-5fe991914a29', 75, '2021-01-18 02:21:17', 0),
('fe060caf-f8a3-f231-616a-5ffe5731f916', '857d3817-1929-a617-ad2c-5ffe57175f84', '3917de13-cf89-17f0-e38d-5fe99121f8ee', 75, '2021-01-18 02:18:59', 0),
('fed500e4-aafb-d4b9-f0f8-5ffe54492bd2', 'f3ab2114-3037-5119-1375-5ffe5300083d', '104b7824-509e-9c2c-15b1-5fe991646d62', 80, '2021-01-18 02:17:49', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `acl_roles_users`
--

INSERT INTO `acl_roles_users` (`id`, `role_id`, `user_id`, `date_modified`, `deleted`) VALUES
('34cd6655-0a77-7fce-d85e-5ffe5425b7f9', 'f3ab2114-3037-5119-1375-5ffe5300083d', '23640184-5b7b-121a-0b0b-5ffe511422c8', '2021-01-13 02:00:08', 0),
('4f3c9e1a-ae97-390d-08b2-5ffe53f075fb', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'c0db015b-b9f4-c49c-2e6d-5ffe51e76639', '2021-01-13 01:58:17', 0),
('5c527baf-348d-f54c-13e9-5ffe57ca9d57', '9aa28ee2-1061-3640-2107-5ffe57e6db95', '106046ad-dedf-c90d-2d92-5ffe52280529', '2021-01-13 02:15:24', 0),
('cc496b98-60a7-40ee-c75b-5ffe562ce3e3', '860158ee-3501-2093-b810-5ffe567b916e', '4c266e8c-669a-3d0f-62b9-5ffe51eaa714', '2021-01-13 02:11:52', 0),
('dadbe584-4f79-24fa-caf5-5ffe57dd56df', '857d3817-1929-a617-ad2c-5ffe57175f84', 'c8f40d8d-6c2e-c710-70b3-5ffe521a98a7', '2021-01-13 02:16:18', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT 0,
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT 0,
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2020-12-28 08:05:29', '2020-12-28 08:05:29', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT 0,
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('32f68bee-1eac-3838-f0c4-600055b3d074', 'Nguyễn Đình Thật', '2021-01-14 14:30:52', '2021-01-14 14:30:52', '1', '1', NULL, 0, NULL, NULL, 1, 'b2ac5855-2c39-56fc-9a4e-600055be1f38', 'Accounts'),
('6a7c3927-16ca-c4fb-2adf-6000565cf9ae', 'Cô. Mai Anh Phan', '2021-01-14 14:32:42', '2021-01-14 14:32:42', '1', '1', NULL, 0, NULL, NULL, 1, '3b0b92a0-958f-e7ef-6cb3-600056e0bd8a', 'Contacts');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext DEFAULT NULL,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text DEFAULT NULL,
  `pdffooter` text DEFAULT NULL,
  `margin_left` int(255) DEFAULT 15,
  `margin_right` int(255) DEFAULT 15,
  `margin_top` int(255) DEFAULT 16,
  `margin_bottom` int(255) DEFAULT 16,
  `margin_header` int(255) DEFAULT 9,
  `margin_footer` int(255) DEFAULT 9,
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT 0,
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text DEFAULT NULL,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT 0,
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT 0,
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `hits` int(11) DEFAULT 0,
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.25'),
('MySettings', 'tab', 'YTozODp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjU6IlNwb3RzIjtpOjEwO3M6OToiQ2FtcGFpZ25zIjtpOjExO3M6NToiQ2FsbHMiO2k6MTI7czo4OiJNZWV0aW5ncyI7aToxMztzOjU6IlRhc2tzIjtpOjE0O3M6NToiTm90ZXMiO2k6MTU7czoxMjoiQU9TX0ludm9pY2VzIjtpOjE2O3M6MTM6IkFPU19Db250cmFjdHMiO2k6MTc7czo1OiJDYXNlcyI7aToxODtzOjk6IlByb3NwZWN0cyI7aToxOTtzOjEzOiJQcm9zcGVjdExpc3RzIjtpOjIwO3M6NzoiUHJvamVjdCI7aToyMTtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtpOjIyO3M6MTY6IkFNX1Rhc2tUZW1wbGF0ZXMiO2k6MjM7czo5OiJGUF9ldmVudHMiO2k6MjQ7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtpOjI1O3M6MTI6IkFPU19Qcm9kdWN0cyI7aToyNjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtpOjI3O3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjI4O3M6OToiamp3Z19NYXBzIjtpOjI5O3M6MTI6Impqd2dfTWFya2VycyI7aTozMDtzOjEwOiJqandnX0FyZWFzIjtpOjMxO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7aTozMjtzOjExOiJBT1JfUmVwb3J0cyI7aTozMztzOjEyOiJBT1dfV29ya0Zsb3ciO2k6MzQ7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO2k6MzU7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO2k6MzY7czoxNDoiRW1haWxUZW1wbGF0ZXMiO2k6Mzc7czo3OiJTdXJ2ZXlzIjt9'),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'SuiteCRM'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `lawful_basis`, `date_reviewed`, `lawful_basis_source`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`, `portal_user_type`) VALUES
('3b0b92a0-958f-e7ef-6cb3-600056e0bd8a', '2021-01-14 14:32:42', '2021-01-14 14:32:42', '1', '1', '', 0, '23640184-5b7b-121a-0b0b-5ffe511422c8', 'Ms.', 'Mai Anh', 'Phan', 'Nhân viên văn phòng', NULL, '', 0, NULL, '0945885510', '', NULL, '', NULL, NULL, NULL, '149, Tổ 3, Khóm 10, TT. Sông Đốc, Trần Văn Thời', 'Cà Mau', '', '96000', 'Việt Nam', '149, Tổ 3, Khóm 10, TT. Sông Đốc, Trần Văn Thời', 'Cà Mau', '', '96000', 'Việt Nam', NULL, NULL, 'Partner', '', NULL, '', NULL, NULL, 'Single');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('3b0b92a0-958f-e7ef-6cb3-600056e0bd8a', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT 0,
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT 0,
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT 0,
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text DEFAULT NULL,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT 0,
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(250) DEFAULT NULL,
  `reply_to_addr` varchar(250) DEFAULT NULL,
  `to_addrs` text DEFAULT NULL,
  `cc_addrs` text DEFAULT NULL,
  `bcc_addrs` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description_html` longtext DEFAULT NULL,
  `raw_source` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT 0,
  `opt_out` tinyint(1) DEFAULT 0,
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `confirm_opt_in`, `confirm_opt_in_date`, `confirm_opt_in_sent_date`, `confirm_opt_in_fail_date`, `confirm_opt_in_token`, `date_created`, `date_modified`, `deleted`) VALUES
('126e54df-1fb2-1bef-fc3f-5ffe52c6b160', 'ndthanh.c3songdoc@gmail.com', 'NDTHANH.C3SONGDOC@GMAIL.COM', 0, 0, 'confirmed-opt-in', NULL, NULL, NULL, NULL, '2021-01-13 01:51:00', '2021-01-18 02:21:48', 0),
('253c7f22-81e6-ec18-4ea4-5ffe519b2878', 'gvdinhthanh@gmail.com', 'GVDINHTHANH@GMAIL.COM', 0, 0, 'confirmed-opt-in', NULL, NULL, NULL, NULL, '2021-01-13 01:49:00', '2021-01-18 02:15:56', 0),
('3fd5686e-6045-b100-8284-600056b63d45', 'phanmaianh@gmail.com', 'PHANMAIANH@GMAIL.COM', 0, 0, 'confirmed-opt-in', NULL, NULL, NULL, NULL, '2021-01-14 14:32:00', '2021-01-14 14:32:42', 0),
('4e1802ec-de85-83a0-b25a-5ffe514b4728', 'nvlinhcm91@gmail.com', 'NVLINHCM91@GMAIL.COM', 0, 0, 'confirmed-opt-in', NULL, NULL, NULL, NULL, '2021-01-13 01:50:00', '2021-01-18 02:20:06', 0),
('b32dbc3c-c9c7-f3bb-ccbb-600055b2b0fd', 'nguyendinhthat.songdoc@gmail.com', 'NGUYENDINHTHAT.SONGDOC@GMAIL.COM', 0, 0, 'confirmed-opt-in', NULL, NULL, NULL, NULL, '2021-01-14 14:30:00', '2021-01-14 14:33:53', 0),
('c67720de-c74e-ccbd-d9a2-5ffe51437164', 'nmtoan.cmu@gmail.com', 'NMTOAN.CMU@GMAIL.COM', 0, 0, 'confirmed-opt-in', NULL, NULL, NULL, NULL, '2021-01-13 01:47:00', '2021-01-14 14:32:12', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_addresses_audit`
--

CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `email_addresses_audit`
--

INSERT INTO `email_addresses_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('60d89ce1-58be-188d-7c00-5ffe510408b1', 'c67720de-c74e-ccbd-d9a2-5ffe51437164', '2021-01-13 01:47:03', '1', 'confirm_opt_in', 'enum', 'not-opt-in', 'confirmed-opt-in', NULL, NULL),
('804f4c62-6e67-aba6-121f-5ffe52fa77bf', '126e54df-1fb2-1bef-fc3f-5ffe52c6b160', '2021-01-13 01:51:57', '1', 'confirm_opt_in', 'enum', 'not-opt-in', 'confirmed-opt-in', NULL, NULL),
('917883d7-4cb8-437f-b009-5ffe5100d41b', '253c7f22-81e6-ec18-4ea4-5ffe519b2878', '2021-01-13 01:49:31', '1', 'confirm_opt_in', 'enum', 'not-opt-in', 'confirmed-opt-in', NULL, NULL),
('b50dc061-c0f8-2dcf-da35-5ffe51a3be4d', '4e1802ec-de85-83a0-b25a-5ffe514b4728', '2021-01-13 01:50:36', '1', 'confirm_opt_in', 'enum', 'not-opt-in', 'confirmed-opt-in', NULL, NULL),
('bcf580b8-760a-de96-7716-6000559de165', 'b32dbc3c-c9c7-f3bb-ccbb-600055b2b0fd', '2021-01-14 14:30:53', '1', 'confirm_opt_in', 'enum', 'not-opt-in', 'confirmed-opt-in', NULL, NULL),
('cb7746d0-78f0-5cc8-5c4e-6000565e328b', '3fd5686e-6045-b100-8284-600056b63d45', '2021-01-14 14:32:42', '1', 'confirm_opt_in', 'enum', 'not-opt-in', 'confirmed-opt-in', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT 0,
  `reply_to_address` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('1206647b-4d2e-2ffc-853e-5ffe52d5fef2', '126e54df-1fb2-1bef-fc3f-5ffe52c6b160', '106046ad-dedf-c90d-2d92-5ffe52280529', 'Users', 1, 0, '2021-01-13 01:51:56', '2021-01-13 01:51:56', 0),
('24eb6f1f-af29-3ca5-2d29-5ffe517af820', '253c7f22-81e6-ec18-4ea4-5ffe519b2878', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'Users', 1, 0, '2021-01-13 01:49:31', '2021-01-13 01:49:31', 0),
('3f6d020a-65a8-3951-6c1e-6000569915e7', '3fd5686e-6045-b100-8284-600056b63d45', '3b0b92a0-958f-e7ef-6cb3-600056e0bd8a', 'Contacts', 1, 0, '2021-01-14 14:32:42', '2021-01-14 14:32:42', 0),
('4dbfe689-ade9-29b5-787f-5ffe51f8322c', '4e1802ec-de85-83a0-b25a-5ffe514b4728', '4c266e8c-669a-3d0f-62b9-5ffe51eaa714', 'Users', 1, 0, '2021-01-13 01:50:36', '2021-01-13 01:50:36', 0),
('b2be9cff-dd1e-1180-4da0-6000550e49bb', 'b32dbc3c-c9c7-f3bb-ccbb-600055b2b0fd', 'b2ac5855-2c39-56fc-9a4e-600055be1f38', 'Accounts', 1, 0, '2021-01-14 14:30:52', '2021-01-14 14:30:52', 0),
('c5f782e0-7f5c-087a-ee66-5ffe5183ab8e', 'c67720de-c74e-ccbd-d9a2-5ffe51437164', 'c0db015b-b9f4-c49c-2e6d-5ffe51e76639', 'Users', 1, 0, '2021-01-13 01:47:02', '2021-01-13 01:47:02', 0),
('ca779c77-d221-df24-ab53-5ffe520e86ee', '4e1802ec-de85-83a0-b25a-5ffe514b4728', 'c8f40d8d-6c2e-c710-70b3-5ffe521a98a7', 'Users', 1, 0, '2021-01-13 01:52:47', '2021-01-13 01:52:47', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `body_html` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('276ba784-26d7-2906-09fb-5fe991ef7c2e', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, 'system'),
('288c6924-5a82-51a5-3905-5fe99136639c', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'off', 'User Case Update', 'Email template to send to a SuiteCRM user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					     <p> </p>\r\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>', 0, NULL, NULL, 'system'),
('573cb5a6-cf68-43f6-8a34-5fe991c7ffa3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\r\nHere is your account username and temporary password:\r\nUsername : $contact_user_user_name\r\nPassword : $contact_user_user_hash\r\n\r\n$config_site_url\r\n\r\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('58d2c023-b14e-ad0a-6c4f-5fe9912b12f3', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\r\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\r\n\r\nClick on the link below to reset your password:\r\n\r\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('5a11b7b2-ae0d-c43d-2131-5fe99145f8f7', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'off', 'Two Factor Authentication email', 'This template is used to send a user a code for Two Factor Authentication.', 'Two Factor Authentication Code', 'Two Factor Authentication code is $code.', '<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('5ea99b8e-03f0-9d7f-eeb0-5fe991500e9b', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'off', 'Confirmed Opt In', 'Email template to send to a contact to confirm they have opted in.', 'Confirm Opt In', 'Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n             <p>\r\n                Please confirm that you have opted in by selecting the following link:\r\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\r\n             </p>', 0, NULL, NULL, 'system'),
('5fb4cefd-2557-69e8-7631-5fe9917dfb84', '2013-05-24 14:31:45', '2020-12-28 08:04:25', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'system'),
('e32234a7-1e90-d6e9-7c47-5fe991ee8996', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('e75f87ed-9c19-7cc9-b720-5fe9911dd294', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, 'system'),
('e8d62094-3ac7-a7ec-cb9b-5fe991137fd9', '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Description</td><td>$acase_description</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, 'system');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT 0,
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `audited` tinyint(1) DEFAULT 0,
  `massupdate` tinyint(1) DEFAULT 0,
  `duplicate_merge` smallint(6) DEFAULT 0,
  `reportable` tinyint(1) DEFAULT 1,
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2020-12-28 08:04:25', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT 0,
  `is_group` tinyint(1) DEFAULT 0,
  `is_dynamic` tinyint(1) DEFAULT 0,
  `dynamic_query` text DEFAULT NULL,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `default_values` text DEFAULT NULL,
  `has_header` tinyint(1) DEFAULT 1,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT 0,
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT 0,
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_lng` float(11,8) DEFAULT 0.00000000,
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `requeue` tinyint(1) DEFAULT 0,
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT 0,
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT 0,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth2clients`
--

CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT 1,
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth2tokens`
--

CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT 0,
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `smtp_from_name`, `smtp_from_addr`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('15bed044-d3d9-8d53-7d5f-5fe991f7c9f6', 'system', 'system-override', '1', NULL, NULL, 'SMTP', 'other', '', '25', '', '', 1, '0', NULL, NULL, NULL, NULL, 0, NULL),
('db920a3a-f0ea-0e29-784a-5fe991899bbd', 'system', 'system', '1', NULL, NULL, 'SMTP', 'other', '', '25', '', '', 1, '0', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `predecessors` text DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text DEFAULT NULL,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT 1,
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `utilization` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('102e229d-f2bc-95b9-d535-5fe991fee9ed', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('10c2eb0d-1f19-dc2e-f91a-5fe991636d65', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('112b1064-be0b-5b99-eb56-5fe991b899fc', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('11a6eaa8-7ec3-04c3-308f-5fe991950e2b', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('121cf70e-208f-7432-3081-5fe991798c3e', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12d146f5-2567-6ad4-4338-5fe991e2f875', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('133d7857-8d15-31e2-4b12-5fe99133b393', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('13b3d3fa-3db3-a1b4-4f06-5fe991c4e84d', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('14200740-daf3-148b-5b35-5fe991ad901b', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('14303dd9-6767-c38d-81a2-5fe9911c242c', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('14a714e8-7f43-7726-04ad-5fe991f60160', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('1514bbfd-0455-9f36-8985-5fe9912b6f2d', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15d1cda1-3ba1-98fb-8a46-5fe991aa669a', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('163262cb-8536-334e-a1d9-5fe9919bde84', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16a463e8-ffbe-e258-4153-5fe991d4c5f7', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('171658f3-ce87-f6b0-5964-5fe991786d93', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('178106f3-6e9f-2dc3-04d7-5fe991139a1f', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17e41872-b77c-7016-82c1-5fe99105a39d', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('18602a15-273e-dfb7-6459-5fe9918f7cea', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('18d03a29-eef4-cc61-4a86-5fe991faa1e3', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('193614e3-b2bb-789e-4a46-5fe9910cee21', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('199c7367-7961-e18f-d193-5fe991d75000', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Meetings', 0, 0),
('1a4e42f9-eb42-f5a8-985b-5fe99102b669', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ab82404-2b9a-9ec8-1eec-5fe991670763', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b1fa121-7522-c54d-4a19-5fe9916df479', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b830cff-3205-41bd-898b-5fe9914c8be8', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b997261-804a-450f-8719-5fe991a44fe1', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('1c1db38e-8002-5294-d010-5fe991681544', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('1d7e356a-f30f-c6fc-92ff-5fe991892c5e', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1dedf4e2-f6fd-c9b8-83cd-5fe9915a9a89', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e5bfbe6-eb85-617e-3d06-5fe991e9f8e5', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ebadcad-1a5e-b501-5343-5fe991ed7070', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('1f1c6b4a-dfd4-f470-6ff1-5fe9910e1bfe', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('209b99ed-67d9-2331-1911-5fe99168d493', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('210b0f63-860b-75f1-42b5-5fe99104ce83', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21743c5e-c1a3-7281-2f10-5fe991896d1e', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2226663c-8673-7a54-ba90-5fe99111457f', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22876568-232d-7bf0-faff-5fe9919f9f46', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2306487f-e6b6-b47d-7d54-5fe99111bf6e', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('237dfff7-3f44-cdde-1842-5fe991b87acd', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('23daaeaa-301f-f17e-906e-5fe9915858e3', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('245aa9ae-7930-21b0-b234-5fe991b4a889', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2518015c-a763-9060-33b5-5fe9910821f0', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('257ec281-ade2-e80e-291c-5fe9917c3a1d', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('26036cca-9cc6-3408-579f-5fe991cefc71', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2683069a-4144-8431-62e7-5fe99154b539', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26f8ebd1-9dfc-bc9a-64ec-5fe9914e4e29', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2764f4a8-04e2-5acc-2293-5fe991542d9e', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('27d6e22f-5c5a-580b-c556-5fe9916ba8dc', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('283f50df-346f-28ef-b8c8-5fe991f2fb2f', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('28cbf9e5-162d-4ed8-6b8e-5fe9917923a0', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('294ace59-043e-bc8f-4e8c-5fe9919ee111', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('29e452e8-a99e-1427-6596-5fe991b358e2', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2a52e001-bbe4-65c5-c942-5fe9910f2546', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ab3d496-bf42-84b7-2181-5fe991363a92', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b740604-6630-dab3-5828-5fe991049cef', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2be09777-7b9d-e79f-0c4e-5fe9919bf89c', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c533ed2-100e-22b9-1360-5fe991d62fe5', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d031f5e-27b3-289a-052b-5fe9917ae619', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d844c8c-9375-2327-4e51-5fe9913cd857', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2dfb7c78-8d83-a8ac-eb6a-5fe99176d199', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e895b77-5c8e-e6bb-d28e-5fe991f70316', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f04a333-51b9-f0e5-ef2b-5fe991337511', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f570a41-d1c1-d2c1-3364-5fe991cbf212', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('2f9f71ee-09d6-da19-8c60-5fe99173a401', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3016e7d1-8a53-dbaa-d6c1-5fe991a15268', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('308b755b-98f3-7732-9237-5fe9917497e8', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31355c03-5454-7db8-db07-5fe991a162f1', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31a977a5-3a8e-97be-62fd-5fe991c2013c', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('321e95b7-f257-1949-b243-5fe99148aa9a', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32cbdb52-ff89-a71b-e716-5fe9910a10ec', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('334615b3-370e-e168-f58c-5fe991994a37', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33bdb316-dcbf-39ff-1d58-5fe991bc5ebe', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('346044f4-3082-d81a-e59c-5fe9911404cf', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34df680e-da3a-b5c1-c9b4-5fe99179d164', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3544d353-be15-0715-a695-5fe9919e1781', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35d50f37-000c-f26d-7a8d-5fe99130b5cd', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('35e69b5b-1e85-169f-d1f0-5fe9916b7924', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36445989-9f9d-5ebd-6988-5fe991be4460', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36af18e8-f86f-76ff-556d-5fe99176fc91', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('372d1afe-2e80-eef6-51b1-5fe991ca977f', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('37bb7bd5-a012-1442-bc59-5fe991271688', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('382b0fd3-6d4f-48eb-710c-5fe991442152', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('389456f0-25c0-7a96-3010-5fe991ff9901', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3932a1fc-3ea8-99d3-b525-5fe9915732b4', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('399fb3f1-1633-c63c-036f-5fe991b22dde', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3a1092a6-b2d6-2ea8-8344-5fe9910575b1', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ae5b658-5921-e7b6-4374-5fe991a0d491', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b57c8a1-3795-f7d7-18f6-5fe9914a99c8', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3bc1e082-c49b-f352-593b-5fe991abb1c3', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c2cfd5a-1c6d-2895-b880-5fe991338903', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('3d07b434-2625-0892-1454-5fe991fc8e1a', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d3e0a93-9506-52dd-e683-5fe991a100fc', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3d7ee5f7-a1cb-6ef7-f3ec-5fe9918d888a', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3def6732-f4a1-97d8-d2e0-5fe991afcf73', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e61824c-a104-3e5e-2af0-5fe991db8371', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('3ed55612-0236-141e-05ba-5fe99189718d', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('3f4a8294-ea4a-8d2e-7fb4-5fe9912bb671', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('3fe7a274-246f-23ea-32e9-5fe991d60a10', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('406be204-a984-d047-d4f6-5fe99178d586', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('40eba1cd-85fc-0247-50a8-5fe9912ca1db', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4197c934-f495-2881-2c66-5fe991a3390c', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('420744d5-dc2a-974d-7f68-5fe9910ff063', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('426e6bc2-556e-c348-001b-5fe99194ded9', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('430afb0f-05e8-13fb-59c3-5fe9919e2882', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('437231ea-568f-bc07-1c38-5fe991ccd984', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43ddd954-df11-7e0a-183e-5fe99105fca9', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4452c32e-e502-14af-696c-5fe9915ec2aa', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('44dffd13-ec62-a1c3-6611-5fe9910674f6', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('44e1079a-ea8e-99ff-38d2-5fe99188027b', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('45541b11-875d-6b2a-544a-5fe991f01e0a', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45d303e2-4a77-83e8-3db4-5fe9913e2dfc', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('463806f0-6060-245b-254a-5fe9918965ca', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46b4573f-a24d-29b9-5841-5fe9914b258a', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('4750a756-012e-da12-1499-5fe99186a1df', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47ca7bd1-7c11-938b-e8ff-5fe991c65938', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4845ebe6-eedc-fe6a-8ed7-5fe991e490d2', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48ba0dba-56ce-cca9-5a45-5fe991069f39', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('4923570b-da1a-228c-d6d1-5fe991472c98', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49845f28-16ef-ac35-c5e1-5fe991fd97d2', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49f27176-e8c0-bfcb-8332-5fe991794941', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4aaecbcd-566b-7bfd-dee0-5fe9919e25b3', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b24c777-9053-2d6c-280d-5fe991b99932', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4bb712e4-d455-297b-d23c-5fe99161c99c', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c1742f2-bcf9-4d09-80e1-5fe9913d29af', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c90fb8e-d276-af4b-bc33-5fe9916b0182', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4cab086e-c645-dfdc-dd29-5fe991396e3a', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('4d2fdcc1-becb-05e2-872e-5fe99131f5f9', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4dadeb5a-b0d9-8c7e-4318-5fe991f0169f', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e4a57af-1e79-7c80-6a3a-5fe99136065f', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4eb61456-e39f-fe26-7d9a-5fe991a0bba3', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f2652ac-c3b9-5486-b9da-5fe9911af76e', 'securitygroups_aor_scheduled_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Scheduled_Reports', 0, 0),
('4fdb8312-bb71-5809-4a0d-5fe99171df99', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5050f342-00d8-f597-1076-5fe99178bccf', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('50c8bd7d-1133-ca1b-8f3e-5fe991ae0892', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5143dca0-54d6-03bb-e57d-5fe991bdafb9', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('51b725a8-144e-58c6-f3f0-5fe991b14598', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('522418e1-10a8-c518-c438-5fe9912b8139', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('52a0b31c-dffa-acff-b886-5fe9919502bb', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('532053e3-113f-db57-3984-5fe991ed29fe', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('53ad370c-202c-c4e1-d335-5fe991267505', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54192bb4-d4dd-7899-8983-5fe99128af2c', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('542508af-3681-0830-174b-5fe991999bce', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54da22f5-65d0-697a-3892-5fe991715313', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('554a827a-7255-ec6f-3f19-5fe9912e256c', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55b7e996-c06c-81d1-3dab-5fe9917af8b6', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('562f07b2-a712-6bdb-baf7-5fe9919025e7', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('56a3d59d-bb9d-66ba-dcb4-5fe9916dc220', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('571a7065-ef69-1aad-61d8-5fe991d8cb8b', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57dd416f-8d46-2e4d-811b-5fe9915c49b8', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58595753-a12c-ca4a-a31d-5fe991d12152', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58d06165-8bda-8cb0-eb22-5fe99172fe65', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('594a47e5-f37b-cc5d-5ec5-5fe991f31d41', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('5a2939e5-613f-d7db-7522-5fe9912e3b53', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ab0a239-ce44-e645-dbda-5fe991a88c64', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b29686d-9b32-48b5-8aa4-5fe991a20d18', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b9e0470-05c6-1d5a-ee88-5fe99156ef46', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('5ba8d664-a826-fe96-30f8-5fe9913a6bb8', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('5c30b9f8-c023-4809-945a-5fe9915971da', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ce4c536-8c33-e291-65e3-5fe99152a3b6', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d61addf-9f17-d3f7-33d1-5fe9911321b3', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5de06e65-0f13-ae07-ed64-5fe991227edc', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e617a8b-d01b-3c72-64f8-5fe991a820db', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('5edf1d9d-0ccd-fbc4-2610-5fe99139c655', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5f8e30de-d388-baae-8f6c-5fe991a63157', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('600aca2d-9a96-b0bf-2093-5fe99192e0b4', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6080679c-6e33-6807-f4ca-5fe9913f9e84', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60ec87c2-856e-00d0-a068-5fe991bfb903', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('618504c4-d945-cef5-e8d2-5fe9911df043', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('61fb6aa4-ef8c-8ea3-7016-5fe991d2f2f2', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('626c386f-afc4-17c8-311d-5fe99126377f', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('628c0319-7e20-1441-1c47-5fe9916d5a82', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62cff116-6179-0dc9-e8c9-5fe9913cd18f', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('639b58a7-063c-f72d-df63-5fe991a0ab78', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64121a91-5b9f-5125-83bc-5fe991f710e9', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('649155d6-e467-9d62-3e2e-5fe9918c1df2', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6507e913-8f6b-bcef-3ae6-5fe99188f093', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('65824c12-8c51-546a-7e11-5fe99105cf4d', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65fcbead-546c-3aec-0aa2-5fe99159a5d3', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('669d4ebf-e7a6-72ad-3250-5fe991cf3dad', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67192aab-7596-90f7-cad0-5fe991a7159e', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67fa9662-e954-6f40-06fc-5fe9914fb2a4', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68786b5a-e9df-6537-1742-5fe991761025', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68e428f1-43bc-d5fd-38bc-5fe991625c57', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6921096c-6bb0-cfe5-ca0e-5fe991d8a94a', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('695a5602-b8d0-d317-f364-5fe991ef8ef5', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('69d4d0be-865e-353d-f6e6-5fe991b92301', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a00006a-0a97-539d-2af5-5fe99111c61e', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a34cc63-31da-16c1-5772-5fe991a98b8d', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a9b9ad6-61a3-ab19-3101-5fe99181ac2b', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b36eda4-de30-3b92-1614-5fe991c9263b', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b9a9924-97a6-e117-0758-5fe991b73f19', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6cfd5d16-daea-14da-70b1-5fe991e55bcd', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e37b895-38e2-d6bd-d069-5fe991cc4e8a', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fb40098-07d3-79e6-67a2-5fe9919d082e', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fb65727-026f-5499-1dc0-5fe991d0e971', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70247152-10ac-d76f-da17-5fe991b3a252', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70889b68-84fd-2252-5e87-5fe9918b2d97', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70f3a005-cfdf-46dd-ceb6-5fe991fb3784', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('7166ae0b-5f51-fe29-a8d2-5fe991b06c8d', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('71d89f50-6c1a-dd6c-845a-5fe991c6187d', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('723b5f2b-34a9-f77d-9ef1-5fe991f4b0fe', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('729fa5a8-8900-4c68-80fe-5fe991acefab', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('73019e9a-0731-9d2f-a8b4-5fe9917c6d31', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('7368a53d-f4bc-ff89-3ee8-5fe9914bf2df', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('73d2cc21-02d6-13f1-821e-5fe9918ed188', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('7436af93-ac64-2822-8614-5fe991b98fa5', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('74600bc9-5cc4-fdd1-d409-5fe99157c283', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('75141395-5734-8c87-22b8-5fe991c74733', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75727cce-4b63-a6bf-59d5-5fe991643dac', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75d9b69e-cc37-b66c-25cd-5fe991d6e9f6', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('763ac1da-f74f-c82d-54ff-5fe99191450c', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('7712de66-2e07-28f3-1b6d-5fe9916b7774', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77790c3f-7f61-fd3d-b2e6-5fe99191bb96', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77d998b3-b9ff-f554-d008-5fe9910ee584', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('783dead8-8510-9cfc-5b11-5fe9911896f8', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('791c7430-dd0a-dead-12ae-5fe9912bffc8', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a5d6f7f-7061-3ec3-936d-5fe9915df28a', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ad77086-8a78-9583-7e59-5fe99155decf', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b7fb5f3-4f98-6044-8795-5fe9914b8824', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d7be7ef-75ee-02c2-f96a-5fe991a8c94d', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e5600b6-e7d5-4a9c-e9e3-5fe99149e42e', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81ba7894-1242-1457-958b-5fe991680586', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('827bd757-11ec-4d60-3a97-5fe9911045ba', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82ef0810-6974-a7a6-afe3-5fe991d6784f', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8386a7f4-b64c-5dc0-c424-5fe9912134a4', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83febd5d-ab34-bb56-6a1a-5fe9916aaecf', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('847a3fff-7a47-2a36-402e-5fe991afd6d2', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('851c9a3a-6c60-3977-350b-5fe9910f3e55', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8595ff09-2d8f-035d-aa45-5fe9917d8b9d', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86393271-d228-0a65-1aaa-5fe991639525', 'oauth2tokens_modified_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86b9f069-3f43-9574-2815-5fe991eeaa43', 'oauth2tokens_created_by', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('87320d8c-a0a3-a843-1a3c-5fe991064842', 'oauth2tokens_assigned_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('87cc3980-c4cd-b1a3-2049-5fe991eec155', 'oauth2clients_modified_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88482a1c-795a-6c4f-c045-5fe99121c7a1', 'oauth2clients_created_by', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88bccd52-31ac-4d58-210f-5fe991fd88a4', 'oauth2clients_oauth2tokens', 'OAuth2Clients', 'oauth2clients', 'id', 'OAuth2Tokens', 'oauth2tokens', 'client', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89370966-7e4e-acd8-6f8e-5fe991aa5cc5', 'oauth2clients_assigned_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89e5e17a-adb6-7982-dcc4-5fe991cb61f2', 'surveyresponses_modified_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a5e2460-1514-fcfe-c11f-5fe991a20c85', 'surveyresponses_created_by', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8add0a17-7cc5-e23c-1af4-5fe991a8e8a0', 'surveyresponses_assigned_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b41669d-45c6-6ce1-7cb4-5fe991ecd9dc', 'securitygroups_surveyresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyResponses', 'surveyresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyResponses', 0, 0),
('8bb8b41f-6b4a-526b-d427-5fe991e06b0e', 'surveyresponses_surveyquestionresponses', 'SurveyResponses', 'surveyresponses', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyresponse_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c7092be-8734-b1c4-2bb8-5fe991552b11', 'surveys_modified_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8cea50e0-f355-4d77-5bb8-5fe991cd0b79', 'surveys_created_by', 'Users', 'users', 'id', 'Surveys', 'surveys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('8d631ee3-0c53-2c5a-0073-5fe991e667b1', 'surveys_assigned_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8dffdecd-41a2-875e-5a47-5fe991cb8ea9', 'securitygroups_surveys', 'SecurityGroups', 'securitygroups', 'id', 'Surveys', 'surveys', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Surveys', 0, 0),
('8e7b7dc6-c5ef-c7f5-2242-5fe99158bda8', 'surveys_surveyquestions', 'Surveys', 'surveys', 'id', 'SurveyQuestions', 'surveyquestions', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ef9f193-b969-6dc9-8eb0-5fe991fd7c29', 'surveys_surveyresponses', 'Surveys', 'surveys', 'id', 'SurveyResponses', 'surveyresponses', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f7bbde6-dbf6-dd22-3f2c-5fe991aa8e14', 'surveys_campaigns', 'Surveys', 'surveys', 'id', 'Campaigns', 'campaigns', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8fa20c75-69a3-4c0a-d538-5fe99131768b', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9020717e-2e94-c9e1-6821-5fe991b5fddf', 'surveyquestionresponses_modified_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9096620a-fd0f-c09a-b76b-5fe9917ceff2', 'surveyquestionresponses_created_by', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91083245-6912-b5cf-f574-5fe991522a7b', 'surveyquestionresponses_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9190f336-237a-6557-a69d-5fe991866bad', 'securitygroups_surveyquestionresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionResponses', 0, 0),
('9245d892-1b7d-1bf0-aaf9-5fe9916b1645', 'surveyquestions_modified_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92c4c6a6-fbba-2c19-ff91-5fe991f0f349', 'surveyquestions_created_by', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93518e1b-337f-cbea-0725-5fe9913c2353', 'surveyquestions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93cdd206-0e79-491f-7e25-5fe9913a29b4', 'securitygroups_surveyquestions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestions', 'surveyquestions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestions', 0, 0),
('94572f23-c2f4-5ca3-9c9b-5fe99192c59a', 'surveyquestions_surveyquestionoptions', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'survey_question_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9505a1af-fbac-f52c-5c58-5fe991dbf3a1', 'surveyquestionoptions_modified_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('957ac380-4a53-b332-ff34-5fe9910f40d4', 'surveyquestionoptions_created_by', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95c30b57-cd4b-6ed0-d0a5-5fe99196f92b', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95eb1f6a-d0da-029d-3921-5fe9912467a2', 'surveyquestionoptions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9656c35e-723d-9ce3-2cec-5fe99115883e', 'securitygroups_surveyquestionoptions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionOptions', 0, 0),
('992605e4-187f-2827-5499-5fe991879967', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('99b2c47a-7e43-b9a6-1bae-5fe99175863a', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('9a43ac70-3552-cebe-dadf-5fe991f84382', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('9ad3ceec-733d-8368-f49a-5fe9915d74f2', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('9b5c9369-1500-22af-819c-5fe991dbfff7', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('9bbb0769-bd3f-2add-8a7c-5fe991d3f3e8', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9be82836-81e6-ca6b-bc1f-5fe99144be97', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('9c63ae51-402f-5c03-8c99-5fe9919d338a', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('9cebe95f-f0f0-9ed8-010e-5fe991cf466c', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('9d7348a9-76c8-10c6-9ff4-5fe99183ade4', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('9dfcb8e8-7da3-0c2e-f094-5fe991664286', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('9e9a53ed-28da-4c03-c3b3-5fe991876172', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('9f14aaa3-dbb1-b631-12e3-5fe9917e7f7d', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('9fc3534b-5a05-7403-004c-5fe99141c05a', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('a037e9cf-90b4-5ae8-8dc2-5fe991597b54', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('a0c1f296-fe2a-fb96-a3f6-5fe991c95857', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('a1413e5c-c6f4-e34d-cdf2-5fe991a9aed7', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('a1bcf4ae-1400-8558-8195-5fe991c71ee3', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('a23d4f20-0ce3-b9df-f501-5fe991ee7590', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('a2510a88-163c-0439-bd76-5fe99113a0b1', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('a2bf5e04-daf1-a376-f900-5fe991161e59', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('a343d138-23fa-0245-b584-5fe9915a367f', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('a3c7ae8f-fdd5-cf1e-2f4f-5fe991596253', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('a43df23a-874a-57c3-1955-5fe9912158bd', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('a4b9461e-84e3-3acc-c779-5fe9919cca01', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('a537cb00-e908-c607-72a3-5fe991c6c43a', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('a5b75096-41dc-7e3d-d5c4-5fe991fa41b1', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('a63af8e4-9b70-16ba-5cc6-5fe991805fbe', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('a6ac77d4-9d10-e673-de68-5fe9917c4334', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('a71bc9ef-571a-c923-1919-5fe991e7052a', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('a7925bcf-d7bd-6b84-51ab-5fe9913315c1', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('a8062b8d-fe37-1254-8a88-5fe991281900', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('a87cda40-556f-c2e5-a40e-5fe9916465da', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('a8e87756-6afa-e8c9-098c-5fe9912ccb0f', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('a92005c4-b7eb-4b32-37cd-5fe991b274b2', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('a954a2b4-59a4-dbdb-c72f-5fe9912303bc', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('a9bf7ab8-1a1e-447f-6336-5fe9918f497c', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('abd37847-411e-db72-fd2d-5fe991b9a960', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('ac54669b-c0a7-ad0c-9528-5fe99135a333', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('acd2ee16-2eab-20a0-10fe-5fe9919a9a18', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('ad4d04a8-35a1-aeda-4538-5fe991eac1a8', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('adca1ddf-05a4-2302-0832-5fe9917ff13e', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('ae4a7295-ed0a-28bd-b836-5fe99132bee2', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('aec84f56-6cce-694e-0492-5fe991847d5d', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('af415315-c3a8-1ddd-e1e4-5fe9913911e1', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('af8800e9-889a-4f8f-8703-5fe99176aa60', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('afd17e89-e16d-79e0-ae4e-5fe991fa5de6', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('b057049e-5882-da90-52e2-5fe991790a5c', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('b0d1925b-9def-5e46-5d6c-5fe99138a694', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('b15094a4-752b-7b1c-4c1e-5fe991a9ff5b', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('b1ccdd57-8b53-0b7d-f398-5fe99123b3e7', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('b215a564-dc77-186c-8f59-5fe9914b6cdb', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b24c32d0-f270-5c54-5431-5fe991050889', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('b294f54c-804b-4263-5ba2-5fe9916ef84c', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2c6e667-c0a9-e7d8-2f69-5fe9910957a2', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('b328a8b4-3bbb-bbd7-f947-5fe9919e10ea', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b356cd19-7294-7417-4a3e-5fe991dce119', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('b3af49c6-2c71-a47d-6fda-5fe99107d73d', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('b3da114e-e17f-d332-afa9-5fe991e405f7', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('b43afaa0-ef27-b1f3-f296-5fe99128f93e', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('b460c18b-d8bf-ae4f-4705-5fe9914f5390', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('b4c3336d-b932-c5bd-f4a9-5fe991607beb', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('b4e6bb63-aef8-10e3-5a46-5fe99172da16', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('b5500994-5781-05a2-dea8-5fe991beebf5', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('b5529a0f-3f9a-709c-29bc-5fe99165249e', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('b564f3a0-9f85-d709-a5fe-5fe99154d6dd', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b5d77870-4356-02cd-5fd3-5fe991a00d72', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('b604a045-ba72-f7f5-145c-5fe9910e2f8b', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('b66ad66e-b96f-f197-4b16-5fe99143edaf', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('b6a3fab0-e41b-7198-0fe0-5fe991be6678', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('b6f04f9a-83af-e663-e0e7-5fe991a6c8f4', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('b74f1c83-671c-01a9-570e-5fe991e62c98', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('b76b35d6-b8a9-9fec-6588-5fe991ac7924', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('b7f7d22e-94db-c915-07a5-5fe991a83789', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('b7fc68c8-bb97-aa7c-18ca-5fe9918fae89', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('b884324e-1e6e-191f-4450-5fe99154e0fd', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('b8aabd00-15a4-4448-a0b3-5fe99142d568', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('b8fd19ee-9657-3dbe-c62a-5fe9912e9573', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('b944c6a0-e911-b2d5-ab9b-5fe991d946ed', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('b9835a1d-9ed5-757b-952e-5fe9910c81af', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('ba052070-1470-954d-063f-5fe9919890b0', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('bba30b53-d455-fa65-f752-5fe991400dd0', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bbab841f-d08f-54e9-68f8-5fe9917c7ed0', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('bbb19ac5-8657-821b-3bef-5fe991539a07', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc0af0bf-038f-5995-9513-5fe9910a5c1d', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('bc4641cc-266f-229b-fbf4-5fe991895c38', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc9c9154-4d13-b9aa-1593-5fe991e198ad', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('bcd88424-1225-16a1-ffd1-5fe991a4627f', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd154737-0394-7493-a1ee-5fe991e3b6e1', 'surveyquestionoptions_surveyquestionresponses', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'surveyquestionoptions_surveyquestionresponses', 'surveyq72c7options_ida', 'surveyq10d4sponses_idb', 'many-to-many', NULL, NULL, 0, 0),
('bd807f04-5e72-3504-00ff-5fe991f3dc0d', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('be1929fb-69b0-98ba-468e-5fe991a7e98f', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('beae40ed-ed30-c471-0b57-5fe9915a0c9c', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('bf318e48-8840-ee9f-c66f-5fe99104b4b4', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('bfb55130-17c7-af10-7746-5fe991e96bc8', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('c0424f34-1e1e-5dac-4009-5fe991373fe4', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('c0c573d5-6db3-90c9-a3c0-5fe9914a4a9b', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c24cf935-b2cb-48ac-51fc-5fe99164505a', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c2c21151-e1fa-773c-0956-5fe991d5a1e4', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c30a04ba-0423-158d-876e-5fe991648cca', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('c341da09-a5fb-f8fe-6bc4-5fe991ccd1f3', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c3bd2a49-47ae-c8b8-ee5b-5fe9915adfdc', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('c42a816d-ebae-c0f6-5d4b-5fe991616532', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('c492f9d4-d0a5-9ff0-5340-5fe991b30975', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('c505c42e-879f-683c-8183-5fe991f0b9c6', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('c5709849-c96c-4a35-66da-5fe991239c72', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('c5e4d39f-3013-63a3-34d0-5fe9910ee8dc', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('c6529574-50c9-34d4-043d-5fe991884b50', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c6bc11ba-b815-7f90-6b33-5fe991d2abdb', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c747077f-3525-0dfb-99bb-5fe99155dfa1', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c7bbca38-c1e5-a898-23bf-5fe9914fc402', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('c82af585-ce28-5b5e-ef4a-5fe9911eb1cb', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('c8d1e1cc-5a1b-2205-3387-5fe991030d0b', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9280605-35ee-7663-ead5-5fe991f91055', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9560bed-f6df-f539-8d5e-5fe991fe3f07', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9e31fbc-726e-5ab9-d4bc-5fe9918b9f79', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca592816-4625-2414-f9bf-5fe991fecfbb', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cadcde53-8828-f1cd-943a-5fe991f8c569', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb7f6a0f-9c06-4a07-1e1d-5fe991f2fb50', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('cbf3d275-1dbc-6581-11ae-5fe991726da3', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('cc757b34-0cd7-a943-2840-5fe99131a0f5', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('ccefdb37-d85c-f449-8753-5fe9910671b2', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('cd72cbb9-3412-e4fc-5e58-5fe991a3c5f9', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('cde1cc18-aab5-6a22-01fa-5fe9910c2534', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('ce67609e-532a-9706-9143-5fe99172a7aa', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cee694ed-37f1-6893-b879-5fe991dee47b', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf61eae3-d3f0-2ca2-bbb7-5fe991c6434a', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf8a014c-9812-ef6c-55ff-5fe991267b89', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cfe03008-744b-633f-1818-5fe991be127b', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d176e99e-2a86-ea63-d6a2-5fe9913a1aa5', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('d1e633c7-477c-4277-b6a0-5fe99128a964', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('d26909a7-cb97-bf81-d606-5fe991b6158a', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('d2eb6e0f-5477-5d68-98aa-5fe99175d963', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('d35a7254-9540-ea40-0b6a-5fe991d5bafd', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('d3ce4dd1-6146-17bb-8217-5fe9911437b7', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('d44a3f0c-eaea-d22e-b5d8-5fe991914716', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4bd7fa9-67d8-d9e7-c5e3-5fe9916c688a', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d532b9b4-32a6-7205-5cd2-5fe991159a15', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5fda16d-3198-d627-ab36-5fe991fc505d', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d62501b1-cbc7-aedd-fa57-5fe9917e0f23', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6708da2-c592-96c2-2804-5fe991093876', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6fee7a8-5644-f6c6-c846-5fe9914396fb', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d79a07a1-b162-4047-c8db-5fe99186e5a4', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('d82b1f2b-24d3-9db7-5c67-5fe9917a45f0', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8ac3d0f-7a33-adbf-1e1f-5fe991dc72b8', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8b0076e-bead-84c4-99f0-5fe991060784', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('d92ed024-64b3-a95e-4125-5fe99157d300', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d99c96e8-1a06-89c8-18e0-5fe9912fe2fe', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da1c2fc2-9cb9-2fc5-9a8d-5fe9914cad2d', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da9838da-9067-9e21-30ad-5fe99152920a', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db0af45c-79e6-ac9b-e74c-5fe9918ba642', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db880289-cfde-bd26-f8f8-5fe99126a824', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc111d4f-cf95-4b50-4d84-5fe99142e700', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc888dee-2243-bf6f-b597-5fe9911e203b', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dcf5542a-d88a-30a1-7aff-5fe991716b1d', 'surveyresponses_campaigns', 'Campaigns', 'campaigns', 'id', 'SurveyResponses', 'surveyresponses', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dcfb06c3-5f08-387d-5458-5fe991e99a74', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd9f84d4-ec86-859c-78ed-5fe9919fcafd', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('de23e476-6ae6-5de0-f64f-5fe9917aec25', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('dee8e0b6-f98f-5176-02bd-5fe99164f6f7', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('df7d9513-f2b6-466f-b9f5-5fe99154c271', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e01805db-4aa7-f2e6-7362-5fe991eb35cc', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e09bd3cb-b40a-631e-3af9-5fe991b9eda5', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('e118cd5d-521d-a94a-8477-5fe9912417f9', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('e1a07d06-ecdd-311c-766a-5fe99131e008', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('e211d622-436e-9652-ab51-5fe99161a883', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e292a408-2006-52e6-24f9-5fe99188b095', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e31f00f3-0224-0b9e-06ea-5fe991e53ca3', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e393f744-5dee-636b-0e58-5fe991af0546', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e3c9004c-ce0f-a6ba-5e9a-5fe991428456', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4101ec6-614a-7f56-b47d-5fe991cab9fa', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e4800f5d-8946-a463-ab47-5fe99112b4c1', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('e5f39d31-7bbe-1f0a-c760-5fe991a3fc88', 'securitygroups_emailmarketing', 'SecurityGroups', 'securitygroups', 'id', 'EmailMarketing', 'email_marketing', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailMarketing', 0, 0),
('e65ab265-056c-7539-f4f8-5fe991de2354', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6e073af-dc50-dca5-ce8e-5fe991a2946c', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e7868cc1-68e9-5167-1fec-5fe99131b730', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('e7f9e9a9-76cc-5629-3cd1-5fe9913cb243', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e86cec40-25d1-538c-1f60-5fe99189dc4a', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e906ed12-55ed-1c63-3f6f-5fe99174e8aa', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9e2c9a7-ca0f-0522-f97c-5fe9917a70e1', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ea54159e-6491-6a8a-a09d-5fe991d40ac0', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eac9feb3-8499-8f83-8a10-5fe991bec817', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb3d646a-c558-8095-1e02-5fe99183f065', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('ebb930c1-a31b-e68c-0577-5fe991a22bd1', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('ec28681b-1dc1-f28a-292e-5fe991ce8177', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('ec9fe7c9-82bb-62d0-aa53-5fe9912ecdf1', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed19c938-0d25-c212-2f98-5fe991eee5f1', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed894db0-0c25-2aee-c5a3-5fe9915de148', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('edf4edd1-b1fa-6f43-b638-5fe99158fe99', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee7ad826-616e-9ad6-4862-5fe991e7c097', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('eef58a71-d805-b987-3d59-5fe991451ecb', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('ef5f58a9-4ccd-3f70-49c6-5fe991d8d96f', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('efda3921-0df3-f44a-53ef-5fe991d723ef', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0526040-9846-87dd-1207-5fe99124d157', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0d60743-6816-248f-3f4f-5fe991a10db8', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f148407d-c398-0751-b022-5fe9913871a6', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f34dbe41-3463-404e-ef95-5fe991b4f883', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3b592e1-5489-9f2b-8bd6-5fe991e177d7', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fc4e0dec-416c-132d-56ae-5fe99198658d', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT -1,
  `popup_viewed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('21c8ede9-571c-c252-71fc-5fe991751452', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 07:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('2661bcc2-2c2a-7579-de15-5fe991930882', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 14:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('2758c69f-2c4a-7dc3-2e51-5fe991539902', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 10:00:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('2848ce6d-c4e3-1559-9047-5fe991174470', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 10:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('293af851-76f0-0639-fac7-5fe9917c9bbd', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 14:15:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('2a2c5b1a-b33a-fc64-f499-5fe991ec2c1c', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 10:30:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('2b1d5a7a-82a1-a8af-a967-5fe991934a0f', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 12:00:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('2c12b167-d49f-5cab-4da7-5fe99183535d', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 14:30:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('2d0b5bad-436a-d718-47c8-5fe991968b8c', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 09:45:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('2df809b9-c3eb-6cae-01cc-5fe991bdf80a', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 15:30:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('2ef336c2-136b-d821-a38b-5fe991c7aa29', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 15:00:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('2fe63e61-11a3-9719-8ed2-5fe9912da5c0', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 12:45:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('30d92b87-d6bd-292c-4ae8-5fe991b283d5', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 08:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('31cc879d-74fd-d27d-4e22-5fe99129cac0', 0, '2020-12-28 08:04:25', '2020-12-28 08:04:25', '1', '1', 'Google Calendar Sync', 'function::syncGoogleCalendar', '2015-01-01 10:00:01', NULL, '*/15::*::*::*::*', NULL, NULL, NULL, 'Active', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `spots`
--

CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('4e10977b-e15b-af8e-f483-600056be435f', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:3b0b92a0-958f-e7ef-6cb3-600056e0bd8a:Mai Anh Phan]', '2021-01-14 14:32:42', '2021-01-14 14:32:42', '1', '1', NULL, 0, '23640184-5b7b-121a-0b0b-5ffe511422c8', 'Contacts', '3b0b92a0-958f-e7ef-6cb3-600056e0bd8a', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveyquestionoptions`
--

CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveyquestionoptions_audit`
--

CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveyquestionoptions_surveyquestionresponses`
--

CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveyquestionresponses`
--

CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveyquestionresponses_audit`
--

CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveyquestions_audit`
--

CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveyresponses`
--

CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveyresponses_audit`
--

CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveys`
--

CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `surveys_audit`
--

CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT 0,
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT 0,
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(4, '3d3b326b-d614-8472-a1ed-5ffe51fa7010', '1', 'Users', 'c0db015b-b9f4-c49c-2e6d-5ffe51e76639', 'Minh Toàn Nguyễn', '2021-01-13 01:47:03', 'detailview', '6t8kke13hhha764uenfj1rtv2n', 1, 0),
(5, '78a681f6-98c0-01dd-9524-5ffe510a7c13', '1', 'Users', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'Đình Thành Nguyễn', '2021-01-13 01:49:31', 'detailview', '6t8kke13hhha764uenfj1rtv2n', 1, 0),
(6, '9f7c0ca5-265e-479b-10f0-5ffe51e298e4', '1', 'Users', '4c266e8c-669a-3d0f-62b9-5ffe51eaa714', 'Vũ Linh Nguyễn', '2021-01-13 01:50:36', 'detailview', '6t8kke13hhha764uenfj1rtv2n', 1, 0),
(7, '664a8b87-7102-71c4-50a0-5ffe5213f67a', '1', 'Users', '106046ad-dedf-c90d-2d92-5ffe52280529', 'Thành Nguyễn Văn', '2021-01-13 01:51:57', 'detailview', '6t8kke13hhha764uenfj1rtv2n', 1, 0),
(10, 'b43c6f83-bc7d-d7dc-da44-5ffe52feabde', '1', 'Users', 'c8f40d8d-6c2e-c710-70b3-5ffe521a98a7', 'Linh Nguyễn Văn', '2021-01-13 01:53:09', 'detailview', '6t8kke13hhha764uenfj1rtv2n', 1, 0),
(16, '92e22ebd-9c6f-061e-a1ba-5ffe530ffa87', '1', 'ACLRoles', '29bd53cb-8518-e723-c48d-5ffe53d6834a', 'Giám đốc', '2021-01-13 01:58:17', 'detailview', '6t8kke13hhha764uenfj1rtv2n', 1, 0),
(39, 'aa952cb3-a09a-110f-d203-6000568fda3e', '1', 'Contacts', '3b0b92a0-958f-e7ef-6cb3-600056e0bd8a', 'Cô. Mai Anh Phan', '2021-01-14 14:32:42', 'detailview', 'gbpdd7a9pkhj54bq0h409banhg', 1, 0),
(40, '3459118d-cecb-1a46-cfca-600056c1334c', '1', 'Accounts', 'b2ac5855-2c39-56fc-9a4e-600055be1f38', 'Nguyễn Đình Thật', '2021-01-14 14:33:53', 'detailview', 'gbpdd7a9pkhj54bq0h409banhg', 1, 0),
(43, 'a85e01ee-8be2-a0e6-7302-6004e8970a6e', '1', 'Users', '1', 'Administrator', '2021-01-18 01:44:36', 'editview', 'v41qdeket4hlma49gkimgg6g0r', 1, 0),
(57, 'f0191cca-795f-83ea-b770-6004eebc1f2d', '1', 'ACLRoles', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'Trưởng phòng Marketing', '2021-01-18 02:11:21', 'save', 'rp6e73o897j9sjtimu99rj1cqi', 1, 0),
(61, 'd8361a59-28dd-19c6-d789-6004ef8b17bb', '1', 'ACLRoles', 'f3ab2114-3037-5119-1375-5ffe5300083d', 'Trưởng phòng Sales', '2021-01-18 02:15:56', 'detailview', 'rp6e73o897j9sjtimu99rj1cqi', 1, 0),
(63, 'f64c08de-3fbe-3c7c-e7c5-6004efbb8802', '1', 'ACLRoles', '857d3817-1929-a617-ad2c-5ffe57175f84', 'Nhân viên Sales', '2021-01-18 02:16:22', 'save', 'rp6e73o897j9sjtimu99rj1cqi', 1, 0),
(64, '4e917388-1079-5c85-26f3-6004ef11cded', '1', 'ACLRoles', '857d3817-1929-a617-ad2c-5ffe57175f84', 'Nhân viên Sales', '2021-01-18 02:16:23', 'detailview', 'rp6e73o897j9sjtimu99rj1cqi', 1, 0),
(65, '44d57099-2a8e-3895-2c2d-6004f042805f', '1', 'ACLRoles', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'Nhân viên CSKH', '2021-01-18 02:20:01', 'save', 'rp6e73o897j9sjtimu99rj1cqi', 1, 0),
(66, '76734300-9919-f23f-d661-6004f032ec94', '1', 'ACLRoles', '3e7a63f3-2bfc-ba56-2ed5-6004f0fa4b32', 'Nhân viên CSKH', '2021-01-18 02:20:01', 'detailview', 'rp6e73o897j9sjtimu99rj1cqi', 1, 0),
(67, '1a9e6a3d-e797-b988-c80f-6004f0bd1855', '1', 'ACLRoles', '860158ee-3501-2093-b810-5ffe567b916e', 'Trưởng phòng CSKH', '2021-01-18 02:20:06', 'detailview', 'rp6e73o897j9sjtimu99rj1cqi', 1, 0),
(68, '602521ba-d77b-2b64-1726-6004f0e27793', '1', 'ACLRoles', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'Nhân viên Marketing', '2021-01-18 02:21:45', 'save', 'rp6e73o897j9sjtimu99rj1cqi', 1, 0),
(69, 'b71c4c8a-7f72-4c05-41f4-6004f07ed6c4', '1', 'ACLRoles', '5996d131-9bb4-c4d6-f674-6004f0d8afab', 'Nhân viên Marketing', '2021-01-18 02:21:45', 'detailview', 'rp6e73o897j9sjtimu99rj1cqi', 1, 0),
(70, 'cd99aca4-18ab-9fe2-43a2-6004f0066f92', '1', 'ACLRoles', '9aa28ee2-1061-3640-2107-5ffe57e6db95', 'Trưởng phòng Marketing', '2021-01-18 02:21:48', 'detailview', 'rp6e73o897j9sjtimu99rj1cqi', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('2b414836-7780-781c-0b01-5ffda491f555', 'upload/upgrades/langpack/SuiteCRM core (vi).zip', '47db4b2da2aa4fcdf0bae1741211ab38', 'langpack', 'installed', '7.11.18.01', '', '', '', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czoyMToiVmlldG5hbWVzZSAoVmlldCBOYW0pIjtzOjExOiJkZXNjcmlwdGlvbiI7czo1NzoiVHJhbnNsYXRpb246IHd3dy5jcm93ZGluLmNvbS9wcm9qZWN0L3N1aXRlY3JtdHJhbnNsYXRpb25zIjtzOjQ6InR5cGUiO3M6ODoibGFuZ3BhY2siO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO3M6MzoiWWVzIjtzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjA6e31zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO31zOjY6ImF1dGhvciI7czoyMzoiQ+G7mW5nIMSR4buTbmcgU3VpdGVDUk0iO3M6NzoidmVyc2lvbiI7czoxMDoiNy4xMS4xOC4wMSI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMjAtMTEtMDciO31zOjExOiJpbnN0YWxsZGVmcyI7YTozOntzOjI6ImlkIjtzOjU6InZpX1ZOIjtzOjk6ImltYWdlX2RpciI7czoxNzoiPGJhc2VwYXRoPi9pbWFnZXMiO3M6NDoiY29weSI7YTozOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5jbHVkZSI7czoyOiJ0byI7czo3OiJpbmNsdWRlIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L21vZHVsZXMiO3M6MjoidG8iO3M6NzoibW9kdWxlcyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9pbnN0YWxsIjtzOjI6InRvIjtzOjc6Imluc3RhbGwiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2021-01-12 13:30:14', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT 1,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `external_auth_only` tinyint(1) DEFAULT 0,
  `receive_notifications` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT 0,
  `show_on_employees` tinyint(1) DEFAULT 1,
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`, `factor_auth`, `factor_auth_interface`) VALUES
('1', 'admin', '$2y$10$X29sCeM5QfJ.oxShFPB5Z.OhBOcnAaFxDxzYFm.jpsWpuiCs/CYJW', 0, '2021-01-17 08:23:45', NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2020-12-28 08:04:25', '2021-01-17 08:23:45', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0, 0, NULL),
('106046ad-dedf-c90d-2d92-5ffe52280529', 'ndthanh_nv', '$2y$10$uVpb3A8aiICSTwaZvoZqfeKjHd0pgqLjwcHQTWRNTAKNV64XpJ0IG', 0, '2021-01-13 01:51:56', NULL, 1, 'Thành', 'Nguyễn Văn', 0, 0, 1, '', '2021-01-13 01:51:56', '2021-01-13 01:51:56', '1', '1', 'Nhân viên kinh doanh', '', 'Kinh doanh', '', '0944556677', '', '', '', 'Active', '', '', '', '', '', 0, 0, 1, 'Active', '', '', '23640184-5b7b-121a-0b0b-5ffe511422c8', 0, 0, NULL),
('23640184-5b7b-121a-0b0b-5ffe511422c8', 'ndthanh', '$2y$10$TgfYhHruf9d9merjCiZfFOwB8BQ6c8q2fD.P368RqFzLuXNPccQhy', 0, '2021-01-13 01:49:00', NULL, 1, 'Đình Thành', 'Nguyễn', 0, 0, 1, NULL, '2021-01-13 01:49:31', '2021-01-13 02:17:59', '23640184-5b7b-121a-0b0b-5ffe511422c8', '1', 'Trưởng phòng Kinh doanh', NULL, 'Kinh doanh', NULL, '0911334455', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0, 0, NULL),
('4c266e8c-669a-3d0f-62b9-5ffe51eaa714', 'nvlinh', '$2y$10$Fr9viwnNMBCVnIt.xvBi/uqefEb9qV7EjoaOwsbTZEDqawWGwSFUq', 0, '2021-01-13 01:50:36', NULL, 1, 'Vũ Linh', 'Nguyễn', 0, 0, 1, '', '2021-01-13 01:50:36', '2021-01-13 01:50:36', '1', '1', 'Trưởng phòng  CSKH', '', 'CSKH', '', '0933445566', '', '', '', 'Active', '', '', '', '', '', 0, 0, 1, 'Active', '', '', '', 0, 0, NULL),
('c0db015b-b9f4-c49c-2e6d-5ffe51e76639', 'nmtoan', '$2y$10$gIZ7nkBu8BnZnadO4nnOl.zxWyCbKKRHmpKBnIp9FRAQo1t0B0cnC', 0, '2021-01-13 01:47:02', NULL, 1, 'Minh Toàn', 'Nguyễn', 0, 0, 1, '', '2021-01-13 01:47:02', '2021-01-13 01:47:02', '1', '1', 'Giám đốc', '', 'Ban giám đốc', '', '0911223344', '', '', '', 'Active', '', '', '', '', '', 0, 0, 1, 'Active', '', '', '', 0, 0, NULL),
('c8f40d8d-6c2e-c710-70b3-5ffe521a98a7', 'nvlinh_nv', '$2y$10$SYNaf0irH9PsLaCKyf8GXuPJuoM5ZUjmBF6.AnIpA.eblOZRpzfZq', 0, '2021-01-13 01:52:00', NULL, 1, 'Linh', 'Nguyễn Văn', 0, 0, 1, NULL, '2021-01-13 01:52:47', '2021-01-13 01:53:09', '1', '1', 'Nhân viên CSKH', NULL, 'CSKH', NULL, '0966778899', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '4c266e8c-669a-3d0f-62b9-5ffe51eaa714', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `signature_html` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('11183ab9-176f-1c53-76a0-5fe991bae38d', 'Dashboard', 0, '2020-12-28 08:05:56', '2021-01-18 01:44:40', '1', 'YTowOnt9'),
('188855a2-842d-1150-8e9e-5fe99175232c', 'Emails', 0, '2020-12-28 08:05:56', '2021-01-18 01:44:40', '1', 'YTowOnt9'),
('1de62d8b-60c7-3646-c775-5fe991c848d6', 'global', 0, '2020-12-28 08:04:25', '2021-01-18 02:10:32', '1', 'YTo1MTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjFhZjMxOTdmLWUxYTktOGNmZi1hN2RlLTVmZTk5MThkZmIwNSI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcG9ydCI7czoyOiIyNSI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czozOiJvZmYiO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxMDoiRW1wbG95ZWVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjY6IlVzZXJzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjk6IkFjY291bnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjk6IkFDTFJvbGVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE1OiJTZWN1cml0eUdyb3Vwc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJDb250YWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo2OiJMZWFkc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjt9'),
('1edbe108-d6ca-3071-eaab-5fe991fda0ea', 'GoogleSync', 0, '2020-12-28 08:04:25', '2021-01-18 01:44:40', '1', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('22308808-13d5-0920-b81b-5ffda40c4ff9', 'Employees2_EMPLOYEE', 0, '2021-01-12 13:31:08', '2021-01-12 13:31:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('24fc3333-593c-49d1-acb6-5ffe52f06fdf', 'global', 0, '2021-01-13 01:51:56', '2021-01-13 01:51:56', '106046ad-dedf-c90d-2d92-5ffe52280529', 'YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),
('26c6cb2d-f10c-c833-fd89-5ffe529553bb', 'GoogleSync', 0, '2021-01-13 01:51:56', '2021-01-13 01:51:56', '106046ad-dedf-c90d-2d92-5ffe52280529', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('3869cde8-11f7-d628-17c4-5ffe51817b74', 'global', 0, '2021-01-13 01:49:31', '2021-01-13 02:18:08', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'YTo0Mjp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MjA6InNvcnRfbW9kdWxlc19ieV9uYW1lIjtzOjA6IiI7czoxMzoic3VicGFuZWxfdGFicyI7czowOiIiO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7aToxODAwO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6MzYwMDtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czo4OiJ0aW1lem9uZSI7czoxNjoiQXNpYS9Ib19DaGlfTWluaCI7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjQ6Img6aWEiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxMToiZWRpdG9yX3R5cGUiO3M6NjoibW96YWlrIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6InVzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjEwOiJkYXRlZm9ybWF0IjtzOjU6Im0vZC9ZIjtzOjEwOiJ0aW1lZm9ybWF0IjtzOjQ6Img6aWEiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MTA6IlThuqV0IGPhuqMiO30='),
('3a589b7a-cc5b-b09d-e22d-5ffe513f3a55', 'GoogleSync', 0, '2021-01-13 01:49:31', '2021-01-13 01:49:31', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('5cbefd51-e52f-5254-487e-5ffe514ec685', 'global', 0, '2021-01-13 01:50:36', '2021-01-13 01:50:36', '4c266e8c-669a-3d0f-62b9-5ffe51eaa714', 'YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),
('5e68cabd-d716-77c1-fa67-5ffe51970fb2', 'GoogleSync', 0, '2021-01-13 01:50:36', '2021-01-13 01:50:36', '4c266e8c-669a-3d0f-62b9-5ffe51eaa714', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('61ca5f9e-a8fb-776f-64ac-600056f393ac', 'Leads2_LEAD', 0, '2021-01-14 14:33:18', '2021-01-14 14:33:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('61d940ae-c67f-a455-55bf-6000511ebb90', 'SecurityGroups2_SECURITYGROUP', 0, '2021-01-14 14:13:04', '2021-01-14 14:13:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('64094a8a-b68a-483b-b4b5-5ffe58109074', 'Home2_LEAD_83005591-25d7-219b-c85b-5ffe588d11c6', 0, '2021-01-13 02:17:15', '2021-01-18 01:44:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7cbc7bab-69ad-80c6-7e55-5fe9914b2266', 'Home', 1, '2020-12-28 08:05:29', '2020-12-28 08:29:17', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjgwN2YxZDYyLWU0ZmMtOGEyMi03MjNmLTVmZTk5N2JkMDY3YSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjgwZTYzMTYwLTgwZmYtNmVhOS1iZjNiLTVmZTk5N2FkZDhiNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjgxNGJmYThhLTBlMDEtNDE3ZS1jNTUyLTVmZTk5NzdmNmUwMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjgxOGNiYTYxLWY4YzgtMGEzNS04NmY1LTVmZTk5N2Q4OGVlYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODFlNjU4YTItNzAyMi01NjgyLTNhM2UtNWZlOTk3OTU1ZTk2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODI0NjY5YzQtZjg2My1jYzg0LTZhZTktNWZlOTk3MWU1Yzg1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI4MGU2MzE2MC04MGZmLTZlYTktYmYzYi01ZmU5OTdhZGQ4YjUiO2k6MTtzOjM2OiI4MTRiZmE4YS0wZTAxLTQxN2UtYzU1Mi01ZmU5OTc3ZjZlMDAiO2k6MjtzOjM2OiI4MThjYmE2MS1mOGM4LTBhMzUtODZmNS01ZmU5OTdkODhlZWMiO2k6MztzOjM2OiI4MWU2NThhMi03MDIyLTU2ODItM2EzZS01ZmU5OTc5NTVlOTYiO2k6NDtzOjM2OiI4MjQ2NjljNC1mODYzLWNjODQtNmFlOS01ZmU5OTcxZTVjODUiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjgwN2YxZDYyLWU0ZmMtOGEyMi03MjNmLTVmZTk5N2JkMDY3YSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('7e952180-ca1c-012d-4cfa-5fe991abcec9', 'Home2_CALL', 0, '2020-12-28 08:05:29', '2021-01-18 01:44:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('802bbb15-00b7-8926-5225-5fe9911cce37', 'Home2_MEETING', 0, '2020-12-28 08:05:29', '2021-01-18 01:44:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('81aeb873-eb60-5818-4cee-5ffe526755a3', 'Accounts2_ACCOUNT', 0, '2021-01-13 01:53:16', '2021-01-13 01:53:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('81de9554-d033-022c-1997-5fe9913f10bd', 'Home2_OPPORTUNITY', 0, '2020-12-28 08:05:29', '2021-01-18 01:44:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('83a80d0a-b8f2-0341-f656-5fe991715a14', 'Home2_ACCOUNT', 0, '2020-12-28 08:05:29', '2021-01-18 01:44:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('855b0605-a185-4c00-307d-5fe99197d7c2', 'Home2_LEAD', 0, '2020-12-28 08:05:29', '2021-01-18 01:44:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8676fda3-7bb9-234c-f85a-5ffe5258716b', 'Emails', 0, '2021-01-13 01:53:09', '2021-01-13 01:53:09', 'c8f40d8d-6c2e-c710-70b3-5ffe521a98a7', 'YTowOnt9'),
('86e63850-6406-7fce-aadc-5fe9913ea18a', 'Home2_SUGARFEED', 0, '2020-12-28 08:05:29', '2021-01-18 01:44:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('917f2cbd-6a12-35a6-a3b5-5fe9977df677', 'Home2_LEAD_824669c4-f863-cc84-6ae9-5fe9971e5c85', 0, '2020-12-28 08:29:18', '2020-12-28 08:29:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9a6e3bc8-e6c4-06d8-28d4-5ffe585d3a7e', 'Home', 0, '2021-01-13 02:17:14', '2021-01-18 01:44:40', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjgwOGU5NDg1LTA3YTktZTgwYS1iODUzLTVmZmU1OGYzMDEzNiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjgxMTBjZTA3LTc0ZjktMTUwNy0wOThhLTVmZmU1OGVlMzFmNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjgxYTNhMGEwLTYwYmQtNGM1NC1iM2ExLTVmZmU1ODNjZDBhMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjgyMTA2ZDUzLTc1MGItYmYwNy1iOGM2LTVmZmU1ODBlODllYSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODI5NjAyYTQtNmJmYi1lODc5LTFiMmYtNWZmZTU4ZDMwYzNlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODMwMDU1OTEtMjVkNy0yMTliLWM4NWItNWZmZTU4OGQxMWM2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI4MTEwY2UwNy03NGY5LTE1MDctMDk4YS01ZmZlNThlZTMxZjUiO2k6MTtzOjM2OiI4MWEzYTBhMC02MGJkLTRjNTQtYjNhMS01ZmZlNTgzY2QwYTEiO2k6MjtzOjM2OiI4MjEwNmQ1My03NTBiLWJmMDctYjhjNi01ZmZlNTgwZTg5ZWEiO2k6MztzOjM2OiI4Mjk2MDJhNC02YmZiLWU4NzktMWIyZi01ZmZlNThkMzBjM2UiO2k6NDtzOjM2OiI4MzAwNTU5MS0yNWQ3LTIxOWItYzg1Yi01ZmZlNTg4ZDExYzYiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjgwOGU5NDg1LTA3YTktZTgwYS1iODUzLTVmZmU1OGYzMDEzNiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('9ebf66f3-68bc-b7a1-0c65-5fe991bd7d1e', 'Home2_LEAD_ab5ac00f-7cd9-6e5d-c77e-5fe991aade3a', 0, '2020-12-28 08:05:35', '2020-12-28 08:06:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a0ec6450-4919-56c4-9100-600056a56ae9', 'Contacts2_CONTACT', 0, '2021-01-14 14:32:35', '2021-01-14 14:32:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a420ea41-8dba-1c6a-e569-5ffe588bb2b4', 'Home2_LEAD_a65e2fef-ce4a-cad1-4640-5ffe584b23a4', 0, '2021-01-13 02:18:00', '2021-01-13 02:18:00', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bf82b5b6-73f7-d68d-baa6-5ffda44636de', 'Users2_USER', 0, '2021-01-12 13:31:51', '2021-01-12 13:31:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c797f2ee-b708-61f2-8749-5ffe585bf8c4', 'Home', 0, '2021-01-13 02:17:59', '2021-01-13 02:17:59', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImE2MmNlN2ZlLTQxZWQtYjYxOS05YzU2LTVmZmU1ODYwNWI0ZiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImE2M2ExZmI2LWIxOWEtYzU1OS0xNDQ0LTVmZmU1ODA5YTc2ZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImE2NDM5ZjMwLWExOTEtOWZhZi05NjQwLTVmZmU1ODE2MWIzZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImE2NGE4YjA4LTEzM2EtNzA1ZS1hMDhhLTVmZmU1ODZhZjljZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYTY1NThlOGQtYTQxMS1lZDU3LTM0OTgtNWZmZTU4OGEyY2VjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYTY1ZTJmZWYtY2U0YS1jYWQxLTQ2NDAtNWZmZTU4NGIyM2E0IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJhNjNhMWZiNi1iMTlhLWM1NTktMTQ0NC01ZmZlNTgwOWE3NmYiO2k6MTtzOjM2OiJhNjQzOWYzMC1hMTkxLTlmYWYtOTY0MC01ZmZlNTgxNjFiM2UiO2k6MjtzOjM2OiJhNjRhOGIwOC0xMzNhLTcwNWUtYTA4YS01ZmZlNTg2YWY5Y2UiO2k6MztzOjM2OiJhNjU1OGU4ZC1hNDExLWVkNTctMzQ5OC01ZmZlNTg4YTJjZWMiO2k6NDtzOjM2OiJhNjVlMmZlZi1jZTRhLWNhZDEtNDY0MC01ZmZlNTg0YjIzYTQiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImE2MmNlN2ZlLTQxZWQtYjYxOS05YzU2LTVmZmU1ODYwNWI0ZiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('c939ddce-ddfd-5536-0864-5ffe5848a4c1', 'Home2_CALL', 0, '2021-01-13 02:17:59', '2021-01-13 02:17:59', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cae3f5d5-e81e-b139-cf70-5ffe58232be7', 'Home2_MEETING', 0, '2021-01-13 02:17:59', '2021-01-13 02:17:59', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ccd2b8dc-45fd-93b2-bcfc-5ffe5814c3f7', 'Home2_OPPORTUNITY', 0, '2021-01-13 02:17:59', '2021-01-13 02:17:59', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ce746df2-96a1-e6ab-131a-5ffe5894d050', 'Home2_ACCOUNT', 0, '2021-01-13 02:17:59', '2021-01-13 02:17:59', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d0049d2d-e0b5-aafd-6145-5ffe58e8d302', 'Home2_LEAD', 0, '2021-01-13 02:17:59', '2021-01-13 02:17:59', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d19fc19b-ad64-ef57-f6b5-5ffe588c52ef', 'Home2_SUGARFEED', 0, '2021-01-13 02:17:59', '2021-01-13 02:17:59', '23640184-5b7b-121a-0b0b-5ffe511422c8', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d206e1bc-407c-df2e-3696-5ffe5360cc24', 'ACLRoles2_ACLROLE', 0, '2021-01-13 01:56:23', '2021-01-13 01:56:23', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d73ac047-198c-e490-ce83-5fe992f769e3', 'Home2_LEAD_ed121cb5-cbeb-3ea2-13ac-5fe992d8a992', 0, '2020-12-28 08:07:20', '2020-12-28 08:12:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e31059ac-3870-fcf1-9913-5ffe52c4c4af', 'global', 0, '2021-01-13 01:52:47', '2021-01-13 01:53:09', 'c8f40d8d-6c2e-c710-70b3-5ffe521a98a7', 'YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),
('e397420c-8235-86a7-0f95-5ffe51268456', 'global', 0, '2021-01-13 01:47:02', '2021-01-13 01:47:02', 'c0db015b-b9f4-c49c-2e6d-5ffe51e76639', 'YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),
('e4f64ce2-85c3-efc7-e429-5ffe526053dd', 'GoogleSync', 0, '2021-01-13 01:52:47', '2021-01-13 01:53:09', 'c8f40d8d-6c2e-c710-70b3-5ffe521a98a7', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('e5470ee9-7fe7-f490-79be-5ffe51b219f4', 'GoogleSync', 0, '2021-01-13 01:47:02', '2021-01-13 01:47:02', 'c0db015b-b9f4-c49c-2e6d-5ffe51e76639', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ==');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Chỉ mục cho bảng `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Chỉ mục cho bảng `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Chỉ mục cho bảng `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Chỉ mục cho bảng `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Chỉ mục cho bảng `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Chỉ mục cho bảng `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Chỉ mục cho bảng `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Chỉ mục cho bảng `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Chỉ mục cho bảng `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Chỉ mục cho bảng `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Chỉ mục cho bảng `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Chỉ mục cho bảng `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Chỉ mục cho bảng `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Chỉ mục cho bảng `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Chỉ mục cho bảng `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Chỉ mục cho bảng `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Chỉ mục cho bảng `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Chỉ mục cho bảng `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Chỉ mục cho bảng `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Chỉ mục cho bảng `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Chỉ mục cho bảng `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Chỉ mục cho bảng `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Chỉ mục cho bảng `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Chỉ mục cho bảng `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Chỉ mục cho bảng `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Chỉ mục cho bảng `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Chỉ mục cho bảng `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Chỉ mục cho bảng `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Chỉ mục cho bảng `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Chỉ mục cho bảng `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Chỉ mục cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`),
  ADD KEY `idx_survey_id` (`survey_id`);

--
-- Chỉ mục cho bảng `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Chỉ mục cho bảng `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Chỉ mục cho bảng `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Chỉ mục cho bảng `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Chỉ mục cho bảng `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Chỉ mục cho bảng `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Chỉ mục cho bảng `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Chỉ mục cho bảng `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Chỉ mục cho bảng `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Chỉ mục cho bảng `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Chỉ mục cho bảng `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Chỉ mục cho bảng `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Chỉ mục cho bảng `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Chỉ mục cho bảng `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Chỉ mục cho bảng `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Chỉ mục cho bảng `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Chỉ mục cho bảng `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Chỉ mục cho bảng `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Chỉ mục cho bảng `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Chỉ mục cho bảng `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Chỉ mục cho bảng `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`);

--
-- Chỉ mục cho bảng `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Chỉ mục cho bảng `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Chỉ mục cho bảng `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Chỉ mục cho bảng `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Chỉ mục cho bảng `email_addresses_audit`
--
ALTER TABLE `email_addresses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_addresses_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Chỉ mục cho bảng `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Chỉ mục cho bảng `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Chỉ mục cho bảng `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Chỉ mục cho bảng `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Chỉ mục cho bảng `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Chỉ mục cho bảng `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Chỉ mục cho bảng `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Chỉ mục cho bảng `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Chỉ mục cho bảng `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Chỉ mục cho bảng `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Chỉ mục cho bảng `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Chỉ mục cho bảng `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Chỉ mục cho bảng `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Chỉ mục cho bảng `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Chỉ mục cho bảng `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Chỉ mục cho bảng `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Chỉ mục cho bảng `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Chỉ mục cho bảng `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Chỉ mục cho bảng `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Chỉ mục cho bảng `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Chỉ mục cho bảng `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Chỉ mục cho bảng `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Chỉ mục cho bảng `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Chỉ mục cho bảng `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Chỉ mục cho bảng `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Chỉ mục cho bảng `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Chỉ mục cho bảng `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Chỉ mục cho bảng `oauth2clients`
--
ALTER TABLE `oauth2clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth2tokens`
--
ALTER TABLE `oauth2tokens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Chỉ mục cho bảng `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Chỉ mục cho bảng `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Chỉ mục cho bảng `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Chỉ mục cho bảng `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Chỉ mục cho bảng `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Chỉ mục cho bảng `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Chỉ mục cho bảng `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Chỉ mục cho bảng `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Chỉ mục cho bảng `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Chỉ mục cho bảng `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Chỉ mục cho bảng `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Chỉ mục cho bảng `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Chỉ mục cho bảng `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Chỉ mục cho bảng `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Chỉ mục cho bảng `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Chỉ mục cho bảng `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Chỉ mục cho bảng `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Chỉ mục cho bảng `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Chỉ mục cho bảng `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Chỉ mục cho bảng `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Chỉ mục cho bảng `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Chỉ mục cho bảng `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Chỉ mục cho bảng `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Chỉ mục cho bảng `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Chỉ mục cho bảng `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Chỉ mục cho bảng `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Chỉ mục cho bảng `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Chỉ mục cho bảng `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Chỉ mục cho bảng `surveyquestionoptions`
--
ALTER TABLE `surveyquestionoptions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `surveyquestionoptions_audit`
--
ALTER TABLE `surveyquestionoptions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionoptions_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `surveyquestionoptions_surveyquestionresponses`
--
ALTER TABLE `surveyquestionoptions_surveyquestionresponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`);

--
-- Chỉ mục cho bảng `surveyquestionresponses`
--
ALTER TABLE `surveyquestionresponses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `surveyquestionresponses_audit`
--
ALTER TABLE `surveyquestionresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionresponses_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `surveyquestions_audit`
--
ALTER TABLE `surveyquestions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestions_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `surveyresponses`
--
ALTER TABLE `surveyresponses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `surveyresponses_audit`
--
ALTER TABLE `surveyresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyresponses_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `surveys_audit`
--
ALTER TABLE `surveys_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveys_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Chỉ mục cho bảng `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Chỉ mục cho bảng `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`);

--
-- Chỉ mục cho bảng `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Chỉ mục cho bảng `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Chỉ mục cho bảng `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Chỉ mục cho bảng `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Chỉ mục cho bảng `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
