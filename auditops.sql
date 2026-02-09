-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2026 at 03:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miaudito_auditing`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_activity_logs`
--

CREATE TABLE `admin_activity_logs` (
  `id` varchar(36) NOT NULL,
  `actor_id` varchar(36) NOT NULL,
  `target_user_id` varchar(36) DEFAULT NULL,
  `action_type` longtext NOT NULL,
  `before_state` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`before_state`)),
  `after_state` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`after_state`)),
  `reason` longtext DEFAULT NULL,
  `ip_address` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_activity_logs`
--

INSERT INTO `admin_activity_logs` (`id`, `actor_id`, `target_user_id`, `action_type`, `before_state`, `after_state`, `reason`, `ip_address`, `created_at`) VALUES
('0116957f-3f42-44af-94a9-22699b79a073', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'password_reset', NULL, NULL, NULL, '172.31.68.226', '2025-12-30 12:31:20'),
('0df0c483-bba9-4a11-b790-87b09cd5310d', '80486214-2b01-4950-b6b6-fac9a54c43cc', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'user_created', NULL, '{\"fullName\":\"Aisosa Julius\",\"email\":\"ajjulius3@gmail.com\",\"role\":\"auditor\"}', NULL, '127.0.0.1', '2026-02-02 00:58:14'),
('12957e31-6b77-4f73-abc2-97dc723341bf', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_undefined', '{\"status\":\"removed\"}', '{}', NULL, '127.0.0.1', '2026-02-09 00:03:10'),
('13faeb62-d746-44cd-99ab-833e5eecfc44', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'client_access_removed', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"removed\"}', NULL, '127.0.0.1', '2026-02-09 00:01:49'),
('2273848b-6428-4b09-887a-fd164022ede5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'password_reset', NULL, NULL, NULL, '172.31.68.226', '2025-12-30 12:25:30'),
('22ab7fa4-da20-4e44-8ed7-697674541453', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', 'client_access_assigned', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"assigned\"}', NULL, '127.0.0.1', '2026-02-09 00:03:30'),
('2d8cd928-8d9f-4c8a-b16c-386d7df1c92a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_assigned', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"assigned\"}', NULL, '127.0.0.1', '2026-02-09 00:03:41'),
('2e472dca-023f-43b7-8d4c-cd1cb642bf9a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_removed', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"removed\"}', NULL, '127.0.0.1', '2026-02-08 23:59:33'),
('53cc96ba-a0f5-4b0a-b9f7-f172484771ff', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_assigned', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"assigned\"}', NULL, '127.0.0.1', '2026-02-08 23:50:27'),
('5747bce3-2c75-40fd-8361-4067769623e3', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'user_created', NULL, '{\"role\": \"auditor\", \"email\": \"ighodaro.algadg@gmail.com\", \"fullName\": \"Victory\"}', NULL, '172.31.68.226', '2025-12-30 12:24:37'),
('5c0d3639-d8d2-45ed-9271-650caeaf9857', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'bootstrap_admin_created', NULL, '{\"role\": \"super_admin\", \"email\": \"miemploya@gmail.com\", \"fullName\": \"Ighodaro Nosa Ogiemwanye\"}', NULL, '172.31.65.226', '2025-12-26 07:40:10'),
('5df2ffe2-d57e-4b42-8b17-98dc6d4c1975', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_undefined', '{\"status\":\"removed\"}', '{}', NULL, '127.0.0.1', '2026-02-08 23:50:18'),
('65e79f04-4742-4795-865f-7199ad44cb02', 'd4d4bbe7-b72b-4349-ba5b-ccdcad87dd4e', 'd4d4bbe7-b72b-4349-ba5b-ccdcad87dd4e', 'user_registered', NULL, '{\"role\": \"super_admin\", \"email\": \"test5@example.com\", \"fullName\": \"Test User 5\", \"organizationId\": \"9696e18f-d53b-45cf-adae-616376d18ad2\"}', NULL, '127.0.0.1', '2026-01-01 21:29:56'),
('72c2916c-eac3-46a7-814a-4a9c75123d84', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'password_reset', NULL, NULL, NULL, '172.31.68.226', '2025-12-30 12:27:24'),
('7c0469ca-c3c6-482f-9188-c51714b74070', '08cae6ca-1bda-42e0-8cee-bdb28d071529', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'user_registered', NULL, '{\"role\": \"super_admin\", \"email\": \"algadginternationalltd@gmail.com\", \"fullName\": \"Ighodaro Nosa Ogiemwanye\", \"organizationId\": \"62b4d151-7e74-4012-84fd-d44acedfb8d5\"}', NULL, '35.243.160.31', '2026-01-02 01:33:31'),
('7d865764-4fcd-4f72-892e-83ec647014b4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_undefined', '{\"status\":\"removed\"}', '{}', NULL, '127.0.0.1', '2026-02-09 00:02:18'),
('81d9b154-d604-4b2a-9044-f9b7445c4e2d', '80486214-2b01-4950-b6b6-fac9a54c43cc', '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', 'client_access_assigned', NULL, '{\"clientId\":\"a792ef92-476b-43f7-b754-bb201bc67713\",\"status\":\"assigned\"}', 'Am just testing  the record ', '127.0.0.1', '2026-02-01 22:58:03'),
('8571c631-9808-4efe-8c13-f42042ff1f26', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_removed', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"removed\"}', NULL, '127.0.0.1', '2026-02-08 23:36:18'),
('926dc053-24be-4491-b5f5-38a5f4862445', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'client_access_assigned', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"assigned\"}', NULL, '127.0.0.1', '2026-02-08 23:59:45'),
('967e82c4-6d75-40a5-bcb3-9a61cb9cc52c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_undefined', '{\"status\":\"removed\"}', '{}', NULL, '127.0.0.1', '2026-02-08 23:36:25'),
('99be2fe6-89b3-4aa0-b979-0561536f2197', 'dbd700e5-b8d8-4ccf-8535-e67067f4804a', 'dbd700e5-b8d8-4ccf-8535-e67067f4804a', 'user_registered', NULL, '{\"role\": \"super_admin\", \"email\": \"test2@example.com\", \"fullName\": \"Test User\", \"organizationId\": \"597b39e0-c81b-4465-8b07-0f70ce9cb0a6\"}', NULL, '127.0.0.1', '2026-01-01 19:29:22'),
('a86d4419-3ff4-42d5-b3d0-aa9f92df51ba', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'user_registered', NULL, '{\"role\": \"super_admin\", \"email\": \"ighodaro.efeandassociates@gmail.com\", \"fullName\": \"Ighodaro Nosa Ogiemwanye\", \"organizationId\": \"4144bb32-2cbb-46df-a2e7-ef96f9acebab\"}', NULL, '102.89.83.161', '2026-01-07 10:50:43'),
('b40befca-1f7c-4290-9ccd-aa5231d36b77', 'cee5f6ef-9c3e-4103-a2a0-1c44d621293d', 'cee5f6ef-9c3e-4103-a2a0-1c44d621293d', 'user_registered', NULL, '{\"fullName\":\"Fidelis Jay\",\"email\":\"zuxajay@gmail.com\",\"role\":\"super_admin\",\"organizationId\":\"e9cda146-1933-4a59-82a5-07a9f183928a\"}', NULL, '127.0.0.1', '2026-02-09 03:20:33'),
('b55b5fcc-597f-4734-9580-d18a80e97c52', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'user_registered', NULL, '{\"role\": \"super_admin\", \"email\": \"openclax@gmail.com\", \"fullName\": \"Ighodaro Nosa Ogiemwanye\", \"organizationId\": \"d09a34a2-4e1d-4048-be05-faa10238aae7\"}', NULL, '34.139.219.171', '2026-01-03 03:56:22'),
('c93ec726-f994-4399-8ed3-01f221a79626', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_removed', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"removed\"}', NULL, '127.0.0.1', '2026-02-08 23:36:18'),
('cd825bf3-819f-493f-b42e-710505a666d0', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_assigned', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"assigned\"}', NULL, '127.0.0.1', '2026-02-08 23:36:00'),
('d397a520-a56e-4916-97f5-63b8ca0577a1', '27debef5-907c-463a-97e8-c70cd012dfd7', '27debef5-907c-463a-97e8-c70cd012dfd7', 'user_registered', NULL, '{\"role\": \"super_admin\", \"email\": \"newtest123@gmail.com\", \"fullName\": \"New Test User\", \"organizationId\": \"9f06a02a-93b2-4044-9f37-b174f537e82a\"}', NULL, '127.0.0.1', '2026-01-01 22:10:25'),
('d7afd6a5-71b3-4151-b4f4-cbdd3aab72f5', '49650644-8e70-488e-8597-16cb4254d906', '49650644-8e70-488e-8597-16cb4254d906', 'user_registered', NULL, '{\"role\": \"super_admin\", \"email\": \"test4@example.com\", \"fullName\": \"Test User 4\", \"organizationId\": \"ee24b79f-7e0a-48bc-9642-d2d9603a36ab\"}', NULL, '127.0.0.1', '2026-01-01 21:27:06'),
('e023fe85-3dc0-418d-84de-3802b6f3237e', '80486214-2b01-4950-b6b6-fac9a54c43cc', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'user_registered', NULL, '{\"fullName\":\"Jason Derulo\",\"email\":\"zuxabotics@gmail.com\",\"role\":\"super_admin\",\"organizationId\":\"88cc42f9-116f-409b-8af2-0fb09b0d455d\"}', NULL, '127.0.0.1', '2026-02-01 19:17:32'),
('e4513e75-5dc8-4cfd-a190-2a55c559ef55', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'client_access_undefined', '{\"status\":\"removed\"}', '{}', NULL, '127.0.0.1', '2026-02-09 00:02:47'),
('e79726ee-0cc7-40e3-8898-0fa885d9eb79', '7e0fef88-1873-4099-bc02-ade3309d4817', '7e0fef88-1873-4099-bc02-ade3309d4817', 'user_registered', NULL, '{\"role\": \"super_admin\", \"email\": \"test3@example.com\", \"fullName\": \"Test User 3\", \"organizationId\": \"d18379c6-217e-4d60-8705-a5cae16986b0\"}', NULL, '127.0.0.1', '2026-01-01 21:26:05'),
('fb678651-9d12-4d55-9cfa-416f99ae0b78', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', 'client_access_removed', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"removed\"}', NULL, '127.0.0.1', '2026-02-09 00:03:35'),
('fd4768d2-320c-4af7-adb7-a07e0ceceed9', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'client_access_removed', NULL, '{\"clientId\":\"d40fe583-f75d-4714-b3b5-9d83a9a332a9\",\"status\":\"removed\"}', NULL, '127.0.0.1', '2026-02-09 00:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `department_id` varchar(36) NOT NULL,
  `period` longtext NOT NULL DEFAULT 'daily',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` longtext NOT NULL DEFAULT 'draft',
  `submitted_by` varchar(255) DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_change_log`
--

CREATE TABLE `audit_change_log` (
  `id` varchar(36) NOT NULL,
  `audit_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) NOT NULL,
  `client_id` varchar(36) DEFAULT NULL,
  `department_id` varchar(36) DEFAULT NULL,
  `action_type` longtext NOT NULL,
  `entity_type` longtext NOT NULL,
  `entity_id` varchar(36) DEFAULT NULL,
  `before_state` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`before_state`)),
  `after_state` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`after_state`)),
  `reason` longtext DEFAULT NULL,
  `ip_address` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_contexts`
--

CREATE TABLE `audit_contexts` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `department_id` varchar(36) DEFAULT NULL,
  `period` longtext NOT NULL DEFAULT 'daily',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` longtext NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `last_active_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `action` longtext NOT NULL,
  `entity` longtext NOT NULL,
  `details` longtext DEFAULT NULL,
  `ip_address` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `entity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `entity`, `details`, `ip_address`, `created_at`, `entity_id`) VALUES
('002bbea6-2869-4f29-9037-d2770ea00c1b', NULL, 'Login Failed', 'Session', 'Failed login attempt for: ighodaro.efeamdassociates@gmail.com', '102.89.83.161', '2026-01-07 12:37:24', NULL),
('006bd3de-925b-4031-904c-9bec7b62990f', NULL, 'Login Failed', 'Session', 'Failed login attempt for: openclax@gmail.com', '34.23.182.216', '2026-01-02 07:23:21', NULL),
('008fdf65-03e2-4edd-9f5c-6db68d5bdf6a', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'Email Verified', 'User', 'User verified their email address', '34.74.106.240', '2026-01-02 22:10:45', '08cae6ca-1bda-42e0-8cee-bdb28d071529'),
('00b72464-cfa9-421e-bffd-a27a80c18195', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:54:13', '4d2e8487-24cd-4808-8599-ea3ab578ea82'),
('011519bf-05b7-4008-9559-259d8ef025c7', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '89.105.214.120', '2026-01-12 08:10:33', NULL),
('014aa655-dd0d-4143-878f-5f9dfc0634a4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.107.130', '2025-12-29 05:29:33', '6551fdd3-5b8a-4b35-906b-8ef7d139dbb5'),
('01e33a4c-1507-4b9c-9758-d14e8edb3874', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created waste movement with 1 items, total qty: 15', '102.89.69.19', '2026-01-10 09:47:56', 'e963e8f4-6060-466f-ac7c-6fdb1a5a8dad'),
('01ed5638-f263-43ad-bc6b-6e867bd65709', '0ff460ab-5b96-4b2d-b85f-d04c54faf25f', 'Demo Login', 'Session', 'Demo account login for development preview', '102.89.82.72', '2026-01-05 04:20:46', NULL),
('024f7a76-516b-45b2-8769-1e2692c9a021', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '127.0.0.1', '2026-02-01 20:00:57', '28fd1d19-f73f-42d5-b737-a9cb2dddbf58'),
('02b1578d-c616-4541-a105-07c70137eb32', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.106.130', '2025-12-31 19:26:19', NULL),
('02bd7b91-3b8e-4e4f-9df7-521e8740d3f3', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Edited Stock Count', 'StockCount', 'Stock count updated (ledger recalculated)', '102.89.75.77', '2026-01-08 02:09:32', '40d96b6e-d1c7-414c-92ba-5f128b15bac7'),
('02d8ea78-3b94-438e-93ed-2c75b2b63fa7', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 500 4 posted to Main Store SRD for 2025-12-25', '102.89.82.72', '2026-01-05 03:49:04', '097eadbb-cad3-4ef9-aab3-21ac8d02e143'),
('0303dfa4-3c67-435f-b84b-92f17904cc9e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 04:19:39', NULL),
('0315546c-a659-4947-bb7c-ecace4e34353', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-04 20:01:24', NULL),
('03a9fbe4-2103-4401-96af-ad66e091630c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 300 4 posted to Main Store SRD for 2025-12-29', '172.31.105.66', '2025-12-29 21:54:50', '9742f35a-ea63-4dff-b74a-a27746417dce'),
('040b5c8d-a5b0-45c4-8c9d-bdf0c5490c15', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 10:03:46', NULL),
('0472791e-a7e4-40f1-88cb-1582129af011', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Category', 'Category', 'New category added: F&B', '172.31.114.98', '2025-12-30 08:03:38', '11dcadfe-cee7-42df-8653-716e9036b103'),
('049e8cb0-cb5c-4426-8f57-99f92b74e5bd', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Super Admin Credentials Updated', 'User', 'Super admin email/password updated via bootstrap (dev=false)', '102.91.93.139', '2026-01-05 16:43:47', '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('04ca81d9-0250-4247-94c1-78d78ad68c0c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.68.226', '2025-12-28 03:31:03', NULL),
('04d0eaa2-79dd-41c7-963c-7fcbd9bff562', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '185.177.124.194', '2026-01-04 06:50:15', NULL),
('04e651fa-6e71-4b31-8cad-370325c79273', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Client', 'Client', 'Client deleted', '172.31.83.162', '2025-12-31 23:33:24', 'aef0682a-41f1-440f-b6ba-b3136200f023'),
('04fc0e13-30d0-48cc-b6f5-2556f639c3ce', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 13:00:37', '41136898-7ad4-433d-a280-2d4e2a665506'),
('0524e3e4-67be-4792-acad-2191b73bab09', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.85.134', '2026-01-04 07:28:39', NULL),
('05716d99-bf90-401e-a6bc-00e78d25fe89', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Item', 'Item', 'New item added: Fanta', '102.89.83.161', '2026-01-07 14:55:34', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c'),
('05a50b4c-34c1-4a53-808f-732a33cfa994', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 18:09:44', 'd14aeef2-d941-46a0-83aa-60323131bcaf'),
('05ce3e13-383b-4732-84d4-67f93cdc4b4b', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.82.72', '2026-01-05 03:31:16', NULL),
('06077645-3f40-4a33-8357-541f86668c0d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 07:49:19', NULL),
('062d9556-dc2a-492f-a35a-3acaf8213b3d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Exception', 'EXC-20251231-001', 'sss', '172.31.83.162', '2025-12-31 23:59:06', 'a025afb3-3586-444a-a4fa-cb6e1dc22427'),
('06c4cfdb-2cd1-4365-80a6-e4d709b4ed0d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 04:31:54', NULL),
('06c887e2-74d4-4ff8-908a-694d93caa166', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Client', 'Openclax Limited', 'New client added: Openclax Limited', '172.31.65.226', '2025-12-26 10:08:03', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c'),
('07503d32-56c2-4af4-909b-fbf52f58a34c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.89.98', '2025-12-27 00:15:09', NULL),
('0779286a-ad05-4bb8-8965-9d44cc978388', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 300 4 posted to Main Store SRD for 2025-12-25', '172.31.68.226', '2025-12-30 13:54:35', '9742f35a-ea63-4dff-b74a-a27746417dce'),
('07a25b23-c226-49b7-be2e-67ee8f257615', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.66.226', '2025-12-30 21:15:28', NULL),
('07baf632-bf13-4d91-a672-562c380a6693', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'Password Changed', 'User', 'User changed their password', '127.0.0.1', '2026-02-02 01:11:18', '899f389d-bfb9-4dca-9342-ecea47bee9ee'),
('07df9f2c-2ef7-4c82-8a58-5b2723056fa8', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Edited Stock Count', 'StockCount', 'Stock count updated (ledger recalculated)', '146.70.246.168', '2026-01-08 20:29:12', '17394d2b-3d23-4918-a012-d85b0d0a6251'),
('08014622-a079-424b-96c1-dc714c0b4cc3', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '35.227.15.160', '2026-01-03 21:36:39', NULL),
('08492c1b-24d2-425c-83dd-4bc472bb321b', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Client', 'DASCO ENTERPRISE LTD', 'New client added: DASCO ENTERPRISE LTD', '34.74.106.240', '2026-01-03 08:25:06', '22de3178-67d0-4b2b-b8ac-d275ae848796'),
('092b449a-93bf-4ae6-a4a9-602097a5ce78', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created GRN', 'GoodsReceivedNote', 'Invoice: WSG234, Amount: 100000.00', '102.89.83.161', '2026-01-07 14:52:46', 'e61a5994-d67f-4191-901a-9a00749f0527'),
('09400632-cc6b-485e-8484-53dd885a21da', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.105.66', '2025-12-29 21:39:02', NULL),
('096d5199-fac1-4542-bc5a-ec1eda1ea854', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Cirok', '172.31.68.226', '2025-12-28 05:45:03', '34df2f81-dc5e-4e72-983a-2fe1465305ce'),
('097b80d8-bf88-4649-a0da-0293a403e9aa', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-02 01:10:37', NULL),
('09ee164d-4f78-40d9-8ddf-9bceedb49064', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-08 22:24:12', NULL),
('0b13cb14-0655-4f45-b49d-ff3f51393537', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '172.31.70.130', '2026-01-01 22:36:58', NULL),
('0b3b5447-cea0-423d-94fd-63ba1efccc92', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 5', '102.89.76.10', '2026-01-09 09:52:24', '44d11d1b-93fd-4f7a-9902-0dda499662a7'),
('0b40cfee-e1fb-419d-ab6b-59a91fc21c8d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.103.162', '2025-12-31 06:41:37', NULL),
('0b65d0f1-50ed-4201-bdcf-ad581321501b', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Orange Juice', '102.89.82.72', '2026-01-05 03:46:05', '097eadbb-cad3-4ef9-aab3-21ac8d02e143'),
('0b6b1574-1ebe-48a1-908c-1f0ae4c1a5cb', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '34.74.106.240', '2026-01-03 21:36:58', NULL),
('0bcbc422-2178-4c0f-b7e9-67b2d4d15f47', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.90.2', '2025-12-27 08:47:28', 'b6b8a01f-ae2c-4227-a36a-e51c963d9ff3'),
('0bde6d9d-98b0-43d6-95fb-d5df5e7e1952', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Client', 'wisdom publishing', 'New client added: wisdom publishing', '172.31.114.98', '2025-12-30 09:48:30', 'aef0682a-41f1-440f-b6ba-b3136200f023'),
('0c2b611b-ab49-4e2d-9622-3a6bb5c308cc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 2', '172.31.103.162', '2025-12-31 05:24:49', 'd561c2f7-9264-429f-9d30-802471a5392e'),
('0c64f614-d793-4818-b95d-bd19b274f3ce', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.105.66', '2025-12-29 21:38:25', NULL),
('0c6adc6b-ada7-4e70-9271-7956d4061960', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Reversed Stock Movement', 'StockMovement', 'Reversed transfer movement. Reversal ID: 688c2a02-b1d0-488f-9a34-8baa08e7a4ad. Reason: k', '102.89.83.161', '2026-01-07 13:16:53', 'fd0abc9f-583b-4c19-8953-63f3dc715523'),
('0c9bfaf0-dabd-4337-91cb-68a87bbbcce7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.107.130', '2025-12-29 02:25:27', NULL),
('0caa3547-49a7-4a24-a704-266106c52720', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 02:35:02', NULL),
('0ce24c70-e4d6-4ad3-8cca-3dcd875df947', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 1b2a1e08-a1e9-4a4d-addf-b5bed4e3bd1c disabled for outlet 30e7c959-e001-45df-8a8b-c160c354fcca', '172.31.89.98', '2025-12-27 03:23:18', '30e7c959-e001-45df-8a8b-c160c354fcca'),
('0cef9459-4608-4ec9-86d4-e40cbcd3214e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.85.134', '2026-01-04 07:22:21', NULL),
('0cf9da81-69df-45d6-8d8b-cba7d10f493a', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.85.134', '2026-01-04 07:06:10', NULL),
('0d025a57-f002-47c6-91b8-58ddf093d66e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.107.130', '2025-12-29 05:58:18', 'c0bac2e0-0db1-4402-8c62-7081a649ee12'),
('0d869e7a-c975-425f-8715-3dcc4db4f010', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-09 00:06:56', NULL),
('0d93ef90-55bb-4590-840f-bc4b19f90d84', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login Failed', 'Session', 'Invalid password attempt (4/5)', '102.89.76.161', '2026-01-09 19:16:02', NULL),
('0dbed823-695b-4c9c-b17e-d73472bcbe06', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Deleted Client', 'Client', 'Client deleted: YOURS HOSPITALITY-JP', '102.89.82.72', '2026-01-05 03:28:41', '5bcdde2d-535f-4d52-b0c0-d4cd945ab107'),
('0e017884-e541-4304-9e6a-4438ca511dbc', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.76.10', '2026-01-09 10:20:59', NULL),
('0e23247b-46be-4116-885c-0b030998b5a2', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 10', '102.89.69.19', '2026-01-10 09:48:29', '4f4bab0b-b839-4812-a940-4804f3671baa'),
('0e3aa934-e492-4e31-9454-6626c1394a5e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-10 00:50:29', NULL),
('0ee4cb64-a426-41c6-a652-299a51b9316a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.114.98', '2025-12-30 04:45:22', '26e6b1d1-90c8-45df-8934-a3db428f8c66'),
('0f25aca9-cb22-4321-a572-fd56ff5ab836', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 04:09:30', NULL),
('0f705d4e-c0ec-4ce6-9cf1-f7f0230174f7', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Item', 'Item', 'New item added: Fanta', '102.89.83.161', '2026-01-07 11:03:37', '81e95ddd-7cab-4b5a-9d73-df0392dab3f1'),
('0fa24ccb-c122-45a1-aaa5-bb76dd0fab26', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.68.226', '2025-12-28 02:58:05', NULL),
('0fce9b1f-6f81-4219-b973-102164fe1632', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Exception', 'EXC-20251231-002', 'how', '172.31.83.162', '2025-12-31 23:59:57', '43d82652-79c5-41b9-8046-0c977a16fb5f'),
('0fe24bc1-af93-4ff7-8764-d0d82eea6673', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Category', 'Category', 'New category added: FOOD', '102.89.82.72', '2026-01-05 03:30:25', 'c936f77b-91cc-432c-9d15-7b7cccd3b83b'),
('0ffadc71-7c7c-428c-8942-f8c8f6676f31', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.69.19', '2026-01-10 04:39:31', NULL),
('100759fe-fbfe-42d5-9d28-0d878873f2de', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.83.161', '2026-01-07 11:01:55', NULL),
('10b15ab6-4dfe-4955-90c7-a3d280a189dc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.103.162', '2025-12-31 08:17:59', NULL),
('1153e80c-7ff9-4509-b71f-7a359944ff7b', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 12:14:31', NULL),
('115a88b9-4723-4cf6-b7c2-7d07d268e00f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.66.226', '2025-12-30 21:19:25', '29a6e591-6087-404a-9e4e-b34151feb014'),
('11b8830b-9b66-475f-9dcb-06628f876d7c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 78721483-0a9f-4e27-9e4f-30fc9f848485, 1 item(s)', '172.31.77.34', '2025-12-28 16:20:51', 'eec8334e-84b3-4729-bebe-6fa697510c93'),
('11c319fc-9b4f-4690-bb59-00c35f99930b', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Supplier', 'Supplier', 'New supplier added: ZOE LOGISTICS', '102.89.83.161', '2026-01-07 11:35:43', 'c30c0615-39d3-4c39-bdac-c14052cd131a'),
('11c95b43-5174-4be4-85e2-90f68f5741e1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Movement', 'StockMovement', 'Created adjustment movement with 1 items, total qty: 1', '172.31.66.226', '2025-12-30 19:47:58', '65a1d143-e58f-42cc-b9fa-f06e4e91ad2c'),
('1277c738-0e9f-4612-9567-4951c0926b16', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '102.89.83.161', '2026-01-07 06:14:40', NULL),
('1280df39-c72c-4d9f-bea8-a5cf49d38fad', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Updated Exception', 'EXC-20251231-001', 'Exception status: investigating, outcome: pending', '172.31.83.162', '2025-12-31 23:59:25', 'a025afb3-3586-444a-a4fa-cb6e1dc22427'),
('1293f189-f0ff-47d0-983e-cc59a181ca69', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 1', '172.31.66.226', '2025-12-30 19:49:32', '051832b3-c353-4820-b471-d9f6dc237099'),
('12ca658a-43aa-4bfc-ba4a-7319833c4323', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-04 17:17:24', NULL),
('12db4c02-7c7c-4a4a-8604-f213e9580d85', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.84', '2026-01-11 20:25:41', NULL),
('133e13cb-58fd-495e-b738-3f1f810de72b', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 20', '102.89.76.10', '2026-01-09 10:47:03', '725967e6-83de-41f9-83a1-b297884b49f8'),
('134e7b36-0ba0-4c7b-9510-db2cc8c6d1da', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-01-25 23:51:33', NULL),
('13cf5f53-5935-478d-aef2-9f66a9eb64ba', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.85.63', '2026-01-04 11:15:55', NULL),
('13fa9191-b249-43a0-b0a3-006c74a4c6ea', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Category', 'Category', 'New category added: FRESH FRUIT', '102.89.85.134', '2026-01-04 07:30:51', '413dbe0c-c852-4c73-ad07-d38ff8cb935a'),
('1415f2f4-af9e-4839-a7b4-6d01b952cf95', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'Login Failed', 'Session', 'Invalid password attempt (3/5)', '35.231.177.91', '2026-01-02 22:14:04', NULL),
('1438f065-a248-4d74-a3cc-c94f2d6649c6', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '89.105.214.120', '2026-01-12 08:35:42', NULL),
('14594e1a-260c-4b99-a7c3-71597ea7cade', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Orange Juice', '172.31.68.226', '2025-12-30 13:57:16', '29070060-0461-41bc-afaa-d58281cef2bb'),
('1469556e-9668-4713-9945-d36040bdd34c', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.75.77', '2026-01-08 01:50:20', NULL),
('14869f49-e308-418e-8c96-17be7ca31bc3', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '102.89.76.161', '2026-01-09 19:30:27', NULL),
('149ff6cf-d9be-4f07-b6ed-9c64ec7d3271', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 09:54:13', NULL),
('14c05ff0-5342-47dd-9de6-8550f5a74b2b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Stock Count', 'StockCount', 'Stock count deleted and SRD ledger reversed', '172.31.66.226', '2025-12-30 21:27:53', '203b2e68-37fb-44d7-b53a-22c3ee3b3335'),
('150afd62-7ff6-4265-9634-628996d6753f', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-04 18:30:51', NULL),
('15433f1f-1a63-4495-adf6-5a0b1178bdf6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department dbcba58f-0564-4996-8405-a35573f74989', '172.31.105.66', '2025-12-29 23:53:44', '40bfd930-ac9d-4a99-836c-ff33d898c608'),
('1576b1fc-482b-48b6-842c-6a9370fdc13d', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '35.227.47.41', '2026-01-03 22:18:51', NULL),
('15f9b03f-8ef6-4c8d-966d-fa3e2652c1a1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created GRN', 'GoodsReceivedNote', 'Invoice: wws32, Amount: 20000.00', '172.31.76.194', '2025-12-29 13:38:18', '57b71438-9d0c-413c-b645-977f30bb39a4'),
('15fa9a7a-0a63-4f95-8133-c0ad3cd827f8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-08 23:59:15', NULL),
('1676346a-b2fe-49a7-9073-6be168bd2fbe', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 11:12:15', NULL),
('16839cb0-0677-4391-9e82-4a4472dfc51d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 05:51:06', 'd414bd2a-5b07-41db-a243-c844bb1b8b08'),
('168d0aa2-16d4-4ee1-8673-b834da3e4623', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.68.226', '2025-12-30 14:52:51', '581076af-af41-47cf-b925-0dd2cf497632'),
('16f005d4-3188-4a02-99db-16b66837f699', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 3000 12 posted to Main Store SRD for 2025-12-13', '172.31.103.162', '2025-12-31 06:16:19', 'd3a42547-ff64-4772-923c-4a8a112f6be9'),
('16f21e26-f0bc-4b02-9525-8985f2e1db3c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 08:44:47', NULL),
('172a02a0-7014-4fd0-b3b4-8f99c49aa363', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.85.134', '2026-01-04 07:06:13', NULL),
('1754917c-ae0d-4006-8de2-51ce926b5c7f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Updated GRN', 'GoodsReceivedNote', 'Invoice: WSG234', '172.31.114.98', '2025-12-30 09:06:20', '72794fb2-15fb-4fd8-a330-813f000adee4'),
('177ed742-0e93-4779-aaf2-7633b6755811', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.83.162', '2025-12-31 23:32:22', NULL),
('17b6e950-c640-4921-adc2-8f0a161da6c5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 06:02:57', 'fbc19936-de49-42fe-b977-b00515de60a8'),
('17d4a95f-e8fc-490c-afdb-fc511c149222', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 20', '102.89.83.161', '2026-01-07 12:56:24', 'fb6c8e6e-f90d-4bf2-92c6-63c7945be3bb'),
('17de5917-ce01-4952-8e2d-58341ae85220', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.114.98', '2025-12-30 04:44:02', '9cdcb5f1-0b6b-484c-9817-5b64fb7812a4'),
('1839f17d-bcb9-4bcd-ab5e-9195b4fa655f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from fd666e2e-2de8-4b34-8687-9d45c75a85c3 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 06:02:53', '40ba1cd5-aeee-4456-9ee5-eae07651b255'),
('1842d6ad-b6eb-4413-a233-cf0ae556a4c3', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.76.194', '2025-12-29 13:01:36', 'd2c1fd7d-33b4-4c9c-904d-d1c566c20885'),
('18f8ecf4-e18c-4116-bcce-44dd78afede2', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 14:34:50', NULL),
('1918cd67-6c1b-4241-89ea-8a60cd0fdd9c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.91.93.139', '2026-01-05 17:13:36', NULL),
('198a82c3-41dd-41d2-96f2-c38c3024892f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Fanta', '172.31.68.226', '2025-12-30 12:16:50', '2f64a260-d98d-40cc-bd44-346f94737415'),
('19aa901d-3e27-44f3-b10d-49c13f0b391e', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'Password Reset', 'User', 'Password reset via email link', '34.75.119.55', '2026-01-02 20:44:27', '08cae6ca-1bda-42e0-8cee-bdb28d071529'),
('1a72885e-7e86-4ee3-aa6a-7a476fb71d91', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: fanta', '172.31.88.194', '2025-12-28 09:31:10', 'a6ca6bae-d6ad-488d-9a85-8f9c3eabe7dd'),
('1aec8925-97e3-4100-8f02-815e4587e627', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:54:17', '452e403d-ba81-4c79-934a-aa2f4102fc04'),
('1afc6dab-6e37-4363-8901-c7aaed116b89', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 00:09:06', NULL),
('1b2892d1-9580-4a9e-aa1e-fd9727ac5149', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-08 23:36:33', NULL),
('1ba26934-ceec-41b0-b391-f953ddabcef0', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.68.226', '2025-12-30 14:05:06', NULL),
('1c13755f-af5d-4f20-8ecc-2b67106bb966', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.72', '2026-01-05 04:20:18', NULL),
('1c594ef3-528f-43d0-b00f-56831d5b5e7e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 13:02:39', '1179cc57-fad0-4be5-95d7-1aee500f3efd'),
('1c6c64e5-52a8-41f2-bc68-4e2fda143b08', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.76.194', '2025-12-29 14:42:14', '7fbbd59b-59e6-4984-8a7a-937a2cbbb191'),
('1c6ecd1e-6176-4794-b926-f1116bd2d0f8', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 1', '102.91.93.139', '2026-01-05 17:15:57', '70891294-eb84-417f-ac12-e0f8f17ddd93'),
('1cae5ea7-fb13-490e-976b-0f5e41187e94', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 06:12:24', NULL),
('1cd1c0bd-67b7-465d-a168-5a70fb5f84c6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f disabled for outlet c3091f91-dcec-4cee-b3ba-ab7c04ff5657', '172.31.89.98', '2025-12-27 01:43:34', 'c3091f91-dcec-4cee-b3ba-ab7c04ff5657'),
('1cf9d2ae-f328-44c1-91b8-7ad037854ec4', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 07:43:57', NULL),
('1da010f2-b005-4140-a7f1-6be516bd0944', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '102.89.83.161', '2026-01-07 06:14:51', NULL),
('1e24585c-1dfa-4b36-a570-70da3b22b371', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.114.98', '2025-12-30 07:48:48', NULL),
('1e2858db-f5ea-42c1-939f-29a1df2ab1ab', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Supplier', 'Supplier', 'New supplier added: Edmond Global resources Ltd', '102.89.83.161', '2026-01-07 14:52:06', '2de7ad8b-1394-4cc1-93a4-947f38c88c77'),
('1f04ef46-3c62-41e9-b3d6-2581836ecfe8', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Chicken Fries', '102.89.85.63', '2026-01-04 12:22:31', 'dc910b55-20de-499f-9c3a-7432d308293d'),
('1f063e96-7d0c-4bd6-be27-25802ea76192', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.84', '2026-01-11 13:55:49', NULL),
('1f30e144-4ca1-4bb9-8162-60363a006ad7', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 300 4 posted to Main Store SRD for 2026-01-01', '102.91.93.139', '2026-01-05 15:46:41', '595eed6e-8595-413c-a0e0-f78b3e8b0279'),
('2036be8a-d487-4cae-a6cf-6ffbb73d8626', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '102.89.83.161', '2026-01-07 14:34:41', NULL),
('209da595-196f-40ed-999c-00a212b695c9', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.75.162', '2025-12-27 18:15:55', NULL),
('20d9f194-8b3b-4068-aac9-fa0f5b565987', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Updated GRN', 'GoodsReceivedNote', 'Invoice: WSG234', '172.31.105.66', '2025-12-29 22:48:15', '72794fb2-15fb-4fd8-a330-813f000adee4'),
('20f9f230-8947-41f5-8993-6f65b9f65a66', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Exception', 'EXC-20251230-002', '1 MISSING FANTA BOTTLE', '172.31.68.226', '2025-12-30 13:26:15', 'fb643f20-a2ee-414a-9e9f-a486b147b1f2'),
('2131a13c-9729-489a-a19d-4125a90a7058', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Category', 'Category', 'New category added: COCKTAILS', '172.31.98.194', '2025-12-29 18:56:35', 'dd190707-edc4-45b9-b48a-dc9cf2e9bc68'),
('215f979f-bfd9-417b-a38c-93ec107b2b49', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 00:00:40', NULL),
('21618a38-8d0e-42c5-87bc-694d8c98d53f', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'create', 'payment_declaration', 'Created payment declaration for Sun Feb 01 2026 01:00:00 GMT+0100 (West Africa Standard Time)', '127.0.0.1', '2026-02-01 20:02:04', '38153538-4982-482d-9de3-b026f5994b63'),
('217bc064-d05b-4082-8a17-0dbf7a1d1067', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department f0dd0739-ff38-4819-b311-c6c9992bd79d', '172.31.83.162', '2026-01-01 00:03:11', 'e2678f90-1fa2-4241-bf19-3834588815c3'),
('21ba0fa8-ba23-42a3-a2d6-3a96207e29ea', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '127.0.0.1', '2026-01-01 22:01:57', NULL),
('21dccbac-4ef3-48dd-ae0d-baeab8f366dd', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created waste movement with 1 items, total qty: 2', '102.89.69.19', '2026-01-10 09:52:36', 'f0bd16b1-d66c-4501-90ae-904c3f5eb17c'),
('21f9d86c-a034-493b-8617-4f3f4e4ab81e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:54:01', '9131ca60-2d11-4d1b-bd8e-6be75a6a51c0'),
('22943d88-3417-44e2-85a8-4789a78e3fa8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '172.31.76.194', '2025-12-29 13:06:26', NULL),
('22bcfc03-5de3-42cb-ad7b-bafd2f9162ce', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Pinipple Juice', '102.89.85.63', '2026-01-04 11:16:39', 'c9eb20d9-d8a3-4062-8d22-3421499b0b33'),
('22c9e5f7-977f-478b-9fcd-3da942d0be27', NULL, 'Login Failed', 'Session', 'Failed login attempt for: ighodaro.efeamdassociates@gmail.com', '102.89.83.161', '2026-01-07 12:37:24', NULL),
('237e571d-6356-466e-93e0-1d7f5e3cee2d', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 06:28:35', NULL),
('23ef4b9f-5406-45a9-8ee9-d2cdcf85140c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '34.74.106.240', '2026-01-03 22:22:20', NULL),
('23f57957-061d-44f2-9df2-59fe942e8702', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-01-25 23:12:49', NULL),
('242446f9-c09f-49da-9c03-2f15484ef2a9', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '172.31.68.226', '2025-12-30 12:26:37', NULL),
('24897ff2-441c-405f-944e-c949029c5c24', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '172.31.114.98', '2025-12-30 07:49:00', NULL),
('25952cbf-8b01-4e71-97a9-d493fc6c2be6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 17:57:18', NULL),
('25d71f0e-ddb8-43f6-a808-48fc46938577', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '172.31.68.226', '2025-12-30 12:26:25', NULL),
('25dd8be1-95df-4473-9456-597a40e23e46', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 19:16:18', NULL),
('2621341c-30ed-4ce7-aeab-b2517504756e', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Category', 'Category', 'New category added: WHISKY', '102.89.83.161', '2026-01-07 11:01:05', '710e6847-d3f6-4ed8-b4ea-06793a24dbcc'),
('26ae38b0-093e-41a6-a41d-7baaefb8d395', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 100', '102.89.83.161', '2026-01-07 13:05:15', 'fdb4167e-cd2d-4907-8ff3-f507719b1c33'),
('270367e4-3f51-4619-8481-e529fd969b60', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Outlet Department', 'Department', 'New outlet department added: o.Store', '172.31.89.98', '2025-12-27 01:58:07', '662ab128-3231-42ce-8d59-9445495abf49'),
('27565cd9-9c62-4a2c-886c-3d8673cc37c1', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department 7828c913-796e-4693-9ed7-f6a19a11ec0d', '127.0.0.1', '2026-02-01 20:08:12', '07c03dda-2dbe-4184-9a97-9265262e98d9'),
('27719956-a9f4-48d9-b13a-2d90f01d3b56', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to fd666e2e-2de8-4b34-8687-9d45c75a85c3, 1 item(s)', '172.31.98.194', '2025-12-29 19:03:15', 'a6dad280-a186-4cff-969e-4c9c7a19e3b8'),
('280cca94-cdc3-4f33-b520-af246759a7d4', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Deleted Category', 'Category', 'Category soft-deleted: BAR', '102.89.83.161', '2026-01-07 14:37:24', '85d266e6-3ef8-4434-b5f1-b234ecd1eace'),
('2844094c-5926-480e-bd4b-18530273feb5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.68.226', '2025-12-30 13:56:39', '9742f35a-ea63-4dff-b74a-a27746417dce'),
('28724133-43cd-4f48-9d04-74a30a7ac064', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 8ef0f287-556b-4228-b49e-db98218b8295 disabled for outlet ff377523-7022-4bf4-969c-3781c0cf5000', '172.31.89.98', '2025-12-27 01:39:25', 'ff377523-7022-4bf4-969c-3781c0cf5000'),
('28a88306-d550-4b29-ac7e-f3524b2e9778', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.66.226', '2025-12-30 18:14:49', NULL),
('28bd59b5-5200-45fe-9744-41864b786353', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-03 23:43:37', NULL),
('2904fe9b-beae-49d1-b793-c1d20e843db8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.77.34', '2025-12-28 13:53:41', '1548a178-3eab-4f71-9ea1-d1e2ec1f9f46'),
('29466ed2-b1da-4ab9-adc9-5e118ac3dace', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Client Department', 'Department', 'New client-level department added: FRONT DESK', '172.31.89.98', '2025-12-27 03:22:33', '1b2a1e08-a1e9-4a4d-addf-b5bed4e3bd1c'),
('295ed179-d7bd-4756-9f32-68a23c34b71b', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Updated Purchase Event', 'PurchaseItemEvent', 'Updated fields: qty, unitCostAtPurchase, totalCost, supplierName, invoiceNo, notes', '102.89.75.77', '2026-01-08 01:51:47', 'ef7830b1-0fa7-4fa1-b3f6-4d76fc01679d'),
('297b8b48-2f5f-4d83-87ad-0f186b54052a', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 500 4 posted to Main Store SRD for 2025-12-30', '102.89.83.161', '2026-01-04 16:58:58', '9690d9bd-79a9-4a79-af02-c48450c3b162'),
('297be727-4fe5-4efb-9a3c-79a62852e765', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.10', '2026-01-09 09:35:03', NULL),
('2a1b324a-0a83-45bf-ad55-0a022d9f9292', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-01 22:38:00', NULL),
('2a1d7952-cc65-4f04-864d-df92c71345f4', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 01:20:36', NULL),
('2a3652df-f2e0-401d-9b58-9ac4378715e1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department c844b11d-6c6c-41ba-a0da-c21646eea96b', '127.0.0.1', '2026-01-26 00:01:36', '8c091a60-86fa-4d78-869a-31f08dc5124d'),
('2b0d3c30-d745-4550-a964-6793e69afc12', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created GRN', 'GoodsReceivedNote', 'Invoice: WSG234, Amount: 100000.00', '102.89.83.161', '2026-01-07 11:36:36', '2e7e0539-40d2-4986-aaeb-6d2f2e60a93f'),
('2b4c1b1d-ddc4-4c6d-b87e-4747ddef3d70', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 12:42:34', '7a18bbeb-2b08-441d-888c-3d3adb02ec82'),
('2b576561-8409-4064-90fd-3ecc55b9613e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 pc posted to Main Store SRD for 2025-12-01', '172.31.103.162', '2025-12-31 05:58:38', '3315d410-2302-4ff8-8a38-6af5f1bee4ee'),
('2b7bf5d7-10c1-426b-b40e-94cad7ad7eec', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.105.66', '2025-12-29 21:27:09', NULL),
('2c23b6d3-014d-4d10-ba60-068ccfb39a85', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Item Purchase Captured', 'Item', 'Purchase of 999.96 12 posted to Main Store SRD for 2026-01-07', '102.89.83.161', '2026-01-07 14:57:30', '2329f86b-aabd-4aac-b4f2-8e572f51588b'),
('2c37b505-ff4d-4250-bc50-ccd74c7de3dc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Coca Cola', '172.31.68.226', '2025-12-30 12:15:51', 'd3a42547-ff64-4772-923c-4a8a112f6be9'),
('2c3ecb5d-e78c-4f3e-afff-827a4cd32fbd', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 14:51:20', NULL),
('2c4e2daa-6a2f-4919-bac9-3bcddfc427e3', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 500 4 posted to Main Store SRD for 2025-12-25', '102.89.83.161', '2026-01-04 17:24:27', '4cb68d68-635b-49cb-a6a4-0453de898b48'),
('2cbddef3-376b-445d-b149-b43e59e7c91f', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Category', 'Category', 'New category added: BRANDY', '102.89.83.161', '2026-01-07 11:01:43', '9e2cb610-3453-4fbf-9d8f-b37471d534bf'),
('2ccbf605-5dcf-465d-ab42-5d557e2cf278', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 08:41:41', NULL),
('2cdc5938-0ba4-48db-9763-314d284c0559', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from 43d27fe4-d8e1-4319-9f6b-7657ce33be4a to b30e98ff-9e99-4f22-b814-cd976d2c9c71, 1 item(s)', '172.31.105.66', '2025-12-29 22:17:49', '5181fe31-ced4-4507-8247-2f245f3e7584'),
('2cf1dfa2-9265-4607-ae9b-6a040ed6ef9e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 5', '102.89.83.161', '2026-01-07 08:02:21', '2a4f4c47-414a-432a-9c67-91fbae34e9dd'),
('2cf3cf35-1bf2-46e4-9c62-bffebad555d5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.76.194', '2025-12-29 13:01:00', 'a058b216-ed37-4b51-b70a-53b204fffa66'),
('2d2a3636-ae25-4039-987d-395d80075bd4', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '102.89.83.161', '2026-01-07 11:34:20', 'e56b6510-d5ca-486d-9e4c-9e55b8ac29dc'),
('2d7f204c-53c5-47b7-b197-ff3c55494786', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 posted to Main Store SRD for 2026-01-01', '102.89.83.161', '2026-01-07 10:47:38', '097eadbb-cad3-4ef9-aab3-21ac8d02e143'),
('2d8fb7dd-a3fa-4919-a2c1-f9dfd432854f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 11:15:46', NULL),
('2db0c002-df72-4974-9cb1-376f0f3dba1b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Client', 'FACTORY', 'New client added: FACTORY', '127.0.0.1', '2026-01-26 00:57:06', '2b4c7cdc-d54c-4be9-9586-4702b63498ae'),
('2e01e41a-848e-4fc7-9312-061be01fbd6c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.66.226', '2025-12-30 18:58:07', NULL),
('2e8ac26c-e473-4635-95fa-fbdc98a09db3', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Updated Exception', 'EXC-20251226-002', 'Exception status: investigating', '172.31.75.162', '2025-12-27 19:20:06', 'ac867377-b1be-4924-b6a3-57fde4529d70'),
('2ee515fe-e64a-4e7a-a75a-6c58af586f82', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Deleted Item', 'Item', 'Item deleted', '102.89.83.161', '2026-01-04 17:21:17', 'b8415479-cf10-43de-95ce-33735638826e'),
('2f139e92-02b9-4fc2-bfd1-9f773fb2443d', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.72', '2026-01-05 03:45:07', NULL),
('2f5a98eb-2b8d-4759-b126-e6715204e12c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 posted to Main Store SRD for 2026-01-01', '102.89.82.72', '2026-01-05 03:48:46', '097eadbb-cad3-4ef9-aab3-21ac8d02e143'),
('2f9081f3-6255-47f0-85ba-7a70df473677', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Reversed Stock Movement', 'StockMovement', 'Reversed transfer movement. Reversal ID: aba8eae0-5db8-4246-a614-0fe6f9508299. Reason: x', '146.70.246.168', '2026-01-08 21:24:02', 'a917f81e-0da3-46fb-8826-2bf3570ae2e4'),
('302b7e5e-e504-4beb-b627-043fdfd32ccb', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f disabled for outlet 30e7c959-e001-45df-8a8b-c160c354fcca', '172.31.89.98', '2025-12-27 03:18:37', '30e7c959-e001-45df-8a8b-c160c354fcca'),
('3049338d-cbeb-4fe3-a475-02530bca51bb', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.85.134', '2026-01-04 07:06:07', NULL),
('307f9a1d-fbde-4f35-8f52-3666963a9dc3', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.98.194', '2025-12-29 19:45:16', NULL),
('30a7b96a-fc4a-4a30-abf7-51b1eeb60acb', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 06:02:22', 'c0bac2e0-0db1-4402-8c62-7081a649ee12'),
('30b91901-b4a1-48c3-beff-a9a10acc2e7d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.98.194', '2025-12-29 19:29:34', NULL),
('30ec77b5-c3ef-41a8-ac0a-9b57500b28fc', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '102.89.76.10', '2026-01-09 12:23:12', NULL),
('30f92892-4b33-4f1b-8f2e-157e0e84017e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.107.130', '2025-12-29 05:50:55', 'd414bd2a-5b07-41db-a243-c844bb1b8b08'),
('312afc66-f69f-4460-a477-605a9ae54d68', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 500 12 pc posted to Main Store SRD for 2025-12-21', '172.31.103.162', '2025-12-31 04:14:46', '2f64a260-d98d-40cc-bd44-346f94737415'),
('31cc36a7-4ade-4a92-9d64-5ad91127fddb', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (3/5)', '172.31.114.98', '2025-12-30 07:49:06', NULL),
('3263c6e1-4461-45b5-9e12-5c9b0b8b3f74', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.89.98', '2025-12-27 01:37:23', NULL),
('3289627c-2611-4216-8710-f1996196c13e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.89.98', '2025-12-26 22:53:34', NULL),
('329e79d7-7c41-4efc-9e7a-a99a4e363250', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Category', 'Category', 'New category added: PROTEIN', '172.31.83.162', '2026-01-01 01:16:14', '13d27efb-f0c5-4fee-b346-c0b4f1855718'),
('32ab34e5-cb5e-4eee-9a37-82374a723c36', '0ff460ab-5b96-4b2d-b85f-d04c54faf25f', 'Created Category', 'Category', 'New category added: PINIPPLE JUICE', '102.89.82.72', '2026-01-05 05:54:28', 'cd56eec5-413d-42c2-897d-db44b8cdae32'),
('3310e5b9-3dab-485b-97ab-797895fcd825', NULL, 'Login Failed', 'Session', 'Failed login attempt for: aizuxar@gmail.com', '127.0.0.1', '2026-02-01 20:24:16', NULL),
('338b7776-ef1d-414a-8df6-40600232d4b2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 12:53:22', '60abffa1-385c-4902-bc8d-29f0482eb2b2'),
('33c28e61-6d12-418d-94c4-1e816dce0b80', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 200 60 posted to Main Store SRD', '172.31.77.34', '2025-12-28 11:19:00', '526f1f1f-7d83-4776-a496-e758c5bd09d8'),
('33ef03d6-5428-4cc0-b025-5ccb01108f66', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 posted to Main Store SRD for 2026-01-01', '102.89.83.161', '2026-01-07 07:10:53', 'a8606352-f7d1-40e6-8500-8ffcbcc12924'),
('34376646-2b1d-4954-a367-572de308b8ba', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.85.63', '2026-01-04 12:21:33', NULL),
('349311dd-5381-4dbf-87f3-2e35674f2715', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.89.98', '2025-12-26 23:33:12', NULL),
('34c2705a-e8be-449e-9dc8-23314b1d3a95', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from b30e98ff-9e99-4f22-b814-cd976d2c9c71 back to 43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '172.31.66.226', '2025-12-30 20:06:21', 'f8d24b14-91dd-403d-9147-eb145538ce2b'),
('34cfa303-f48d-462e-8b31-ca59be48c830', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.103.162', '2025-12-31 04:10:11', '7bfdfef1-5b8a-4699-be3c-a0cbf362e91b'),
('34f436f5-767f-4675-b085-8ba76276a9fb', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created waste movement with 1 items, total qty: 1', '102.91.93.139', '2026-01-05 17:22:20', '660479a1-6078-4469-90a8-663be16a03e7'),
('3513f4a8-1e5f-4e53-8d19-9f51af086486', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.94.2', '2025-12-30 16:49:04', NULL),
('353e2a35-a608-427e-8ab1-405c1e0594b0', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Pinipple Juice', '102.89.83.161', '2026-01-04 17:19:16', 'b8415479-cf10-43de-95ce-33735638826e'),
('35b41e5c-b191-43de-93cd-5e1cf9184015', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-04 16:57:03', NULL),
('35c2707a-32db-4660-a830-1d2c2bdbe5bf', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '172.31.68.226', '2025-12-30 12:28:03', NULL),
('35c2a700-2441-4559-a789-28305634776b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.89.98', '2025-12-27 06:21:47', NULL),
('3605a455-ba12-4bde-96ae-e6e8a435813c', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 50', '102.89.83.161', '2026-01-07 11:51:49', '0d56ca50-68a6-4774-95f8-69902361c8cb'),
('36e35803-7b41-44b6-9230-4dbb51563998', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'Login', 'Session', 'Successful login via web', '34.74.106.240', '2026-01-02 22:10:52', NULL),
('36f6bc87-1ff2-45ca-a587-27e968889278', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Deleted Item', 'Item', 'Item deleted', '102.89.83.161', '2026-01-07 07:10:09', '595eed6e-8595-413c-a0e0-f78b3e8b0279'),
('3724d780-408f-4d18-8860-88aa6e9d492e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from 43d27fe4-d8e1-4319-9f6b-7657ce33be4a to b30e98ff-9e99-4f22-b814-cd976d2c9c71, 1 item(s)', '172.31.105.66', '2025-12-29 22:16:38', '2ed25f77-486b-42ce-91ae-45b525a47de1'),
('3734124e-35ea-4bd9-881d-279b32f14ce5', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-04 16:09:45', NULL),
('383c074e-4c24-4eb8-a20e-6901924d8b44', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 5000 4 posted to Main Store SRD for 2025-12-29', '172.31.98.194', '2025-12-29 18:08:00', 'd24028d5-7172-4fa4-a16a-e96a21e92c62');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `entity`, `details`, `ip_address`, `created_at`, `entity_id`) VALUES
('3892fa36-bd28-43e7-a98e-b70fa92bda86', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 06:26:03', NULL),
('39964db0-9ac6-470d-bbc2-89df13b7f726', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Chicken', '172.31.90.2', '2025-12-27 08:57:49', 'a776527f-6866-48f6-81d5-14083d945edb'),
('3a933d19-cbc6-4d59-9793-8a4155a9c336', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.75.162', '2025-12-27 19:46:03', NULL),
('3aa289f9-9991-49d1-b1a8-90b48f77d85f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Outlet Department', 'Department', 'New outlet department added: o.Store', '172.31.89.98', '2025-12-27 01:56:31', '860ceafd-3b5b-426d-bd4e-298e20d3e601'),
('3b426614-008d-46b5-b0a1-d5d71c52e696', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Item Purchase Captured', 'Item', 'Purchase of 2000 12 posted to Main Store SRD for 2026-01-10', '102.89.76.161', '2026-01-10 01:16:55', 'f051da21-7909-458e-9c63-d176f6106a0a'),
('3baad93f-a9ab-4aa9-a68a-9c666b1c7aa4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.76.194', '2025-12-29 13:10:53', '59e18f7c-c0a1-4d29-914c-be972ad5d3d8'),
('3bb852f8-afac-4293-99b4-363ea553ef76', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '172.31.83.162', '2026-01-01 00:03:46', 'a7a9f73a-30d7-4dbb-b7e1-fad227022bcd'),
('3be0d6f3-dac5-4270-888c-6a65d45eff35', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 78721483-0a9f-4e27-9e4f-30fc9f848485, 1 item(s)', '172.31.77.34', '2025-12-28 16:29:08', '3c2c0d4b-a8dd-49e1-b48f-394cfccc6408'),
('3bee734f-08c8-43db-992a-00e272c7e2a1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created GRN', 'GoodsReceivedNote', 'Invoice: wws32, Amount: 90000.00', '172.31.114.98', '2025-12-30 09:08:57', '0aee6b24-1abb-4fc8-ab26-02e811ba6350'),
('3bfbe9fe-3b2f-4116-a0ae-817be853f02b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 18:08:25', '1a25be9b-3ffe-486e-a09c-a0a5d7c76f5a'),
('3bff4beb-f2f3-4773-b40f-bb8dfbf09814', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 50', '102.89.76.161', '2026-01-10 00:23:40', 'e060d5d8-5bd9-44ff-8e43-23153ee6a934'),
('3c78730f-2c13-4813-b8fe-60c64a7be9f1', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '146.70.246.168', '2026-01-08 21:04:45', 'bb587932-f58d-4c65-afa1-1d929d7205b3'),
('3cad2ad6-ca08-4b97-a5dc-c219032d4d12', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.75.162', '2025-12-27 18:05:37', NULL),
('3d5249f5-1753-4179-91c8-58ef3f2e82b4', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '34.26.99.240', '2026-01-03 22:30:51', NULL),
('3d5bc23c-ee5c-4c84-8c85-e42508a4a85e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 100', '102.89.83.161', '2026-01-07 09:55:02', '32fca88d-1327-461a-958c-f3bc21d6f1cb'),
('3d7e35bc-797a-4a98-9aef-43394b51efcb', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 09:32:26', NULL),
('3d855c31-cdde-4d3c-91ac-7e9bb349c37a', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.85.134', '2026-01-04 07:30:03', NULL),
('3dec5914-b2f9-43af-a58d-e71b8f34cc0c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 00:09:30', NULL),
('3e3fb3d2-8479-4cb0-b53f-903d9bcb2f43', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '185.107.56.156', '2026-01-12 14:00:27', NULL),
('3e61ef63-5273-4f95-afc0-1bb1a6eced10', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Edited Stock Count', 'StockCount', 'Stock count updated (ledger recalculated)', '146.70.246.168', '2026-01-08 21:01:24', '462e7fcb-0c3d-4441-af2c-5616b7fa1428'),
('3ea1b3aa-2310-435c-a526-4d5208bf055d', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '35.243.129.130', '2026-01-02 07:16:48', NULL),
('3ee5eddc-36fc-47f0-b157-0e780b2e07c8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.66.226', '2025-12-30 21:16:39', 'f0a6b7c7-3362-47ef-8a80-dc418fdaa0f8'),
('3f2bc640-9ad4-4bcb-90de-f3b11ef760f2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 17:25:37', NULL),
('3f8432cc-f035-4bc0-8fc6-c209df574c77', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '35.243.160.31', '2026-01-03 22:20:20', NULL),
('3fb7e661-e393-46f2-8f9e-33b5cb28de97', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.98.194', '2025-12-29 18:48:50', NULL),
('3fdd2bd6-8c49-47c2-b294-c7cfcc3517d5', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Admin', '172.31.89.98', '2025-12-27 05:02:11', NULL),
('40257829-e773-44e1-9e10-e79af94e8bdc', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 23:31:51', NULL),
('40586f0a-2846-46ec-a2b9-905fb6d7a437', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Created Stock Movement', 'StockMovement', 'Created adjustment movement with 1 items, total qty: 2', '127.0.0.1', '2026-02-01 22:56:25', 'eb0e238e-f0a8-46f5-87a7-55b9d708ea1d'),
('40cf7648-9e75-4d89-8ece-101a291f7201', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.68.19', '2026-01-04 14:59:32', NULL),
('40da9ca9-96cc-4aba-b7b7-b7e2efab6637', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.204', '2026-01-08 13:17:20', NULL),
('417d9e9c-30c1-44a1-80e8-1b5e222c65aa', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 00:25:14', NULL),
('41a17299-1422-4811-a88c-c601b9c0e9d8', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 posted to Main Store SRD for 2025-12-25', '102.89.83.161', '2026-01-04 16:59:27', '9690d9bd-79a9-4a79-af02-c48450c3b162'),
('41ba02f5-b430-4570-99cc-4607ec5d0eb4', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '127.0.0.1', '2026-01-01 22:09:44', NULL),
('41d88563-4d4f-418e-b035-df8a611e3a35', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '34.139.219.171', '2026-01-03 18:11:54', NULL),
('41db0f5d-51dd-4491-b890-bcf33d24fd40', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 17:41:15', NULL),
('427b6f8f-9c71-410f-bb65-15d33aae3fc4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Department', 'Department', 'Department deleted', '172.31.89.98', '2025-12-27 03:17:58', '8ef0f287-556b-4228-b49e-db98218b8295'),
('427feeb9-0cd6-4368-892a-66fc995c1781', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.103.162', '2025-12-31 10:33:20', NULL),
('429cc4df-7dc5-4051-a2f8-20d211d71c39', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 01:58:49', NULL),
('42d8b046-7324-4798-a91d-acf2d3af6972', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.76.194', '2025-12-29 12:40:32', NULL),
('434c44df-d1f0-48d8-868b-3caf8fd3fd0a', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 2000 4 posted to Main Store SRD for 2026-01-08', '146.70.246.168', '2026-01-08 20:10:59', 'a8606352-f7d1-40e6-8500-8ffcbcc12924'),
('434f0bb8-0b8c-4125-8a65-25ee99a25df8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 10:20:01', NULL),
('436e9655-f8b6-4f3e-8881-c103d20ca85a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 500 4 pc posted to Main Store SRD for 2025-12-01', '172.31.66.226', '2025-12-30 18:15:45', '29070060-0461-41bc-afaa-d58281cef2bb'),
('440a6424-b890-408b-901b-3c5469cbddcf', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from b30e98ff-9e99-4f22-b814-cd976d2c9c71 back to 43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '172.31.66.226', '2025-12-30 18:22:55', '80377e8e-b095-4ac4-bbbd-d05cca8a68fb'),
('441c1cd9-6cf3-4c9d-bcaf-fb24f11c5d32', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-01 20:35:15', NULL),
('4483ebf3-e2fe-402a-a1a9-9f9b97b0b1ad', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'create', 'payment_declaration', 'Created payment declaration for Wed Jan 07 2026 00:00:00 GMT+0000 (Coordinated Universal Time)', '102.89.83.161', '2026-01-07 15:04:34', 'db268c84-4a2a-4608-833c-3a3b7b66cca9'),
('44955490-9437-4cdb-99e4-abe387350e1f', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.85.63', '2026-01-04 13:34:11', NULL),
('452b9d72-f801-4c9b-9c95-4c11aa405a49', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 12:42:31', '3d5ce852-ff48-4a04-9b8a-22d552c139e0'),
('456ec326-b652-4636-83d4-604b4837c135', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Movement', 'StockMovement', 'Created adjustment movement with 1 items, total qty: 2', '172.31.103.162', '2025-12-31 05:34:51', '6e88cd27-04ab-4ed1-9faa-3cdb89feedf8'),
('46d75eb9-d0bd-47be-bbc6-6f53121aedad', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.107.130', '2025-12-29 04:30:28', '648763c6-dad2-4295-92b1-b35f8beaeebf'),
('473898f3-293b-406d-b004-9b70a5856541', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.82.72', '2026-01-05 03:30:56', NULL),
('47488239-cb3e-446b-a959-d59cd9f0abf6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Orange Juice', '172.31.105.66', '2025-12-29 21:48:11', '9742f35a-ea63-4dff-b74a-a27746417dce'),
('4784fac9-64e9-4cfc-b3f3-dbaeef466a0e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.105.66', '2025-12-29 21:14:23', NULL),
('47c3e169-09e0-44c2-a1a2-aa58b391c013', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Water Melon Juice', '172.31.105.66', '2025-12-29 21:49:26', '3315d410-2302-4ff8-8a38-6af5f1bee4ee'),
('47d6fd81-b586-478a-84e2-1680261f1995', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '185.107.56.156', '2026-01-12 13:58:39', NULL),
('49243cd6-7407-4293-9781-f293add40535', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-03 22:58:16', NULL),
('4983600d-8683-4c7e-9bce-7fdc2e79e43f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.75.162', '2025-12-27 20:12:19', NULL),
('4a11af8d-a7cc-4beb-9060-d72f6e287178', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Super Admin Credentials Updated', 'User', 'Super admin email/password updated via bootstrap (dev=true)', '102.89.82.72', '2026-01-05 05:11:53', '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('4a62fb89-bcd6-4ddc-a432-cebc5809d444', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '102.89.82.72', '2026-01-05 05:17:58', NULL),
('4b35a300-fb0c-42dd-bf3a-109e2e5722f9', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Pinipple Juice', '102.89.83.161', '2026-01-04 17:17:57', 'e32b0092-be1a-4fe8-bfad-9e346f693401'),
('4bb07a0c-bdda-4e84-937d-e6f7b36fbc47', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Mon Dec 29 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.107.130', '2025-12-29 04:41:59', 'fbf40bfe-6f76-4b06-b9c7-36ceebebbac8'),
('4c8c5849-cdac-4125-b048-0da9dbfe02be', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.69.19', '2026-01-10 08:46:17', NULL),
('4ca5302e-e44b-4329-bf18-980bd3ca4994', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Client', 'YOURS HOSPITALITY - JUST PECKISH', 'New client added: YOURS HOSPITALITY - JUST PECKISH', '34.26.99.240', '2026-01-03 11:27:02', '5bcdde2d-535f-4d52-b0c0-d4cd945ab107'),
('4cf60324-4b5f-405a-9ce8-48958b6dd314', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Client', 'YOURS HOSPITALITY', 'New client added: YOURS HOSPITALITY', '102.89.82.72', '2026-01-05 03:29:05', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9'),
('4d036a57-4a0d-4535-9435-eb0d8ac07cb1', '0ff460ab-5b96-4b2d-b85f-d04c54faf25f', 'Demo Login', 'Session', 'Demo account login for development preview', '127.0.0.1', '2026-01-25 23:12:36', NULL),
('4dbdfa80-3525-45f4-8822-769cce35b8b8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.107.130', '2025-12-29 01:36:11', NULL),
('4ddceac0-7423-4ae3-abc7-0eddd58df89b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from b30e98ff-9e99-4f22-b814-cd976d2c9c71 back to 43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '172.31.66.226', '2025-12-30 20:05:21', 'db4b91ab-4a55-4852-859e-b4a825fc2095'),
('4ded2d96-7ede-4a24-a42e-4a014c8bff4d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Enabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f enabled for outlet 30e7c959-e001-45df-8a8b-c160c354fcca', '172.31.89.98', '2025-12-27 03:18:36', '30e7c959-e001-45df-8a8b-c160c354fcca'),
('4df49163-7cab-4e5f-972f-86e3de82d7d7', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 06:26:28', NULL),
('4e04de92-847d-4c84-bebb-c6c766206a72', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department dbcba58f-0564-4996-8405-a35573f74989', '172.31.83.162', '2026-01-01 00:03:24', 'bb04123d-1275-48ce-a8f1-ebed84584f18'),
('4ef56082-283f-41cd-aa3a-7e263f1769a7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 2000 12 posted to Main Store SRD for 2025-12-02', '172.31.103.162', '2025-12-31 04:58:07', 'd3a42547-ff64-4772-923c-4a8a112f6be9'),
('4f3e3c47-6b14-4e45-bfa9-3a3e797a9f12', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.72', '2026-01-05 03:25:52', NULL),
('4f5685f1-5828-4398-ba2f-627704eca310', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.105.66', '2025-12-29 23:52:17', NULL),
('4f7dec19-f024-4d40-8a1e-2d71fdb6a5e8', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Deleted Purchase Event', 'PurchaseItemEvent', '', '102.89.76.161', '2026-01-09 19:56:41', '40f596ed-c2a5-4220-a15e-b25c9525535a'),
('4ffa51c5-aecf-42f5-9947-12b768ec5352', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Super Admin Credentials Updated', 'User', 'Super admin email/password updated via bootstrap (dev=true)', '127.0.0.1', '2026-01-05 03:49:32', '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('5013621e-e408-4acf-bef6-3723e0fc218c', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 19:30:55', NULL),
('5046a2bb-d840-435e-865c-8d00f24a8bbf', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Item', 'Item', 'New item added: Fried Fish', '102.89.76.161', '2026-01-09 19:54:15', 'a09560f4-54bc-4640-9efa-295f4b665032'),
('5058261c-2097-42e1-85c8-618d65889e61', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '102.89.76.161', '2026-01-09 19:58:53', '9f188f04-a985-459d-97a0-d46e2e769264'),
('5062d205-4797-4528-a95e-c15a480ca448', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.69.19', '2026-01-10 08:52:11', NULL),
('506f4b35-69ec-4653-ae0d-71a983d36a52', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Item Purchase Captured', 'Item', 'Purchase of 2000 4 posted to Main Store SRD for 2026-01-09', '102.89.76.161', '2026-01-09 19:55:31', 'a09560f4-54bc-4640-9efa-295f4b665032'),
('50cbaba2-196c-4330-a1cf-852191b9ce96', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-08 22:12:11', NULL),
('5149d3b8-3d57-4716-a11c-69be24f976b9', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Mon Dec 29 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.98.194', '2025-12-29 18:59:17', 'fbf40bfe-6f76-4b06-b9c7-36ceebebbac8'),
('519bdfc7-5a84-4bd4-8ea3-e4bb61092d1c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.89.98', '2025-12-27 02:52:35', NULL),
('51aa6d21-fbf4-4276-945c-57b86feadaf6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 06:02:59', '1ef13c31-c5aa-4942-9bb6-2bb68c6e55b3'),
('51d2fffa-6cdb-4e81-a043-2a84304ea1f4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Enabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f enabled for outlet 30e7c959-e001-45df-8a8b-c160c354fcca', '172.31.89.98', '2025-12-27 03:18:40', '30e7c959-e001-45df-8a8b-c160c354fcca'),
('51fe4ff4-19cf-43e1-8687-4e3b6d5fb3e8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.68.226', '2025-12-30 12:15:01', NULL),
('52174274-5cce-4a5d-af23-c39913f62688', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 250 4 posted to Main Store SRD for 2025-12-29', '172.31.105.66', '2025-12-29 22:15:19', '9742f35a-ea63-4dff-b74a-a27746417dce'),
('527a977d-ead0-4eb1-809e-2a185af29c3b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Rice', '172.31.88.194', '2025-12-28 06:42:21', '76f50a81-f36f-4108-b97d-b00f62a29f20'),
('527ac118-168b-4633-82bc-c2b2a615a796', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 15:21:22', NULL),
('5289de99-0b70-45d2-9250-c64756942294', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-01 20:24:53', NULL),
('52c5af98-df0e-4510-96b9-afdfa60813bb', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.114.98', '2025-12-30 08:30:22', 'e30d675d-b78e-46a5-9a49-664a0248e68f'),
('530202f5-39be-434d-9a82-d72ee3c42fd8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Supplier', 'Supplier', 'New supplier added: Edmond Global resources Ltd', '172.31.68.226', '2025-12-28 04:45:35', '3b37bf2b-9563-456a-950b-a2453c851f3a'),
('53213178-c9e1-4121-94a3-cfdade088b43', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.103.162', '2025-12-31 05:33:04', '8818ca92-6fa1-494b-a334-44baffa03842'),
('53401699-ae7f-49fc-994d-44a2e661b36d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.107.130', '2025-12-29 02:38:36', NULL),
('536348ff-77f3-4ac4-b9ba-4fb438358c82', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Mon Dec 29 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.76.194', '2025-12-29 15:59:47', 'fbf40bfe-6f76-4b06-b9c7-36ceebebbac8'),
('54070c76-6292-48c8-91cb-116ddbd07c38', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 200 4 pc posted to Main Store SRD for 2025-12-28', '172.31.105.66', '2025-12-29 22:15:09', '3315d410-2302-4ff8-8a38-6af5f1bee4ee'),
('541c74d4-9d92-45ec-bc42-270c3615169d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 2000 12 pc posted to Main Store SRD for 2025-12-02', '172.31.103.162', '2025-12-31 04:57:56', '2f64a260-d98d-40cc-bd44-346f94737415'),
('54343792-8956-4dd2-8ffd-a3541af961fe', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '185.107.56.156', '2026-01-12 13:58:45', NULL),
('543bd2bb-65bd-4ae8-a4f8-c6df75cd1ecb', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.66.226', '2025-12-30 21:21:31', '09379f6b-8356-4e1c-b245-f63ff799ab30'),
('54a92c92-ee6e-4785-bea1-5316b72bc146', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from 43d27fe4-d8e1-4319-9f6b-7657ce33be4a to b30e98ff-9e99-4f22-b814-cd976d2c9c71, 1 item(s)', '172.31.66.226', '2025-12-30 18:23:47', 'db4b91ab-4a55-4852-859e-b4a825fc2095'),
('54b2febd-5703-4bd4-9adc-c80e4ffb33ac', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f disabled for outlet ff377523-7022-4bf4-969c-3781c0cf5000', '172.31.89.98', '2025-12-27 01:43:38', 'ff377523-7022-4bf4-969c-3781c0cf5000'),
('54e702da-dc6d-49bd-9de1-1f2432f836f0', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '102.89.76.161', '2026-01-10 00:26:06', 'a7d4ae82-a1fe-4c1b-ba19-9d908e3a6f66'),
('55138dc8-6070-4251-bab4-baed6ac333e9', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 20', '102.89.83.161', '2026-01-07 12:58:10', '9074920b-c050-4cf8-a581-221a47aa9592'),
('552e2f90-00be-4d53-bb3d-5c669b4b6ac8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Updated Exception', 'EXC-20251230-001', 'Exception status: investigating', '172.31.68.226', '2025-12-30 13:26:23', '5204d46d-1c82-4949-8e4d-a31998f32693'),
('555afb19-3a04-46c4-b949-318cc5aa263f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 09:05:26', NULL),
('555cfe56-0e1e-4907-a72d-ce9bcba959f2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Exception', 'EXC-20260101-001', 'asde', '172.31.83.162', '2026-01-01 00:00:46', '0a59e7ac-c299-44f2-afec-5a652bb0fef0'),
('55cb3357-7e09-48aa-a2ab-7305a40f8092', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.107.130', '2025-12-29 05:52:24', '2eaf6c79-5750-4f6a-bf93-c57897517d6d'),
('563e3e67-5e73-4359-9c65-7b0d5215e314', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Category', 'Category', 'New category added: DRINKS', '102.89.83.161', '2026-01-07 14:37:36', '7518184e-b0f3-48b8-93fb-901a1eccd71d'),
('5660ec4f-6cd0-4e71-be8f-5ca8e2b75040', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Tue Dec 30 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.114.98', '2025-12-30 04:47:16', 'c046e4e7-a073-4ad1-bfdb-f1a870b0934a'),
('567016e7-b93e-43f9-8594-a3064e30849b', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '102.89.83.161', '2026-01-07 15:03:19', 'ed80e1cf-b4b7-4cf2-a48a-1c9bd6d04c6f'),
('56862bd0-ce63-48e8-a007-b305237fdcc3', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.107.130', '2025-12-29 02:44:41', '3d5ce852-ff48-4a04-9b8a-22d552c139e0'),
('56c4b691-b6a4-493e-881f-65659051b291', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.90.2', '2025-12-27 08:46:43', 'e9e7138a-1c94-4802-95ec-18e19652badd'),
('56f56049-0e15-4db6-9986-5ad5948a2a49', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.72', '2026-01-05 03:45:30', NULL),
('57024d3d-b57b-4988-8079-59b5b5a1a2ff', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to fd666e2e-2de8-4b34-8687-9d45c75a85c3, 1 item(s)', '172.31.77.34', '2025-12-28 16:20:37', 'f6b5587c-e192-4417-8ce6-4cfdd1034265'),
('57044fde-c57a-42d4-b176-05923354578e', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 5', '102.89.83.161', '2026-01-07 12:01:56', 'f3bb1383-c39c-44b0-9ca4-4135d12d598c'),
('57231a07-49e9-4841-8e2c-1a114e946ae1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Exception', 'EXC-20251230-001', '1 MISSING FANTA BOTTLE', '172.31.68.226', '2025-12-30 13:26:00', '5204d46d-1c82-4949-8e4d-a31998f32693'),
('579215a0-8786-471e-8153-411539252618', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '146.70.246.168', '2026-01-08 20:38:45', 'fb87ee82-b333-43db-9bc9-7ef97d43eb05'),
('57c1c4ad-f0e5-4564-aa27-3d23d489ed6f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.76.194', '2025-12-29 13:06:40', NULL),
('57da8952-7328-4474-a9d5-6f0194dc3ba4', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 20', '102.89.76.161', '2026-01-09 23:36:11', '7be969c7-5d2b-4273-8193-9a8112215a4a'),
('58621580-8af8-4643-a1f3-80bca1449b78', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 06:15:07', NULL),
('586bb1d2-dc8f-4dd5-b7cf-3b6d6c563a8b', NULL, 'Login Failed', 'Session', 'Failed login attempt for username: miemploya@gmail.com', '172.31.65.226', '2025-12-26 07:36:51', NULL),
('58ba41d6-bca9-4336-a2d0-7f7e9e4480d6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 1', '172.31.66.226', '2025-12-30 19:01:56', '4a8094c8-1def-473b-bf9d-4d1d9b3f6f4f'),
('58ec8fbb-8026-454b-8aa7-f35ec925db7c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 1b2a1e08-a1e9-4a4d-addf-b5bed4e3bd1c disabled for outlet bd279946-8a56-4e2f-8a40-714bdb2574c9', '172.31.89.98', '2025-12-27 03:24:36', 'bd279946-8a56-4e2f-8a40-714bdb2574c9'),
('590590c9-d021-47c7-89f2-5f06a3aa675d', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Item', 'Item', 'New item added: Spirite', '102.89.76.161', '2026-01-10 01:15:39', 'f051da21-7909-458e-9c63-d176f6106a0a'),
('59688228-5322-4f72-908f-5c120e567d76', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 10', '102.89.83.161', '2026-01-07 15:21:06', '93ea492b-2b76-480c-996b-56f25b9c32fe'),
('59fddc2c-7c8f-4579-b6e9-8983c1a159d8', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'Login Failed', 'Session', 'Invalid password attempt (4/5)', '127.0.0.1', '2026-02-09 00:01:16', NULL),
('5a070c86-540c-421a-9b53-3d8f82fe694c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '89.105.214.120', '2026-01-12 08:10:23', NULL),
('5a7a50c0-e121-49a4-ac1e-19eb75da4ddf', NULL, 'Login Failed', 'Session', 'Failed login attempt for: openclax@gmail.com', '35.243.160.31', '2026-01-02 20:46:17', NULL),
('5a9a2c86-332a-47b0-9c25-d2f216c49859', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 20', '102.89.83.161', '2026-01-07 05:33:15', '18b7fa41-d173-464d-870b-9931c73b2a49'),
('5a9b745e-75f0-42bd-8884-1856a0a4aad9', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Stock Count', 'StockCount', 'Stock count deleted and SRD ledger reversed', '172.31.66.226', '2025-12-30 21:17:08', 'a4fa5a7b-3619-4fa6-9d0e-3bbbb2a5d484'),
('5ac2c60d-f195-41b1-bb1b-f52707b2b49a', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '127.0.0.1', '2026-02-01 19:57:27', NULL),
('5ace1d7c-9c8b-4f54-8147-ace5d2096b6f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 400 4 pc posted to Main Store SRD for 2025-12-15', '172.31.94.2', '2025-12-30 16:53:31', '29070060-0461-41bc-afaa-d58281cef2bb'),
('5ae62b4c-8617-4ed8-918b-40730907ebdb', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Client', 'ZOE ENTERPRISE LTD', 'New client added: ZOE ENTERPRISE LTD', '102.89.83.161', '2026-01-07 14:35:21', '0d947773-28ee-4e02-b5b6-40455566817d'),
('5b11be7a-0eb9-45c8-a577-7b78f79023ec', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 50 12 pc posted to Main Store SRD for 2025-12-30', '172.31.114.98', '2025-12-30 08:04:45', '0685f443-471a-4a34-927e-f5e41fbeb2d3'),
('5b140d1c-0fd8-4637-89dd-56e9d3325a39', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 300 4 pc posted to Main Store SRD for 2025-12-20', '172.31.68.226', '2025-12-30 13:59:10', '29070060-0461-41bc-afaa-d58281cef2bb'),
('5b8a55a5-771f-47f4-a9b8-7e2f656c174d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.89.98', '2025-12-27 02:55:50', '209f8105-ffc2-480e-86f5-106f52415ae7'),
('5b9b139d-893b-41c9-9e1d-13d612202e52', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Deleted Purchase Event', 'PurchaseItemEvent', '', '102.89.76.161', '2026-01-09 19:54:58', 'f812c03f-d6df-476b-b110-fecf22fa267d'),
('5bd1f654-8614-4fe5-be5d-61de44795004', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.76.194', '2025-12-29 15:12:46', '76871c03-37b1-459b-988d-cbcd4342b1f4'),
('5bd83418-3d10-4318-a57c-2ce331b56ba6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.107.130', '2025-12-29 05:46:01', NULL),
('5c0772f4-a19b-4113-a364-520fa10a24a2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Supplier', 'Supplier', 'New supplier added: Samson Enterprise', '172.31.105.66', '2025-12-29 22:26:46', 'bd9a5a84-6231-4101-900a-f5fa11af393b'),
('5c724280-eade-4c54-aa4a-f06c0636f7cb', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.101.66', '2026-01-01 13:06:26', NULL),
('5cba5a68-bc2d-4ddd-9501-92c4a46f870e', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '102.89.76.10', '2026-01-09 09:56:08', '816ed2bb-f572-4dc9-8132-ece2aa4d28d6'),
('5ccb96f7-1c3b-472a-bdec-e1f5368ef3af', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.66.226', '2025-12-30 18:07:10', NULL),
('5da6a898-4c92-452f-a1e1-8140a206a740', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '102.89.82.72', '2026-01-05 03:35:43', NULL),
('5dd6ecf9-2d47-4a86-a1c9-702135eef8f6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 14:26:05', NULL),
('5de1c709-46b5-4cce-9f41-600e1a756bf9', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Sun Dec 28 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.107.130', '2025-12-29 04:22:38', '06d8c079-2398-488d-ac02-5f039094e1ac'),
('5dec2c0b-39f2-4ede-bdd1-91842e59191e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 07:42:04', NULL),
('5e5a180e-a498-4559-9831-21f4b9b341fa', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Outlet', 'Outlet', 'New outlet added: Grilling', '172.31.89.98', '2025-12-27 03:25:09', 'caa9c065-f185-45af-bd53-4dc98fad932a'),
('5e61d866-fe29-49ec-809b-baf94d5736a2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.126.98', '2025-12-31 13:20:12', NULL),
('5e7fadfd-b832-4b84-b7d8-325d286e9ff4', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '146.70.246.168', '2026-01-08 20:35:31', '665640df-edaa-46c9-8dd4-5588f065c08f'),
('5f08efad-7999-48d0-a247-da011fb00921', '0ff460ab-5b96-4b2d-b85f-d04c54faf25f', 'Demo Login', 'Session', 'Demo account login for development preview', '127.0.0.1', '2026-02-08 22:50:15', NULL),
('5f0e5460-5ee4-4950-9e2c-eb3f0b5add7b', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '35.243.129.130', '2026-01-02 01:56:13', NULL),
('5f162bdb-62dc-4a79-b13c-e1b7ff9b24d2', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '89.105.214.120', '2026-01-12 08:35:53', NULL),
('5fc5457a-b5d1-4d75-ac95-9202b00f434a', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '35.231.177.91', '2026-01-02 22:13:45', NULL),
('5fdff129-bb5e-4a02-8fa3-c77c1588c504', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 100', '102.89.83.161', '2026-01-07 13:04:53', 'fd0abc9f-583b-4c19-8953-63f3dc715523'),
('60c52224-3823-4443-ad08-0f81fff32254', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created waste movement with 1 items, total qty: 20', '102.89.76.10', '2026-01-09 10:42:18', '0c69c65f-f4ca-431e-a2a7-b0ad62d9cef5'),
('60f582c4-9755-4328-9c87-b123cb84c0e4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.90.2', '2025-12-27 08:55:27', '2444e8cd-71de-4718-ad1a-c14615b7027d'),
('6125c8a6-bc8e-4ca4-a708-c50421439220', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 2500 4 pc posted to Main Store SRD for 2025-12-15', '172.31.103.162', '2025-12-31 06:42:15', '29070060-0461-41bc-afaa-d58281cef2bb'),
('615c1219-f198-4123-a134-3c71fe6b50df', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to fd666e2e-2de8-4b34-8687-9d45c75a85c3, 1 item(s)', '172.31.76.194', '2025-12-29 16:05:50', '82bf0ca4-5cd6-4098-99ff-e2a5c9733158'),
('617cfc6a-4fe3-4351-82c4-c46125cb2b9d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 2000 4 pc posted to Main Store SRD for 2026-01-01', '172.31.110.162', '2026-01-01 05:21:53', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d'),
('61b5a6f0-1e51-4f88-b51f-5969fb69d197', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 400 4 pc posted to Main Store SRD for 2025-12-29', '172.31.105.66', '2025-12-29 22:14:56', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d'),
('62093ec2-3eaa-486a-a52f-d0963ddea104', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 05:47:06', '6551fdd3-5b8a-4b35-906b-8ef7d139dbb5'),
('628afe36-fe09-43d8-800f-7d4007f58732', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '89.105.214.120', '2026-01-12 08:36:13', NULL),
('62fd45f2-9861-42a7-b9b5-14f57eafc9c7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 2500 4 pc posted to Main Store SRD for 2025-12-15', '172.31.103.162', '2025-12-31 06:42:28', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d'),
('6366401b-bd12-4cb9-b4f7-fc86841006a7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.75.162', '2025-12-27 19:02:53', 'bf8bc256-4187-442a-84b8-aabfc7cfdf03'),
('63aea1f4-ca7c-4a45-9b58-a7e86615e95a', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.69.19', '2026-01-10 06:44:35', NULL),
('6414ff7f-c1f5-4d2d-99cb-5967156eb606', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.83.161', '2026-01-07 11:16:05', NULL),
('647107ee-8ee3-4605-8b10-28d07c125a60', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.105.66', '2025-12-29 23:04:45', NULL),
('64b74d13-9552-4852-9ffb-8a4ebece5c2a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.65.226', '2025-12-26 07:46:51', NULL),
('64fa99db-da43-44d6-880d-83c4e731070e', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Created Exception', 'EXC-20260201-001', 'Wastes from Food cooked', '127.0.0.1', '2026-02-01 20:10:17', '959d26e0-b5fc-4bc0-8455-6b70b7db9e43'),
('650207aa-1800-4f8c-90c0-6c524d99db7b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 1b2a1e08-a1e9-4a4d-addf-b5bed4e3bd1c disabled for outlet caa9c065-f185-45af-bd53-4dc98fad932a', '172.31.89.98', '2025-12-27 03:25:53', 'caa9c065-f185-45af-bd53-4dc98fad932a'),
('654ed550-8c34-46ba-97a9-a4390e6295f9', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 posted to Main Store SRD for 2025-12-30', '102.89.85.63', '2026-01-04 12:24:12', 'c9eb20d9-d8a3-4062-8d22-3421499b0b33'),
('65542cb2-ab28-44cf-802f-65ab71945845', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 06:02:17', '12c6ce7e-4820-4e2b-972c-3cb96956837e'),
('65f5a087-f224-4e45-88cd-b73f68824d71', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.91.93.139', '2026-01-05 15:39:03', NULL),
('662af0fb-59ba-49fb-8b80-177835d41ce4', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Item', 'Item', 'New item added: Henessy', '102.89.83.161', '2026-01-07 11:13:47', '9bfb31d9-776c-4e4e-a70b-463afbaf8943'),
('6671b1cb-ed8d-418a-86d7-5d696154faad', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Supplier', 'Supplier', 'New supplier added: Samson Enterprise', '172.31.105.66', '2025-12-29 22:26:12', 'c765549f-5294-489b-bd2e-5a71595bae99'),
('66ae9c33-4026-4b19-a5c6-6c92abbbec7b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 12:54:28', '150b643f-07db-46c5-81d6-c8f68a6a2b97'),
('66bd1218-c2ed-45f9-a5a1-7f6b175f3b62', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '34.75.119.55', '2026-01-02 22:13:27', NULL),
('670e9619-1116-4b61-bc96-04a4e30f78a1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Updated Exception', 'EXC-20251230-002', 'Exception status: open, outcome: true', '172.31.106.130', '2025-12-31 20:38:52', 'fb643f20-a2ee-414a-9e9f-a486b147b1f2'),
('67390617-d380-400b-bc38-217b9c3c5d76', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 3', '172.31.103.162', '2025-12-31 05:38:47', '9228ed43-10a6-47cc-9779-f7cb7b7ea4f7'),
('683a521d-d392-4990-8a48-95e7e0f15114', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.91.93.139', '2026-01-05 16:38:53', NULL),
('6867257a-ef8d-48a3-839a-892087ad041b', '0ff460ab-5b96-4b2d-b85f-d04c54faf25f', 'Demo Login', 'Session', 'Demo account login for development preview', '127.0.0.1', '2026-01-25 22:02:23', NULL),
('686f7fec-d3f3-4150-bb06-935a423981e1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department dbcba58f-0564-4996-8405-a35573f74989', '172.31.83.162', '2026-01-01 00:03:39', '6b2d31f2-4fcb-44b5-adec-d7ad88dabe45'),
('691d470a-4ec0-4688-bf98-05e097e42a38', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '34.74.106.240', '2026-01-03 22:36:22', NULL),
('693036fd-2fe1-40b7-aa79-89671163d286', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 03:40:54', NULL),
('69d7c0c8-9893-4c24-99e8-355534282893', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.72', '2026-01-05 05:40:54', NULL),
('6a01498f-ac2d-4964-b78d-cbd1040ca068', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.114.98', '2025-12-30 04:38:10', '8f1a0af9-7199-4c31-bda9-ceb62c6e01aa'),
('6a0dfb38-5f0e-400d-97c4-7f7f126d7c6c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '185.107.56.156', '2026-01-12 13:58:32', NULL),
('6a1300df-1f33-4011-92c7-444893571665', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 20:12:55', 'd14aeef2-d941-46a0-83aa-60323131bcaf'),
('6a16eb34-bec1-4d04-adf1-4ab5e0398be4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 07:39:16', NULL),
('6a24c372-97d7-4b45-a684-6f1d275b90bd', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 5', '102.89.83.161', '2026-01-07 08:02:38', 'd8f7944c-37f4-46a3-b14a-2f78a0c7f4a1'),
('6a75ba28-023f-4468-bf43-228bbc08cc86', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 10', '102.89.76.161', '2026-01-10 00:33:40', '8af73a32-46f7-413d-ab25-6ba41054a2da'),
('6b0d1e87-846d-4e19-ae15-7fead20670cb', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.83.162', '2026-01-01 01:12:52', NULL),
('6b1d9060-7ea5-4ce1-b03e-89c26e097660', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '34.74.106.240', '2026-01-03 22:27:54', NULL),
('6b4b793c-edd0-4edf-a38f-490b27be3792', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Item', 'Item', 'New item added: Chicken Fries', '102.89.83.161', '2026-01-07 14:56:35', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2'),
('6c5af8f8-3345-4592-944d-e0a674ce2e73', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.75.162', '2025-12-27 18:58:30', NULL),
('6c79535c-4282-4e81-8f1d-6c86e20dc212', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Stock Count', 'StockCount', 'Stock count deleted', '172.31.66.226', '2025-12-30 20:48:06', '7851c8be-f2dc-41c0-8f2d-4e2e470dc034'),
('6ccb6e0b-b13d-4b2e-a465-526c6f3e7387', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.84', '2026-01-11 20:12:01', NULL),
('6d85250c-e31d-4c42-bbbf-89d5b713c06b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.66.226', '2025-12-30 21:26:06', '1fdb6571-d1cf-4484-83db-e54de64d5fc2'),
('6e1bb4b4-30de-43c1-8b2c-003a9125420b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 09:26:24', NULL),
('6e6b186e-3755-4886-bad0-fa16b5c3c783', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.66.226', '2025-12-30 21:25:04', '47b1e85e-ad5e-477f-919c-1c05247b3ef9'),
('6e753d8a-2197-41e5-9227-f92ec4ccea10', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Category', 'Category', 'New category added: F&B', '102.89.85.134', '2026-01-04 07:30:30', '5a2bd99a-47c9-4cf0-a2c2-3ffb9e8b746c'),
('6ea232a2-46e4-4bce-936d-7e4a56626ec9', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-10 01:14:07', NULL),
('6ecf11d0-277c-46d9-9b12-4bbc054c7fbd', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.75.162', '2025-12-27 20:22:45', NULL),
('6eeb5da7-04a1-4f17-be0d-97236cc8aebe', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.68.226', '2025-12-30 12:36:19', NULL),
('6f1469ad-bf9f-426e-b7cb-13012a668328', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 posted to Main Store SRD for 2026-01-06', '102.89.76.161', '2026-01-09 19:57:11', 'a09560f4-54bc-4640-9efa-295f4b665032'),
('6f98bef1-cbc1-4709-930e-0db7cab35351', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.107.130', '2025-12-29 05:51:18', '12c6ce7e-4820-4e2b-972c-3cb96956837e'),
('703e5b9b-153b-4238-ba9b-dcec7f3aa943', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.103.162', '2025-12-31 04:03:53', NULL),
('708b8ac0-dd3b-42cf-b2bd-6af581ebeb17', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '102.89.83.161', '2026-01-07 15:02:51', '3c96041f-2ae0-4804-87b3-7d81d823e0bc'),
('7096bf6a-4229-4cd8-8798-32c13cb9deef', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Client Department', 'Department', 'New client-level department added: Pool Bar', '172.31.89.98', '2025-12-27 01:42:37', '295ef96f-f7bb-4ed8-9026-6ad28c70cf0f'),
('70a9d048-b957-4f07-aafe-8f4132bdd387', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Client', 'Client', 'Client deleted: FACTORY', '127.0.0.1', '2026-01-26 00:57:13', '2b4c7cdc-d54c-4be9-9586-4702b63498ae'),
('7135acc1-1795-4b21-a9b4-06be96ba8930', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.77.34', '2025-12-28 13:55:35', '7a18bbeb-2b08-441d-888c-3d3adb02ec82'),
('717486a0-431d-40d6-bd80-afa8784e971e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.89.98', '2025-12-27 05:03:48', NULL),
('719e9f29-0c46-46fb-98c4-95a55168dd70', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 8ef0f287-556b-4228-b49e-db98218b8295 disabled for outlet bd279946-8a56-4e2f-8a40-714bdb2574c9', '172.31.89.98', '2025-12-27 01:46:01', 'bd279946-8a56-4e2f-8a40-714bdb2574c9'),
('71ecc308-0bbd-4e40-b8f2-4ddca9dc678c', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Item Purchase Captured', 'Item', 'Purchase of 1000 12 posted to Main Store SRD for 2026-01-07', '102.89.83.161', '2026-01-07 14:57:19', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c'),
('7211ef63-ad1e-47fc-afce-7515c277dbc6', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 06:19:37', NULL),
('7220634d-2567-424f-894b-1baf0c58bc19', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-09 01:52:00', NULL),
('72708319-f512-4e2a-88c1-7db7db79e44c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:53:53', '2f5b7a18-9345-43b9-a90a-b72b50d68205'),
('72aca6d7-26d4-44db-afe0-5db47a42cbe2', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.84', '2026-01-11 17:37:43', NULL),
('732188c5-c275-4de5-a3b5-a439b264d46a', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 19:51:39', NULL),
('73883b4b-f5e5-4232-b080-9261f3773f79', NULL, 'Login Failed', 'Session', 'Failed login attempt for: aizuxar@gmail.com', '127.0.0.1', '2026-01-25 22:02:12', NULL),
('73bb0a71-5839-4d01-9725-76318456311b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: malt', '172.31.76.194', '2025-12-29 16:03:39', '4f95bc96-08b8-4aad-9f1a-b88a0b211f33'),
('73cd476b-5db7-4d4f-bfe7-d86d49733c95', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.83.162', '2025-12-31 20:52:00', NULL),
('73dcc0d9-df34-4ded-980d-8517a28cbac7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.106.130', '2025-12-31 19:52:36', 'ff642961-04b1-4350-acc8-1bc364736bf6'),
('7415d4b5-29ef-47f2-a88c-35ce9e41f9af', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Pinipple Juice', '102.89.83.161', '2026-01-04 17:20:49', '4cb68d68-635b-49cb-a6a4-0453de898b48'),
('745f852a-5718-431c-95a9-b6f8f6bfd8af', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 08:53:01', NULL);
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `entity`, `details`, `ip_address`, `created_at`, `entity_id`) VALUES
('755b7502-3163-40f0-81bb-4c79463f248d', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.91.93.139', '2026-01-05 16:48:34', NULL),
('7595d0a0-1597-4ad3-a741-d8e53b4af971', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 18:09:03', 'd14aeef2-d941-46a0-83aa-60323131bcaf'),
('7658ab83-11ba-4567-986d-5b5a4dd6458b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 200 12 pc posted to Main Store SRD for 2025-12-31', '172.31.103.162', '2025-12-31 04:18:58', '2f64a260-d98d-40cc-bd44-346f94737415'),
('768e1055-f785-437f-9ad4-f05d911fa70f', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.83.161', '2026-01-07 14:36:56', NULL),
('76ad1ac6-cae2-4cb3-aff0-6a15041e2385', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.75.162', '2025-12-27 22:04:49', NULL),
('76f01b57-e342-445a-b8eb-b6e2d8cc6f91', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.88.194', '2025-12-28 08:52:54', NULL),
('77122575-b32e-4c7c-b506-da64d431f37f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '172.31.65.226', '2025-12-26 07:46:31', NULL),
('7718300f-e4ed-4081-961a-f2f6f44696de', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 06:02:55', 'd48fe5dc-086e-404d-96dc-594130293089'),
('775c3436-7aef-472e-bb77-706c1cdaf927', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 posted to Main Store SRD for 2025-12-30', '102.89.83.161', '2026-01-04 17:21:34', '4cb68d68-635b-49cb-a6a4-0453de898b48'),
('77662f4e-6f7a-4a55-b6e9-66fbe69ceaac', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 05:50:43', 'acdc1c49-fa98-4ce1-aaa1-9b4be3e67fa7'),
('778ec442-d48e-4b45-9ccf-a354383b1609', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 21:09:24', NULL),
('77945994-0206-4e56-ad73-55db49970c41', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '102.89.82.72', '2026-01-05 05:52:14', NULL),
('782200a1-f274-44a5-bf79-aa1d7804debb', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Turkey', '172.31.75.162', '2025-12-27 19:36:55', '9131ca60-2d11-4d1b-bd8e-6be75a6a51c0'),
('788afb6b-52a5-4017-863d-615e69d0f000', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.89.98', '2025-12-27 05:02:23', NULL),
('788b2eab-689f-4119-80e1-56f8ea2a9666', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Client', 'THE CANTEEN', 'New client added: THE CANTEEN', '127.0.0.1', '2026-01-25 22:14:17', '1995910d-f8b2-42fc-8579-9e6aa2e72dde'),
('7915f87e-4035-414f-a63e-f81cc82b2dd1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from 43d27fe4-d8e1-4319-9f6b-7657ce33be4a to b30e98ff-9e99-4f22-b814-cd976d2c9c71, 1 item(s)', '172.31.66.226', '2025-12-30 18:21:34', '80377e8e-b095-4ac4-bbbd-d05cca8a68fb'),
('79530efe-0c4d-4f27-8871-1d427fc8e631', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.66.226', '2025-12-30 21:17:44', '429e83d8-5308-455c-8b53-19aa7c48e2d3'),
('7975df74-a604-4c7b-91c1-58cb6b795c41', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:54:32', '526f1f1f-7d83-4776-a496-e758c5bd09d8'),
('797aca81-af4a-40ff-a11a-3dcef54a0384', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '102.89.83.161', '2026-01-07 11:43:30', '108f1157-e6f9-4de0-8d8b-8d6b74774304'),
('79a663f5-6664-4370-845b-4566e3e35c2d', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Item Purchase Captured', 'Item', 'Purchase of 1000 12 posted to Main Store SRD for 2026-01-05', '102.89.83.161', '2026-01-07 11:33:33', '25dd45e4-bede-42db-9202-5596d0b6119e'),
('7a600051-8268-4f34-888d-eda781e0ba98', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '102.89.69.19', '2026-01-10 09:51:43', '3d85aa03-0784-4dbd-9953-de6bbd9d3ba0'),
('7a9b5c81-d63e-4b23-ad6e-4cdfa9259e8c', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Created Supplier', 'Supplier', 'New supplier added: NLM Ltd', '127.0.0.1', '2026-02-01 20:05:17', 'b0873ae9-c584-4b20-b2bd-3010b8aee970'),
('7abb6a63-a4f2-4b0f-830b-d1b7a6cd2c95', NULL, 'Login Failed', 'Session', 'Failed login attempt for username: miemploya@gmail.com', '172.31.65.226', '2025-12-26 07:37:12', NULL),
('7b056534-e516-461f-b83b-da0e1187ffee', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 2000 4 posted to Main Store SRD for 2025-12-25', '102.89.83.161', '2026-01-04 16:11:52', 'c9eb20d9-d8a3-4062-8d22-3421499b0b33'),
('7b7994bc-e40c-43af-822d-c31d47c2eff8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Client Department', 'Department', 'New client-level department added: Store', '172.31.89.98', '2025-12-27 01:37:57', '8ef0f287-556b-4228-b49e-db98218b8295'),
('7c052c01-1751-4506-beab-f3c51e3eae07', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.89.98', '2025-12-27 05:03:56', NULL),
('7c34e285-2b5f-4cab-a560-4de893c0d053', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Outlet Department', 'Department', 'New outlet department added: Store', '172.31.89.98', '2025-12-27 01:55:22', 'b78119c2-f83d-455c-905c-0b430ce7906a'),
('7c436672-5a65-4e08-8816-fe8bb40dee25', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 5', '102.89.83.161', '2026-01-07 04:27:43', '880427cb-b287-4d75-9d89-0765941eefeb'),
('7dc1fbb3-d00b-412a-9dd4-b7cf390f6332', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.103.162', '2025-12-31 05:19:08', 'bbb857b6-cf43-4e1a-9460-e71ed8938907'),
('7df3a59f-b367-4db2-9980-c81d8712e5c2', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Email Verified', 'User', 'User verified their email address', '102.89.83.161', '2026-01-07 10:51:41', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2'),
('7e070710-e0ea-4248-83df-bb29736970de', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f disabled for outlet bd279946-8a56-4e2f-8a40-714bdb2574c9', '172.31.89.98', '2025-12-27 03:24:34', 'bd279946-8a56-4e2f-8a40-714bdb2574c9'),
('7e7eee6c-4a22-42bf-87ed-3053fa3b39fd', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 300 4 pc posted to Main Store SRD for 2025-12-25', '172.31.66.226', '2025-12-30 18:08:09', '3315d410-2302-4ff8-8a38-6af5f1bee4ee'),
('7e81a5e8-2f0b-4224-a873-b072310392b5', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 01:43:15', NULL),
('7ee88a55-465c-48d7-8f21-3086b8ccab38', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Enabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f enabled for outlet bd279946-8a56-4e2f-8a40-714bdb2574c9', '172.31.89.98', '2025-12-27 03:03:22', 'bd279946-8a56-4e2f-8a40-714bdb2574c9'),
('7f19ba19-2584-49b1-a601-58c5550a0d6a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: fanta', '172.31.75.162', '2025-12-27 19:29:37', '452e403d-ba81-4c79-934a-aa2f4102fc04'),
('7f1ec6ed-66a2-44a7-84b4-4ac7ceb925d2', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.83.161', '2026-01-07 11:02:51', NULL),
('7f71e619-613e-4580-87fa-fdf52396a4d5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.66.226', '2025-12-30 20:01:12', NULL),
('7f9917fa-d899-4745-8d71-63909da0e284', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.76.194', '2025-12-29 13:03:18', '78dc80ea-423d-4e17-8ade-fcde6f1715da'),
('7faeb395-5b63-4195-b67e-11ba91b86bb2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.90.2', '2025-12-27 07:42:01', NULL),
('7fc68e1f-0c4a-413f-a7ec-197529d34d66', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 18:47:08', NULL),
('7fd43022-5677-4109-b706-4eb6824c7f35', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-02 02:10:01', NULL),
('8004cec7-12d4-43be-a227-b8d9b95da192', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '34.23.182.216', '2026-01-03 03:41:33', NULL),
('80405d54-11ca-440b-96ce-f17ea3ddfd29', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 10:45:39', NULL),
('805a84b5-5c58-4ba4-96e8-c2ec539ba3a2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.98.34', '2025-12-30 21:47:34', NULL),
('805f12a1-6727-430b-ae4b-b70847e0aae3', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 5', '102.89.83.161', '2026-01-07 12:18:09', '02577f64-0fbb-4913-a933-c39ed62987c4'),
('80a27119-a9ff-44fe-931f-33e519820468', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.84', '2026-01-11 20:06:58', NULL),
('81f1c94e-1038-428f-b919-57b01caf18d7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Enabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f enabled for outlet ff377523-7022-4bf4-969c-3781c0cf5000', '172.31.89.98', '2025-12-27 02:16:40', 'ff377523-7022-4bf4-969c-3781c0cf5000'),
('821d67e4-e3e9-4b78-91cc-1f9c10ae8dc2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '102.89.82.72', '2026-01-05 04:19:43', NULL),
('822b72ee-cb6c-420e-8a46-954ecb215465', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '172.31.68.226', '2025-12-30 12:27:59', NULL),
('828f6c68-0f47-4555-9ed9-982062cbc3f4', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 02:17:29', NULL),
('82e47ff7-9211-49b9-85e4-e91492619c0e', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created waste movement with 1 items, total qty: 5', '102.89.83.161', '2026-01-07 12:18:27', '4643091b-cfac-4800-8fef-6bd3c16331c2'),
('82e796cf-1880-4f33-8211-c1c2a7611756', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '89.105.214.120', '2026-01-12 08:36:06', NULL),
('82eb2830-bb20-4896-b82a-e95691b72255', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Client', 'Client', 'Client deleted', '172.31.65.226', '2025-12-26 10:08:11', '23495184-997f-4b6d-b432-033aa0276a76'),
('82f04921-7a37-4151-8577-e0d6a34ce835', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 1', '146.70.246.168', '2026-01-08 21:24:28', '77c79a18-54b1-407e-a9c9-08bc844622c0'),
('83468326-7f79-4e0b-a8a9-419378108970', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Beef', '172.31.75.162', '2025-12-27 19:36:18', 'a287c5f7-986d-46da-b030-addf085012c2'),
('83805e76-cd61-4450-ba41-e75cdf1ad536', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-02 01:11:00', NULL),
('83d788c0-f0f5-40d5-a4a7-a7f3035f880a', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '146.70.246.168', '2026-01-08 20:57:31', 'e8a99023-6736-4c45-a528-7853a19787f8'),
('849ef0f0-a848-4c86-844f-ab1240dbdd6d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.65.226', '2025-12-26 10:07:01', NULL),
('85174c49-a85f-48c1-9a9f-8b82023d3b98', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.83.161', '2026-01-07 11:02:06', NULL),
('855294d4-373e-4395-84f3-2eaea9cf8f14', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 20:06:25', NULL),
('855351dc-8084-465f-967a-1721a71349c3', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.65.226', '2025-12-26 09:00:30', NULL),
('856c3e99-5900-4bd5-b6d4-e9922dc48918', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.89.98', '2025-12-27 06:21:31', NULL),
('85b2dad4-73bd-47f0-b33d-bb476cbfc4ab', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 1', '146.70.246.168', '2026-01-08 21:23:51', 'a917f81e-0da3-46fb-8826-2bf3570ae2e4'),
('85f3722d-4932-4ec6-b18f-e7c0010594be', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Updated Purchase Event', 'PurchaseItemEvent', 'Updated fields: qty, unitCostAtPurchase, totalCost, supplierName, invoiceNo, notes', '102.89.76.161', '2026-01-09 19:56:10', '40f596ed-c2a5-4220-a15e-b25c9525535a'),
('8606d023-7139-4304-8ad0-ea526537269c', '0ff460ab-5b96-4b2d-b85f-d04c54faf25f', 'Demo Login', 'Session', 'Demo account login for development preview', '102.89.82.72', '2026-01-05 05:53:07', NULL),
('8790e589-f9d4-472d-b950-25bf0c690d46', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Category', 'Category', 'New category added: F&B', '172.31.89.98', '2025-12-27 04:57:27', 'a6787752-fac5-43a1-8f72-039e4105a57a'),
('87b13e3d-6904-4d83-8425-bf42e67feef4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Sun Dec 28 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.88.194', '2025-12-28 07:54:41', '06d8c079-2398-488d-ac02-5f039094e1ac'),
('87e7a9bd-48e6-4c10-9e0a-d3ea5e2e4aea', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Stock Count', 'StockCount', 'Stock count deleted and SRD ledger reversed', '172.31.103.162', '2025-12-31 05:23:00', 'bbb857b6-cf43-4e1a-9460-e71ed8938907'),
('88109259-6cdb-4868-af7b-dc83828f07d8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:54:36', 'a6ca6bae-d6ad-488d-9a85-8f9c3eabe7dd'),
('883beb5f-d026-4d6a-94e2-34408aa70274', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 07:07:11', NULL),
('8885b380-ccb0-486a-8d73-0c7ffd32bbff', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Pinipple Juice', '102.89.83.161', '2026-01-04 16:58:38', '9690d9bd-79a9-4a79-af02-c48450c3b162'),
('889e2b67-92be-49c0-be0c-eef370b0b796', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Water Melon Juice', '102.89.83.161', '2026-01-07 07:10:34', 'a8606352-f7d1-40e6-8500-8ffcbcc12924'),
('890cee0d-295b-4f83-8bf7-41c15721d102', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.72', '2026-01-05 04:49:40', NULL),
('897d9634-963e-4bcd-bc2d-d87d224d6734', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.91.34', '2025-12-27 12:42:49', NULL),
('89be98a2-d282-48f6-9ec8-519d0e24f10e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '102.89.83.161', '2026-01-07 06:37:46', NULL),
('8aa2b380-2ae1-4016-8436-9fc314769597', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 11:18:40', NULL),
('8be3b72e-a9a0-4337-b536-7ceb5b76bfde', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.89.98', '2025-12-27 00:52:54', NULL),
('8bf3c55b-e622-4a04-9dc6-4ff9259e72b1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Stock Count', 'StockCount', 'Stock count deleted', '172.31.114.98', '2025-12-30 04:37:41', '223fcb77-419f-478c-b90e-ddb59f322c5a'),
('8cb332a0-8d69-473d-95e0-f101ab850477', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'Password Reset', 'User', 'Password reset via email link', '34.26.99.240', '2026-01-02 22:09:43', '08cae6ca-1bda-42e0-8cee-bdb28d071529'),
('8d197567-15e2-4ffd-be74-c31003b993f0', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Reversed Stock Movement', 'StockMovement', 'Reversed transfer movement. Reversal ID: 011078e8-71c4-4637-8e51-b84d421a049f. Reason: un', '102.89.83.161', '2026-01-07 11:44:07', '267132cb-8cfd-4b77-a18d-e4499cb6be97'),
('8d4b7a6e-b33a-49e5-987b-bdd8bdc02a21', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 10:10:44', NULL),
('8da87b29-261b-497b-8247-9ea57ede25d1', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Deleted Department', 'Department', 'Department deleted', '102.89.83.161', '2026-01-07 11:15:52', '5c0cc6c6-6ff9-4bbe-9969-2fcdcb958b11'),
('8ddf2c90-b885-4037-887b-6c3c9f4672cc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.76.194', '2025-12-29 15:53:54', NULL),
('8df8397d-1aba-45d5-a952-352c0b48be13', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Updated Exception', 'EXC-20251226-002', 'Exception status: resolved', '172.31.75.162', '2025-12-27 19:20:02', 'ac867377-b1be-4924-b6a3-57fde4529d70'),
('8e3a3ff4-7a6a-440b-82c8-2d75e343d2cb', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Reversed Stock Movement', 'StockMovement', 'Reversed transfer movement. Reversal ID: 9f4babe7-a763-486d-bbfa-5983a9a60202. Reason: fd', '102.89.75.77', '2026-01-08 02:03:52', '93ea492b-2b76-480c-996b-56f25b9c32fe'),
('8e71e00f-96fa-4884-a2f3-774b2ea7ef84', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.98.194', '2025-12-29 18:48:32', NULL),
('8ed854d8-dcca-40f4-a249-44e9e6ae2c84', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '146.70.246.168', '2026-01-08 20:05:53', NULL),
('8edc6631-c5e2-419c-9829-1a3a30640e11', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 20', '102.89.76.10', '2026-01-09 09:49:20', '4a0349fe-d1c8-4455-81f3-f8377f686d3d'),
('8eeae6aa-24d3-4ca7-825d-35c0aa65cd2a', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '102.91.93.139', '2026-01-05 17:23:20', '17394d2b-3d23-4918-a012-d85b0d0a6251'),
('8effb51d-f33b-4a56-83c7-96a7411b90f5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.114.98', '2025-12-30 09:49:08', NULL),
('8f4f4ef7-04f8-46d6-8187-3776d86f9042', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 8ef0f287-556b-4228-b49e-db98218b8295 disabled for outlet 30e7c959-e001-45df-8a8b-c160c354fcca', '172.31.89.98', '2025-12-27 01:39:02', '30e7c959-e001-45df-8a8b-c160c354fcca'),
('8f5a509f-7165-4943-bd33-e0f807a63513', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Client', 'igh', 'New client added: igh', '172.31.89.98', '2025-12-27 00:15:25', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de'),
('8f5baba0-5146-48e4-acc1-7e54fdd5666c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 00:12:14', NULL),
('8f609044-f4d0-4fda-8690-51dca63f2b8c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 09:12:45', NULL),
('8f9a3172-cb8b-4223-959c-4bc51f1560fc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Mon Dec 29 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.107.130', '2025-12-29 05:22:08', 'fbf40bfe-6f76-4b06-b9c7-36ceebebbac8'),
('8fcbb0df-9880-4978-8fb9-3ec25c6cf71f', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-01 22:51:48', NULL),
('8fd52ddb-aa5f-4748-b11b-78bad9778766', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.66.226', '2025-12-30 21:18:21', '0bdcd282-4089-4893-9aeb-1d21316ef2a1'),
('902e7cff-9087-41af-9dbd-c258b8b0fb8a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.83.162', '2026-01-01 00:06:33', '5e70b345-d3a0-4927-b1e5-a30bf1863204'),
('9051c08f-d03f-4fe4-b8f5-30612ce918e6', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 1', '102.91.93.139', '2026-01-05 17:22:05', '710b649d-1f25-4e27-a9a1-cb68044c91b4'),
('909c6563-376b-43ba-8a22-309b5da46dfa', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from 43d27fe4-d8e1-4319-9f6b-7657ce33be4a to c47d93b1-4801-445b-a77e-8362ebb25442, 1 item(s)', '172.31.114.98', '2025-12-30 08:26:15', 'cfc2d219-0286-4e4a-9c92-a1737b8698d5'),
('913a70b9-623a-4341-b7be-bf09a73eab06', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 09:20:41', NULL),
('9171a25a-4823-47b9-b996-a6cc8c99049a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Receivable', 'Receivable', 'Amount: 5000.00', '172.31.83.162', '2026-01-01 04:42:57', 'eb1e3b28-7660-4f68-8f91-8785e9ebbabf'),
('919f7cc7-0309-42c4-9752-300caa79bb03', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Deleted Item', 'Item', 'Item deleted', '102.89.83.161', '2026-01-04 17:17:09', '9690d9bd-79a9-4a79-af02-c48450c3b162'),
('91be7879-b307-4f85-91e0-5363b71f3389', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.72.226', '2025-12-29 08:42:59', NULL),
('91d2bb96-9e17-4936-ae94-a9b133732541', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 30', '102.89.76.10', '2026-01-09 10:41:54', '7cf2b513-ae89-4135-9b57-92fe96fd1a05'),
('91fed221-4a99-4554-87a4-a8cbf8658bd6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.76.194', '2025-12-29 12:58:03', '3bb92c6d-6604-42ac-91e7-1747de843774'),
('9231153c-92a6-4d62-8263-9dff702a6845', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Client', 'Client', 'Client deleted', '172.31.83.162', '2025-12-31 23:33:34', '317f6249-67f9-4d29-ab92-9744b16fc737'),
('923952e6-3572-40af-b4f7-7bca2736f28a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.76.194', '2025-12-29 16:36:17', 'e29fb675-1cda-4212-8830-beab067b980f'),
('9359ea37-a0b1-4f07-ae7a-6f6decc62cfc', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 00:36:05', NULL),
('9374a02d-64eb-4f66-a109-2663c8807684', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '172.31.83.162', '2025-12-31 23:47:53', 'f834436a-a97b-4bc5-a840-ba5621be5720'),
('93ea3ffa-c84a-4ba4-b62b-9a1d2a765339', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '172.31.68.226', '2025-12-30 12:27:48', NULL),
('94499567-e5c7-415a-ab55-3c1de5adb3dd', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Enabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f enabled for outlet c3091f91-dcec-4cee-b3ba-ab7c04ff5657', '172.31.89.98', '2025-12-27 03:18:46', 'c3091f91-dcec-4cee-b3ba-ab7c04ff5657'),
('94b3c235-6d64-4c2e-8450-38972b135142', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.75.77', '2026-01-08 02:36:35', NULL),
('94e2e029-7957-4537-a725-31d30a745a7d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 06:02:11', '2eaf6c79-5750-4f6a-bf93-c57897517d6d'),
('953556c2-202c-48ed-8461-be342ff10dae', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.105.66', '2025-12-29 23:37:08', '223fcb77-419f-478c-b90e-ddb59f322c5a'),
('95aecfe3-4852-483d-930e-27f3c58a2d2c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.76.194', '2025-12-29 13:01:16', '1179cc57-fad0-4be5-95d7-1aee500f3efd'),
('95b5bc55-891a-4fd7-8668-0f76a597f4ba', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 14:55:25', NULL),
('95cee67d-113a-4a39-a528-7d78f568fcf8', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.68.19', '2026-01-04 14:47:27', NULL),
('95edf080-3f31-4c88-b06d-027e1f7abc0b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.126.98', '2025-12-31 13:19:23', NULL),
('9618e877-3c18-4c6e-9413-ce550f413ba2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Store issue created for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 20:29:31', '8dbe2313-59f3-4952-863b-0d201a53a4fd'),
('97009ad1-383a-44b4-87ae-557f4803055b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.103.162', '2025-12-31 08:17:57', NULL),
('97846c5e-b7af-4943-8ed5-45f0a9674971', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '102.89.83.161', '2026-01-07 12:36:59', NULL),
('979b2d72-c679-47bc-9ada-b9020e5e4958', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 250 4 pc posted to Main Store SRD for 2025-12-28', '172.31.105.66', '2025-12-29 21:55:01', '3315d410-2302-4ff8-8a38-6af5f1bee4ee'),
('97bc85de-b2c3-46b9-bd3b-8cceca1ff1ed', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.65.226', '2025-12-26 08:41:14', NULL),
('97f18b30-6328-4d29-924b-ceebe0e2fbe9', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.68.226', '2025-12-30 11:52:31', NULL),
('97f3d6f3-f851-4096-a15a-bd75d21a275f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Supplier', 'Supplier', 'New supplier added: Store', '172.31.90.2', '2025-12-27 09:22:46', 'ea1b27ba-f514-4963-8f6a-21c43afd4a60'),
('98066b8b-552d-43b8-83d8-6776826d42c7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Spirite', '172.31.75.162', '2025-12-27 19:30:24', '4d2e8487-24cd-4808-8599-ea3ab578ea82'),
('98198682-66ce-4d82-936c-44566163d743', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 50', '102.89.75.77', '2026-01-08 02:22:58', 'e1a4f183-875d-4bf5-a8c7-4b536293af14'),
('98ae7a47-6f4e-4830-aa98-105a09aaa3b7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f disabled for outlet 30e7c959-e001-45df-8a8b-c160c354fcca', '172.31.89.98', '2025-12-27 01:49:19', '30e7c959-e001-45df-8a8b-c160c354fcca'),
('98afac73-e2f5-48fa-934f-ab0415dcc0e0', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Sun Dec 28 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.88.194', '2025-12-28 07:42:10', 'c0c38588-b255-46bb-b99a-277ebfa337f2'),
('98d8b37a-f0c8-4c22-b0a9-6988b193b17f', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Created GRN', 'GoodsReceivedNote', 'Invoice: Inv-2026-001, Amount: 20.00', '127.0.0.1', '2026-02-01 20:06:08', '2d429b27-0e8e-49b9-8f23-49bca23c5adb'),
('99033084-0bd3-4c0d-b999-1832c0fd67b0', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Deleted Item', 'Item', 'Item deleted', '102.89.83.161', '2026-01-04 17:18:20', 'e32b0092-be1a-4fe8-bfad-9e346f693401'),
('99258265-4b9b-4ec4-8ac8-9b79928782bd', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.76.194', '2025-12-29 12:59:47', '41136898-7ad4-433d-a280-2d4e2a665506'),
('99df1781-3c6a-44f4-acff-3f873c399e14', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Reversed Stock Movement', 'StockMovement', 'Reversed issue movement. Reversal ID: 96db7e1e-0213-45f1-ba37-05e340992f2e. Reason: td', '102.89.83.161', '2026-01-07 07:57:49', '72243d47-1c20-4ad7-9465-28f601b6aede'),
('9a18c620-8994-4b13-ba51-a6c37a509ccd', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-03 23:28:32', NULL),
('9ac15080-6755-4ce5-a622-1ee3d5a1e188', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 400 12 pc posted to Main Store SRD for 2025-12-21', '172.31.103.162', '2025-12-31 04:17:16', '0685f443-471a-4a34-927e-f5e41fbeb2d3'),
('9b28336e-ae82-4968-9fbc-a72bf6fbd19f', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-01-01 22:11:18', NULL),
('9bde0071-d13e-4dad-8d1f-56c49058784c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created waste movement with 1 items, total qty: 20', '102.89.76.161', '2026-01-10 00:27:56', '3b4bcfce-7744-4468-9c37-83f0c325ccbb'),
('9c32ffe5-3e7f-4fde-a101-976d5967ea2b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '172.31.83.162', '2025-12-31 23:50:55', 'd47a2792-4a52-4e7b-8ed0-1b752f7fb97b'),
('9c40e0a3-e9cf-4a5d-965c-5aed021b89c7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 300 4 pc posted to Main Store SRD for 2025-12-06', '172.31.66.226', '2025-12-30 18:16:10', '29070060-0461-41bc-afaa-d58281cef2bb'),
('9c600416-56d2-496a-b2b7-2751339f98c3', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.103.162', '2025-12-31 08:24:37', NULL),
('9c92c6bf-436d-45b4-9570-91d18810d4f1', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 11:00:07', NULL),
('9cc740bd-0c5d-447f-a9af-62823a21dfd7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.107.130', '2025-12-29 05:50:30', 'acdc1c49-fa98-4ce1-aaa1-9b4be3e67fa7'),
('9d148192-5083-4f35-9837-9c8b7ce82286', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.114.98', '2025-12-30 08:01:30', NULL),
('9da1c8ac-b412-4e2f-aaa9-6ef1a4acfccf', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-03 22:47:06', NULL),
('9db93d11-459a-410b-a4c4-cd7c7ab9ec8d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 08:23:16', NULL),
('9de83cd2-8624-48ca-a8b3-3ceb66908bfa', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-02 00:34:49', NULL),
('9dfe64fb-2090-4bf3-ad70-7ccf37eca298', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 8ef0f287-556b-4228-b49e-db98218b8295 disabled for outlet 30e7c959-e001-45df-8a8b-c160c354fcca', '172.31.89.98', '2025-12-27 01:41:58', '30e7c959-e001-45df-8a8b-c160c354fcca'),
('9e0cbdce-4c1c-4358-b9d4-2777c7472618', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 10:24:48', NULL),
('9e893036-a743-454f-b20d-b7d21616f633', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.98.194', '2025-12-29 19:38:34', NULL),
('9ef2346a-60c3-4e78-b72a-56840cf48133', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.83.162', '2026-01-01 01:13:25', NULL),
('9f5b8fc4-ba99-4245-b6b5-d9455bb29070', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-03 22:58:03', NULL),
('9fd1f423-3b41-4113-86df-db257d7a00cb', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 50', '102.89.83.161', '2026-01-07 05:28:58', 'bf881fb4-f51c-4bc0-8fe8-211227e3e623'),
('a06461b0-e1b7-48e1-8ce3-1f138fe48b79', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '35.227.15.160', '2026-01-03 21:36:51', NULL),
('a06f736b-4e17-4b47-a80d-a0d475bfc134', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Client', 'Client', 'Client deleted: THE CANTEEN', '127.0.0.1', '2026-01-25 22:15:03', '1995910d-f8b2-42fc-8579-9e6aa2e72dde'),
('a079a983-8bdf-4b92-afe2-9339892b0389', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'Login', 'Session', 'Successful login via web', '35.243.160.31', '2026-01-03 03:41:56', NULL),
('a084b6aa-c5d1-472c-86d4-ecb70a3277e4', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Category', 'Category', 'New category added: F&B', '102.89.83.161', '2026-01-07 14:35:48', 'b098cb17-0f0b-4dfe-9552-71be8a493d35'),
('a0e707b4-3f8d-4742-9a85-a526319465dc', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Client', 'JAMSON SON\'S LTD', 'New client added: JAMSON SON\'S LTD', '102.89.83.161', '2026-01-07 11:00:46', '362dc0ec-8ece-472a-adf9-7724cf6aa3fa'),
('a19c4ea2-99aa-464c-bb66-f741eb16f9cc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from 43d27fe4-d8e1-4319-9f6b-7657ce33be4a to b30e98ff-9e99-4f22-b814-cd976d2c9c71, 1 item(s)', '172.31.105.66', '2025-12-29 22:17:25', 'a3734fcd-4e19-4664-8de1-d5fdb514e8f7'),
('a1cf933f-6908-4730-bb2a-7147a3a0202f', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 posted to Main Store SRD for 2026-01-07', '102.89.83.161', '2026-01-07 14:57:38', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2'),
('a26a30bb-4692-4b02-a69b-5f233c27988f', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-08 22:13:40', NULL),
('a27f996a-c023-46d9-8b6c-a31ea1350016', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 18:08:37', '1a25be9b-3ffe-486e-a09c-a0a5d7c76f5a'),
('a2ec3e11-c74c-45f6-8997-92f47f11011c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.76.194', '2025-12-29 12:55:54', '70692a6e-cc23-4529-9d05-cdebacb4c7de'),
('a34b9c06-efec-4bde-a839-a1ab5a3995f7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from b30e98ff-9e99-4f22-b814-cd976d2c9c71 back to 43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '172.31.105.66', '2025-12-29 22:16:20', '62d418e9-e867-44a6-9a8b-1dc0abafdb6f'),
('a36ca938-776f-41a3-8c0a-bd1016378026', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.77.34', '2025-12-28 15:19:29', 'd48fe5dc-086e-404d-96dc-594130293089'),
('a3b6d7f2-a9f1-4e84-8374-d38045e41118', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Item', 'Item', 'New item added: Malt', '102.89.83.161', '2026-01-07 14:55:03', '2329f86b-aabd-4aac-b4f2-8e572f51588b'),
('a3c4dc26-5a1f-40c7-82a5-12a855cd4abf', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '35.227.47.41', '2026-01-03 21:41:11', NULL),
('a3c935d6-a164-42a4-b2e9-a20da80b42ea', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Category', 'Category', 'New category added: JUICES', '102.89.82.72', '2026-01-05 03:29:56', 'b205ea14-19c3-4ae2-ad72-345740062053'),
('a3dccbab-cdd8-4b74-ab85-dc99fe645c5c', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Reversed Stock Movement', 'StockMovement', 'Reversed waste movement. Reversal ID: 56639b9d-45d9-4853-955e-b6b79c100c08. Reason: u', '102.89.83.161', '2026-01-07 12:38:45', '4643091b-cfac-4800-8fef-6bd3c16331c2'),
('a3e9d67d-2c3f-428f-bfcd-c09c650be745', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-02 01:09:40', NULL),
('a44be8a0-38f2-456b-9f70-bd5ed4b25698', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.76.194', '2025-12-29 15:58:24', NULL),
('a458bf36-3d2f-45da-b442-5e625862cec0', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '35.243.160.31', '2026-01-03 22:33:13', NULL),
('a46f0264-32e9-4337-aee2-4737bc83d399', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login Failed', 'Session', 'Invalid password attempt (3/5)', '102.89.76.161', '2026-01-09 18:31:13', NULL),
('a4ff702a-6245-4088-b8a2-f80d7389fed5', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.84', '2026-01-11 17:37:59', NULL),
('a544af78-17a0-494a-9b2c-1c8d57cc210a', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Email Verified', 'User', 'User verified their email address', '35.231.177.91', '2026-01-03 03:57:12', '6419147a-44c1-4f3c-bbcb-51a46a91d1be'),
('a56fbbf5-f216-488d-bfd3-dc7d7eb73d77', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 10:52:06', NULL),
('a5e3d622-5406-4039-86c8-0277bc5fa27c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.76.194', '2025-12-29 16:27:36', '3bb3b0b3-c632-430d-83b7-a38797798526'),
('a5ee3092-2608-4c55-a1f4-5996f8705242', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'Login', 'Session', 'Successful login via web', '34.139.219.171', '2026-01-03 03:54:12', NULL),
('a5fb02dd-9354-497d-84fa-af3d612102bf', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Category', 'Category', 'New category added: WINE', '102.89.83.161', '2026-01-07 11:01:31', '35028502-f1bd-41c8-8d46-cc46dab821f5'),
('a6699f7b-205c-438c-90c4-44cc45c8a4e2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from 43d27fe4-d8e1-4319-9f6b-7657ce33be4a to b30e98ff-9e99-4f22-b814-cd976d2c9c71, 1 item(s)', '172.31.66.226', '2025-12-30 18:24:14', 'f8d24b14-91dd-403d-9147-eb145538ce2b'),
('a6dcb14a-ef29-4fbb-9b1b-edaaac98b40d', '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', 'Seed', 'System', 'Database seeded with sample data', '127.0.0.1', '2025-12-26 08:34:06', NULL),
('a6fd78c2-b6ac-4ee5-9cc5-73aa96277163', NULL, 'Login Failed', 'Session', 'Failed login attempt for: aizuxar@gmail.com', '127.0.0.1', '2026-02-01 20:24:16', NULL),
('a72accb4-421d-4d23-9242-ed439b569151', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.68.19', '2026-01-04 14:51:39', NULL),
('a740d5f2-4ca2-4a56-bc47-702c953b28e5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 15:05:51', NULL),
('a756faad-3647-4fcf-9bdc-90caf79a38c5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.68.226', '2025-12-30 12:28:26', NULL),
('a769098d-9fd5-4bb7-927f-c05cb02a2106', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '34.23.182.216', '2026-01-03 22:19:10', NULL),
('a79e3b3c-dfed-4f14-8ec6-4be3bba43cf9', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Rice', '172.31.76.194', '2025-12-29 12:56:29', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7'),
('a7bc13ad-3527-4444-9c7a-a6ea92f5776c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.76.194', '2025-12-29 13:05:07', NULL),
('a7c0f36b-907b-4f2d-9f3d-0cb832044771', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created GRN', 'GoodsReceivedNote', 'Invoice: WSG234, Amount: 20000.00', '102.91.93.139', '2026-01-05 15:41:29', 'c617523a-929c-4180-b5fa-69ba34d069df'),
('a7d77e61-c128-41f6-a7c7-f2f6af1fd15a', NULL, 'Login Failed', 'Session', 'Failed login attempt for username: john.doe', '172.31.65.226', '2025-12-26 07:34:01', NULL),
('a7e768e5-86ab-475f-a2b8-48afcef857a5', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '102.89.76.161', '2026-01-09 19:29:55', NULL),
('a7f8ee89-7b45-4740-83ad-afaadc20774b', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '102.89.75.77', '2026-01-08 02:06:33', '40d96b6e-d1c7-414c-92ba-5f128b15bac7'),
('a80cd246-602f-41d2-bdfc-46463f35bdc5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-01-25 22:12:07', NULL),
('a8985322-3439-44b1-858b-9e74c574fd74', NULL, 'Login Failed', 'Session', 'Failed login attempt for: openclax@gmail.com', '34.23.182.216', '2026-01-02 20:46:06', NULL),
('a927300d-2382-405d-8118-6fe9d56b38ce', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.89.98', '2025-12-27 05:53:59', 'f5284b4a-d7e5-4312-8893-7c5cbd29de49'),
('a96d84e5-4751-4f29-8389-5daff42c1bdd', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 14:45:07', NULL),
('a9a6bb25-02a1-491b-826e-09423ffd36a5', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 20', '102.89.83.161', '2026-01-07 12:57:49', '171f5a80-ffbf-4a04-810c-d59aff091d6b'),
('a9d5c6d4-d9d3-42f3-a1bc-78982f2928ea', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 07:23:43', NULL),
('aa298819-984b-415e-863f-21014f3115a2', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 50', '102.89.83.161', '2026-01-07 11:52:39', 'ec429552-0750-4098-8a85-8932449db531'),
('aa6836fa-5fb2-49ed-95b9-2bd82ad9138f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.70.130', '2026-01-02 00:25:17', NULL),
('aa9fd48c-ee4b-4893-90db-71620c12eb77', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created waste movement with 1 items, total qty: 5', '102.89.75.77', '2026-01-08 02:17:27', '98817a96-61fd-47b7-a753-668b16f07a05'),
('aadc8155-04d8-483c-af69-1cdf056ce63d', NULL, 'Login Failed', 'Session', 'Failed login attempt for: aizuxar@gmail.com', '127.0.0.1', '2026-02-08 22:04:56', NULL),
('aaea159f-5426-4945-b222-c81e71cc6b27', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.84', '2026-01-11 16:46:41', NULL),
('ab2eb677-2d57-4cfe-aca7-1800da8ebe44', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 07:40:15', NULL),
('ab331812-7755-4ee5-9a81-7910ec34acea', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.76.194', '2025-12-29 16:24:28', NULL),
('ab8523ba-231d-4cf1-80de-6ba86a35b8f4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.65.226', '2025-12-26 09:27:51', NULL),
('ab99ed3f-371d-4bda-8936-573d1ec2c080', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Super Admin Credentials Updated', 'User', 'Super admin email/password updated via bootstrap (dev=true)', '102.89.82.72', '2026-01-05 05:17:43', '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('abbdd8e8-35f4-4a98-9f2a-f5df43b7b740', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.65.226', '2025-12-26 07:40:37', NULL),
('ac494c62-34b1-4872-b101-400698055814', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department 11744f70-511a-4909-b546-7ab652b34471', '172.31.105.66', '2025-12-29 23:31:31', '050a27e9-8207-4cd3-8670-76f62513fb43'),
('acc84fa5-bf8a-45c6-8873-c452dd7c459e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.65.226', '2025-12-26 09:11:06', NULL),
('ad3b3dec-2471-4f57-a1c8-4e79f2532501', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 100', '102.89.83.161', '2026-01-07 05:27:31', '863910f1-ecf7-4a04-9824-4c37fe928ee1'),
('ad91b4de-f135-42f0-97f6-a00310e8d349', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '102.89.82.72', '2026-01-05 06:00:21', NULL),
('ada8d2e9-4d23-4356-bb51-41f15cb3b3f3', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deactivated Department', 'Department', 'Department deactivated: Bar. Reason: Not specified', '172.31.89.98', '2025-12-27 01:44:08', '295ef96f-f7bb-4ed8-9026-6ad28c70cf0f'),
('ae02895a-2095-4561-a31e-299438a18619', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-09 01:45:19', NULL),
('ae1f2e64-6838-4502-9e76-80b3a405ad31', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Department', 'Department', 'Department deleted', '172.31.114.98', '2025-12-30 09:52:54', '36c6f038-be85-49e2-a6e8-a5209ef33fe4'),
('ae2c7516-fdbc-4c13-adbb-4ee7d2db030d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.114.98', '2025-12-30 07:08:11', '1fe06033-c5ce-45bc-8d06-9c1fa691d113'),
('ae556ac1-672b-4d64-8442-0222e94f21c2', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 10:52:17', NULL),
('ae8cfb90-34d8-4d47-b203-56d8d86a401a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: PINIPPLE JUICE', '172.31.105.66', '2025-12-29 21:56:12', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d'),
('aeb91792-a9b7-4dce-adb6-ea6cc7e0e64d', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Item', 'Item', 'New item added: Malt', '102.89.83.161', '2026-01-07 11:13:16', '7035af8f-5550-4120-b3d7-6dae1eab3e91'),
('af407456-1093-4705-804c-9ba677d24b30', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '35.243.129.130', '2026-01-03 21:37:05', NULL),
('af6bef98-6ea9-4940-8e81-8b62f63a98ec', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '102.89.82.72', '2026-01-05 05:12:22', NULL),
('b030fade-0fdb-449d-a943-7795507ca729', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 15:33:54', NULL),
('b07e57fa-6af8-42bc-9dc9-c1d21e793761', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Department', 'Department', 'Department deleted', '172.31.89.98', '2025-12-27 04:56:59', '1b2a1e08-a1e9-4a4d-addf-b5bed4e3bd1c'),
('b088a525-993b-4efd-9783-407937bb6bc0', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 07:04:49', NULL),
('b0a48d2f-cf81-4b6c-8052-e9c1457ebc4a', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Deleted Item', 'Item', 'Item deleted', '127.0.0.1', '2026-02-01 20:04:18', 'f8fa73c0-8a3a-424b-90e6-0070243137f2'),
('b0b41b08-04ce-4111-b44a-2c652e8a5b87', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.75.162', '2025-12-27 23:11:42', '5f92ccdb-b14e-47d5-b89c-6f07c507e7db'),
('b0cbaa39-2a83-4c03-8bb4-443311e4677a', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 25', '146.70.246.168', '2026-01-08 21:09:54', 'd76127d5-fc17-47d1-b28a-74c392bf0ab3'),
('b124022a-1c54-40a1-be1e-1a63d074125b', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 30', '102.89.76.10', '2026-01-09 10:50:03', 'fdd4835b-b036-4d76-b2b3-70a07e1fd4e4'),
('b16c4e40-d9e6-49d4-9526-868cd6ccb584', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 1000 12 pc posted to Main Store SRD for 2025-12-01', '172.31.103.162', '2025-12-31 04:56:06', '2f64a260-d98d-40cc-bd44-346f94737415');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `entity`, `details`, `ip_address`, `created_at`, `entity_id`) VALUES
('b1792150-b9c1-46b7-901a-4f1b9796cecd', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.66.226', '2025-12-30 21:26:40', '203b2e68-37fb-44d7-b53a-22c3ee3b3335'),
('b227fdde-8212-4ed6-90b1-f584cca83979', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 70 60 posted to Main Store SRD', '172.31.77.34', '2025-12-28 11:45:24', '526f1f1f-7d83-4776-a496-e758c5bd09d8'),
('b2356053-fb5c-4ef5-b946-85b09a559210', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Email Verified', 'User', 'User verified their email address', '172.31.70.130', '2026-01-01 22:29:42', '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('b235b5d2-0ba2-48f6-a431-2171b1c79270', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '35.243.160.31', '2026-01-03 22:18:30', NULL),
('b2d77c64-27e8-401d-9e3b-d8c689ab25a4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Surplus', 'Surplus', 'Amount: 1000.00', '172.31.105.66', '2025-12-29 23:53:31', '43c9b6ae-4b92-46e0-843f-9cb84dad0eac'),
('b2d7bbef-0f07-49dd-8c32-cc7e1fe8cda6', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 07:55:50', NULL),
('b2ee56ce-46fe-4af9-b49d-97e888497305', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 08:07:06', NULL),
('b347ced1-5643-416e-a224-bd84708047f2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 78721483-0a9f-4e27-9e4f-30fc9f848485 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 12:42:25', '3c2c0d4b-a8dd-49e1-b48f-394cfccc6408'),
('b361014a-6b71-41d4-81f7-3d1e635f2e32', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Department', 'Department', 'Department deleted', '172.31.89.98', '2025-12-27 04:56:54', '295ef96f-f7bb-4ed8-9026-6ad28c70cf0f'),
('b40a6eac-5c18-4e36-8587-a56152e74669', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Water Melon Juice', '102.89.85.63', '2026-01-04 07:56:56', '309643db-83a3-46de-b573-959bf1bb7a54'),
('b40b9195-4103-4368-933c-8a6421bb3e5a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 50 25 captured for 1 store(s)', '172.31.88.194', '2025-12-28 10:11:55', 'a6ca6bae-d6ad-488d-9a85-8f9c3eabe7dd'),
('b41e967b-324c-4016-bb74-d97b9e575044', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 5000 4 pc posted to Main Store SRD for 2025-12-01', '172.31.103.162', '2025-12-31 05:56:56', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d'),
('b44e7574-477a-42a8-9d25-a8bef28956dc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created GRN', 'GoodsReceivedNote', 'Invoice: Ed246, Amount: 120000.00', '172.31.88.194', '2025-12-28 07:28:04', 'e2d8fd86-1613-443e-9d50-d841d0024a45'),
('b4bd9256-4446-4ca8-8ae1-a7ee7947481c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '185.107.56.156', '2026-01-12 13:58:13', NULL),
('b4cd28bb-2e51-48dc-a280-d176b704e83b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.103.162', '2025-12-31 09:51:08', NULL),
('b52cc0cd-e8d8-422f-afa7-6ad5d243b4a6', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 23:13:50', NULL),
('b56967bd-6149-4b4e-bdcf-eabea9631773', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.83.162', '2025-12-31 21:27:18', NULL),
('b57627cf-8c1e-4f47-be97-6ce092f14094', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '102.89.76.10', '2026-01-09 12:22:56', NULL),
('b64a4036-b464-4823-a834-83b349be311d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.77.34', '2025-12-28 18:01:20', 'f8176081-c330-444e-960b-50545caa83da'),
('b68de33b-d197-4437-83bf-73b655c5e4b0', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created GRN', 'GoodsReceivedNote', 'Invoice: WSG234, Amount: 200000.00', '172.31.88.194', '2025-12-28 07:29:04', 'f7388c2b-b8e5-49fa-9500-c758e35af098'),
('b6ee199c-ce18-41cf-9830-0b4b8d9e4de0', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Tue Dec 30 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.114.98', '2025-12-30 04:46:53', '2ac0cb5d-1b9e-4539-ab57-940e53174583'),
('b7d50465-880d-4817-8567-ce35b3826bf6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 1000 12 pc posted to Main Store SRD for 2025-12-01', '172.31.103.162', '2025-12-31 05:58:19', '0685f443-471a-4a34-927e-f5e41fbeb2d3'),
('b811d33f-a178-42ce-b36a-e3a74b2fac2f', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 15', '102.89.69.19', '2026-01-10 09:47:33', '258af520-c6b7-42d4-b688-eb58d67457bb'),
('b849bd4a-94ed-4daa-a09b-d9d32a9029ea', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.89.98', '2025-12-27 05:03:37', NULL),
('b851dcbf-8289-43a4-9e9e-abd60a707b8e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-03 23:31:59', NULL),
('b8914c51-ceeb-4b9d-82ac-8b8444fc3c73', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '102.89.76.10', '2026-01-09 09:54:04', '5c6c57fe-5d52-4df9-b672-a0a58d0ac86d'),
('b8e41dd8-1f7f-4063-8032-c1419083dd91', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.103.162', '2025-12-31 05:21:19', 'b4ed9eb0-796e-4f83-bb89-1594b3a0a72a'),
('b95d9153-55cd-4f5c-b31e-2985e219d576', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.76.194', '2025-12-29 17:08:34', NULL),
('b9e190d3-cf60-42d2-b009-c2e990629e57', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-04 17:19:26', NULL),
('bacfa7df-e070-444a-bd9e-b1a851420c24', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '34.74.106.240', '2026-01-02 01:56:00', NULL),
('bc1c3afe-827c-4d4d-bc91-c18dcdf0479e', NULL, 'Login Failed', 'Session', 'Failed login attempt for: ighodaro', '127.0.0.1', '2026-01-01 22:00:58', NULL),
('bc82be62-08f8-407c-bcc4-797de188a6fa', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 posted to Main Store SRD for 2026-01-09', '102.89.76.161', '2026-01-09 19:54:36', 'a09560f4-54bc-4640-9efa-295f4b665032'),
('bd148f77-fdf8-4cab-854e-4b24872db3e4', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:54:26', 'a776527f-6866-48f6-81d5-14083d945edb'),
('bd17616c-c338-4a4d-8fd0-ef01ce9db415', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 00:25:18', NULL),
('bd8a2d4e-62d1-4199-9204-1f97a1afd9b5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.76.194', '2025-12-29 15:34:29', NULL),
('bddca2ed-4a11-4a3d-85f6-67ddd060fd23', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.98.194', '2025-12-29 19:58:14', NULL),
('bded7861-d30c-4e22-a960-87ed09150645', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'Login', 'Session', 'Successful login via web', '172.31.70.130', '2026-01-01 22:13:35', NULL),
('bdfb7b0d-3422-475e-94d4-a2d0619e99ef', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 1', '172.31.66.226', '2025-12-30 18:58:52', '5193c7ce-f7e1-4758-81c4-fece4579dc70'),
('bdfbbb64-616b-4e8f-8671-69b989bbc630', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 78721483-0a9f-4e27-9e4f-30fc9f848485 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 06:02:52', '8dac7909-9086-4961-8a4f-1ec935c4ce5b'),
('be61e477-6653-493e-bdb0-52dd9d385db8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Sun Dec 28 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.107.130', '2025-12-29 04:25:02', '59fdad1a-0087-44af-b85f-f4290b26eb08'),
('be6355b2-69eb-44e4-8f00-3d7f0ff02328', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.103.162', '2025-12-31 08:17:20', NULL),
('bebfc612-8d09-487d-9c74-18c78563d950', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 3000 12 pc posted to Main Store SRD for 2025-12-13', '172.31.103.162', '2025-12-31 06:16:09', '2f64a260-d98d-40cc-bd44-346f94737415'),
('beeb659c-8d86-4ac8-86e4-c0b490aeb8df', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 11:09:55', NULL),
('bf18500f-7d26-442b-a0fe-62989d5617ab', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 10', '102.89.83.161', '2026-01-07 15:19:15', 'ea693a34-10dd-45b4-aadb-a01e402b3b3d'),
('bf7ab87a-c452-46c3-90ec-a27a54be25d7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.68.226', '2025-12-30 12:27:14', NULL),
('bfe9eb14-a43c-4749-bda5-4c066d30b9f7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 8ef0f287-556b-4228-b49e-db98218b8295 disabled for outlet c3091f91-dcec-4cee-b3ba-ab7c04ff5657', '172.31.89.98', '2025-12-27 01:41:09', 'c3091f91-dcec-4cee-b3ba-ab7c04ff5657'),
('c01de26c-9695-4b57-890f-021ef466566e', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 10', '102.89.83.161', '2026-01-07 11:40:37', '267132cb-8cfd-4b77-a18d-e4499cb6be97'),
('c0cea1bf-e7ef-4821-810e-70f5b2f406d9', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '89.105.214.120', '2026-01-12 08:35:05', NULL),
('c0f9fd53-c191-42e5-8119-2ebaaa10d0fe', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 300 4 posted to Main Store SRD for 2025-12-29', '172.31.105.66', '2025-12-29 22:01:46', '9742f35a-ea63-4dff-b74a-a27746417dce'),
('c12832dc-2cbf-41f8-b31c-d61b8b30a8ef', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.68.226', '2025-12-30 12:26:54', NULL),
('c13c6a3c-9bae-4ebb-8b5a-3b1555e7c552', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 18:07:23', 'd14aeef2-d941-46a0-83aa-60323131bcaf'),
('c14bca43-5a3c-4bbb-afd9-da379693124f', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-08 23:50:37', NULL),
('c1bcbf03-23b8-4737-a72a-933807cd2da5', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 20', '102.89.83.161', '2026-01-07 12:05:06', '11530418-854d-4327-8193-de884f14e3d1'),
('c1e22eba-436d-41a8-acbe-7e0a109f51f6', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '102.89.83.161', '2026-01-04 20:01:50', '4da1fe5f-7bde-4bde-a61b-9a5a5781785f'),
('c273541c-a268-4a39-a1e3-8f72c1c3763b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 12:30:49', NULL),
('c2ec834a-49d4-485e-85cb-f3753d274a28', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.103.162', '2025-12-31 08:04:03', 'f122c893-304a-4231-a6df-b2dabe0788c0'),
('c3987e1f-afd6-4981-a322-79d838eeed8d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 10:06:50', NULL),
('c3cb5de3-bf7f-476e-a21f-aff5c91b483b', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-08 22:05:11', NULL),
('c3dab224-f7fe-4267-a3c0-0752a61e9d4f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Client', 'Openclax Limited', 'New client added: Openclax Limited', '172.31.65.226', '2025-12-26 08:51:02', '23495184-997f-4b6d-b432-033aa0276a76'),
('c4b4480c-15ea-4dc6-8fd7-36aab388cf8a', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '35.243.129.130', '2026-01-03 08:24:27', NULL),
('c52fc031-56c0-471a-9b0a-cf388eaa0c99', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.107.130', '2025-12-29 05:58:49', 'fbc19936-de49-42fe-b977-b00515de60a8'),
('c545cd0f-908b-4022-ad9e-e3b040350313', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.85.134', '2026-01-04 07:06:03', NULL),
('c5bac268-33ff-461c-8df7-3988ce51f1e5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: fanta', '172.31.88.194', '2025-12-28 10:04:27', '2f5b7a18-9345-43b9-a90a-b72b50d68205'),
('c5d7360d-76b1-4e27-92fc-7c388b07b892', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.98.194', '2025-12-29 17:56:26', NULL),
('c616f9b6-bff4-4afb-8058-1c74bca01431', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 50', '102.89.76.10', '2026-01-09 09:45:53', 'a8fdf9a4-9914-46ab-a110-c4d4a3633c72'),
('c63852c9-6d66-4de8-b2ee-eb22f415b8c7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:54:07', 'a287c5f7-986d-46da-b030-addf085012c2'),
('c669fa1a-08e1-4985-b4e7-003e155f7055', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 07:54:12', NULL),
('c6fbcbb5-970f-4bbf-ac31-9654f110ec17', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '35.227.15.160', '2026-01-03 03:57:30', NULL),
('c72f9d0f-f173-489d-addf-2898f6cfec2a', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '146.70.246.168', '2026-01-08 21:00:13', '462e7fcb-0c3d-4441-af2c-5616b7fa1428'),
('c7b20f86-e86a-4114-bcdc-7f1192dc7bd2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (3/5)', '102.89.82.72', '2026-01-05 04:20:30', NULL),
('c85cceb6-4a7d-4fea-a771-0f0b88d84c6e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.65.226', '2025-12-26 07:53:10', NULL),
('c864f01a-2936-438f-a6a3-1973db0cdbcc', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Supplier', 'Supplier', 'New supplier added: Ighodaro Nosa Ogiemwanye', '102.91.93.139', '2026-01-05 15:40:10', '367823f0-2197-40bd-9bc9-1847d653f8b0'),
('c875fa1c-bd1f-411c-8fdd-db44fd0e639d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to fd666e2e-2de8-4b34-8687-9d45c75a85c3, 1 item(s)', '172.31.77.34', '2025-12-28 15:36:00', '40ba1cd5-aeee-4456-9ee5-eae07651b255'),
('c89cd46f-d3f0-4564-a9cd-4f45e9809eed', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.77.34', '2025-12-28 15:07:31', '1ef13c31-c5aa-4942-9bb6-2bb68c6e55b3'),
('c8ebfaa0-9b4a-46f7-bb9c-25429bd89cbc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 200 12 posted to Main Store SRD for 2025-12-29', '172.31.98.194', '2025-12-29 18:13:54', '4f95bc96-08b8-4aad-9f1a-b88a0b211f33'),
('c9268bb1-1fd8-497c-9df4-993fe99aed8e', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-08 22:05:26', NULL),
('c9439dde-4748-482d-8388-0730b1db7d24', NULL, 'Login Failed', 'Session', 'Failed login attempt for: aizuxar@gmail.com', '127.0.0.1', '2026-01-23 09:51:06', NULL),
('c961ac11-566c-4db4-8cef-d2725b736a86', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Tue Dec 30 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.114.98', '2025-12-30 04:59:38', '2ac0cb5d-1b9e-4539-ab57-940e53174583'),
('c99291f8-4af3-45f3-a2f9-af773abfdb93', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.69.19', '2026-01-10 09:36:13', NULL),
('c99b6908-440f-4cbe-b332-06732898b1be', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '146.70.246.168', '2026-01-08 21:13:16', '81d0d4b6-0629-4d81-bf93-da2ee7bb396f'),
('cb1b299d-6736-4df5-a36f-1f8eab60503b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-09 00:01:33', NULL),
('cb76d762-e239-46f0-b154-2837e44c1a44', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '89.105.214.120', '2026-01-12 08:10:28', NULL),
('cb97e147-88e6-4052-a0b5-54fba09be4cc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 300 4 pc posted to Main Store SRD for 2025-12-29', '172.31.105.66', '2025-12-29 21:56:26', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d'),
('cba28058-8ba0-474c-9acd-1e195450e432', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Cocoa', '172.31.75.162', '2025-12-27 19:21:51', '0eaccea0-5812-4969-a816-bda98bc7f1a8'),
('cbb4e98b-3687-4a6f-a129-4723d7086caf', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Category', 'Category', 'New category added: FRESH FRUIT', '172.31.98.194', '2025-12-29 18:53:29', '44cbb924-2bb5-4c2e-8c86-79f9eb1bb29a'),
('cca362a5-1206-433f-81cd-27022148dd2f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 06:03:00', '7645c3a3-6d2a-4de3-a4b5-abdbc79b3d61'),
('cca89d3b-2257-40c7-a60e-36ba1f5fc4a0', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to fd666e2e-2de8-4b34-8687-9d45c75a85c3, 1 item(s)', '172.31.76.194', '2025-12-29 16:06:47', '373f6b80-cd24-4bda-8dbb-c4687117193b'),
('ccc3f4ec-82ad-49e3-bd96-e6013dff5eb4', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'create', 'payment_declaration', 'Created payment declaration for Mon Jan 05 2026 00:00:00 GMT+0000 (Coordinated Universal Time)', '102.89.82.72', '2026-01-05 05:48:43', '81a3cc7e-8d84-4b4a-a98b-5a73dd306b5c'),
('cceeea31-7aa0-488d-996e-1832e3f5314f', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Category', 'Category', 'New category added: BAR', '102.89.83.161', '2026-01-07 14:36:34', '85d266e6-3ef8-4434-b5f1-b234ecd1eace'),
('cd124ab5-4c91-4b75-a8c3-2ee63c352df9', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 06:37:56', NULL),
('cd3b7416-ea6f-4f11-a713-250180602e88', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from fd666e2e-2de8-4b34-8687-9d45c75a85c3 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 12:42:29', 'f6b5587c-e192-4417-8ce6-4cfdd1034265'),
('cd7d0280-5316-45c1-82be-8e8bd052d605', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Created Client', 'JASON MOMOH', 'New client added: JASON MOMOH', '127.0.0.1', '2026-02-01 19:56:48', 'a792ef92-476b-43f7-b754-bb201bc67713'),
('cd95034d-9101-4276-871d-08a5535cf9dc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:53:56', '34df2f81-dc5e-4e72-983a-2fe1465305ce'),
('cdbfa16a-a4f3-474f-a6fc-048373f02b4e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.107.130', '2025-12-29 06:01:02', '150b643f-07db-46c5-81d6-c8f68a6a2b97'),
('ce3849ff-7989-47ee-9f70-5f47e597db1c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '185.177.124.194', '2026-01-04 06:50:09', NULL),
('cedbf467-60e2-4a1c-b23f-1b37d9077229', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Pinipple Juice', '102.89.82.72', '2026-01-05 03:34:49', '3d9cba8b-22ba-4785-9afc-e2e6842eee5a'),
('cf47e0f1-db29-4f00-9962-7cb51ebf871e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.77.34', '2025-12-28 11:17:31', NULL),
('cf671f90-0368-44b2-9d7e-fb2bf26a376b', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Deleted Item', 'Item', 'Item deleted', '102.89.83.161', '2026-01-04 16:58:20', 'c9eb20d9-d8a3-4062-8d22-3421499b0b33'),
('cf9dbe45-7163-4ad0-9c8a-8a4deff048b6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 10:29:06', NULL),
('d09ce9d0-c38c-4c7b-b0ef-5b4cbe96b4b8', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '127.0.0.1', '2026-02-01 19:57:41', NULL),
('d10f6757-6e52-4330-bb3c-3982afa71b97', '08cae6ca-1bda-42e0-8cee-bdb28d071529', 'Login', 'Session', 'Successful login via web', '34.75.119.55', '2026-01-02 22:14:31', NULL),
('d130399f-b323-4daf-82a7-2330c560815e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.68.226', '2025-12-30 14:58:42', 'a4fa5a7b-3619-4fa6-9d0e-3bbbb2a5d484'),
('d17cf304-2343-428c-b359-a8b01c4be766', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-04 17:18:39', NULL),
('d187f666-0339-46de-a377-2b75c567b0d5', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 1200 4 posted to Main Store SRD for 2025-12-15', '102.89.82.72', '2026-01-05 03:50:19', '097eadbb-cad3-4ef9-aab3-21ac8d02e143'),
('d254bf97-6a53-495e-8f89-00b95d70a911', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.98.194', '2025-12-29 19:43:05', NULL),
('d29f4a42-269a-4695-9730-d7f584239946', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 18:08:01', 'd14aeef2-d941-46a0-83aa-60323131bcaf'),
('d2fbc967-da2c-4a62-8327-3933e2c69d99', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '102.91.93.139', '2026-01-05 16:43:54', NULL),
('d3766494-4932-4108-a834-7a11d6f2a439', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 16:11:31', NULL),
('d3909022-d90f-477e-8efa-924ff55d1119', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '102.89.82.72', '2026-01-05 05:48:23', '9ebc56d2-e5e2-48e8-831a-9db3025e2c17'),
('d398e6ff-a389-4bcd-873a-7b49a39d99d4', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '102.89.76.161', '2026-01-10 00:38:39', '5f32a321-a7ec-4e0d-9e5d-1344e2188fe2'),
('d4048111-6920-48e3-a826-0c8d03715b96', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '172.31.83.162', '2025-12-31 23:51:27', 'b4ef0d0d-1011-4d93-9e4a-d298420d7bcf'),
('d4ac667a-65cd-4cb3-b578-af1937ae6c5e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department c844b11d-6c6c-41ba-a0da-c21646eea96b', '127.0.0.1', '2026-01-26 00:01:15', 'b3d94bfa-b71e-4c5f-af2b-3681cf40a1de'),
('d4bb41bf-d876-4f5a-90ac-ea38ff97b42d', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.85.134', '2026-01-04 07:30:18', NULL),
('d50b089b-b6fa-4d4e-8cd4-89ee90a2ace3', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Orange Juice', '102.89.85.63', '2026-01-04 07:55:39', '1d1862f8-de7b-4abb-a66d-9be145fd8508'),
('d551a1b0-ea86-4d4e-934a-c2f2914f9b03', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.76.194', '2025-12-29 13:35:39', NULL),
('d56331c7-0006-4592-a312-03566ffc05d4', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.72', '2026-01-05 02:47:38', NULL),
('d5c941cd-36c6-4215-95de-1d8366b06306', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.107.130', '2025-12-29 01:35:30', NULL),
('d5e9d5b5-3ac8-4722-8d88-b26936d12c24', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-03 22:46:34', NULL),
('d5f86876-e290-4259-aacd-933f97a7ee23', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.45', '2026-01-04 01:40:37', NULL),
('d618873d-f262-47b8-95eb-12d14b63dc5a', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '35.243.129.130', '2026-01-02 01:55:45', NULL),
('d66e560f-d388-40a9-97c2-0ad5370aaf5f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.77.34', '2025-12-28 15:06:46', '7645c3a3-6d2a-4de3-a4b5-abdbc79b3d61'),
('d67ac8fa-a7b4-46c3-a59a-c2d089222693', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 20', '102.89.76.10', '2026-01-09 09:50:27', '8562da61-56a0-44dd-8ea8-0be885924dfc'),
('d6a645d0-7cbd-464b-8ae7-b0f4011e413c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.98.194', '2025-12-29 19:31:29', NULL),
('d6c25d82-fa5e-4bf8-a340-b1f6e9d15eeb', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '172.31.105.66', '2025-12-29 21:38:32', NULL),
('d6c691ae-9707-43b4-b297-361d8ed3bed9', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.77.34', '2025-12-28 16:00:15', NULL),
('d6d1747c-2f97-481e-a021-d4570e34e624', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '127.0.0.1', '2026-01-25 23:29:27', '7b37d741-751a-43a6-bbfa-1018d584ad1e'),
('d7372228-913a-4f07-8985-bf75f9f4c7f2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 5000 12 pc posted to Main Store SRD for 2025-12-05', '172.31.103.162', '2025-12-31 06:04:13', '0685f443-471a-4a34-927e-f5e41fbeb2d3'),
('d80f044c-d978-4e2d-8468-3feeb01cfcea', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.68.226', '2025-12-30 14:49:33', NULL),
('d81c690c-0488-4abe-9ef3-8f84b65ee914', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 20000 4 pc posted to Main Store SRD for 2025-12-02', '172.31.103.162', '2025-12-31 06:02:56', '3315d410-2302-4ff8-8a38-6af5f1bee4ee'),
('d843ed28-4671-47fb-ab67-fef05338bcb7', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 2', '102.89.69.19', '2026-01-10 09:52:16', '9ec44d94-5120-45fa-aaae-e0987f709a60'),
('d847ee00-fec7-4dbc-a005-ceae4ae606a0', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.66.226', '2025-12-30 19:42:25', NULL),
('d854ada4-6b3f-45f1-b91b-058bc6b90341', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Reversed Stock Movement', 'StockMovement', 'Reversed adjustment movement. Reversal ID: e2ab3a87-bd6d-4c84-8130-bb131b0eed7b. Reason: u', '102.89.69.19', '2026-01-10 09:57:28', 'd3da4dc2-cc30-411e-b864-1f1302a54617'),
('d86f74cb-949d-44f6-a7cd-ae70366ea255', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-08 23:49:56', NULL),
('d887c428-a505-4586-b1cc-3026af955355', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Water Melon Juice', '102.89.82.72', '2026-01-05 03:51:43', '595eed6e-8595-413c-a0e0-f78b3e8b0279'),
('d887f947-7115-495c-a328-5be885b99c55', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 13:11:26', '78dc80ea-423d-4e17-8ade-fcde6f1715da'),
('d8c1d107-df09-4815-b372-677526f36d25', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 10', '102.89.83.161', '2026-01-07 12:03:58', '57eecad0-a625-4d4b-8fc0-3a30cf8d1fa2'),
('d91b9bd3-4286-4d1a-b8ad-b886a718b6a2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created GRN', 'GoodsReceivedNote', 'Invoice: Ed246, Amount: 30000.00', '172.31.88.194', '2025-12-28 07:41:10', '99658a47-7573-4ceb-bf0f-eba833221987'),
('d9813c61-51fe-4602-b2d9-10f3a937083b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 18:09:24', '1a25be9b-3ffe-486e-a09c-a0a5d7c76f5a'),
('d9ae45d0-b8d5-4d3e-ab6a-3246b38fe0b1', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'Password Reset', 'User', 'Password reset via email link', '35.227.15.160', '2026-01-02 01:55:20', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4'),
('d9aeac7e-06ac-44c2-8de9-5e6b879ecdec', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:54:22', '0eaccea0-5812-4969-a816-bda98bc7f1a8'),
('d9b44ed9-013f-470a-b649-20ce7e61bfc8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.89.98', '2025-12-27 04:53:23', NULL),
('d9b923ca-3bfe-4aef-81f0-75740c5d640a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 500 4 pc posted to Main Store SRD for 2025-12-20', '172.31.68.226', '2025-12-30 14:15:38', '3315d410-2302-4ff8-8a38-6af5f1bee4ee'),
('d9d2c102-8e7d-4d14-960f-cabde1f6a64b', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.84', '2026-01-11 14:25:25', NULL),
('da2b1b3a-e79a-444e-972b-bcce511cde27', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created waste movement with 1 items, total qty: 5', '102.89.76.10', '2026-01-09 09:52:44', '5a5c950e-b0fb-43bc-91aa-7a0ac21c449f'),
('da766943-06aa-4bc5-a4ee-90b8172733c2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Store issue created for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 20:24:58', '1c28b670-dd9d-4e4a-aa48-f786855bd5bb'),
('dac7d4cd-d9a9-449e-ad68-b6400773bf7c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 08:22:19', NULL),
('db21c202-95e4-46cc-9b61-d9deb7cdb56c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: malt', '172.31.88.194', '2025-12-28 10:12:48', '526f1f1f-7d83-4776-a496-e758c5bd09d8'),
('db6db83a-9351-4af5-a58b-6d80f016e598', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Malt', '172.31.114.98', '2025-12-30 08:04:27', '0685f443-471a-4a34-927e-f5e41fbeb2d3'),
('dd442925-6de9-4111-bc2d-adaa3dd94090', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 07:40:11', NULL),
('dd5452e8-8454-4406-86bf-612d9263e19f', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Created Category', 'Category', 'New category added: ADMIN', '127.0.0.1', '2026-02-01 19:57:01', 'ce912ecf-5fca-418d-b317-8b7f2bc969eb'),
('dd83ff07-258d-4fe4-bec2-c262b2ded0bc', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Deleted Department', 'Department', 'Department deleted', '102.89.83.161', '2026-01-07 11:02:26', 'a03c66a1-6ea5-4af7-8b01-f203ee89ca38'),
('dda308eb-4059-4666-b42e-ed1e05bf5f77', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 08:14:29', NULL),
('dded496e-68ce-40b5-8880-da3e252e17a9', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '146.70.246.168', '2026-01-08 20:53:33', NULL),
('ded4bac3-0d96-47b2-98c1-8fee3f252c3b', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '93.190.140.104', '2026-01-12 11:23:17', NULL),
('df33cc49-1a85-44ee-ad22-c376af32e39e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 500 4 posted to Main Store SRD for 2026-01-03', '102.89.83.161', '2026-01-04 18:36:53', '4cb68d68-635b-49cb-a6a4-0453de898b48'),
('df498851-5ea2-47da-b544-ef54f4cd6844', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.103.162', '2025-12-31 05:20:56', '68b124ce-f52c-4273-8370-a7ab3aad84de'),
('df89afd6-0884-426f-8a16-1e15d1d59190', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.105.66', '2025-12-29 23:12:20', NULL),
('dfb1b2c9-cc60-43ce-b445-e8d9eb1c6b17', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.77.34', '2025-12-28 17:59:24', '27b2edb8-b118-45c3-85f1-66c979aaaf5a'),
('e035d9aa-7cb6-46fb-ab3a-edb3b988c253', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '34.139.219.171', '2026-01-02 07:16:29', NULL),
('e07894f5-908a-4fd2-817a-26288b197ac7', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Category', 'Category', 'New category added: SOFT DRINK', '102.89.83.161', '2026-01-07 11:01:22', '43f2e95f-b9b4-46c4-a54c-eaa21c713b5f'),
('e169c900-6faf-4dd5-8bf1-a5fcaa8eef58', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.75.162', '2025-12-27 18:05:33', NULL),
('e2573c32-2c59-4aaa-aacf-4ad1d5cc21c2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.83.162', '2025-12-31 20:52:13', NULL),
('e258e107-6e4c-471b-80c2-e0cafebdfa2f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Tue Dec 30 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.114.98', '2025-12-30 05:03:57', 'c046e4e7-a073-4ad1-bfdb-f1a870b0934a'),
('e2982c29-2663-45d6-b657-949933b148d0', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Chicken', '172.31.76.194', '2025-12-29 16:02:41', 'd24028d5-7172-4fa4-a16a-e96a21e92c62'),
('e305739d-68da-4edd-8204-bc9e15d277e9', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-01-26 00:55:55', NULL),
('e448493d-866f-46de-8bc6-7db1061967b6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.91.34', '2025-12-27 11:29:14', NULL),
('e4991ac1-ad4e-46cc-a093-9cf93ae8aac1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '102.89.82.72', '2026-01-05 04:20:09', NULL),
('e4a2068c-232c-402b-8091-68689e043d9a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Disabled Department for Outlet', 'OutletDepartmentLink', 'Department 295ef96f-f7bb-4ed8-9026-6ad28c70cf0f disabled for outlet bd279946-8a56-4e2f-8a40-714bdb2574c9', '172.31.89.98', '2025-12-27 01:43:26', 'bd279946-8a56-4e2f-8a40-714bdb2574c9'),
('e50d8a8f-0d91-44d0-b4a2-c0ac957caeb8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.66.226', '2025-12-30 21:20:18', '956fd86d-6c87-48d3-9d9d-f7344e5b6544'),
('e5275c66-4266-4528-95a9-5e0ad99aac6d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Item', 'Item', 'New item added: Rice', '172.31.107.130', '2025-12-29 05:55:27', '70692a6e-cc23-4529-9d05-cdebacb4c7de'),
('e597cbf3-6ef8-4f01-bab7-4ff1ff348bd6', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-10 00:09:50', NULL),
('e5996c34-6946-44c7-9cb6-73efb2bd6b32', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from 43d27fe4-d8e1-4319-9f6b-7657ce33be4a to b30e98ff-9e99-4f22-b814-cd976d2c9c71, 1 item(s)', '172.31.105.66', '2025-12-29 22:15:57', '62d418e9-e867-44a6-9a8b-1dc0abafdb6f'),
('e629f862-4b56-47a2-85e5-00b98b0b0281', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '127.0.0.1', '2026-02-01 20:01:29', 'aa829237-52da-49a9-8f1f-d9167bd0035e'),
('e635fa9d-0677-4158-8e12-ff5a57902fc0', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 09:52:55', NULL),
('e697d9e9-391c-4273-a060-96531aea0a58', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Deleted Department', 'Department', 'Department deleted', '127.0.0.1', '2026-02-01 19:57:48', 'c4d1fcbd-f507-42be-a6c8-0163cc07b32c'),
('e6a3d4aa-6444-41bb-99d8-65d4c251e92c', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'Login Failed', 'Session', 'Invalid password attempt (3/5)', '127.0.0.1', '2026-02-09 00:00:43', NULL),
('e6cf7d68-2b2e-4d27-9bca-3d6edb68f0a7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.68.226', '2025-12-30 12:10:45', NULL),
('e6e37641-2b61-4eda-9798-479b26b224f2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 09:05:25', NULL),
('e718d728-4693-46b9-9cc2-cf3bf57444df', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 200 4 posted to Main Store SRD for 2025-12-25', '172.31.68.226', '2025-12-30 13:49:47', '9742f35a-ea63-4dff-b74a-a27746417dce'),
('e741451b-3031-4d93-9c77-676f6e1a418b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 1000 12 pc posted to Main Store SRD for 2025-12-01', '172.31.103.162', '2025-12-31 04:56:29', '0685f443-471a-4a34-927e-f5e41fbeb2d3'),
('e824c327-4c10-459f-9a86-7a9a5d70e40a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.110.162', '2026-01-01 07:25:29', NULL),
('e83de6f3-59c5-49ba-b68c-b2460b7ae95a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 400 12 pc posted to Main Store SRD for 2025-12-30', '172.31.114.98', '2025-12-30 08:22:53', '0685f443-471a-4a34-927e-f5e41fbeb2d3'),
('e86637a1-8c14-4ba5-89e2-9a6a0e3aae09', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Deleted Department', 'Department', 'Department deleted', '102.89.83.161', '2026-01-07 11:02:21', '60fa0879-33c1-4ee6-83bf-3913bddb3d13'),
('e8df769f-cc64-43b8-810f-321be5bc6611', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 20:07:57', NULL),
('e92219f9-45d6-4820-884b-6510c7e35a9e', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'create', 'payment_declaration', 'Created payment declaration for Wed Jan 07 2026 00:00:00 GMT+0000 (Coordinated Universal Time)', '102.89.83.161', '2026-01-07 11:34:59', 'e65a8450-bf7c-429c-bdd9-49b6b09b1dc8'),
('ea1d3b00-6dfd-4cb7-8569-a4f9e397b9da', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 100 60 posted to: Main Store', '172.31.88.194', '2025-12-28 10:25:16', '526f1f1f-7d83-4776-a496-e758c5bd09d8'),
('ea7c5604-7ea4-4350-94a3-e9b341c10077', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.98.194', '2025-12-29 18:07:23', NULL),
('ea7f1353-fadb-48ce-93bf-b8a109a65055', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.105.66', '2025-12-29 22:43:36', NULL),
('eaa66b13-1a8c-4c0a-83f4-0e3ac25aa8f3', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 18:31:49', NULL),
('eacd8b71-7df6-4c7c-b31e-8baa75e05e7d', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.89.98', '2025-12-27 06:22:25', '8f82d3c8-8574-469a-9425-f57d5c669aca'),
('eaf0e32e-0b01-4057-b1b5-719bd6a81ac2', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '146.70.246.168', '2026-01-08 20:50:41', NULL),
('eb4a0be9-eade-4685-aa1c-cf62a8bbcdd9', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.75.162', '2025-12-27 21:04:45', NULL),
('eb76ab49-5e54-4cd9-bf9f-178597913e30', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 30', '102.89.76.10', '2026-01-09 10:47:23', '49dfba4c-67e4-4d83-8af0-075e105dc797'),
('eb7ba320-22db-48b4-a755-8cb7e515571a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Sales Entry', 'Sales', 'Sales entry for full shift', '172.31.75.162', '2025-12-27 18:16:36', '25ac3569-f934-40a4-af80-5adca69fd03a'),
('eb8b6d7e-f0a0-43f5-ade6-3193cd2f4c24', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 1', '102.89.83.161', '2026-01-07 07:50:07', '83a3b8e2-6703-462d-b924-315cc28f138a'),
('ec04651b-cf47-4bc9-95dd-805c009072bf', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 09:47:57', NULL),
('ec066338-4203-47d5-acb6-2faad02afef0', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 09:06:28', NULL),
('ec2bd66e-7782-4f86-9325-07dae903e530', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created GRN', 'GoodsReceivedNote', 'Invoice: WSG234, Amount: 100000.00', '172.31.105.66', '2025-12-29 22:25:09', '72794fb2-15fb-4fd8-a330-813f000adee4'),
('ec4b84e9-e78f-407b-bbf5-c060f224261b', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Item Purchase Captured', 'Item', 'Purchase of 1300 4 posted to Main Store SRD for 2026-01-06', '102.89.76.161', '2026-01-09 23:17:22', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2'),
('ec7dd9b9-bb86-4233-a0b5-8d19852199ba', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 1000 12 posted to Main Store SRD for 2025-12-01', '172.31.103.162', '2025-12-31 04:56:18', 'd3a42547-ff64-4772-923c-4a8a112f6be9'),
('ec89a3ef-311c-4d1b-8f2c-acdb47f4db84', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Tue Dec 30 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.114.98', '2025-12-30 04:59:03', '2ac0cb5d-1b9e-4539-ab57-940e53174583'),
('eccfd341-4c17-44eb-bd06-fb0d155fb271', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.84', '2026-01-11 17:37:51', NULL),
('ed0007c4-4d3e-4f46-ab0f-f658235e92e2', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 78721483-0a9f-4e27-9e4f-30fc9f848485 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 12:42:27', 'eec8334e-84b3-4729-bebe-6fa697510c93'),
('ed9445ba-0168-4c5d-815b-c5c2828e13c3', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '185.107.56.156', '2026-01-12 14:04:13', NULL),
('edac6d72-e91a-4af0-9f52-fb316a18dc5e', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Reversed Stock Movement', 'StockMovement', 'Reversed issue movement. Reversal ID: 6cd216a8-d8ec-4137-8161-d20b56ad1099. Reason: z', '102.89.83.161', '2026-01-07 15:14:15', 'beb7ebf8-e0e9-4841-bffc-ddfb166d2ed2'),
('edaec39d-7b76-487c-a3c8-9d16da6abf31', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.85.66', '2026-01-01 12:21:53', NULL),
('edc21b2d-67d9-47e2-89a4-0104deac5982', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.83.161', '2026-01-07 11:03:03', NULL),
('ede1e5fd-29dc-49e4-8681-fab699a201a8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Submitted Reconciliation', 'Reconciliation', 'Audit submitted for department c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '172.31.83.162', '2025-12-31 23:57:14', '18e6cf63-d924-4a62-bc02-27d1896145df'),
('ee550352-21fa-462b-83e0-2360d0a53293', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.76.194', '2025-12-29 15:00:41', NULL),
('eeafb2e4-8c84-47de-af58-bba7d76e85de', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 07:02:46', NULL),
('eef75321-7fe5-4641-83dc-67ff2166aabb', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 40', '102.89.76.161', '2026-01-09 23:47:04', '73304b63-7645-439f-893f-4ed7fd7c2424'),
('ef1390f8-73fe-40df-87b4-048d35286d2e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.69.19', '2026-01-10 04:47:47', NULL),
('ef603540-62d7-4c8f-9492-8bf4c4f2f33f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.83.162', '2025-12-31 23:28:43', NULL),
('ef62f2a3-7c22-4cbb-a2e0-69b0b5b76c87', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.76.194', '2025-12-29 12:59:13', '3bb92c6d-6604-42ac-91e7-1747de843774'),
('ef6967f4-0c66-493a-80ff-e8219f2056a7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.70.130', '2026-01-02 00:00:42', NULL),
('f06ed962-3964-4d4a-bcf7-15211e94ebd1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.88.194', '2025-12-28 06:40:23', NULL),
('f078311a-066b-4ed8-8114-f141942d27b5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.114.98', '2025-12-30 09:35:34', NULL),
('f0a7ba8e-14b5-4e92-b205-36f668bde78a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 06:48:17', NULL),
('f14eeedc-cab7-43d0-84b0-97bd659adf4a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', 'Unknown', '2025-12-31 13:21:13', NULL),
('f15a8b20-7879-4d6d-b39b-cd980d8d2ea2', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-04 16:38:51', NULL),
('f183214a-67cd-4e16-b2b1-14571eed4566', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.75.77', '2026-01-08 04:13:22', NULL),
('f1d5ff5d-4b09-4849-ac1b-e9d5cdc2342e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Deleted Client', 'Client', 'Client deleted: DASCO ENTERPRISE INT\'L LIMITED', '35.231.177.91', '2026-01-03 11:26:54', '22de3178-67d0-4b2b-b8ac-d275ae848796'),
('f234e3cb-cd64-4fd4-a320-fe22922813e4', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 1', '102.89.69.19', '2026-01-10 09:52:58', '41ed03d3-c3ea-4480-896c-39e8d0f10e94'),
('f2574928-f3e2-4d1a-bec8-010745f9856f', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Item Purchase Captured', 'Item', 'Purchase of 1000 4 posted to Main Store SRD for 2026-01-05', '102.89.82.72', '2026-01-05 03:52:06', '595eed6e-8595-413c-a0e0-f78b3e8b0279'),
('f2d8e0dd-c15e-45dd-9784-5ddb251eb85c', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '34.26.99.240', '2026-01-03 11:25:49', NULL),
('f2e760e0-e7ba-425f-a62a-d91a8ab341ad', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 400 12 posted to Main Store SRD for 2025-12-21', '172.31.103.162', '2025-12-31 04:15:04', 'd3a42547-ff64-4772-923c-4a8a112f6be9'),
('f3aa34a7-988c-48f8-8528-6d08c69e8270', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 14:41:09', NULL),
('f3d9812b-167c-42e3-9d37-383ac4da2bec', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Stock Movement', 'StockMovement', 'Created write_off movement with 1 items, total qty: 30', '102.89.76.161', '2026-01-10 00:27:35', '8b064346-355c-48f1-88b3-6febbe82c6a2'),
('f45e1474-5bed-4994-9a9e-5918624a304f', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-08 23:33:25', NULL),
('f4a564d9-ff1e-459c-a988-3f64ba217009', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.70.130', '2026-01-01 22:30:32', NULL);
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `entity`, `details`, `ip_address`, `created_at`, `entity_id`) VALUES
('f4b296bd-6208-4617-9ce7-9ce8d8fc8881', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.105.66', '2025-12-29 22:11:00', NULL),
('f4d2dfd1-d21e-437e-aa82-457fc4e5f4a5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.90.2', '2025-12-27 07:55:50', NULL),
('f50554de-3e7b-4ee9-89b4-2be09016a6eb', '80486214-2b01-4950-b6b6-fac9a54c43cc', 'Login', 'Session', 'Successful login via web', '127.0.0.1', '2026-02-01 19:28:53', NULL),
('f518af02-6972-4607-811a-209bbfbf4b93', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.76.194', '2025-12-29 14:46:50', 'd54b4d95-41e1-4a98-8869-7846e9953898'),
('f54b0afe-2a14-4998-a07e-608f0e1cb0fc', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '89.105.214.120', '2026-01-12 08:10:18', NULL),
('f56184ae-cafa-47dd-996a-69b4d3dc1a9b', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Sales Entry', 'Sales', 'Sales entry deleted', '172.31.114.98', '2025-12-30 08:30:57', 'e30d675d-b78e-46a5-9a49-664a0248e68f'),
('f57c7ce3-da8d-4d9c-a854-00929fc2568c', NULL, 'Login Failed', 'Session', 'Failed login attempt for: Ighodaro.algadg@gmail.com', '172.31.70.130', '2026-01-01 22:36:49', NULL),
('f5bdb9c9-cccf-4cde-b8b0-fb0ac13d613b', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Movement', 'StockMovement', 'Created adjustment movement with 1 items, total qty: 1', '102.89.69.19', '2026-01-10 09:53:42', 'd3da4dc2-cc30-411e-b864-1f1302a54617'),
('f5d85965-4862-4743-82aa-2a14339d1955', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.83.161', '2026-01-07 12:37:36', NULL),
('f6111744-67d3-4b0f-9b05-096b5b2625b4', '0ff460ab-5b96-4b2d-b85f-d04c54faf25f', 'Data Export', 'Export', 'Exported data in xlsx format. Date range: 2025-12-06 to 2026-01-05', '102.89.82.72', '2026-01-05 05:53:37', NULL),
('f62e865c-aa1b-4944-b20c-c3c94955f483', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 500 12 pc posted to Main Store SRD for 2025-12-21', '172.31.103.162', '2025-12-31 04:15:15', '0685f443-471a-4a34-927e-f5e41fbeb2d3'),
('f65e73b5-94db-4ae7-8b37-51acbb258a9e', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'create', 'payment_declaration', 'Created payment declaration for Wed Dec 31 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.106.130', '2025-12-31 19:53:33', '752f36b0-7434-422f-afe1-0d9532ee016d'),
('f6797ac5-3f67-4196-bef9-61ee93e0d288', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Category', 'Category', 'New category added: DESK', '172.31.114.98', '2025-12-30 09:49:36', '5ee629fd-477d-4ad5-824b-b564dd653660'),
('f6827ea4-58d2-4c85-8013-aa6f99573038', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '172.31.66.226', '2025-12-30 20:43:31', '7851c8be-f2dc-41c0-8f2d-4e2e470dc034'),
('f69aac32-9d24-4575-bc1c-ff19fa952870', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.76.161', '2026-01-09 23:35:37', NULL),
('f6ec09c1-4ccf-4526-bd19-7f58129ddc9c', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Updated GRN', 'GoodsReceivedNote', 'Invoice: WSG234', '172.31.105.66', '2025-12-29 22:47:48', '72794fb2-15fb-4fd8-a330-813f000adee4'),
('f708fbef-428c-4669-8aba-77604a90e193', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '172.31.75.162', '2025-12-27 19:01:07', NULL),
('f75652bb-8bdc-46ce-bb22-aa3fe0d17e05', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 3000 12 pc posted to Main Store SRD for 2025-12-02', '172.31.103.162', '2025-12-31 06:00:36', '0685f443-471a-4a34-927e-f5e41fbeb2d3'),
('f7bbe801-24ef-44b0-8a2d-94a4e94d0deb', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Created Item', 'Item', 'New item added: Fanta', '102.89.68.19', '2026-01-04 14:57:47', '9607428c-e0dc-4fc1-8d3a-09a6c824f393'),
('f7bfa00f-069f-4220-a168-9f71eb94cffa', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 78721483-0a9f-4e27-9e4f-30fc9f848485, 1 item(s)', '172.31.77.34', '2025-12-28 15:37:17', '8dac7909-9086-4961-8a4f-1ec935c4ce5b'),
('f7eec6e9-b54c-4252-8f52-afe05bcde865', NULL, 'Login Failed', 'Session', 'Failed login attempt for username: miemploya@gmail.com', '172.31.65.226', '2025-12-26 07:37:04', NULL),
('f867b20c-5d77-4730-a500-877d923b7b27', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Item', 'Item', 'Item deleted', '172.31.107.130', '2025-12-29 05:54:39', '76f50a81-f36f-4108-b97d-b00f62a29f20'),
('f8b0cfcb-ea4e-4142-a085-79dc58ac7a8e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '185.177.124.194', '2026-01-04 06:50:20', NULL),
('f8b3f09c-0daf-45c7-b317-289ab99904b1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Stock Count', 'StockCount', 'Stock count deleted', '172.31.114.98', '2025-12-30 04:24:20', 'e29fb675-1cda-4212-8830-beab067b980f'),
('f8bb387e-9dc0-441a-953a-186d08553d55', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Sun Dec 28 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.107.130', '2025-12-29 04:22:20', '06d8c079-2398-488d-ac02-5f039094e1ac'),
('f9329a0a-7ac0-43b1-b5a0-9eca0d0fb09f', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login', 'Session', 'Successful login via web', '102.89.76.161', '2026-01-09 23:45:48', NULL),
('f942fb2c-7b45-432d-9b43-7eb4ba63cfd8', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '185.107.56.156', '2026-01-12 14:06:43', NULL),
('f96911dc-148f-44d7-a708-67cb2522406e', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.82.84', '2026-01-11 17:35:51', NULL),
('f984fa01-6cc9-4fe9-91a8-45bb85d72ae4', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.83.161', '2026-01-07 14:37:55', NULL),
('f9b5a239-81d7-440c-8b94-9c7c07110779', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 2000 12 pc posted to Main Store SRD for 2025-12-02', '172.31.103.162', '2025-12-31 04:58:16', '0685f443-471a-4a34-927e-f5e41fbeb2d3'),
('f9d1e689-ef50-4706-9923-048353486d25', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Enabled Department for Outlet', 'OutletDepartmentLink', 'Department 8ef0f287-556b-4228-b49e-db98218b8295 enabled for outlet 30e7c959-e001-45df-8a8b-c160c354fcca', '172.31.89.98', '2025-12-27 01:41:56', '30e7c959-e001-45df-8a8b-c160c354fcca'),
('fa27bcde-4b3f-4baf-8158-52807dff475a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.75.162', '2025-12-27 17:44:42', NULL),
('fa5a3cd4-9ed4-4d35-9d71-931b9b8af6c6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Tue Dec 30 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.114.98', '2025-12-30 05:00:25', '2ac0cb5d-1b9e-4539-ab57-940e53174583'),
('faebf4f4-718f-4095-865c-571c618a8479', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 80 60 captured for 1 store(s)', '172.31.88.194', '2025-12-28 10:13:50', '526f1f1f-7d83-4776-a496-e758c5bd09d8'),
('fb2a42db-68f6-4b23-8ab5-fc6768502659', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Stock Movement', 'StockMovement', 'Created transfer movement with 1 items, total qty: 1', '172.31.66.226', '2025-12-30 19:44:54', 'ae785a7c-ab1e-4453-af39-e3e430f35008'),
('fb6e5edb-7d42-4122-9794-29ce3e46f087', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'update', 'payment_declaration', 'Updated payment declaration for Sat Dec 27 2025 00:00:00 GMT+0000 (Coordinated Universal Time)', '172.31.75.162', '2025-12-27 18:07:48', 'd14aeef2-d941-46a0-83aa-60323131bcaf'),
('fb970301-f8b7-4df7-98fa-6b53fc45b6d1', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '172.31.65.226', '2025-12-26 07:46:19', NULL),
('fbadfdea-c632-4c27-9586-53a5c9c35530', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '89.105.214.120', '2026-01-12 07:56:26', NULL),
('fc04294a-080b-45fc-be19-ca7e3b67aafc', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Created Store Issue', 'StoreIssue', 'Issue from bd22d458-81ba-414f-bcdb-4e047e7ab1c6 to 2ce2d797-64c0-48a4-9e3b-03fd62786195, 1 item(s)', '172.31.107.130', '2025-12-29 05:59:28', '60abffa1-385c-4902-bc8d-29f0482eb2b2'),
('fc0bedf2-5fa6-433b-9bc5-0b5e3fad8c7a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.76.194', '2025-12-29 15:45:40', NULL),
('fc5dd704-fd71-4ab3-be1d-53231c1c4523', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'Login Failed', 'Session', 'Invalid password attempt (2/5)', '102.89.83.161', '2026-01-07 12:37:00', NULL),
('fc60e0bb-fb1a-41ab-b935-119624dccb10', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.77.34', '2025-12-28 13:58:38', NULL),
('fc71ce54-b249-4011-b5c1-ab1b6df8b2a7', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Reversed Stock Movement', 'StockMovement', 'Reversed transfer movement. Reversal ID: e5b05c0e-8245-4045-9469-da37badac16e. Reason: rss', '172.31.103.162', '2025-12-31 10:00:31', 'd561c2f7-9264-429f-9d30-802471a5392e'),
('fcbbaa3c-c45f-4ca6-b736-e1a0f5e8f6fd', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Bulk Created Departments', 'Department', 'Bulk created 1 departments', '102.89.76.161', '2026-01-10 00:17:18', NULL),
('fcd4f3c2-3d2e-4f3f-aadd-ce6049203242', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Supplier', 'Supplier', 'Supplier deleted', '172.31.105.66', '2025-12-29 22:26:26', 'c765549f-5294-489b-bd2e-5a71595bae99'),
('fcd73682-e8b0-4b73-9844-1164eb3f73d6', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Deleted Client', 'Client', 'Client deleted: JAMSON SON\'S LTD', '102.89.83.161', '2026-01-07 14:35:04', '362dc0ec-8ece-472a-adf9-7724cf6aa3fa'),
('fcfe30b6-429b-462d-8443-7a3c74fb5a44', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Item Purchase Captured', 'Item', 'Purchase of 400 4 pc posted to Main Store SRD for 2025-12-31', '172.31.103.162', '2025-12-31 04:46:49', '3315d410-2302-4ff8-8a38-6af5f1bee4ee'),
('fd7511d7-bf99-45c6-a731-d4d022276054', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Deleted Stock Count', 'StockCount', 'Stock count deleted', '172.31.114.98', '2025-12-30 04:44:50', '8f1a0af9-7199-4c31-bda9-ceb62c6e01aa'),
('fd80b098-08bd-4c11-b873-75c4ac4c5186', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Item Purchase Captured', 'Item', 'Purchase of 1000 12 posted to Main Store SRD for 2026-01-03', '102.89.83.161', '2026-01-07 11:22:11', '7035af8f-5550-4120-b3d7-6dae1eab3e91'),
('fddf2b91-8918-496b-8838-64d2da80b0f3', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'Login', 'Session', 'Successful login via web', '102.89.85.134', '2026-01-04 07:05:36', NULL),
('fe3b786f-4905-461b-b6dd-b96f65600b46', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Stock Count', 'StockCount', 'Stock count recorded (SRD updated)', '102.89.83.161', '2026-01-07 13:25:11', '63402487-9ba9-4d77-ae17-e85113509721'),
('fe57b787-6738-4496-8655-b6b513af8c4e', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Login Failed', 'Session', 'Invalid password attempt (1/5)', '102.89.76.161', '2026-01-09 21:09:12', NULL),
('fec9f2f7-90a3-4eb5-af22-3888414defe6', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Recalled Store Issue', 'StoreIssue', 'Issue recalled from 2ce2d797-64c0-48a4-9e3b-03fd62786195 back to bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '172.31.107.130', '2025-12-29 06:03:03', '1548a178-3eab-4f71-9ea1-d1e2ec1f9f46'),
('feeb5c41-3933-45d6-ae55-2eebbc0f7b21', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Edited Stock Count', 'StockCount', 'Stock count updated (ledger recalculated)', '102.89.69.19', '2026-01-10 10:03:30', '3d85aa03-0784-4dbd-9953-de6bbd9d3ba0'),
('ff191625-090f-4301-9ed4-4459a3596d4b', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'Created Item', 'Item', 'New item added: Coke', '102.89.83.161', '2026-01-07 11:04:12', '25dd45e4-bede-42db-9202-5596d0b6119e'),
('ffb80887-8c95-4189-b5e0-68df1cdc404a', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'Login', 'Session', 'Successful login via web', '172.31.76.194', '2025-12-29 13:35:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audit_reissue_permissions`
--

CREATE TABLE `audit_reissue_permissions` (
  `id` varchar(36) NOT NULL,
  `audit_id` varchar(36) NOT NULL,
  `granted_to` varchar(255) NOT NULL,
  `granted_by` varchar(255) NOT NULL,
  `granted_at` datetime NOT NULL DEFAULT current_timestamp(),
  `expires_at` datetime DEFAULT NULL,
  `scope` longtext NOT NULL DEFAULT 'edit_after_submission',
  `reason` longtext DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `name` longtext NOT NULL,
  `status` longtext NOT NULL DEFAULT 'active',
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `client_id`, `name`, `status`, `created_by`, `created_at`, `deleted_at`, `deleted_by`) VALUES
('11dcadfe-cee7-42df-8653-716e9036b103', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'F&B', 'active', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 08:03:38', NULL, NULL),
('13d27efb-f0c5-4fee-b346-c0b4f1855718', '0fe14fe2-9f3c-4b9d-bc58-931893e699f4', 'PROTEIN', 'active', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 01:16:14', NULL, NULL),
('44cbb924-2bb5-4c2e-8c86-79f9eb1bb29a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'FRESH FRUIT', 'active', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 18:53:29', NULL, NULL),
('7518184e-b0f3-48b8-93fb-901a1eccd71d', '0d947773-28ee-4e02-b5b6-40455566817d', 'DRINKS', 'active', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 14:37:36', NULL, NULL),
('85d266e6-3ef8-4434-b5f1-b234ecd1eace', '0d947773-28ee-4e02-b5b6-40455566817d', 'BAR', 'active', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 14:36:34', '2026-01-07 14:37:24', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2'),
('a6787752-fac5-43a1-8f72-039e4105a57a', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'F&B', 'active', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 04:57:27', NULL, NULL),
('b098cb17-0f0b-4dfe-9552-71be8a493d35', '0d947773-28ee-4e02-b5b6-40455566817d', 'F&B', 'active', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 14:35:48', NULL, NULL),
('b205ea14-19c3-4ae2-ad72-345740062053', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'JUICES', 'active', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 03:29:56', NULL, NULL),
('c936f77b-91cc-432c-9d15-7b7cccd3b83b', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'FOOD', 'active', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 03:30:25', NULL, NULL),
('cd56eec5-413d-42c2-897d-db44b8cdae32', '5a1e6387-ad7a-4e58-9ac4-5136ef242c4a', 'PINIPPLE JUICE', 'active', '0ff460ab-5b96-4b2d-b85f-d04c54faf25f', '2026-01-05 05:54:28', NULL, NULL),
('ce912ecf-5fca-418d-b317-8b7f2bc969eb', 'a792ef92-476b-43f7-b754-bb201bc67713', 'ADMIN', 'active', '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 19:57:01', NULL, NULL),
('dd190707-edc4-45b9-b48a-dc9cf2e9bc68', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'COCKTAILS', 'active', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 18:56:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` varchar(36) NOT NULL,
  `name` longtext NOT NULL,
  `status` longtext NOT NULL DEFAULT 'active',
  `risk_score` int(11) DEFAULT 0,
  `variance_threshold` decimal(5,2) DEFAULT 5.00,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `organization_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `status`, `risk_score`, `variance_threshold`, `created_at`, `organization_id`) VALUES
('0d947773-28ee-4e02-b5b6-40455566817d', 'ZOE ENTERPRISE LTD', 'active', 0, 5.00, '2026-01-07 14:35:21', '4144bb32-2cbb-46df-a2e7-ef96f9acebab'),
('0fe14fe2-9f3c-4b9d-bc58-931893e699f4', 'DESMOND BEST LIMITED', 'warning', 92, 3.00, '2025-12-26 06:18:46', NULL),
('30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'JUST PECKISH', 'active', 0, 5.00, '2025-12-26 10:08:03', NULL),
('5a1e6387-ad7a-4e58-9ac4-5136ef242c4a', 'Demo Restaurant', 'active', 0, 5.00, '2026-01-05 04:20:46', '81586752-9ad1-4ba7-92e0-2021626f9412'),
('a792ef92-476b-43f7-b754-bb201bc67713', 'JASON MOMOH', 'active', 0, 5.00, '2026-02-01 19:56:48', '88cc42f9-116f-409b-8af2-0fb09b0d455d'),
('cd88a504-b3b8-47c8-95be-9cee691f82e1', 'The Grand Lounge', 'active', 85, 5.00, '2025-12-26 06:18:46', NULL),
('d40fe583-f75d-4714-b3b5-9d83a9a332a9', 'YOURS HOSPITALITY', 'active', 0, 5.00, '2026-01-05 03:29:05', 'd09a34a2-4e1d-4048-be05-faa10238aae7'),
('e7d7adab-4fbb-46bf-9ada-5490d7667872', 'Ocean View Restaurant', 'active', 45, 7.00, '2025-12-26 06:18:46', NULL),
('fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'igh', 'active', 0, 5.00, '2025-12-27 00:15:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_exports`
--

CREATE TABLE `data_exports` (
  `id` varchar(36) NOT NULL,
  `organization_id` varchar(36) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `format` longtext NOT NULL,
  `status` longtext NOT NULL DEFAULT 'pending',
  `filename` longtext DEFAULT NULL,
  `file_path` longtext DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `data_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data_types`)),
  `date_range_start` date DEFAULT NULL,
  `date_range_end` date DEFAULT NULL,
  `record_count` int(11) DEFAULT NULL,
  `error` longtext DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `completed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` varchar(36) NOT NULL,
  `name` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` longtext NOT NULL DEFAULT 'active',
  `client_id` varchar(36) NOT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `suspend_reason` longtext DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `status`, `client_id`, `category_id`, `suspend_reason`, `created_by`) VALUES
('02249257-b3e4-4c5e-a5e7-6025888df409', 'MAIN STORE OUTLET', '2026-01-10 00:17:18', 'active', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', NULL, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be'),
('11744f70-511a-4909-b546-7ab652b34471', 'Bar', '2025-12-27 05:03:56', 'active', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'a6787752-fac5-43a1-8f72-039e4105a57a', 'hh', '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('216e8522-9f23-46ca-b00e-d936ebaaf0c4', 'Main Store', '2025-12-27 19:46:03', 'active', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'a6787752-fac5-43a1-8f72-039e4105a57a', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('32c1d1ba-45fd-445a-8071-27b853982d96', 'RESTAURANT OUTLET', '2026-01-01 01:12:52', 'active', '0fe14fe2-9f3c-4b9d-bc58-931893e699f4', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('657079ba-c71c-40b4-9f66-debfa0a9b109', 'BAR OUTLET', '2026-01-07 14:37:55', 'active', '0d947773-28ee-4e02-b5b6-40455566817d', '7518184e-b0f3-48b8-93fb-901a1eccd71d', NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2'),
('662ab128-3231-42ce-8d59-9445495abf49', 'o.Store', '2025-12-27 01:58:07', 'active', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', NULL, NULL, NULL),
('6821b3f9-deac-4c7a-a21e-c865e01b15a6', 'Food', '2025-12-26 06:18:46', 'active', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', NULL, NULL, NULL),
('69debcb5-7367-4a88-ab30-e03a623099e1', 'Main Bar', '2025-12-26 08:34:06', 'active', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', NULL, NULL, NULL),
('750a0e04-b36c-4186-8b72-e6c161c768af', 'BAR 1 POOL SIDE OUTLET', '2026-01-01 01:13:25', 'active', '0fe14fe2-9f3c-4b9d-bc58-931893e699f4', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('7828c913-796e-4693-9ed7-f6a19a11ec0d', 'KITCHEN OUTLET', '2026-02-01 19:57:41', 'active', 'a792ef92-476b-43f7-b754-bb201bc67713', NULL, NULL, '80486214-2b01-4950-b6b6-fac9a54c43cc'),
('85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', 'RESTAURANT OUTLET', '2026-01-07 14:36:56', 'active', '0d947773-28ee-4e02-b5b6-40455566817d', 'b098cb17-0f0b-4dfe-9552-71be8a493d35', NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2'),
('860ceafd-3b5b-426d-bd4e-298e20d3e601', 'o.Store', '2025-12-27 01:56:31', 'active', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', NULL, NULL, NULL),
('9197d0f0-9a61-42fe-a42e-115e3b4d8324', 'VIP Lounge', '2025-12-26 08:34:06', 'active', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', NULL, NULL, NULL),
('98cf9a3f-4e15-49d8-abbc-6a80789d36e6', 'Kitchen', '2025-12-26 08:34:06', 'active', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', NULL, NULL, NULL),
('a0d2bfcc-32ac-405b-82b8-4ed93c92bf17', 'Beverage', '2025-12-26 06:18:46', 'active', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', NULL, NULL, NULL),
('b3a2d778-a444-452e-b3dc-5300715abc5b', 'MAIN STORE OUTLET', '2026-01-09 23:35:37', 'active', '0d947773-28ee-4e02-b5b6-40455566817d', NULL, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2'),
('b78119c2-f83d-455c-905c-0b430ce7906a', 'Store', '2025-12-27 01:55:22', 'active', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', NULL, NULL, NULL),
('c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', 'BAR OUTLET', '2025-12-30 08:01:30', 'active', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('c844b11d-6c6c-41ba-a0da-c21646eea96b', 'BAR/MIXOLOGIST OUTLET', '2026-01-05 03:30:56', 'active', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'b205ea14-19c3-4ae2-ad72-345740062053', NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be'),
('cbb1ab77-ffdb-4276-837b-56ca8d580a6c', 'Restaurant', '2025-12-27 18:15:55', 'active', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'a6787752-fac5-43a1-8f72-039e4105a57a', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('d2622c15-96da-4602-b5ee-6d3cef69f3bc', 'Grill', '2025-12-27 05:03:37', 'active', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'a6787752-fac5-43a1-8f72-039e4105a57a', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('dbcba58f-0564-4996-8405-a35573f74989', 'GRILL OUTLET', '2025-12-29 18:48:50', 'active', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('ed852d83-1eb2-4bb2-a4b0-8b16ca7cb178', 'Tobacco', '2025-12-26 06:18:46', 'active', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', NULL, NULL, NULL),
('f0dd0739-ff38-4819-b311-c6c9992bd79d', 'JUICES OUTLET', '2025-12-29 18:48:32', 'active', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('f23dde76-2b40-440d-a610-3fabca314d0b', 'Kitchen', '2025-12-27 05:03:48', 'active', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'a6787752-fac5-43a1-8f72-039e4105a57a', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'RESTAURANT/GRILL OUTLET', '2026-01-05 03:31:16', 'active', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'b205ea14-19c3-4ae2-ad72-345740062053', NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be'),
('fc802764-22a2-48f0-b98d-6138aae4998c', 'Grill 2 Pool Side', '2025-12-27 19:01:07', 'active', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'a6787752-fac5-43a1-8f72-039e4105a57a', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907');

-- --------------------------------------------------------

--
-- Table structure for table `exceptions`
--

CREATE TABLE `exceptions` (
  `id` varchar(36) NOT NULL,
  `case_number` longtext NOT NULL,
  `outlet_id` varchar(36) DEFAULT NULL,
  `department_id` varchar(36) DEFAULT NULL,
  `summary` longtext NOT NULL,
  `description` longtext DEFAULT NULL,
  `impact` longtext DEFAULT NULL,
  `severity` longtext DEFAULT 'medium',
  `status` longtext DEFAULT 'open',
  `evidence_urls` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`evidence_urls`)),
  `assigned_to` varchar(255) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `client_id` varchar(36) DEFAULT NULL,
  `date` longtext NOT NULL DEFAULT current_timestamp(),
  `outcome` longtext DEFAULT 'pending',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `delete_reason` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exceptions`
--

INSERT INTO `exceptions` (`id`, `case_number`, `outlet_id`, `department_id`, `summary`, `description`, `impact`, `severity`, `status`, `evidence_urls`, `assigned_to`, `resolved_at`, `created_by`, `created_at`, `client_id`, `date`, `outcome`, `updated_at`, `deleted_at`, `deleted_by`, `delete_reason`) VALUES
('0a59e7ac-c299-44f2-afec-5a652bb0fef0', 'EXC-20260101-001', NULL, 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', 'asde', 'asde', NULL, 'high', 'open', NULL, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 00:00:46', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2026-01-01', 'pending', '2026-01-01 00:00:46', NULL, NULL, NULL),
('43d82652-79c5-41b9-8046-0c977a16fb5f', 'EXC-20251231-002', NULL, 'dbcba58f-0564-4996-8405-a35573f74989', 'how', 'how', NULL, 'low', 'open', NULL, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 23:59:57', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-31', 'pending', '2025-12-31 23:59:57', NULL, NULL, NULL),
('5204d46d-1c82-4949-8e4d-a31998f32693', 'EXC-20251230-001', NULL, 'f0dd0739-ff38-4819-b311-c6c9992bd79d', '1 MISSING FANTA BOTTLE', 'fanta missing at ewan shift', NULL, 'medium', 'investigating', NULL, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 13:26:00', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-30', 'pending', '2025-12-31 20:30:20', NULL, NULL, NULL),
('959d26e0-b5fc-4bc0-8455-6b70b7db9e43', 'EXC-20260201-001', NULL, '7828c913-796e-4693-9ed7-f6a19a11ec0d', 'Wastes from Food cooked', 'these food wastes could be claimed by the kitchen chef with no liability incurred', NULL, 'medium', 'open', NULL, NULL, NULL, '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 20:10:17', 'a792ef92-476b-43f7-b754-bb201bc67713', '2026-02-01 20:10:17', 'pending', '2026-02-01 20:10:17', NULL, NULL, NULL),
('a025afb3-3586-444a-a4fa-cb6e1dc22427', 'EXC-20251231-001', NULL, 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', 'sss', 'gggggggggggg', NULL, 'medium', 'investigating', NULL, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 23:59:06', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-31', 'pending', '2025-12-31 23:59:25', NULL, NULL, NULL),
('ac867377-b1be-4924-b6a3-57fde4529d70', 'EXC-20251226-002', 'bd279946-8a56-4e2f-8a40-714bdb2574c9', '69debcb5-7367-4a88-ab30-e03a623099e1', 'High void rate during evening shift', 'Void rate of 3.2% exceeds threshold of 2%. 14 void transactions recorded.', 'Revenue concern - $65 in voids', 'low', 'investigating', NULL, NULL, '2025-12-27 19:20:02', '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', '2025-12-26 08:34:06', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', '2025-12-30', 'pending', '2025-12-31 20:30:20', NULL, NULL, NULL),
('fb643f20-a2ee-414a-9e9f-a486b147b1f2', 'EXC-20251230-002', NULL, 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '1 MISSING FANTA BOTTLE', 'fanta missing at ewan shift', NULL, 'medium', 'open', NULL, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 13:26:15', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-30', 'true', '2025-12-31 20:38:52', NULL, NULL, NULL),
('fc0de406-469e-4db7-8222-31ff255c125e', 'EXC-20251226-001', 'bd279946-8a56-4e2f-8a40-714bdb2574c9', '69debcb5-7367-4a88-ab30-e03a623099e1', 'Stock variance detected in Main Bar', '1 bottle of Johnny Walker Black missing from physical count vs expected.', 'Potential loss of $45', 'medium', 'open', NULL, NULL, NULL, '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', '2025-12-26 08:34:06', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', '2025-12-30', 'pending', '2025-12-31 20:30:20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exception_activity`
--

CREATE TABLE `exception_activity` (
  `id` varchar(36) NOT NULL,
  `exception_id` varchar(36) NOT NULL,
  `activity_type` longtext NOT NULL DEFAULT 'note',
  `message` longtext NOT NULL,
  `previous_value` longtext DEFAULT NULL,
  `new_value` longtext DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exception_activity`
--

INSERT INTO `exception_activity` (`id`, `exception_id`, `activity_type`, `message`, `previous_value`, `new_value`, `created_by`, `created_at`) VALUES
('1695c896-e944-40a1-8641-6418b79abb15', 'a025afb3-3586-444a-a4fa-cb6e1dc22427', 'status_change', 'Status changed from \"open\" to \"investigating\"', 'open', 'investigating', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 23:59:25'),
('2cfcc50f-9736-4136-8512-d6763ae608d1', 'fb643f20-a2ee-414a-9e9f-a486b147b1f2', 'outcome_change', 'Outcome set to \"TRUE\"', 'pending', 'true', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 20:38:52'),
('84fbbd4d-394c-4c86-85c4-61da80cb6610', '43d82652-79c5-41b9-8046-0c977a16fb5f', 'system', 'Exception created with status \"open\" and severity \"low\"', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 23:59:57'),
('93ae3068-a46c-4287-a85e-2864f377a2c2', '959d26e0-b5fc-4bc0-8455-6b70b7db9e43', 'system', 'Exception created with status \"open\" and severity \"medium\"', NULL, NULL, '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 20:10:17'),
('b24aa28d-0100-4d4e-9b84-574a179f780c', '0a59e7ac-c299-44f2-afec-5a652bb0fef0', 'system', 'Exception created with status \"open\" and severity \"high\"', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 00:00:46'),
('d5a37f75-8b72-4b33-b76a-abc30f50db73', 'a025afb3-3586-444a-a4fa-cb6e1dc22427', 'system', 'Exception created with status \"open\" and severity \"medium\"', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 23:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `exception_comments`
--

CREATE TABLE `exception_comments` (
  `id` varchar(36) NOT NULL,
  `exception_id` varchar(36) NOT NULL,
  `comment` longtext NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goods_received_notes`
--

CREATE TABLE `goods_received_notes` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `supplier_id` varchar(36) DEFAULT NULL,
  `supplier_name` longtext NOT NULL,
  `date` datetime NOT NULL,
  `invoice_ref` longtext NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `status` longtext NOT NULL DEFAULT 'pending',
  `evidence_url` longtext DEFAULT NULL,
  `evidence_file_name` longtext DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goods_received_notes`
--

INSERT INTO `goods_received_notes` (`id`, `client_id`, `supplier_id`, `supplier_name`, `date`, `invoice_ref`, `amount`, `status`, `evidence_url`, `evidence_file_name`, `created_by`, `created_at`, `updated_at`) VALUES
('0aee6b24-1abb-4fc8-ab26-02e811ba6350', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', NULL, 'JOHN Baker', '2025-12-30 00:00:00', 'wws32', 90000.00, 'pending', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 09:08:57', '2025-12-30 09:08:57'),
('2d429b27-0e8e-49b9-8f23-49bca23c5adb', 'a792ef92-476b-43f7-b754-bb201bc67713', 'b0873ae9-c584-4b20-b2bd-3010b8aee970', 'Chinasa ebube', '2026-02-01 00:00:00', 'Inv-2026-001', 20.00, 'pending', '/uploads/grn/1769972768169-391757885-CMP3108&9055M Image Processing Assessment Item 2 Brief 2526.pdf', 'CMP3108&9055M Image Processing Assessment Item 2 Brief 2526.pdf', '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 20:06:08', '2026-02-01 20:06:08'),
('57b71438-9d0c-413c-b645-977f30bb39a4', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '3b37bf2b-9563-456a-950b-a2453c851f3a', 'Edmond Global resources Ltd', '2025-12-29 00:00:00', 'wws32', 20000.00, 'pending', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:38:18', '2025-12-29 13:38:18'),
('72794fb2-15fb-4fd8-a330-813f000adee4', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', NULL, 'Edmond Global resources Ltd', '2025-12-29 00:00:00', 'WSG234', 100000.00, 'received', '/uploads/grn/1767048495151-941087134-acknowlegmentReciept (2).pdf', 'acknowlegmentReciept (2).pdf', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 22:25:09', '2025-12-30 09:06:20'),
('99658a47-7573-4ceb-bf0f-eba833221987', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '3b37bf2b-9563-456a-950b-a2453c851f3a', 'Edmond Global resources Ltd', '2025-12-28 00:00:00', 'Ed246', 30000.00, 'received', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 07:41:10', '2025-12-28 07:41:10'),
('c617523a-929c-4180-b5fa-69ba34d069df', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '367823f0-2197-40bd-9bc9-1847d653f8b0', 'Edmond son ltd', '2026-01-05 00:00:00', 'WSG234', 20000.00, 'received', NULL, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 15:41:29', '2026-01-05 15:41:29'),
('e2d8fd86-1613-443e-9d50-d841d0024a45', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '3b37bf2b-9563-456a-950b-a2453c851f3a', 'Edmond Global resources Ltd', '2025-12-28 00:00:00', 'Ed246', 120000.00, 'received', '/uploads/grn/1766906883871-744397038-Black and Yellow Modern Leadership Training Workshop Poster.png', 'Black and Yellow Modern Leadership Training Workshop Poster.png', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 07:28:04', '2025-12-28 07:28:04'),
('e61a5994-d67f-4191-901a-9a00749f0527', '0d947773-28ee-4e02-b5b6-40455566817d', '2de7ad8b-1394-4cc1-93a4-947f38c88c77', 'Edmond global resources ltd', '2026-01-07 00:00:00', 'WSG234', 100000.00, 'received', '/uploads/grn/1767797563447-460163905-Black and Yellow Modern Leadership Training Workshop Poster (1).png', 'Black and Yellow Modern Leadership Training Workshop Poster (1).png', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 14:52:46', '2026-01-07 14:52:46'),
('f7388c2b-b8e5-49fa-9500-c758e35af098', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', NULL, 'Osasco resources enterprise', '2025-12-28 00:00:00', 'WSG234', 200000.00, 'pending', NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 07:29:04', '2025-12-28 07:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_departments`
--

CREATE TABLE `inventory_departments` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `store_name_id` varchar(36) NOT NULL,
  `inventory_type` longtext NOT NULL,
  `status` longtext NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `department_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_departments`
--

INSERT INTO `inventory_departments` (`id`, `client_id`, `store_name_id`, `inventory_type`, `status`, `created_at`, `department_id`) VALUES
('0f33a311-9974-4c6d-bd95-8f3ebf172282', '0d947773-28ee-4e02-b5b6-40455566817d', '3f8213b0-26ff-403d-a7a9-acd4a599d92f', 'DEPARTMENT_STORE', 'active', '2026-01-07 14:54:24', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4'),
('1e134a24-908d-4535-8443-28fa83f30a6a', '0d947773-28ee-4e02-b5b6-40455566817d', '47696449-9f87-42da-b36d-9f27031e6489', 'DEPARTMENT_STORE', 'active', '2026-01-07 14:54:13', '657079ba-c71c-40b4-9f66-debfa0a9b109'),
('2ce2d797-64c0-48a4-9e3b-03fd62786195', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '32f33217-fe1c-43a8-adf4-8ba3a898dc5a', 'DEPARTMENT_STORE', 'active', '2025-12-28 03:05:47', NULL),
('43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'db93ae9e-caba-448a-92d1-6d9f2adcb91c', 'MAIN_STORE', 'active', '2025-12-29 21:53:27', 'f0dd0739-ff38-4819-b311-c6c9992bd79d'),
('4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '3a3bce42-ba0c-4d5e-8f4f-7f264cb46357', 'DEPARTMENT_STORE', 'active', '2026-01-05 03:47:31', 'c844b11d-6c6c-41ba-a0da-c21646eea96b'),
('776ddf28-fc34-44bf-a202-3cb5e304a862', 'a792ef92-476b-43f7-b754-bb201bc67713', '1805725f-006d-4f72-aa63-95a182a04bb8', 'MAIN_STORE', 'active', '2026-02-01 20:06:46', '7828c913-796e-4693-9ed7-f6a19a11ec0d'),
('78721483-0a9f-4e27-9e4f-30fc9f848485', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '30b18cac-f24b-469e-837d-3184f0a731d2', 'DEPARTMENT_STORE', 'active', '2025-12-28 04:06:08', NULL),
('ad4368c1-69b1-4173-8e0d-b4deed391f20', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'e457ac14-65c9-4719-b437-d16eefc11a6b', 'DEPARTMENT_STORE', 'active', '2025-12-29 21:31:49', 'dbcba58f-0564-4996-8405-a35573f74989'),
('b30e98ff-9e99-4f22-b814-cd976d2c9c71', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '13fd1c0e-3e9c-4fa2-b798-1d8ff611bb87', 'DEPARTMENT_STORE', 'active', '2025-12-29 21:32:32', 'f0dd0739-ff38-4819-b311-c6c9992bd79d'),
('bd22d458-81ba-414f-bcdb-4e047e7ab1c6', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '73e5c291-544b-493d-aaf9-b0255991fefc', 'MAIN_STORE', 'active', '2025-12-27 23:02:17', '216e8522-9f23-46ca-b00e-d936ebaaf0c4'),
('c47d93b1-4801-445b-a77e-8362ebb25442', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '560316e1-a80d-4a4a-97ae-13ffd1ee37a5', 'DEPARTMENT_STORE', 'active', '2025-12-30 08:24:50', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482'),
('c8a17169-727d-4c3f-b026-00059fdf32a5', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '34bc8c21-57a3-4832-98c1-5a15b01505d9', 'DEPARTMENT_STORE', 'active', '2026-01-05 04:55:41', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700'),
('e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0d947773-28ee-4e02-b5b6-40455566817d', '1dd5c2ea-942b-4a49-8aee-f558918600f0', 'MAIN_STORE', 'active', '2026-01-07 14:54:01', NULL),
('f3129970-a2fc-4d98-9f25-70598db1a740', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '0c86d91d-cbae-4b44-b431-e2d4745f52c5', 'MAIN_STORE', 'active', '2026-01-05 03:48:16', '02249257-b3e4-4c5e-a5e7-6025888df409'),
('fd666e2e-2de8-4b34-8687-9d45c75a85c3', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'e44ffc4f-8a9a-4379-b5b0-274bbe8a8834', 'DEPARTMENT_STORE', 'active', '2025-12-28 03:06:27', 'd2622c15-96da-4602-b5ee-6d3cef69f3bc');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_department_categories`
--

CREATE TABLE `inventory_department_categories` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `inventory_department_id` varchar(36) NOT NULL,
  `category_id` varchar(36) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_department_categories`
--

INSERT INTO `inventory_department_categories` (`id`, `client_id`, `inventory_department_id`, `category_id`, `created_at`) VALUES
('101646c3-5002-40e8-a3f8-d03bc49df3a4', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c936f77b-91cc-432c-9d15-7b7cccd3b83b', '2026-01-10 00:20:46'),
('1730c921-cf68-43e1-b92f-f13bf2084582', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'ad4368c1-69b1-4173-8e0d-b4deed391f20', 'dd190707-edc4-45b9-b48a-dc9cf2e9bc68', '2025-12-29 22:46:03'),
('1da337ad-4dd2-4023-8a2e-a8e0363957cd', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '7518184e-b0f3-48b8-93fb-901a1eccd71d', '2026-01-07 15:01:32'),
('20403d17-7c48-4f87-956f-0f2ca68d3d5a', '0d947773-28ee-4e02-b5b6-40455566817d', '1e134a24-908d-4535-8443-28fa83f30a6a', 'b098cb17-0f0b-4dfe-9552-71be8a493d35', '2026-01-09 09:42:56'),
('226111e5-32b8-4ca8-a42e-58f58ea2512e', '0d947773-28ee-4e02-b5b6-40455566817d', '1e134a24-908d-4535-8443-28fa83f30a6a', '7518184e-b0f3-48b8-93fb-901a1eccd71d', '2026-01-09 09:42:56'),
('585ef0f5-ce0a-41d2-a2d1-474e1b8b06af', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'b098cb17-0f0b-4dfe-9552-71be8a493d35', '2026-01-07 15:01:32'),
('64c72b15-2ade-4412-ae48-cbe63fab9f63', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', 'c936f77b-91cc-432c-9d15-7b7cccd3b83b', '2026-01-07 03:52:52'),
('6dd83a54-0ce2-4a3a-99f8-2050419a2828', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'b205ea14-19c3-4ae2-ad72-345740062053', '2026-01-10 00:20:46'),
('81c896a1-b7c9-4bb1-8caf-b47c4f17102f', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '11dcadfe-cee7-42df-8653-716e9036b103', '2025-12-30 08:28:43'),
('9463b3d5-25ac-4189-a266-2d6d00e745f3', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'dd190707-edc4-45b9-b48a-dc9cf2e9bc68', '2025-12-29 22:44:15'),
('9c343ba0-1a01-41d7-80a2-22815bef3793', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'dd190707-edc4-45b9-b48a-dc9cf2e9bc68', '2025-12-30 08:28:43'),
('9cf20cd7-58bd-4a4f-9eed-5c36d4fffaf5', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '44cbb924-2bb5-4c2e-8c86-79f9eb1bb29a', '2025-12-29 22:44:15'),
('a1ca2356-3708-4a0b-a325-3a609e8f487e', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'dd190707-edc4-45b9-b48a-dc9cf2e9bc68', '2025-12-30 08:24:18'),
('a30bc5f4-0868-4a14-8009-0c8e01eaf576', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '11dcadfe-cee7-42df-8653-716e9036b103', '2025-12-30 08:24:18'),
('b0ed3b0d-ac62-4c12-8144-6a95e3c6cbdb', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', 'b205ea14-19c3-4ae2-ad72-345740062053', '2026-01-07 03:52:52'),
('cbfda6e6-f2a6-4de1-884a-e4388b2b6204', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '44cbb924-2bb5-4c2e-8c86-79f9eb1bb29a', '2025-12-30 08:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `name` longtext NOT NULL,
  `sku` longtext DEFAULT NULL,
  `category` longtext NOT NULL DEFAULT 'general',
  `unit` longtext NOT NULL DEFAULT 'pcs',
  `cost_price` decimal(12,2) DEFAULT 0.00,
  `selling_price` decimal(12,2) DEFAULT 0.00,
  `reorder_level` int(11) DEFAULT 10,
  `status` longtext NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `category_id` varchar(36) DEFAULT NULL,
  `serial_tracking` longtext NOT NULL DEFAULT 'none',
  `serial_notes` longtext DEFAULT NULL,
  `supplier_id` varchar(36) DEFAULT NULL,
  `wholesale_price` decimal(12,2) DEFAULT NULL,
  `retail_price` decimal(12,2) DEFAULT NULL,
  `vip_price` decimal(12,2) DEFAULT NULL,
  `custom_price` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `client_id`, `name`, `sku`, `category`, `unit`, `cost_price`, `selling_price`, `reorder_level`, `status`, `created_at`, `category_id`, `serial_tracking`, `serial_notes`, `supplier_id`, `wholesale_price`, `retail_price`, `vip_price`, `custom_price`) VALUES
('0685f443-471a-4a34-927e-f5e41fbeb2d3', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'Malt', 'JP-F&B-0004', 'F&B', '12 pc', 500.00, 1000.00, 10, 'active', '2025-12-30 08:04:27', '11dcadfe-cee7-42df-8653-716e9036b103', 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('097eadbb-cad3-4ef9-aab3-21ac8d02e143', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'Orange Juice', 'YH-JUI-0002', 'JUICES', '4', 500.00, 1000.00, 10, 'active', '2026-01-05 03:46:05', 'b205ea14-19c3-4ae2-ad72-345740062053', 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('0ea64431-00b9-4ee6-8689-9c3cec032490', 'a792ef92-476b-43f7-b754-bb201bc67713', 'Cooking Pots', 'JM-ADM-0001', 'ADMIN', 'PCS', 12000.00, 15000.00, 10, 'active', '2026-02-01 20:03:10', 'ce912ecf-5fca-418d-b317-8b7f2bc969eb', 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'Rice', 'I-F&B-0001', 'F&B', '84', 1000.00, 1500.00, 10, 'active', '2025-12-29 12:56:29', NULL, 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('2329f86b-aabd-4aac-b4f2-8e572f51588b', '0d947773-28ee-4e02-b5b6-40455566817d', 'Malt', 'ZEL-DRI-0001', 'DRINKS', '12', 500.00, 1000.00, 10, 'active', '2026-01-07 14:55:03', '7518184e-b0f3-48b8-93fb-901a1eccd71d', 'none', NULL, '2de7ad8b-1394-4cc1-93a4-947f38c88c77', NULL, NULL, NULL, NULL),
('29070060-0461-41bc-afaa-d58281cef2bb', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'Orange Juice', 'JP-FRE-0007', 'FRESH FRUIT', '4 pc', 400.00, 1000.00, 10, 'active', '2025-12-30 13:57:15', '44cbb924-2bb5-4c2e-8c86-79f9eb1bb29a', 'serial', 'SDR56789', NULL, NULL, NULL, NULL, NULL),
('2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '0d947773-28ee-4e02-b5b6-40455566817d', 'Chicken Fries', 'ZEL-F&B-0003', 'F&B', '4', 500.00, 1000.00, 10, 'active', '2026-01-07 14:56:35', 'b098cb17-0f0b-4dfe-9552-71be8a493d35', 'none', NULL, '2de7ad8b-1394-4cc1-93a4-947f38c88c77', NULL, NULL, NULL, NULL),
('2f64a260-d98d-40cc-bd44-346f94737415', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'Fanta', 'JP-F&B-0006', 'F&B', '12 pc', 500.00, 1000.00, 10, 'active', '2025-12-30 12:16:50', '11dcadfe-cee7-42df-8653-716e9036b103', 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('3315d410-2302-4ff8-8a38-6af5f1bee4ee', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'Water Melon Juice', 'JP-FRE-0002', 'FRESH FRUIT', '4 pc', 600.00, 1000.00, 10, 'active', '2025-12-29 21:49:26', '44cbb924-2bb5-4c2e-8c86-79f9eb1bb29a', 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('3d9cba8b-22ba-4785-9afc-e2e6842eee5a', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'Pinipple Juice', 'YH-JUI-0001', 'JUICES', '4', 500.00, 1000.00, 10, 'active', '2026-01-05 03:34:49', 'b205ea14-19c3-4ae2-ad72-345740062053', 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('4f95bc96-08b8-4aad-9f1a-b88a0b211f33', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'malt', 'I-FOO-0003', 'FOOD', '12', 500.00, 1000.00, 10, 'active', '2025-12-29 16:03:39', NULL, 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('a09560f4-54bc-4640-9efa-295f4b665032', '0d947773-28ee-4e02-b5b6-40455566817d', 'Fried Fish', 'ZEL-F&B-0004', 'F&B', '4', 500.00, 1000.00, 10, 'active', '2026-01-09 19:54:15', 'b098cb17-0f0b-4dfe-9552-71be8a493d35', 'none', NULL, '2de7ad8b-1394-4cc1-93a4-947f38c88c77', NULL, NULL, NULL, NULL),
('a8606352-f7d1-40e6-8500-8ffcbcc12924', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'Water Melon Juice', 'YH-JUI-0003', 'JUICES', '4', 500.00, 1000.00, 10, 'active', '2026-01-07 07:10:34', 'b205ea14-19c3-4ae2-ad72-345740062053', 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('d24028d5-7172-4fa4-a16a-e96a21e92c62', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'Chicken', 'I-FOO-0002', 'FOOD', '4', 1000.00, 1500.00, 10, 'active', '2025-12-29 16:02:41', NULL, 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('d3a42547-ff64-4772-923c-4a8a112f6be9', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'Coca Cola', 'JP-F&B-0005', 'F&B', '12', 500.00, 1000.00, 10, 'active', '2025-12-30 12:15:51', '11dcadfe-cee7-42df-8653-716e9036b103', 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('e55abe0b-52ac-487b-9a47-3a83ee61a95d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'Pinipple Juice', 'JP-FRE-0003', 'FRESH FRUIT', '4 pc', 600.00, 1000.00, 10, 'active', '2025-12-29 21:56:12', '44cbb924-2bb5-4c2e-8c86-79f9eb1bb29a', 'none', NULL, NULL, NULL, NULL, NULL, NULL),
('f051da21-7909-458e-9c63-d176f6106a0a', '0d947773-28ee-4e02-b5b6-40455566817d', 'Spirite', 'ZEL-DRI-0005', 'DRINKS', '12', 500.00, 1000.00, 10, 'active', '2026-01-10 01:15:39', '7518184e-b0f3-48b8-93fb-901a1eccd71d', 'none', NULL, '2de7ad8b-1394-4cc1-93a4-947f38c88c77', 500.01, 800.00, 2000.00, 1200.00),
('f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', '0d947773-28ee-4e02-b5b6-40455566817d', 'Fanta', 'ZEL-DRI-0002', 'DRINKS', '12', 500.00, 1000.00, 10, 'active', '2026-01-07 14:55:34', '7518184e-b0f3-48b8-93fb-901a1eccd71d', 'none', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_serial_events`
--

CREATE TABLE `item_serial_events` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `date` datetime NOT NULL,
  `srd_id` varchar(36) NOT NULL,
  `item_id` varchar(36) NOT NULL,
  `event_type` longtext NOT NULL,
  `ref_id` varchar(36) DEFAULT NULL,
  `serial_number` longtext NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` varchar(36) NOT NULL,
  `organization_id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `type` longtext NOT NULL,
  `title` longtext NOT NULL,
  `message` longtext NOT NULL,
  `ref_type` longtext DEFAULT NULL,
  `ref_id` varchar(36) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `email_sent_at` datetime DEFAULT NULL,
  `email_error` longtext DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` varchar(36) NOT NULL,
  `name` longtext NOT NULL,
  `type` longtext NOT NULL DEFAULT 'company',
  `email` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `currency_code` longtext NOT NULL DEFAULT 'NGN',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_suspended` tinyint(1) DEFAULT 0,
  `suspended_at` datetime DEFAULT NULL,
  `suspended_reason` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `type`, `email`, `phone`, `address`, `currency_code`, `created_at`, `updated_at`, `is_suspended`, `suspended_at`, `suspended_reason`) VALUES
('4144bb32-2cbb-46df-a2e7-ef96f9acebab', 'ESL', 'company', 'ighodaro.efeandassociates@gmail.com', NULL, NULL, 'NGN', '2026-01-07 10:50:43', '2026-01-07 10:50:43', 0, NULL, NULL),
('597b39e0-c81b-4465-8b07-0f70ce9cb0a6', 'Test Org 2', 'company', 'test2@example.com', NULL, NULL, 'NGN', '2026-01-01 19:29:22', '2026-01-01 19:29:22', 0, NULL, NULL),
('62b4d151-7e74-4012-84fd-d44acedfb8d5', 'openclax', 'company', 'algadginternationalltd@gmail.com', NULL, NULL, 'NGN', '2026-01-02 01:33:30', '2026-01-10 10:13:00', 1, '2026-01-10 10:13:00', 'ss'),
('81586752-9ad1-4ba7-92e0-2021626f9412', 'Demo Organization', 'demo', 'demo@miauditops.com', NULL, NULL, 'NGN', '2026-01-05 04:20:46', '2026-01-05 04:20:46', 0, NULL, NULL),
('88cc42f9-116f-409b-8af2-0fb09b0d455d', 'ZUXTECH', 'company', 'zuxabotics@gmail.com', NULL, NULL, 'NGN', '2026-02-01 19:17:32', '2026-02-01 19:17:32', 0, NULL, NULL),
('9696e18f-d53b-45cf-adae-616376d18ad2', 'Test Org 5', 'company', 'test5@example.com', NULL, NULL, 'NGN', '2026-01-01 21:29:55', '2026-01-01 21:29:55', 0, NULL, NULL),
('9f06a02a-93b2-4044-9f37-b174f537e82a', 'New Test Org', 'company', 'newtest123@gmail.com', NULL, NULL, 'NGN', '2026-01-01 22:10:25', '2026-01-01 22:10:25', 0, NULL, NULL),
('d09a34a2-4e1d-4048-be05-faa10238aae7', 'ESL', 'company', 'openclax@gmail.com', NULL, NULL, 'NGN', '2026-01-03 03:56:22', '2026-01-03 03:56:22', 0, NULL, NULL),
('d18379c6-217e-4d60-8705-a5cae16986b0', 'Test Org 3', 'company', 'test3@example.com', NULL, NULL, 'NGN', '2026-01-01 21:26:05', '2026-01-01 21:26:05', 0, NULL, NULL),
('e9cda146-1933-4a59-82a5-07a9f183928a', 'FIDELA LTD', 'company', 'zuxajay@gmail.com', NULL, NULL, 'NGN', '2026-02-09 03:20:31', '2026-02-09 03:20:31', 0, NULL, NULL),
('ee24b79f-7e0a-48bc-9642-d2d9603a36ab', 'Test Org 4', 'company', 'test4@example.com', NULL, NULL, 'NGN', '2026-01-01 21:27:06', '2026-01-01 21:27:06', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organization_settings`
--

CREATE TABLE `organization_settings` (
  `id` varchar(36) NOT NULL,
  `company_name` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `currency` longtext NOT NULL DEFAULT 'NGN',
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `organization_id` varchar(36) DEFAULT NULL,
  `logo_url` longtext DEFAULT NULL,
  `report_footer_note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organization_settings`
--

INSERT INTO `organization_settings` (`id`, `company_name`, `address`, `email`, `phone`, `currency`, `updated_by`, `updated_at`, `organization_id`, `logo_url`, `report_footer_note`) VALUES
('35141bd1-6a0a-4a01-9490-45f7fc73815b', 'HAighodar limited', '8 Herald Of Christ Close', 'as@gmail.com', '23480000000', 'NGN', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 04:27:09', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` varchar(36) NOT NULL,
  `organization_id` varchar(36) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `currency` longtext NOT NULL DEFAULT 'NGN',
  `period_covered_start` datetime NOT NULL,
  `period_covered_end` datetime NOT NULL,
  `status` longtext NOT NULL DEFAULT 'pending',
  `reference` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_declarations`
--

CREATE TABLE `payment_declarations` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `date` datetime NOT NULL,
  `reported_cash` decimal(12,2) DEFAULT 0.00,
  `reported_pos_settlement` decimal(12,2) DEFAULT 0.00,
  `reported_transfers` decimal(12,2) DEFAULT 0.00,
  `total_reported` decimal(12,2) DEFAULT 0.00,
  `notes` longtext DEFAULT NULL,
  `supporting_documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`supporting_documents`)),
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `department_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_declarations`
--

INSERT INTO `payment_declarations` (`id`, `client_id`, `date`, `reported_cash`, `reported_pos_settlement`, `reported_transfers`, `total_reported`, `notes`, `supporting_documents`, `created_by`, `created_at`, `updated_at`, `department_id`) VALUES
('06d8c079-2398-488d-ac02-5f039094e1ac', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 20000.00, 0.00, 40000.00, 60000.00, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 07:54:41', '2025-12-29 04:22:38', '11744f70-511a-4909-b546-7ab652b34471'),
('1a25be9b-3ffe-486e-a09c-a0a5d7c76f5a', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 0.00, 600.00, 57000.00, 57600.00, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 18:08:25', '2025-12-27 18:09:24', 'd2622c15-96da-4602-b5ee-6d3cef69f3bc'),
('209f8105-ffc2-480e-86f5-106f52415ae7', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 0.00, 0.00, 0.00, 0.00, '', '[]', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 02:55:50', '2025-12-27 02:55:50', 'a0d2bfcc-32ac-405b-82b8-4ed93c92bf17'),
('2ac0cb5d-1b9e-4539-ab57-940e53174583', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-30 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 04:46:53', '2025-12-30 05:00:25', 'dbcba58f-0564-4996-8405-a35573f74989'),
('38153538-4982-482d-9de3-b026f5994b63', 'a792ef92-476b-43f7-b754-bb201bc67713', '2026-02-01 00:00:00', 1200.00, 200.00, 100.00, 1500.00, NULL, NULL, '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 20:02:04', '2026-02-01 20:02:04', '7828c913-796e-4693-9ed7-f6a19a11ec0d'),
('59fdad1a-0087-44af-b85f-f4290b26eb08', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 70000.00, 0.00, 0.00, 70000.00, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 04:25:02', '2025-12-29 04:25:02', 'cbb1ab77-ffdb-4276-837b-56ca8d580a6c'),
('752f36b0-7434-422f-afe1-0d9532ee016d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-31 00:00:00', 0.00, 7000.00, 0.00, 7000.00, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 19:53:33', '2025-12-31 19:53:33', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482'),
('81a3cc7e-8d84-4b4a-a98b-5a73dd306b5c', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '2026-01-05 00:00:00', 0.00, 5000.00, 500.00, 5500.00, NULL, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 05:48:43', '2026-01-05 05:48:43', 'c844b11d-6c6c-41ba-a0da-c21646eea96b'),
('8f82d3c8-8574-469a-9425-f57d5c669aca', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 40000.00, 5000.00, 3000.00, 48000.00, '', '[]', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 06:22:25', '2025-12-27 06:22:25', 'f23dde76-2b40-440d-a610-3fabca314d0b'),
('c046e4e7-a073-4ad1-bfdb-f1a870b0934a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-30 00:00:00', 2000.00, 1000.00, 0.00, 3000.00, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 04:47:16', '2025-12-30 05:03:56', 'f0dd0739-ff38-4819-b311-c6c9992bd79d'),
('c0c38588-b255-46bb-b99a-277ebfa337f2', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 30000.00, 0.00, 0.00, 30000.00, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 07:42:10', '2025-12-28 07:42:10', 'fc802764-22a2-48f0-b98d-6138aae4998c'),
('d14aeef2-d941-46a0-83aa-60323131bcaf', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 0.00, 30000.00, 0.00, 30000.00, NULL, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 18:07:23', '2025-12-27 20:12:55', '11744f70-511a-4909-b546-7ab652b34471'),
('db268c84-4a2a-4608-833c-3a3b7b66cca9', '0d947773-28ee-4e02-b5b6-40455566817d', '2026-01-07 00:00:00', 0.00, 4000.00, 5500.00, 9500.00, NULL, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:04:34', '2026-01-07 15:04:34', '657079ba-c71c-40b4-9f66-debfa0a9b109'),
('fbf40bfe-6f76-4b06-b9c7-36ceebebbac8', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-29 00:00:00', 170000.00, 0.00, 0.00, 170000.00, '3k for transport', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 04:41:59', '2025-12-29 18:59:17', '11744f70-511a-4909-b546-7ab652b34471');

-- --------------------------------------------------------

--
-- Table structure for table `platform_admin_audit_log`
--

CREATE TABLE `platform_admin_audit_log` (
  `id` varchar(36) NOT NULL,
  `admin_id` varchar(36) NOT NULL,
  `action_type` longtext NOT NULL,
  `target_type` longtext NOT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `before_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`before_json`)),
  `after_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`after_json`)),
  `notes` longtext DEFAULT NULL,
  `ip_address` longtext DEFAULT NULL,
  `user_agent` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platform_admin_audit_log`
--

INSERT INTO `platform_admin_audit_log` (`id`, `admin_id`, `action_type`, `target_type`, `target_id`, `before_json`, `after_json`, `notes`, `ip_address`, `user_agent`, `created_at`) VALUES
('049d06f5-96f0-41d3-964d-b1f9c152695b', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'send_password_reset', 'user', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', NULL, NULL, NULL, '102.89.75.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-08 04:02:48'),
('06f55e1e-6c2d-4980-af30-396cd5ecc7f2', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'send_password_reset', 'user', '27debef5-907c-463a-97e8-c70cd012dfd7', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:04:42'),
('0ca1ba7c-1e4f-4c3c-ae27-326c606c4612', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'resend_verification', 'user', '27debef5-907c-463a-97e8-c70cd012dfd7', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:04:37'),
('0dd32e32-4b16-497e-bc5c-53ef08ced1cf', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'send_password_reset', 'user', '08cae6ca-1bda-42e0-8cee-bdb28d071529', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:05:25'),
('10a91cd2-362b-4547-9258-910de5d2852d', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'resend_verification', 'user', '27debef5-907c-463a-97e8-c70cd012dfd7', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:03:59'),
('15e70057-5536-4c0e-91c1-090e8018aeb5', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'grant_free_access', 'subscription', '4144bb32-2cbb-46df-a2e7-ef96f9acebab', '{\"id\": \"f129ca8c-5574-4cf4-a19d-baaf720c036c\", \"notes\": \"Upgraded to growth plan by admin request\", \"status\": \"active\", \"endDate\": null, \"planName\": \"growth\", \"provider\": \"manual\", \"createdAt\": \"2026-01-07T10:50:43.047Z\", \"expiresAt\": null, \"startDate\": \"2026-01-07T10:50:43.124Z\", \"updatedAt\": \"2026-01-07T10:59:18.550Z\", \"updatedBy\": null, \"billingPeriod\": \"monthly\", \"organizationId\": \"4144bb32-2cbb-46df-a2e7-ef96f9acebab\", \"slotsPurchased\": 1, \"lastPaymentDate\": null, \"nextBillingDate\": null, \"maxSeatsOverride\": null, \"paystackPlanCode\": null, \"lastPaymentAmount\": null, \"maxClientsOverride\": null, \"paystackEmailToken\": null, \"lastPaymentReference\": null, \"maxMainStoreOverride\": null, \"paystackCustomerCode\": null, \"retentionDaysOverride\": null, \"paystackSubscriptionCode\": null, \"maxSrdDepartmentsOverride\": null}', '{\"id\": \"f129ca8c-5574-4cf4-a19d-baaf720c036c\", \"notes\": \"Free access granted by platform admin\", \"status\": \"active\", \"endDate\": null, \"planName\": \"starter\", \"provider\": \"manual_free\", \"createdAt\": \"2026-01-07T10:50:43.047Z\", \"expiresAt\": \"2026-01-11T00:00:00.000Z\", \"startDate\": \"2026-01-07T10:50:43.124Z\", \"updatedAt\": \"2026-01-10T09:40:04.338Z\", \"updatedBy\": \"a32b98c5-cb4e-4c57-8637-f54baf9e74f6\", \"billingPeriod\": \"monthly\", \"organizationId\": \"4144bb32-2cbb-46df-a2e7-ef96f9acebab\", \"slotsPurchased\": 1, \"lastPaymentDate\": null, \"nextBillingDate\": null, \"maxSeatsOverride\": null, \"paystackPlanCode\": null, \"lastPaymentAmount\": null, \"maxClientsOverride\": null, \"paystackEmailToken\": null, \"lastPaymentReference\": null, \"maxMainStoreOverride\": null, \"paystackCustomerCode\": null, \"retentionDaysOverride\": null, \"paystackSubscriptionCode\": null, \"maxSrdDepartmentsOverride\": null}', '', '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 09:40:04'),
('1e034e5e-d6cc-47d1-bc53-3202971964ff', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'send_password_reset', 'user', '08cae6ca-1bda-42e0-8cee-bdb28d071529', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:05:17'),
('24394c35-a237-4912-8bbc-a153a6c355b6', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.76.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-09 18:28:46'),
('2c8da09e-7e1c-4b2c-8ecf-21a6f1ff0581', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'update_subscription', 'subscription', 'd09a34a2-4e1d-4048-be05-faa10238aae7', '{\"id\": \"ed19e4ef-d25c-48f6-bb15-763d827aa247\", \"notes\": null, \"status\": \"trial\", \"endDate\": null, \"planName\": \"starter\", \"provider\": \"manual\", \"createdAt\": \"2026-01-03T03:56:22.143Z\", \"expiresAt\": null, \"startDate\": \"2026-01-03T03:56:22.240Z\", \"updatedAt\": \"2026-01-03T03:56:22.143Z\", \"updatedBy\": null, \"billingPeriod\": \"monthly\", \"organizationId\": \"d09a34a2-4e1d-4048-be05-faa10238aae7\", \"slotsPurchased\": 1, \"nextBillingDate\": null}', '{\"id\": \"ed19e4ef-d25c-48f6-bb15-763d827aa247\", \"notes\": \"\", \"status\": \"active\", \"endDate\": null, \"planName\": \"enterprise\", \"provider\": \"manual\", \"createdAt\": \"2026-01-03T03:56:22.143Z\", \"expiresAt\": null, \"startDate\": \"2026-01-03T03:56:22.240Z\", \"updatedAt\": \"2026-01-08T04:13:11.943Z\", \"updatedBy\": \"a32b98c5-cb4e-4c57-8637-f54baf9e74f6\", \"billingPeriod\": \"monthly\", \"organizationId\": \"d09a34a2-4e1d-4048-be05-faa10238aae7\", \"slotsPurchased\": 1, \"nextBillingDate\": null}', '', '102.89.75.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-08 04:13:11'),
('362d621f-5f6a-4e4c-8b5a-0292e22533b7', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 06:29:50'),
('37cad554-b844-45cb-a9c9-ac5ad0594bae', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '185.107.56.156', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-12 14:00:51'),
('44ea353a-cf3c-4fd8-a0ea-8baada30a50d', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'send_password_reset', 'user', '08cae6ca-1bda-42e0-8cee-bdb28d071529', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:05:22'),
('48fc0f9b-2f21-46ea-b054-552263fb142c', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:22:21'),
('504e8a7e-788e-4625-8dce-25efd701672f', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '127.0.0.1', 'curl/8.14.1', '2026-01-08 03:16:05'),
('51eed701-3a6b-4e9f-ac05-c3a87ff33692', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'update_plan', 'subscription_plan', '0021adbe-a63b-48ef-bd9b-8be125d2e378', '{\"id\": \"0021adbe-a63b-48ef-bd9b-8be125d2e378\", \"slug\": \"starter\", \"currency\": \"NGN\", \"isActive\": true, \"maxSeats\": 2, \"createdAt\": \"2026-01-10T05:32:40.238Z\", \"sortOrder\": 1, \"updatedAt\": \"2026-01-10T09:37:25.354Z\", \"maxClients\": 1, \"description\": \"Perfect for small businesses getting started\", \"displayName\": \"Starter\", \"yearlyPrice\": \"144000.00\", \"monthlyPrice\": \"45000.00\", \"retentionDays\": 90, \"canViewReports\": true, \"quarterlyPrice\": \"40500.00\", \"canPrintReports\": false, \"canDownloadReports\": true, \"canUseBetaFeatures\": false, \"maxMainStorePerClient\": 1, \"canAccessSecondHitPage\": false, \"maxSrdDepartmentsPerClient\": 4, \"canDownloadSecondHitFullTable\": false, \"canAccessPurchasesRegisterPage\": false, \"canDownloadMainStoreLedgerSummary\": false}', '{\"id\": \"0021adbe-a63b-48ef-bd9b-8be125d2e378\", \"slug\": \"starter\", \"currency\": \"NGN\", \"isActive\": true, \"maxSeats\": 2, \"createdAt\": \"2026-01-10T05:32:40.238Z\", \"sortOrder\": 1, \"updatedAt\": \"2026-01-10T09:38:12.528Z\", \"maxClients\": 1, \"description\": \"Perfect for small businesses getting started\", \"displayName\": \"Starter\", \"yearlyPrice\": \"144000.00\", \"monthlyPrice\": \"1000.00\", \"retentionDays\": 90, \"canViewReports\": true, \"quarterlyPrice\": \"40500.00\", \"canPrintReports\": false, \"canDownloadReports\": true, \"canUseBetaFeatures\": false, \"maxMainStorePerClient\": 1, \"canAccessSecondHitPage\": false, \"maxSrdDepartmentsPerClient\": 4, \"canDownloadSecondHitFullTable\": false, \"canAccessPurchasesRegisterPage\": false, \"canDownloadMainStoreLedgerSummary\": false}', NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 09:38:12'),
('52779cea-3a09-4bac-96c9-624772fc9b73', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'logout', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.75.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-08 04:10:30'),
('58874266-3c53-4634-9789-9cc76e231a2b', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'lock_user', 'user', '27debef5-907c-463a-97e8-c70cd012dfd7', '{\"isLocked\": false}', '{\"reason\": \"h\", \"isLocked\": true}', 'h', '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:04:21'),
('5b96decf-e50c-47db-b153-f99cab81561f', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'update_plan', 'subscription_plan', '2654d29e-d5a8-4bd1-bf5a-14374f3da8be', '{\"id\": \"2654d29e-d5a8-4bd1-bf5a-14374f3da8be\", \"slug\": \"growth\", \"currency\": \"NGN\", \"isActive\": true, \"maxSeats\": 5, \"createdAt\": \"2026-01-10T05:32:40.238Z\", \"sortOrder\": 2, \"updatedAt\": \"2026-01-10T05:32:40.238Z\", \"maxClients\": 3, \"description\": \"For growing businesses with more needs\", \"displayName\": \"Growth\", \"yearlyPrice\": \"336000.00\", \"monthlyPrice\": \"35000.00\", \"retentionDays\": 90, \"canViewReports\": true, \"quarterlyPrice\": \"94500.00\", \"canPrintReports\": true, \"canDownloadReports\": true, \"canUseBetaFeatures\": false, \"maxMainStorePerClient\": 1, \"canAccessSecondHitPage\": false, \"maxSrdDepartmentsPerClient\": 7, \"canDownloadSecondHitFullTable\": false, \"canAccessPurchasesRegisterPage\": true, \"canDownloadMainStoreLedgerSummary\": false}', '{\"id\": \"2654d29e-d5a8-4bd1-bf5a-14374f3da8be\", \"slug\": \"growth\", \"currency\": \"NGN\", \"isActive\": true, \"maxSeats\": 5, \"createdAt\": \"2026-01-10T05:32:40.238Z\", \"sortOrder\": 2, \"updatedAt\": \"2026-01-10T05:57:56.438Z\", \"maxClients\": 3, \"description\": \"For growing businesses with more needs\", \"displayName\": \"Growth\", \"yearlyPrice\": \"336000.00\", \"monthlyPrice\": \"35000.00\", \"retentionDays\": 180, \"canViewReports\": true, \"quarterlyPrice\": \"94500.00\", \"canPrintReports\": true, \"canDownloadReports\": true, \"canUseBetaFeatures\": false, \"maxMainStorePerClient\": 1, \"canAccessSecondHitPage\": false, \"maxSrdDepartmentsPerClient\": 7, \"canDownloadSecondHitFullTable\": false, \"canAccessPurchasesRegisterPage\": true, \"canDownloadMainStoreLedgerSummary\": false}', NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 05:57:56'),
('5cb97a80-746f-45a8-9d0b-7606b6040226', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.76.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 00:06:25'),
('72b4696f-cfe1-4423-adc7-d7f0c5388149', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', '2026-01-25 22:07:38'),
('7550d985-a693-46f8-83cc-a2031713b26e', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'lock_user', 'user', '0ff460ab-5b96-4b2d-b85f-d04c54faf25f', '{\"isLocked\": false}', '{\"reason\": \"sd\", \"isLocked\": true}', 'sd', '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 06:18:32'),
('76975522-f722-46ab-956e-518f0b617f75', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'logout', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:22:11'),
('7a6ffb8a-7469-417d-a964-62ea920d6ac0', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'grant_free_access', 'subscription', '4144bb32-2cbb-46df-a2e7-ef96f9acebab', '{\"id\": \"f129ca8c-5574-4cf4-a19d-baaf720c036c\", \"notes\": \"Free access granted by platform admin\", \"status\": \"active\", \"endDate\": null, \"planName\": \"starter\", \"provider\": \"manual_free\", \"createdAt\": \"2026-01-07T10:50:43.047Z\", \"expiresAt\": \"2026-02-10T00:00:00.000Z\", \"startDate\": \"2026-01-07T10:50:43.124Z\", \"updatedAt\": \"2026-01-10T09:40:36.666Z\", \"updatedBy\": \"a32b98c5-cb4e-4c57-8637-f54baf9e74f6\", \"billingPeriod\": \"monthly\", \"organizationId\": \"4144bb32-2cbb-46df-a2e7-ef96f9acebab\", \"slotsPurchased\": 1, \"lastPaymentDate\": null, \"nextBillingDate\": null, \"maxSeatsOverride\": null, \"paystackPlanCode\": null, \"lastPaymentAmount\": null, \"maxClientsOverride\": null, \"paystackEmailToken\": null, \"lastPaymentReference\": null, \"maxMainStoreOverride\": null, \"paystackCustomerCode\": null, \"retentionDaysOverride\": null, \"paystackSubscriptionCode\": null, \"maxSrdDepartmentsOverride\": null}', '{\"id\": \"f129ca8c-5574-4cf4-a19d-baaf720c036c\", \"notes\": \"Free access granted by platform admin\", \"status\": \"active\", \"endDate\": null, \"planName\": \"starter\", \"provider\": \"manual_free\", \"createdAt\": \"2026-01-07T10:50:43.047Z\", \"expiresAt\": \"2026-01-11T00:00:00.000Z\", \"startDate\": \"2026-01-07T10:50:43.124Z\", \"updatedAt\": \"2026-01-10T09:41:43.994Z\", \"updatedBy\": \"a32b98c5-cb4e-4c57-8637-f54baf9e74f6\", \"billingPeriod\": \"monthly\", \"organizationId\": \"4144bb32-2cbb-46df-a2e7-ef96f9acebab\", \"slotsPurchased\": 1, \"lastPaymentDate\": null, \"nextBillingDate\": null, \"maxSeatsOverride\": null, \"paystackPlanCode\": null, \"lastPaymentAmount\": null, \"maxClientsOverride\": null, \"paystackEmailToken\": null, \"lastPaymentReference\": null, \"maxMainStoreOverride\": null, \"paystackCustomerCode\": null, \"retentionDaysOverride\": null, \"paystackSubscriptionCode\": null, \"maxSrdDepartmentsOverride\": null}', '', '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 09:41:44'),
('8282fe8e-b757-4991-b5c2-77e4b8d166c7', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 05:52:48'),
('942ab4ce-2373-4482-b0af-0eb0f6c20d0c', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 09:36:41'),
('991d2977-6525-408c-9936-48f7422da1a6', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'send_password_reset', 'user', '08cae6ca-1bda-42e0-8cee-bdb28d071529', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 10:14:25'),
('9abc9ea0-6c09-4d56-9b8f-c3935805ef47', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'lock_user', 'user', '08cae6ca-1bda-42e0-8cee-bdb28d071529', '{\"isLocked\": false}', '{\"reason\": \"hj\", \"isLocked\": true}', 'hj', '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:05:05'),
('a1cc4e6b-2945-4718-9c49-24d0c67409b1', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'update_plan', 'subscription_plan', '0021adbe-a63b-48ef-bd9b-8be125d2e378', '{\"id\": \"0021adbe-a63b-48ef-bd9b-8be125d2e378\", \"slug\": \"starter\", \"currency\": \"NGN\", \"isActive\": true, \"maxSeats\": 2, \"createdAt\": \"2026-01-10T05:32:40.238Z\", \"sortOrder\": 1, \"updatedAt\": \"2026-01-10T05:32:40.238Z\", \"maxClients\": 1, \"description\": \"Perfect for small businesses getting started\", \"displayName\": \"Starter\", \"yearlyPrice\": \"144000.00\", \"monthlyPrice\": \"15000.00\", \"retentionDays\": 90, \"canViewReports\": true, \"quarterlyPrice\": \"40500.00\", \"canPrintReports\": false, \"canDownloadReports\": true, \"canUseBetaFeatures\": false, \"maxMainStorePerClient\": 1, \"canAccessSecondHitPage\": false, \"maxSrdDepartmentsPerClient\": 4, \"canDownloadSecondHitFullTable\": false, \"canAccessPurchasesRegisterPage\": false, \"canDownloadMainStoreLedgerSummary\": false}', '{\"id\": \"0021adbe-a63b-48ef-bd9b-8be125d2e378\", \"slug\": \"starter\", \"currency\": \"NGN\", \"isActive\": true, \"maxSeats\": 2, \"createdAt\": \"2026-01-10T05:32:40.238Z\", \"sortOrder\": 1, \"updatedAt\": \"2026-01-10T09:37:25.354Z\", \"maxClients\": 1, \"description\": \"Perfect for small businesses getting started\", \"displayName\": \"Starter\", \"yearlyPrice\": \"144000.00\", \"monthlyPrice\": \"45000.00\", \"retentionDays\": 90, \"canViewReports\": true, \"quarterlyPrice\": \"40500.00\", \"canPrintReports\": false, \"canDownloadReports\": true, \"canUseBetaFeatures\": false, \"maxMainStorePerClient\": 1, \"canAccessSecondHitPage\": false, \"maxSrdDepartmentsPerClient\": 4, \"canDownloadSecondHitFullTable\": false, \"canAccessPurchasesRegisterPage\": false, \"canDownloadMainStoreLedgerSummary\": false}', NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 09:37:25'),
('af0ec84b-63a3-4571-b1f7-7f95f951ffaa', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.75.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-08 04:02:22'),
('b6b16fb5-df8d-4801-913f-e18ce5c6f9cf', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'unlock_user', 'user', '08cae6ca-1bda-42e0-8cee-bdb28d071529', '{\"isLocked\": true}', '{\"isLocked\": false}', NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:05:18'),
('bda1e4ef-2262-4dd3-9bc8-d6fcfe35411f', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'grant_free_access', 'subscription', '4144bb32-2cbb-46df-a2e7-ef96f9acebab', '{\"id\": \"f129ca8c-5574-4cf4-a19d-baaf720c036c\", \"notes\": \"Free access granted by platform admin\", \"status\": \"active\", \"endDate\": null, \"planName\": \"starter\", \"provider\": \"manual_free\", \"createdAt\": \"2026-01-07T10:50:43.047Z\", \"expiresAt\": \"2026-01-11T00:00:00.000Z\", \"startDate\": \"2026-01-07T10:50:43.124Z\", \"updatedAt\": \"2026-01-10T09:40:04.338Z\", \"updatedBy\": \"a32b98c5-cb4e-4c57-8637-f54baf9e74f6\", \"billingPeriod\": \"monthly\", \"organizationId\": \"4144bb32-2cbb-46df-a2e7-ef96f9acebab\", \"slotsPurchased\": 1, \"lastPaymentDate\": null, \"nextBillingDate\": null, \"maxSeatsOverride\": null, \"paystackPlanCode\": null, \"lastPaymentAmount\": null, \"maxClientsOverride\": null, \"paystackEmailToken\": null, \"lastPaymentReference\": null, \"maxMainStoreOverride\": null, \"paystackCustomerCode\": null, \"retentionDaysOverride\": null, \"paystackSubscriptionCode\": null, \"maxSrdDepartmentsOverride\": null}', '{\"id\": \"f129ca8c-5574-4cf4-a19d-baaf720c036c\", \"notes\": \"Free access granted by platform admin\", \"status\": \"active\", \"endDate\": null, \"planName\": \"starter\", \"provider\": \"manual_free\", \"createdAt\": \"2026-01-07T10:50:43.047Z\", \"expiresAt\": \"2026-02-10T00:00:00.000Z\", \"startDate\": \"2026-01-07T10:50:43.124Z\", \"updatedAt\": \"2026-01-10T09:40:36.666Z\", \"updatedBy\": \"a32b98c5-cb4e-4c57-8637-f54baf9e74f6\", \"billingPeriod\": \"monthly\", \"organizationId\": \"4144bb32-2cbb-46df-a2e7-ef96f9acebab\", \"slotsPurchased\": 1, \"lastPaymentDate\": null, \"nextBillingDate\": null, \"maxSeatsOverride\": null, \"paystackPlanCode\": null, \"lastPaymentAmount\": null, \"maxClientsOverride\": null, \"paystackEmailToken\": null, \"lastPaymentReference\": null, \"maxMainStoreOverride\": null, \"paystackCustomerCode\": null, \"retentionDaysOverride\": null, \"paystackSubscriptionCode\": null, \"maxSrdDepartmentsOverride\": null}', '', '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 09:40:36'),
('c4a7d53b-2fd2-4a77-9cf3-dca9ed5ad762', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'send_password_reset', 'user', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', NULL, NULL, NULL, '102.89.75.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-08 04:02:50'),
('c7fa851f-2d2a-4797-8153-526e970c0edd', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.75.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-08 04:11:29'),
('c9883688-f46c-448c-961c-6b238da7e595', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'suspend_org', 'organization', '62b4d151-7e74-4012-84fd-d44acedfb8d5', '{\"id\": \"62b4d151-7e74-4012-84fd-d44acedfb8d5\", \"name\": \"openclax\", \"type\": \"company\", \"email\": \"algadginternationalltd@gmail.com\", \"phone\": null, \"users\": [{\"id\": \"08cae6ca-1bda-42e0-8cee-bdb28d071529\", \"role\": \"super_admin\", \"email\": \"algadginternationalltd@gmail.com\", \"status\": \"active\", \"fullName\": \"Ighodaro Nosa Ogiemwanye\", \"isLocked\": false, \"createdAt\": \"2026-01-02T01:33:30.587Z\", \"lastLoginAt\": \"2026-01-03T03:54:11.948Z\", \"emailVerified\": true}], \"address\": null, \"createdAt\": \"2026-01-02T01:33:30.587Z\", \"updatedAt\": \"2026-01-02T01:33:30.587Z\", \"userCount\": 1, \"clientCount\": 0, \"isSuspended\": false, \"suspendedAt\": null, \"currencyCode\": \"NGN\", \"subscription\": {\"id\": \"08511ffc-3d88-459f-9024-a497957f91fd\", \"notes\": null, \"status\": \"trial\", \"endDate\": null, \"planName\": \"starter\", \"provider\": \"manual\", \"createdAt\": \"2026-01-02T01:33:30.587Z\", \"expiresAt\": null, \"startDate\": \"2026-01-02T01:33:30.681Z\", \"updatedAt\": \"2026-01-02T01:33:30.587Z\", \"updatedBy\": null, \"billingPeriod\": \"monthly\", \"organizationId\": \"62b4d151-7e74-4012-84fd-d44acedfb8d5\", \"slotsPurchased\": 1, \"lastPaymentDate\": null, \"nextBillingDate\": null, \"maxSeatsOverride\": null, \"paystackPlanCode\": null, \"lastPaymentAmount\": null, \"maxClientsOverride\": null, \"paystackEmailToken\": null, \"lastPaymentReference\": null, \"maxMainStoreOverride\": null, \"paystackCustomerCode\": null, \"retentionDaysOverride\": null, \"paystackSubscriptionCode\": null, \"maxSrdDepartmentsOverride\": null}, \"suspendedReason\": null}', '{\"id\": \"62b4d151-7e74-4012-84fd-d44acedfb8d5\", \"name\": \"openclax\", \"type\": \"company\", \"email\": \"algadginternationalltd@gmail.com\", \"phone\": null, \"users\": [{\"id\": \"08cae6ca-1bda-42e0-8cee-bdb28d071529\", \"role\": \"super_admin\", \"email\": \"algadginternationalltd@gmail.com\", \"status\": \"active\", \"fullName\": \"Ighodaro Nosa Ogiemwanye\", \"isLocked\": false, \"createdAt\": \"2026-01-02T01:33:30.587Z\", \"lastLoginAt\": \"2026-01-03T03:54:11.948Z\", \"emailVerified\": true}], \"address\": null, \"createdAt\": \"2026-01-02T01:33:30.587Z\", \"updatedAt\": \"2026-01-10T10:13:00.025Z\", \"userCount\": 1, \"clientCount\": 0, \"isSuspended\": true, \"suspendedAt\": \"2026-01-10T10:13:00.025Z\", \"currencyCode\": \"NGN\", \"subscription\": {\"id\": \"08511ffc-3d88-459f-9024-a497957f91fd\", \"notes\": null, \"status\": \"trial\", \"endDate\": null, \"planName\": \"starter\", \"provider\": \"manual\", \"createdAt\": \"2026-01-02T01:33:30.587Z\", \"expiresAt\": null, \"startDate\": \"2026-01-02T01:33:30.681Z\", \"updatedAt\": \"2026-01-02T01:33:30.587Z\", \"updatedBy\": null, \"billingPeriod\": \"monthly\", \"organizationId\": \"62b4d151-7e74-4012-84fd-d44acedfb8d5\", \"slotsPurchased\": 1, \"lastPaymentDate\": null, \"nextBillingDate\": null, \"maxSeatsOverride\": null, \"paystackPlanCode\": null, \"lastPaymentAmount\": null, \"maxClientsOverride\": null, \"paystackEmailToken\": null, \"lastPaymentReference\": null, \"maxMainStoreOverride\": null, \"paystackCustomerCode\": null, \"retentionDaysOverride\": null, \"paystackSubscriptionCode\": null, \"maxSrdDepartmentsOverride\": null}, \"suspendedReason\": \"ss\"}', 'ss', '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 10:13:00'),
('cbeba490-8296-4a92-baac-660023c1bff1', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'logout', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', '2026-02-09 01:54:20'),
('d848a610-ee6a-42c1-bb16-cd1d6adba19d', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:00:15'),
('e1d8be71-67f3-4ff0-b5b6-56bcef8e08eb', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'send_password_reset', 'user', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:03:57'),
('e5c7d8fa-672b-473a-b774-f86f55cb09b4', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'send_password_reset', 'user', '08cae6ca-1bda-42e0-8cee-bdb28d071529', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-10 05:05:23'),
('ea8b71b6-5e5b-4b83-876a-afd65cb73af1', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'force_logout', 'user', '08cae6ca-1bda-42e0-8cee-bdb28d071529', NULL, NULL, NULL, '102.89.69.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 10:14:19'),
('eea7998a-66d9-4838-b8f3-f45f5d594487', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '102.89.76.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-09 10:20:46'),
('ef3cb604-ce35-41ff-9cae-0c567fff5b89', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'update_subscription', 'subscription', 'd09a34a2-4e1d-4048-be05-faa10238aae7', '{\"id\":\"ed19e4ef-d25c-48f6-bb15-763d827aa247\",\"organizationId\":\"d09a34a2-4e1d-4048-be05-faa10238aae7\",\"planName\":\"enterprise\",\"billingPeriod\":\"monthly\",\"slotsPurchased\":1,\"status\":\"active\",\"provider\":\"manual\",\"startDate\":\"2026-01-03T03:56:22.000Z\",\"nextBillingDate\":null,\"expiresAt\":null,\"endDate\":null,\"notes\":\"\",\"updatedBy\":\"a32b98c5-cb4e-4c57-8637-f54baf9e74f6\",\"maxClientsOverride\":null,\"maxSrdDepartmentsOverride\":null,\"maxMainStoreOverride\":null,\"maxSeatsOverride\":null,\"retentionDaysOverride\":null,\"paystackCustomerCode\":null,\"paystackSubscriptionCode\":null,\"paystackPlanCode\":null,\"paystackEmailToken\":null,\"lastPaymentDate\":null,\"lastPaymentAmount\":null,\"lastPaymentReference\":null,\"createdAt\":\"2026-01-03T03:56:22.000Z\",\"updatedAt\":\"2026-01-08T04:13:11.000Z\"}', '{\"id\":\"ed19e4ef-d25c-48f6-bb15-763d827aa247\",\"organizationId\":\"d09a34a2-4e1d-4048-be05-faa10238aae7\",\"planName\":\"enterprise\",\"billingPeriod\":\"yearly\",\"slotsPurchased\":1,\"status\":\"active\",\"provider\":\"manual\",\"startDate\":\"2026-01-03T03:56:22.000Z\",\"nextBillingDate\":null,\"expiresAt\":null,\"endDate\":null,\"notes\":\"\",\"updatedBy\":\"a32b98c5-cb4e-4c57-8637-f54baf9e74f6\",\"maxClientsOverride\":null,\"maxSrdDepartmentsOverride\":null,\"maxMainStoreOverride\":null,\"maxSeatsOverride\":null,\"retentionDaysOverride\":null,\"paystackCustomerCode\":null,\"paystackSubscriptionCode\":null,\"paystackPlanCode\":null,\"paystackEmailToken\":null,\"lastPaymentDate\":null,\"lastPaymentAmount\":null,\"lastPaymentReference\":null,\"createdAt\":\"2026-01-03T03:56:22.000Z\",\"updatedAt\":\"2026-01-25T21:10:31.000Z\"}', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', '2026-01-25 22:10:31'),
('f18fba7f-af99-4091-a8ea-8e4c9119173a', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'login', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', '2026-02-09 01:53:11'),
('f8f72ab9-6172-4419-8494-1a958bec2ef6', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'logout', 'platform_admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', '2026-01-25 22:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `platform_admin_users`
--

CREATE TABLE `platform_admin_users` (
  `id` varchar(36) NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL,
  `name` longtext NOT NULL,
  `role` longtext NOT NULL DEFAULT 'readonly_admin',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_login_at` datetime DEFAULT NULL,
  `login_attempts` int(11) DEFAULT 0,
  `locked_until` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platform_admin_users`
--

INSERT INTO `platform_admin_users` (`id`, `email`, `password`, `name`, `role`, `is_active`, `last_login_at`, `login_attempts`, `locked_until`, `created_at`, `updated_at`) VALUES
('a32b98c5-cb4e-4c57-8637-f54baf9e74f6', 'miemploya@gmail.com', '$2b$12$cLaBgGo4k7VH1eWbVbHqEu5YdvLwiZQqZvOFb5kPd6KtH14E36b5O', 'Admin', 'platform_super_admin', 1, '2026-02-09 00:53:11', 0, NULL, '2026-01-08 03:13:11', '2026-02-09 00:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` varchar(36) NOT NULL,
  `supplier_name` longtext NOT NULL,
  `invoice_ref` longtext NOT NULL,
  `invoice_date` datetime NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `status` longtext DEFAULT 'draft',
  `evidence_url` longtext DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `client_id` varchar(36) NOT NULL,
  `department_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_name`, `invoice_ref`, `invoice_date`, `total_amount`, `status`, `evidence_url`, `created_by`, `created_at`, `client_id`, `department_id`) VALUES
('49d47ec6-a65a-49a2-ae33-ae2776630ddf', 'Premium Beverages Ltd', 'INV-2025-001', '2025-12-25 08:34:06', 2450.00, 'received', NULL, '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', '2025-12-26 08:34:06', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', 'a0d2bfcc-32ac-405b-82b8-4ed93c92bf17'),
('fe0f58e6-240f-42ee-948f-5f9d44ec3efb', 'Fresh Foods Co', 'INV-2025-002', '2025-12-26 08:34:06', 1280.00, 'pending', NULL, '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', '2025-12-26 08:34:06', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', 'a0d2bfcc-32ac-405b-82b8-4ed93c92bf17');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item_events`
--

CREATE TABLE `purchase_item_events` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `srd_id` varchar(36) DEFAULT NULL,
  `item_id` varchar(36) NOT NULL,
  `date` datetime NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `unit_cost_at_purchase` decimal(12,2) NOT NULL,
  `total_cost` decimal(12,2) NOT NULL,
  `supplier_name` longtext DEFAULT NULL,
  `invoice_no` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_item_events`
--

INSERT INTO `purchase_item_events` (`id`, `client_id`, `srd_id`, `item_id`, `date`, `qty`, `unit_cost_at_purchase`, `total_cost`, `supplier_name`, `invoice_no`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
('270366fa-65ed-41f0-9955-ac927553f85f', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-01 00:00:00', 1000.00, 500.00, 500000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:10:52', '2026-01-07 07:10:52'),
('2c8a9076-cc90-42b5-b486-91be01128616', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2026-01-01 00:00:00', 2000.00, 600.00, 1200000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 05:21:53', '2026-01-01 05:21:53'),
('5d4d288a-f1bc-402b-94cd-76188a655d6a', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-01 00:00:00', 1000.00, 500.00, 500000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 10:47:37', '2026-01-07 10:47:37'),
('6146ca60-706d-419b-b169-52eb1141a3c0', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2025-12-25 00:00:00', 500.00, 500.00, 250000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 03:49:02', '2026-01-05 03:49:02'),
('6e3c2881-c0fe-4d4d-9ee4-26b5d9080c4d', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'a09560f4-54bc-4640-9efa-295f4b665032', '2026-01-06 00:00:00', 1000.00, 500.00, 500000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 19:57:11', '2026-01-09 19:57:11'),
('7d4d65c1-bc13-4253-9d29-7be17f12d88c', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-06 00:00:00', 1300.00, 500.00, 650000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 23:17:21', '2026-01-09 23:17:21'),
('bd4531d0-74b3-46e0-927c-353054457cdd', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-07 00:00:00', 1000.00, 500.00, 500000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 14:57:38', '2026-01-07 14:57:38'),
('cde61332-2b4c-427d-b643-68c7d8ab8630', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', '2026-01-07 00:00:00', 1000.00, 500.00, 500000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 14:57:18', '2026-01-07 14:57:18'),
('ce6a6b30-39c9-4241-a839-89eb37b234ec', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-01 00:00:00', 1000.00, 500.00, 500000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 03:48:45', '2026-01-05 03:48:45'),
('e5d91e1e-5c6b-45f5-9bdb-6c6c01d20ebd', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'f051da21-7909-458e-9c63-d176f6106a0a', '2026-01-10 00:00:00', 2000.00, 500.00, 1000000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 01:16:55', '2026-01-10 01:16:55'),
('ef7830b1-0fa7-4fa1-b3f6-4d76fc01679d', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2329f86b-aabd-4aac-b4f2-8e572f51588b', '2026-01-07 00:00:00', 1000.00, 500.00, 500000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 14:57:30', '2026-01-08 01:51:46'),
('f7230174-c9d0-4ed5-a9b6-f2cd8105ea16', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2025-12-15 00:00:00', 1200.00, 500.00, 600000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 03:50:15', '2026-01-05 03:50:15'),
('f8a53498-5c3e-4e1d-ac5b-f948e55edc83', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-08 00:00:00', 2000.00, 500.00, 1000000.00, NULL, NULL, 'Auto-logged from inventory purchase capture', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 20:10:58', '2026-01-08 20:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_lines`
--

CREATE TABLE `purchase_lines` (
  `id` varchar(36) NOT NULL,
  `purchase_id` varchar(36) NOT NULL,
  `item_id` varchar(36) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_price` decimal(12,2) NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receivables`
--

CREATE TABLE `receivables` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `department_id` varchar(36) NOT NULL,
  `audit_date` datetime NOT NULL,
  `variance_amount` decimal(12,2) NOT NULL,
  `amount_paid` decimal(12,2) DEFAULT 0.00,
  `balance_remaining` decimal(12,2) NOT NULL,
  `status` longtext NOT NULL DEFAULT 'open',
  `comments` longtext DEFAULT NULL,
  `evidence_url` longtext DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receivables`
--

INSERT INTO `receivables` (`id`, `client_id`, `department_id`, `audit_date`, `variance_amount`, `amount_paid`, `balance_remaining`, `status`, `comments`, `evidence_url`, `created_by`, `created_at`, `updated_at`) VALUES
('eb1e3b28-7660-4f68-8f91-8785e9ebbabf', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', '2025-12-28 00:00:00', 5000.00, 0.00, 5000.00, 'open', 'missing sale', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 04:42:57', '2026-01-01 04:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `receivable_history`
--

CREATE TABLE `receivable_history` (
  `id` varchar(36) NOT NULL,
  `receivable_id` varchar(36) NOT NULL,
  `action` longtext NOT NULL,
  `previous_status` longtext DEFAULT NULL,
  `new_status` longtext DEFAULT NULL,
  `amount_paid` decimal(12,2) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receivable_history`
--

INSERT INTO `receivable_history` (`id`, `receivable_id`, `action`, `previous_status`, `new_status`, `amount_paid`, `notes`, `created_by`, `created_at`) VALUES
('dd41f4e5-15d6-4a87-b38f-6c4c3babc192', 'eb1e3b28-7660-4f68-8f91-8785e9ebbabf', 'created', NULL, 'open', NULL, 'Initial receivable created', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 04:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `reconciliations`
--

CREATE TABLE `reconciliations` (
  `id` varchar(36) NOT NULL,
  `department_id` varchar(36) NOT NULL,
  `date` datetime NOT NULL,
  `opening_stock` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`opening_stock`)),
  `additions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`additions`)),
  `expected_usage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`expected_usage`)),
  `physical_count` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`physical_count`)),
  `variance_qty` decimal(10,2) DEFAULT 0.00,
  `variance_value` decimal(12,2) DEFAULT 0.00,
  `status` longtext DEFAULT 'pending',
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `approved_by` varchar(255) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `client_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reconciliations`
--

INSERT INTO `reconciliations` (`id`, `department_id`, `date`, `opening_stock`, `additions`, `expected_usage`, `physical_count`, `variance_qty`, `variance_value`, `status`, `created_by`, `created_at`, `approved_by`, `approved_at`, `client_id`) VALUES
('050a27e9-8207-4cd3-8670-76f62513fb43', '11744f70-511a-4909-b546-7ab652b34471', '2025-12-30 00:00:00', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', 0.00, 0.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 23:31:31', NULL, NULL, 'fb428d91-bacb-44ed-b4cd-310c87c5a8de'),
('07c03dda-2dbe-4184-9a97-9265262e98d9', '7828c913-796e-4693-9ed7-f6a19a11ec0d', '2026-02-01 00:00:00', '{\"quantity\":0,\"value\":0}', '{\"quantity\":0,\"value\":0}', '{\"quantity\":1213000,\"value\":1213000}', '{\"quantity\":0,\"value\":0}', 0.00, 0.00, 'submitted', '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 20:08:12', NULL, NULL, 'a792ef92-476b-43f7-b754-bb201bc67713'),
('18e6cf63-d924-4a62-bc02-27d1896145df', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '2025-12-30 00:00:00', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', 0.00, 0.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 23:57:14', NULL, NULL, '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c'),
('40bfd930-ac9d-4a99-836c-ff33d898c608', 'dbcba58f-0564-4996-8405-a35573f74989', '2025-12-30 00:00:00', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', 0.00, 0.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 23:53:44', NULL, NULL, '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c'),
('6b2d31f2-4fcb-44b5-adec-d7ad88dabe45', 'dbcba58f-0564-4996-8405-a35573f74989', '2025-12-29 00:00:00', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', 0.00, 0.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 00:03:39', NULL, NULL, '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c'),
('7eb069d7-485e-4152-923c-48d21ceb46c9', '69debcb5-7367-4a88-ab30-e03a623099e1', '2025-12-25 08:34:06', '{\"GG-750\": 8, \"HEI-330\": 48, \"JWB-750\": 12}', '{\"GG-750\": 24, \"HEI-330\": 48, \"JWB-750\": 24}', '{\"GG-750\": 10, \"HEI-330\": 36, \"JWB-750\": 8}', '{\"GG-750\": 22, \"HEI-330\": 58, \"JWB-750\": 27}', -3.00, -50.00, 'pending', '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', '2025-12-26 08:34:06', NULL, NULL, 'cd88a504-b3b8-47c8-95be-9cee691f82e1'),
('8c091a60-86fa-4d78-869a-31f08dc5124d', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '2026-01-25 00:00:00', '{\"quantity\":0,\"value\":0}', '{\"quantity\":0,\"value\":0}', '{\"quantity\":108000,\"value\":108000}', '{\"quantity\":0,\"value\":0}', 0.00, 0.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-26 00:01:36', NULL, NULL, 'd40fe583-f75d-4714-b3b5-9d83a9a332a9'),
('a7a9f73a-30d7-4dbb-b7e1-fad227022bcd', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '2025-12-29 00:00:00', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', -5.00, -50.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 00:03:46', NULL, NULL, '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c'),
('b3d94bfa-b71e-4c5f-af2b-3681cf40a1de', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '2026-01-26 00:00:00', '{\"quantity\":0,\"value\":0}', '{\"quantity\":0,\"value\":0}', '{\"quantity\":0,\"value\":0}', '{\"quantity\":0,\"value\":0}', 0.00, 0.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-26 00:01:15', NULL, NULL, 'd40fe583-f75d-4714-b3b5-9d83a9a332a9'),
('b4ef0d0d-1011-4d93-9e4a-d298420d7bcf', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '2025-12-31 00:00:00', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 7000, \"quantity\": 7000}', '{\"value\": 0, \"quantity\": 0}', -8.00, -80.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 23:51:27', NULL, NULL, '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c'),
('bb04123d-1275-48ce-a8f1-ebed84584f18', 'dbcba58f-0564-4996-8405-a35573f74989', '2026-01-01 00:00:00', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', 0.00, 0.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 00:03:24', NULL, NULL, '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c'),
('d47a2792-4a52-4e7b-8ed0-1b752f7fb97b', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '2026-01-01 00:00:00', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', 0.00, 0.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 23:50:55', NULL, NULL, '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c'),
('e2678f90-1fa2-4241-bf19-3834588815c3', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', '2026-01-01 00:00:00', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', 0.00, 0.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 00:03:11', NULL, NULL, '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c'),
('f834436a-a97b-4bc5-a840-ba5621be5720', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '2026-01-01 00:00:00', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', '{\"value\": 0, \"quantity\": 0}', 0.00, 0.00, 'submitted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 23:47:53', NULL, NULL, '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c');

-- --------------------------------------------------------

--
-- Table structure for table `sales_entries`
--

CREATE TABLE `sales_entries` (
  `id` varchar(36) NOT NULL,
  `department_id` varchar(36) NOT NULL,
  `date` datetime NOT NULL,
  `shift` longtext DEFAULT 'full',
  `cash_amount` decimal(12,2) DEFAULT 0.00,
  `pos_amount` decimal(12,2) DEFAULT 0.00,
  `transfer_amount` decimal(12,2) DEFAULT 0.00,
  `voids_amount` decimal(12,2) DEFAULT 0.00,
  `discounts_amount` decimal(12,2) DEFAULT 0.00,
  `total_sales` decimal(12,2) NOT NULL,
  `mode` longtext DEFAULT 'summary',
  `evidence_url` longtext DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `client_id` varchar(36) NOT NULL,
  `amount` decimal(12,2) DEFAULT 0.00,
  `complimentary_amount` decimal(12,2) DEFAULT 0.00,
  `vouchers_amount` decimal(12,2) DEFAULT 0.00,
  `others_amount` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_entries`
--

INSERT INTO `sales_entries` (`id`, `department_id`, `date`, `shift`, `cash_amount`, `pos_amount`, `transfer_amount`, `voids_amount`, `discounts_amount`, `total_sales`, `mode`, `evidence_url`, `created_by`, `created_at`, `client_id`, `amount`, `complimentary_amount`, `vouchers_amount`, `others_amount`) VALUES
('1fe06033-c5ce-45bc-8d06-9c1fa691d113', 'dbcba58f-0564-4996-8405-a35573f74989', '2025-12-30 00:00:00', 'full', 0.00, 0.00, 0.00, 0.00, 0.00, 5000.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 07:08:11', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 5000.00, 0.00, 0.00, 0.00),
('2444e8cd-71de-4718-ad1a-c14615b7027d', '11744f70-511a-4909-b546-7ab652b34471', '2025-12-28 00:00:00', 'full', 58000.00, 0.00, 2000.00, 20000.00, 0.00, 40000.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 08:55:27', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 0.00, 0.00, 0.00, 0.00),
('25ac3569-f934-40a4-af80-5adca69fd03a', 'cbb1ab77-ffdb-4276-837b-56ca8d580a6c', '2025-12-27 00:00:00', 'full', 20000.00, 5000.00, 500.00, 2000.00, 0.00, 23500.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 18:16:36', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 0.00, 0.00, 0.00, 0.00),
('28fd1d19-f73f-42d5-b737-a9cb2dddbf58', '7828c913-796e-4693-9ed7-f6a19a11ec0d', '2026-02-01 00:00:00', 'full', 0.00, 0.00, 0.00, 1000.00, 0.00, 877000.00, 'summary', NULL, '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 20:00:57', 'a792ef92-476b-43f7-b754-bb201bc67713', 1000000.00, 120000.00, 2000.00, 0.00),
('2aaa4916-ae57-43ec-b099-e9916f6db87d', '98cf9a3f-4e15-49d8-abbc-6a80789d36e6', '2025-12-25 08:34:06', 'full', 890.00, 1560.00, 340.00, 25.00, 80.00, 2685.00, 'summary', NULL, '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', '2025-12-26 08:34:06', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', 0.00, 0.00, 0.00, 0.00),
('3bb3b0b3-c632-430d-83b7-a38797798526', 'd2622c15-96da-4602-b5ee-6d3cef69f3bc', '2025-12-29 00:00:00', 'full', 0.00, 0.00, 0.00, 0.00, 0.00, 40000.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 16:27:36', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 40000.00, 0.00, 0.00, 0.00),
('3c96041f-2ae0-4804-87b3-7d81d823e0bc', '657079ba-c71c-40b4-9f66-debfa0a9b109', '2026-01-07 00:00:00', 'full', 0.00, 0.00, 0.00, 0.00, 0.00, 10000.00, 'summary', NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:02:51', '0d947773-28ee-4e02-b5b6-40455566817d', 10000.00, 0.00, 0.00, 0.00),
('5d2a8f3c-3e09-4dc2-a3d3-d73111db9575', '69debcb5-7367-4a88-ab30-e03a623099e1', '2025-12-25 08:34:06', 'morning', 1250.00, 2340.00, 560.00, 45.00, 120.00, 3985.00, 'summary', NULL, '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', '2025-12-26 08:34:06', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', 0.00, 0.00, 0.00, 0.00),
('5f92ccdb-b14e-47d5-b89c-6f07c507e7db', 'cbb1ab77-ffdb-4276-837b-56ca8d580a6c', '2025-12-28 00:00:00', 'full', 62800.00, 0.00, 20000.00, 0.00, 0.00, 82800.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 23:11:42', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 0.00, 0.00, 0.00, 0.00),
('648763c6-dad2-4295-92b1-b35f8beaeebf', '11744f70-511a-4909-b546-7ab652b34471', '2025-12-29 00:00:00', 'full', 100500.00, 20000.00, 30000.00, 1000.00, 0.00, 174000.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 04:30:28', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 180000.00, 3000.00, 1000.00, 1000.00),
('7b37d741-751a-43a6-bbfa-1018d584ad1e', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '2026-01-25 00:00:00', 'full', 0.00, 0.00, 0.00, 0.00, 0.00, 108000.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-25 23:29:27', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 120000.00, 10000.00, 2000.00, 0.00),
('9cdcb5f1-0b6b-484c-9817-5b64fb7812a4', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', '2025-12-30 00:00:00', 'full', 0.00, 0.00, 0.00, 0.00, 0.00, 3000.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 04:44:02', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 3000.00, 0.00, 0.00, 0.00),
('9ebc56d2-e5e2-48e8-831a-9db3025e2c17', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '2026-01-05 00:00:00', 'full', 0.00, 0.00, 0.00, 0.00, 0.00, 6000.00, 'summary', NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 05:48:23', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 6000.00, 0.00, 0.00, 0.00),
('aa829237-52da-49a9-8f1f-d9167bd0035e', '7828c913-796e-4693-9ed7-f6a19a11ec0d', '2026-02-01 00:00:00', 'full', 0.00, 0.00, 0.00, 0.00, 0.00, 336000.00, 'summary', NULL, '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 20:01:29', 'a792ef92-476b-43f7-b754-bb201bc67713', 350000.00, 12000.00, 2000.00, 0.00),
('b6b8a01f-ae2c-4227-a36a-e51c963d9ff3', 'd2622c15-96da-4602-b5ee-6d3cef69f3bc', '2025-12-27 00:00:00', 'full', 4000.00, 30000.00, 23600.00, 100.00, 0.00, 57500.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 08:47:28', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 0.00, 0.00, 0.00, 0.00),
('bf8bc256-4187-442a-84b8-aabfc7cfdf03', 'fc802764-22a2-48f0-b98d-6138aae4998c', '2025-12-27 00:00:00', 'full', 20000.00, 23000.00, 5000.00, 1000.00, 0.00, 47000.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 19:02:53', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 0.00, 0.00, 0.00, 0.00),
('cf918e02-aaca-4fa4-8200-77b195064ab6', '69debcb5-7367-4a88-ab30-e03a623099e1', '2025-12-25 08:34:06', 'evening', 2890.00, 4520.00, 980.00, 65.00, 250.00, 8075.00, 'summary', NULL, '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', '2025-12-26 08:34:06', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', 0.00, 0.00, 0.00, 0.00),
('d28a67e4-62e7-4606-b81f-ef2b8a56bf8c', '69debcb5-7367-4a88-ab30-e03a623099e1', '2025-12-26 08:34:06', 'morning', 980.00, 1890.00, 420.00, 30.00, 95.00, 3165.00, 'summary', NULL, '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', '2025-12-26 08:34:06', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', 0.00, 0.00, 0.00, 0.00),
('d45c5b8f-482c-40c4-add5-24eef6a9f36b', '9197d0f0-9a61-42fe-a42e-115e3b4d8324', '2025-12-26 08:34:06', 'full', 1120.00, 2100.00, 380.00, 40.00, 110.00, 3450.00, 'summary', NULL, '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', '2025-12-26 08:34:06', 'cd88a504-b3b8-47c8-95be-9cee691f82e1', 0.00, 0.00, 0.00, 0.00),
('e9e7138a-1c94-4802-95ec-18e19652badd', '11744f70-511a-4909-b546-7ab652b34471', '2025-12-27 00:00:00', 'full', 30000.00, 700.00, 10000.00, 0.00, 0.00, 40700.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 08:46:43', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 0.00, 0.00, 0.00, 0.00),
('ed80e1cf-b4b7-4cf2-a48a-1c9bd6d04c6f', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', '2026-01-07 00:00:00', 'full', 0.00, 0.00, 0.00, 1000.00, 0.00, 14000.00, 'summary', NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:03:19', '0d947773-28ee-4e02-b5b6-40455566817d', 15000.00, 0.00, 0.00, 0.00),
('f5284b4a-d7e5-4312-8893-7c5cbd29de49', 'f23dde76-2b40-440d-a610-3fabca314d0b', '2025-12-27 00:00:00', 'full', 0.00, 0.00, 25000.00, 3000.00, 0.00, 22000.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-27 05:53:59', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 0.00, 0.00, 0.00, 0.00),
('ff642961-04b1-4350-acc8-1bc364736bf6', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '2025-12-31 00:00:00', 'full', 0.00, 0.00, 0.00, 0.00, 0.00, 7000.00, 'summary', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 19:52:36', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 7000.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sid` varchar(255) NOT NULL,
  `sess` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`sess`)),
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sid`, `sess`, `expire`) VALUES
('6_fuYlgjKHlv4eYZgk9n4fFqH2R6UQkw', '{\"cookie\":{\"originalMaxAge\":7200000,\"expires\":\"2026-01-12T16:53:54.516Z\",\"secure\":true,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"userId\":\"5ed0ccee-d55a-4700-b092-efa7e84a1907\",\"role\":\"super_admin\",\"createdAt\":1768226803475}', '2026-01-12 16:53:55'),
('FDAHUKDxXRWekT4yj27UX3dJty8OKXoc', '{\"cookie\":{\"originalMaxAge\":7200000,\"expires\":\"2026-01-12T13:23:18.981Z\",\"secure\":true,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"userId\":\"6419147a-44c1-4f3c-bbcb-51a46a91d1be\",\"role\":\"super_admin\",\"createdAt\":1768216997395}', '2026-01-12 13:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('K6idNAPsXr6ogpP7kwuEsFMZjIdeEAAc', 1770591926, '{\"cookie\":{\"originalMaxAge\":7200000,\"expires\":\"2026-02-08T23:05:26.402Z\",\"secure\":true,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"userId\":\"80486214-2b01-4950-b6b6-fac9a54c43cc\",\"role\":\"super_admin\",\"createdAt\":1770584726391}'),
('KUyvxtpkhd6SazRn-e0xzGvNDV8ajcXC', 1770592421, '{\"cookie\":{\"originalMaxAge\":7200000,\"expires\":\"2026-02-08T23:13:40.939Z\",\"secure\":true,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"userId\":\"80486214-2b01-4950-b6b6-fac9a54c43cc\",\"role\":\"super_admin\",\"createdAt\":1770585220929}'),
('qGqu6oFM4kG9PPDKsj-VNbuBHuDWIRix', 1770591911, '{\"cookie\":{\"originalMaxAge\":7200000,\"expires\":\"2026-02-08T23:05:11.305Z\",\"secure\":true,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"userId\":\"899f389d-bfb9-4dca-9342-ecea47bee9ee\",\"role\":\"auditor\",\"createdAt\":1770584711286}'),
('zVJHKmAcme-wG9JZiyP60trBXMUaMKfF', 1770592331, '{\"cookie\":{\"originalMaxAge\":7200000,\"expires\":\"2026-02-08T23:12:11.199Z\",\"secure\":true,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"userId\":\"80486214-2b01-4950-b6b6-fac9a54c43cc\",\"role\":\"super_admin\",\"createdAt\":1770585131174}');

-- --------------------------------------------------------

--
-- Table structure for table `srd_ledger_daily`
--

CREATE TABLE `srd_ledger_daily` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `srd_id` varchar(36) NOT NULL,
  `srd_type` longtext NOT NULL,
  `item_id` varchar(36) NOT NULL,
  `ledger_date` date NOT NULL,
  `opening_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `closing_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `purchase_added_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `returns_in_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `req_dep_total_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `from_main_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `inter_in_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `inter_out_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `returns_out_to_main` decimal(18,2) NOT NULL DEFAULT 0.00,
  `sold_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `waste_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `write_off_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `adjustment_qty` decimal(18,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `srd_stock_movements`
--

CREATE TABLE `srd_stock_movements` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `movement_date` date NOT NULL,
  `event_type` longtext NOT NULL,
  `from_srd_id` varchar(36) DEFAULT NULL,
  `to_srd_id` varchar(36) DEFAULT NULL,
  `item_id` varchar(36) NOT NULL,
  `qty` decimal(18,2) NOT NULL,
  `description` longtext DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `srd_transfers`
--

CREATE TABLE `srd_transfers` (
  `id` varchar(36) NOT NULL,
  `ref_id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `from_srd_id` varchar(36) NOT NULL,
  `to_srd_id` varchar(36) NOT NULL,
  `item_id` varchar(36) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `transfer_date` datetime NOT NULL,
  `transfer_type` longtext NOT NULL DEFAULT 'transfer',
  `notes` longtext DEFAULT NULL,
  `status` longtext NOT NULL DEFAULT 'posted',
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `srd_transfers`
--

INSERT INTO `srd_transfers` (`id`, `ref_id`, `client_id`, `from_srd_id`, `to_srd_id`, `item_id`, `qty`, `transfer_date`, `transfer_type`, `notes`, `status`, `created_by`, `created_at`) VALUES
('03568033-47e0-4868-9d3b-01714dd82191', 'TRF-20251231-001', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', 400.00, '2025-12-31 00:00:00', 'issue', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:49:40'),
('045242a5-f8d0-4bab-baaf-99b9cccf6d53', 'TRF-20260103-001', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 300.00, '2026-01-03 00:00:00', 'issue', NULL, 'posted', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:12:13'),
('053d99fc-5a52-4d98-b603-6e0022ef4d8e', 'TRF-20260105-003', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 250.00, '2026-01-05 00:00:00', 'issue', NULL, 'posted', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 08:00:09'),
('1d87fab8-09e1-43b9-b6c3-40ae94985750', 'TRF-20260107-003', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', '2329f86b-aabd-4aac-b4f2-8e572f51588b', 500.00, '2026-01-07 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:07:37'),
('265ea647-6768-4a7b-ba98-06b13334a069', 'TRF-20260107-002', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 300.00, '2026-01-07 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:07:12'),
('2b1f2bd9-9d92-4d10-b676-35e625edbc7e', 'TRF-20260104-001', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 100.00, '2026-01-04 00:00:00', 'issue', NULL, 'recalled', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 03:55:19'),
('2ea0928e-ac18-48b3-bd56-db1c61c9a238', 'TRF-20260106-002', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 400.00, '2026-01-06 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 23:18:50'),
('39245146-f1e5-4070-b555-6c4c182b6dba', 'TRF-20260102-001', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 100.00, '2026-01-02 00:00:00', 'issue', NULL, 'recalled', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 04:53:44'),
('4681d71d-e903-437a-aa44-cd388fee9ba0', 'TRF-20260107-005', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 500.00, '2026-01-07 00:00:00', 'issue', NULL, 'recalled', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:09:22'),
('48d5e469-ecc0-49ab-91cd-a3645549a38a', 'TRF-20251202-003', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'd3a42547-ff64-4772-923c-4a8a112f6be9', 150.00, '2025-12-02 00:00:00', 'issue', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:11:25'),
('52cf57e1-aba4-40d3-b980-ad1f63d9ace6', 'TRF-20251202-001', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '2f64a260-d98d-40cc-bd44-346f94737415', 150.00, '2025-12-02 00:00:00', 'issue', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:40'),
('5b64e181-6b93-4423-a597-05df96ec2050', 'TRF-20260108-002', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 100.00, '2026-01-08 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:46:30'),
('6d01de6f-d58f-47e5-8bdb-9f0ee68dd513', 'TRF-20260106-001', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', 'a09560f4-54bc-4640-9efa-295f4b665032', 500.00, '2026-01-06 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 19:57:53'),
('6e754f08-c9f8-447f-8111-bc80fbaa2bc7', 'TRF-20260107-003', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 300.00, '2026-01-07 00:00:00', 'issue', NULL, 'posted', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-09 10:39:41'),
('86308af0-41c1-4875-8332-1e1a65929a12', 'TRF-20260108-001', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 20.00, '2026-01-08 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-08 02:19:56'),
('8950dec3-bec2-46d3-9e64-55355ad0d94e', 'TRF-20260108-002', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 50.00, '2026-01-08 00:00:00', 'issue', NULL, 'posted', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:15:09'),
('8d9cc871-5b21-4a34-8cc1-d65b3a1ca649', 'TRF-20260101-001', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 200.00, '2026-01-01 00:00:00', 'issue', NULL, 'posted', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 03:53:57'),
('981019fe-ae62-4f04-8102-84baeb644d99', 'TRF-20251202-004', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'c47d93b1-4801-445b-a77e-8362ebb25442', '0685f443-471a-4a34-927e-f5e41fbeb2d3', 150.00, '2025-12-02 00:00:00', 'issue', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:11:43'),
('98cbfd49-a971-40f2-92ab-75bbdfdc951d', 'TRF-20260107-001', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 100.00, '2026-01-07 00:00:00', 'issue', NULL, 'recalled', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 20:25:18'),
('9b5135ad-b45d-4f3f-bf7e-7ffd9c1b6356', 'TRF-20260107-007', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2329f86b-aabd-4aac-b4f2-8e572f51588b', 250.00, '2026-01-07 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:12:11'),
('9e46ae0f-7797-4007-bfc6-781fab0cf7dc', 'TRF-20260104-002', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 100.00, '2026-01-04 00:00:00', 'issue', NULL, 'recalled', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:19:00'),
('9f9615f1-1e83-4914-9ee9-b97165c75a0f', 'TRF-20260107-009', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 400.00, '2026-01-07 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 09:44:09'),
('a0a23c2f-4bfc-4ba6-890f-989034ea79b2', 'TRF-20251203-001', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2f64a260-d98d-40cc-bd44-346f94737415', 200.00, '2025-12-03 00:00:00', 'issue', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:17:24'),
('aa75d081-bdd8-445f-b35b-e30ab97ba266', 'TRF-20260107-004', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2329f86b-aabd-4aac-b4f2-8e572f51588b', 350.00, '2026-01-07 00:00:00', 'issue', NULL, 'recalled', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:07:52'),
('b608072f-c6ce-4905-b878-fc7eb37da5b1', 'TRF-20260105-002', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 300.00, '2026-01-05 00:00:00', 'issue', NULL, 'recalled', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:56:33'),
('c638919b-d430-495e-9445-b293e5805826', 'TRF-20260106-002', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 1000.00, '2026-01-06 00:00:00', 'issue', NULL, 'posted', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:32:54'),
('cbb488fb-1d15-4617-bf57-83ddbda7004d', 'TRF-20260107-010', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 100.00, '2026-01-07 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 23:20:31'),
('cfaa8b94-a703-4b2a-9e18-3ab7d6c7cb03', 'TRF-20260107-006', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 300.00, '2026-01-07 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:11:34'),
('d5be6e7b-9126-4a9f-bb5e-6fe630d53e06', 'TRF-20251202-002', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2f64a260-d98d-40cc-bd44-346f94737415', 150.00, '2025-12-02 00:00:00', 'issue', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:10:32'),
('d86ad7e0-290a-4d96-bac4-ea7381003750', 'TRF-20260106-001', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 300.00, '2026-01-06 00:00:00', 'issue', NULL, 'posted', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:25:18'),
('e7516dc0-750b-4500-8ed5-6dcc40ec2cb7', 'TRF-20260108-001', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 200.00, '2026-01-08 00:00:00', 'issue', NULL, 'posted', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-09 10:41:06'),
('eaf2c04f-0e60-4158-8fe3-2b29fccc9705', 'TRF-20260107-002', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 300.00, '2026-01-07 00:00:00', 'issue', NULL, 'posted', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 21:09:09'),
('f526e33a-7e45-4b38-9ffd-e18d74797b4d', 'TRF-20260107-008', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 200.00, '2026-01-07 00:00:00', 'issue', NULL, 'posted', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-08 20:56:23'),
('f620c642-864a-48d8-92bf-458e8812c2b3', 'TRF-20260105-001', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 500.00, '2026-01-05 00:00:00', 'issue', NULL, 'recalled', '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 03:52:47'),
('fe1987a8-5dc7-4dd6-8efc-c26ef1a9a792', 'TRF-20260107-001', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 500.00, '2026-01-07 00:00:00', 'issue', NULL, 'recalled', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` varchar(36) NOT NULL,
  `department_id` varchar(36) NOT NULL,
  `item_id` varchar(36) NOT NULL,
  `date` datetime NOT NULL,
  `opening_qty` decimal(10,2) DEFAULT 0.00,
  `received_qty` decimal(10,2) DEFAULT 0.00,
  `sold_qty` decimal(10,2) DEFAULT 0.00,
  `expected_closing_qty` decimal(10,2) DEFAULT 0.00,
  `actual_closing_qty` decimal(10,2) DEFAULT NULL,
  `variance_qty` decimal(10,2) DEFAULT 0.00,
  `variance_value` decimal(12,2) DEFAULT 0.00,
  `notes` longtext DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `client_id` varchar(36) NOT NULL,
  `added_qty` decimal(10,2) DEFAULT 0.00,
  `cost_price_snapshot` decimal(12,2) DEFAULT 0.00,
  `selling_price_snapshot` decimal(12,2) DEFAULT 0.00,
  `store_department_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_counts`
--

INSERT INTO `stock_counts` (`id`, `department_id`, `item_id`, `date`, `opening_qty`, `received_qty`, `sold_qty`, `expected_closing_qty`, `actual_closing_qty`, `variance_qty`, `variance_value`, `notes`, `created_by`, `created_at`, `client_id`, `added_qty`, `cost_price_snapshot`, `selling_price_snapshot`, `store_department_id`) VALUES
('09379f6b-8356-4e1c-b245-f63ff799ab30', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-29 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:21:31', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('0bdcd282-4089-4893-9aeb-1d21316ef2a1', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-29 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:18:21', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('17394d2b-3d23-4918-a012-d85b0d0a6251', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-05 00:00:00', 100.00, 0.00, 10.00, 100.00, 90.00, -10.00, 0.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 17:23:19', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 0.00, 0.00, 0.00, '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3'),
('1fdb6571-d1cf-4484-83db-e54de64d5fc2', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-29 00:00:00', 15.00, 0.00, 5.00, 715.00, 710.00, -5.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:26:06', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 700.00, 0.00, 0.00, 'b30e98ff-9e99-4f22-b814-cd976d2c9c71'),
('26e6b1d1-90c8-45df-8934-a3db428f8c66', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-30 00:00:00', 700.00, 0.00, 3.00, 700.00, 697.00, -3.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 04:45:22', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, NULL),
('29a6e591-6087-404a-9e4e-b34151feb014', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-29 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:19:25', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('3d85aa03-0784-4dbd-9953-de6bbd9d3ba0', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-08 00:00:00', 700.00, 0.00, 45.00, 800.00, 755.00, -45.00, 0.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:51:41', '0d947773-28ee-4e02-b5b6-40455566817d', 100.00, 0.00, 0.00, '0f33a311-9974-4c6d-bd95-8f3ebf172282'),
('40d96b6e-d1c7-414c-92ba-5f128b15bac7', '657079ba-c71c-40b4-9f66-debfa0a9b109', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', '2026-01-08 00:00:00', 480.00, 0.00, 30.00, 480.00, 450.00, -30.00, 0.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-08 02:06:32', '0d947773-28ee-4e02-b5b6-40455566817d', 0.00, 0.00, 0.00, '1e134a24-908d-4535-8443-28fa83f30a6a'),
('429e83d8-5308-455c-8b53-19aa7c48e2d3', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-29 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:17:44', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('462e7fcb-0c3d-4441-af2c-5616b7fa1428', '657079ba-c71c-40b4-9f66-debfa0a9b109', '2329f86b-aabd-4aac-b4f2-8e572f51588b', '2026-01-07 00:00:00', 0.00, 0.00, 50.00, 1000.00, 950.00, -50.00, 0.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-08 21:00:12', '0d947773-28ee-4e02-b5b6-40455566817d', 1000.00, 0.00, 0.00, '1e134a24-908d-4535-8443-28fa83f30a6a'),
('47b1e85e-ad5e-477f-919c-1c05247b3ef9', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-29 00:00:00', 10.00, 0.00, 0.00, 10.00, 10.00, 0.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:25:04', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, 'b30e98ff-9e99-4f22-b814-cd976d2c9c71'),
('581076af-af41-47cf-b925-0dd2cf497632', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-28 00:00:00', 20.00, 0.00, 5.00, 20.00, 15.00, -5.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 14:52:51', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, NULL),
('5c6c57fe-5d52-4df9-b672-a0a58d0ac86d', '657079ba-c71c-40b4-9f66-debfa0a9b109', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-07 00:00:00', 0.00, 0.00, 20.00, 400.00, 380.00, -20.00, 0.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 09:54:03', '0d947773-28ee-4e02-b5b6-40455566817d', 400.00, 0.00, 0.00, '1e134a24-908d-4535-8443-28fa83f30a6a'),
('5e70b345-d3a0-4927-b1e5-a30bf1863204', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-29 00:00:00', 0.00, 0.00, 5.00, 450.00, 445.00, -5.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 00:06:33', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 450.00, 0.00, 0.00, 'b30e98ff-9e99-4f22-b814-cd976d2c9c71'),
('5f32a321-a7ec-4e0d-9e5d-1344e2188fe2', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-07 00:00:00', 400.00, 0.00, 100.00, 800.00, 700.00, -100.00, 0.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 00:38:38', '0d947773-28ee-4e02-b5b6-40455566817d', 400.00, 0.00, 0.00, '0f33a311-9974-4c6d-bd95-8f3ebf172282'),
('665640df-edaa-46c9-8dd4-5588f065c08f', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-05 00:00:00', 300.00, 0.00, 50.00, 550.00, 500.00, -50.00, 0.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 20:35:29', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 250.00, 0.00, 0.00, '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3'),
('68b124ce-f52c-4273-8370-a7ab3aad84de', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-02 00:00:00', 0.00, 0.00, 50.00, 150.00, 100.00, -50.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:20:56', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 150.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('76871c03-37b1-459b-988d-cbcd4342b1f4', '11744f70-511a-4909-b546-7ab652b34471', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-29 00:00:00', 40.00, 0.00, 0.00, 140.00, 140.00, 0.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 15:12:46', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 100.00, 0.00, 0.00, NULL),
('7bfdfef1-5b8a-4699-be3c-a0cbf362e91b', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-31 00:00:00', 448.00, 0.00, 8.00, 448.00, 440.00, -8.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:10:11', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('816ed2bb-f572-4dc9-8132-ece2aa4d28d6', '657079ba-c71c-40b4-9f66-debfa0a9b109', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-08 00:00:00', 400.00, 0.00, 50.00, 400.00, 350.00, -50.00, 0.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 09:56:07', '0d947773-28ee-4e02-b5b6-40455566817d', 0.00, 0.00, 0.00, '1e134a24-908d-4535-8443-28fa83f30a6a'),
('81d0d4b6-0629-4d81-bf93-da2ee7bb396f', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-07 00:00:00', 0.00, 0.00, 30.00, 300.00, 270.00, -30.00, 0.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 21:13:15', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 300.00, 0.00, 0.00, 'c8a17169-727d-4c3f-b026-00059fdf32a5'),
('8818ca92-6fa1-494b-a334-44baffa03842', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-02 00:00:00', 0.00, 0.00, 20.00, 150.00, 130.00, -20.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:33:04', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 150.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('956fd86d-6c87-48d3-9d9d-f7344e5b6544', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-29 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:20:18', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('9f188f04-a985-459d-97a0-d46e2e769264', '657079ba-c71c-40b4-9f66-debfa0a9b109', 'a09560f4-54bc-4640-9efa-295f4b665032', '2026-01-06 00:00:00', 0.00, 0.00, 50.00, 500.00, 450.00, -50.00, 0.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 19:58:52', '0d947773-28ee-4e02-b5b6-40455566817d', 500.00, 0.00, 0.00, '0f33a311-9974-4c6d-bd95-8f3ebf172282'),
('a7d4ae82-a1fe-4c1b-ba19-9d908e3a6f66', '02249257-b3e4-4c5e-a5e7-6025888df409', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-06 00:00:00', 200.00, 0.00, 50.00, 500.00, 450.00, -50.00, 0.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:26:04', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 300.00, 0.00, 0.00, '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3'),
('b4ed9eb0-796e-4f83-bb89-1594b3a0a72a', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-02 00:00:00', 0.00, 0.00, 50.00, 150.00, 100.00, -50.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:21:19', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 150.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('bb587932-f58d-4c65-afa1-1d929d7205b3', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-07 00:00:00', 550.00, 0.00, 50.00, 950.00, 900.00, -50.00, 0.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 21:04:44', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 400.00, 0.00, 0.00, '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3'),
('d54b4d95-41e1-4a98-8869-7846e9953898', '11744f70-511a-4909-b546-7ab652b34471', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-29 00:00:00', 40.00, 0.00, 113.00, 140.00, 27.00, -113.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 14:46:50', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 100.00, 0.00, 0.00, NULL),
('e8a99023-6736-4c45-a528-7853a19787f8', '657079ba-c71c-40b4-9f66-debfa0a9b109', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', '2026-01-07 00:00:00', 0.00, 0.00, 30.00, 200.00, 170.00, -30.00, 0.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-08 20:57:31', '0d947773-28ee-4e02-b5b6-40455566817d', 200.00, 0.00, 0.00, '1e134a24-908d-4535-8443-28fa83f30a6a'),
('f0a6b7c7-3362-47ef-8a80-dc418fdaa0f8', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-29 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:16:39', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('f122c893-304a-4231-a6df-b2dabe0788c0', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-31 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 08:04:03', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 0.00, 0.00, 0.00, 'c47d93b1-4801-445b-a77e-8362ebb25442'),
('fb87ee82-b333-43db-9bc9-7ef97d43eb05', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-06 00:00:00', 550.00, 0.00, 50.00, 550.00, 500.00, -50.00, 0.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 20:38:44', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 0.00, 0.00, 0.00, '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3');

-- --------------------------------------------------------

--
-- Table structure for table `stock_movements`
--

CREATE TABLE `stock_movements` (
  `id` varchar(36) NOT NULL,
  `outlet_id` varchar(36) DEFAULT NULL,
  `movement_type` longtext NOT NULL,
  `source_location` longtext DEFAULT NULL,
  `destination_location` longtext DEFAULT NULL,
  `items_description` longtext DEFAULT NULL,
  `total_value` decimal(12,2) DEFAULT 0.00,
  `authorized_by` longtext DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `client_id` varchar(36) NOT NULL,
  `department_id` varchar(36) NOT NULL,
  `from_srd_id` varchar(36) DEFAULT NULL,
  `to_srd_id` varchar(36) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `adjustment_direction` longtext DEFAULT NULL,
  `total_qty` decimal(10,2) DEFAULT 0.00,
  `notes` longtext DEFAULT NULL,
  `approved_by` varchar(255) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `idempotency_key` varchar(255) DEFAULT NULL,
  `source_ref` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_movements`
--

INSERT INTO `stock_movements` (`id`, `outlet_id`, `movement_type`, `source_location`, `destination_location`, `items_description`, `total_value`, `authorized_by`, `created_by`, `created_at`, `client_id`, `department_id`, `from_srd_id`, `to_srd_id`, `date`, `adjustment_direction`, `total_qty`, `notes`, `approved_by`, `approved_at`, `idempotency_key`, `source_ref`) VALUES
('051832b3-c353-4820-b471-d9f6dc237099', NULL, 'write_off', 'JUICES OUTLET SR-D', NULL, 'PINIPPLE JUICE (1)', 600.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 19:49:32', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', NULL, '2025-12-30 19:49:32', NULL, 1.00, 'Damange', NULL, NULL, NULL, NULL),
('06a7ff35-4751-4d20-8408-fb69b75cd3e4', NULL, 'issue', NULL, NULL, 'Water Melon Juice (200)', 100000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 06:30:33', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-06 00:00:00', NULL, 200.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-06:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:595eed6e-8595-413c-a0e0-f78b3e8b0279:200:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260106-001'),
('07cef5e9-1488-4684-96a2-87cb33bc5f1c', NULL, 'issue', NULL, NULL, 'Orange Juice (300)', 150000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:25:18', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-06 00:00:00', NULL, 300.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-06:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:097eadbb-cad3-4ef9-aab3-21ac8d02e143:300:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260106-001'),
('0ab7e420-af56-46ee-8e7c-8cd886a22ce6', NULL, 'issue', NULL, NULL, 'Water Melon Juice (400)', 200000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 06:38:38', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-06 00:00:00', NULL, 400.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-06:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:595eed6e-8595-413c-a0e0-f78b3e8b0279:400:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260106-002'),
('0c69c65f-f4ca-431e-a2a7-b0ad62d9cef5', NULL, 'waste', 'MAIN STORE SR-D', NULL, 'Orange Juice (20)', 10000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-09 10:42:18', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'f3129970-a2fc-4d98-9f25-70598db1a740', NULL, '2026-01-08 00:00:00', NULL, 20.00, NULL, NULL, NULL, NULL, NULL),
('1005c74a-48c4-4e64-973e-6c5da1908f86', NULL, 'issue', NULL, NULL, 'Water Melon Juice (300)', 150000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:12:13', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-03 00:00:00', NULL, 300.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-03:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:a8606352-f7d1-40e6-8500-8ffcbcc12924:300:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260103-001'),
('147e19f5-5e3e-4ede-b375-dd232eba95e0', NULL, 'issue', NULL, NULL, 'Chicken Fries (400)', 200000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 09:44:09', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', '2026-01-07 00:00:00', NULL, 400.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:1e134a24-908d-4535-8443-28fa83f30a6a:2a1eaab7-56a8-40d9-8fc3-d379beec67b2:400:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260107-009'),
('18b7fa41-d173-464d-870b-9931c73b2a49', NULL, 'transfer', 'MAIN STORE SR-D', 'RESTAURANT/GRILL OUTLET SR-D', 'Water Melon Juice (20)', 10000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 05:33:14', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '2026-01-07 05:33:14', NULL, 20.00, NULL, NULL, NULL, NULL, NULL),
('1bf67e7b-508f-4e33-9d2b-3cf5df8b6e6f', NULL, 'issue', NULL, NULL, 'Malt (250)', 125000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:12:11', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-07 00:00:00', NULL, 250.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:0f33a311-9974-4c6d-bd95-8f3ebf172282:2329f86b-aabd-4aac-b4f2-8e572f51588b:250:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260107-007'),
('215c53fe-120d-45ff-901c-5d62348dacd1', NULL, 'issue', NULL, NULL, 'Orange Juice (200)', 100000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-09 10:41:06', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '2026-01-08 00:00:00', NULL, 200.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-08:f3129970-a2fc-4d98-9f25-70598db1a740:c8a17169-727d-4c3f-b026-00059fdf32a5:097eadbb-cad3-4ef9-aab3-21ac8d02e143:200:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260108-001'),
('258af520-c6b7-42d4-b688-eb58d67457bb', NULL, 'write_off', 'MAIN STORE SR-D', NULL, 'Chicken Fries (15)', 7500.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:47:32', '0d947773-28ee-4e02-b5b6-40455566817d', 'b3a2d778-a444-452e-b3dc-5300715abc5b', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', NULL, '2026-01-08 00:00:00', NULL, 15.00, NULL, NULL, NULL, NULL, NULL),
('2a4f4c47-414a-432a-9c67-91fbae34e9dd', NULL, 'transfer', 'BAR/MIXOLOGIST OUTLET SR-D', 'RESTAURANT/GRILL OUTLET SR-D', 'Water Melon Juice (5)', 2500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 08:02:20', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '2026-01-07 08:02:20', NULL, 5.00, NULL, NULL, NULL, NULL, NULL),
('2bea414d-92ba-4f10-8e05-03670a8c4edf', NULL, 'issue', NULL, NULL, 'Chicken Fries (500)', 250000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:09:22', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-07 00:00:00', NULL, 500.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:0f33a311-9974-4c6d-bd95-8f3ebf172282:2a1eaab7-56a8-40d9-8fc3-d379beec67b2:500:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260107-005'),
('32fca88d-1327-461a-958c-f3bc21d6f1cb', NULL, 'transfer', 'MAIN STORE SR-D', 'BAR/MIXOLOGIST OUTLET SR-D', 'Water Melon Juice (100)', 50000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 09:55:01', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-07 09:55:01', NULL, 100.00, NULL, NULL, NULL, NULL, NULL),
('3b4bcfce-7744-4468-9c37-83f0c325ccbb', NULL, 'waste', 'BAR/MIXOLOGIST OUTLET SR-D', NULL, 'Orange Juice (20)', 10000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:27:55', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', NULL, '2026-01-06 00:00:00', NULL, 20.00, NULL, NULL, NULL, NULL, NULL),
('41ed03d3-c3ea-4480-896c-39e8d0f10e94', NULL, 'transfer', 'RESTAURANT OUTLET SR-D', 'MAIN STORE SR-D', 'Chicken Fries (1)', 500.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:52:56', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', '0f33a311-9974-4c6d-bd95-8f3ebf172282', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2026-01-08 00:00:00', NULL, 1.00, NULL, NULL, NULL, NULL, NULL),
('41fa8bc1-0669-43a8-9b0c-4dfd4f40946d', NULL, 'issue', NULL, NULL, 'Orange Juice (1000)', 500000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:32:54', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '2026-01-06 00:00:00', NULL, 1000.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-06:f3129970-a2fc-4d98-9f25-70598db1a740:c8a17169-727d-4c3f-b026-00059fdf32a5:097eadbb-cad3-4ef9-aab3-21ac8d02e143:1000:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260106-002'),
('44d11d1b-93fd-4f7a-9902-0dda499662a7', NULL, 'write_off', 'BAR OUTLET SR-D', NULL, 'Chicken Fries (5)', 2500.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 09:52:23', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', '1e134a24-908d-4535-8443-28fa83f30a6a', NULL, '2026-01-07 00:00:00', NULL, 5.00, NULL, NULL, NULL, NULL, NULL),
('49dfba4c-67e4-4d83-8af0-075e105dc797', NULL, 'transfer', 'RESTAURANT/GRILL OUTLET SR-D', 'MAIN STORE SR-D', 'Orange Juice (30)', 15000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-09 10:47:22', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'c8a17169-727d-4c3f-b026-00059fdf32a5', 'f3129970-a2fc-4d98-9f25-70598db1a740', '2026-01-08 00:00:00', NULL, 30.00, NULL, NULL, NULL, NULL, NULL),
('4a0349fe-d1c8-4455-81f3-f8377f686d3d', NULL, 'transfer', 'BAR OUTLET SR-D', 'MAIN STORE SR-D', 'Chicken Fries (20)', 10000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 09:49:19', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', '1e134a24-908d-4535-8443-28fa83f30a6a', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2026-01-07 00:00:00', NULL, 20.00, NULL, NULL, NULL, NULL, NULL),
('4a8094c8-1def-473b-bf9d-4d1d9b3f6f4f', NULL, 'transfer', 'JUICES OUTLET SR-D', 'MAIN STORE SR-D', NULL, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 19:01:56', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2025-12-30 19:01:56', NULL, 1.00, 'yes', NULL, NULL, NULL, NULL),
('4f4bab0b-b839-4812-a940-4804f3671baa', NULL, 'transfer', 'BAR OUTLET SR-D', 'MAIN STORE SR-D', 'Chicken Fries (10)', 5000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:48:27', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', '1e134a24-908d-4535-8443-28fa83f30a6a', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2026-01-08 00:00:00', NULL, 10.00, NULL, NULL, NULL, NULL, NULL),
('4ffeb0f0-9a4e-4c5d-9926-b95a88af81f3', NULL, 'issue', NULL, NULL, 'Water Melon Juice (250)', 125000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 08:00:09', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-05 00:00:00', NULL, 250.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-05:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:a8606352-f7d1-40e6-8500-8ffcbcc12924:250:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260105-003'),
('5193c7ce-f7e1-4758-81c4-fece4579dc70', NULL, 'transfer', 'JUICES OUTLET SR-D', 'MAIN STORE SR-D', NULL, 0.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:58:52', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2025-12-30 18:58:52', NULL, 1.00, NULL, NULL, NULL, NULL, NULL),
('5a5c950e-b0fb-43bc-91aa-7a0ac21c449f', NULL, 'waste', 'BAR OUTLET SR-D', NULL, 'Chicken Fries (5)', 2500.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 09:52:43', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', '1e134a24-908d-4535-8443-28fa83f30a6a', NULL, '2026-01-07 00:00:00', NULL, 5.00, NULL, NULL, NULL, NULL, NULL),
('5e600316-c413-4b11-a0f4-cf2534ef8c61', NULL, 'issue', NULL, NULL, 'Orange Juice (100)', 50000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 20:25:18', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-07 00:00:00', NULL, 100.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:097eadbb-cad3-4ef9-aab3-21ac8d02e143:100:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260107-001'),
('65a1d143-e58f-42cc-b9fa-f06e4e91ad2c', NULL, 'adjustment', 'JUICES OUTLET SR-D', NULL, 'PINIPPLE JUICE (1)', 600.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 19:47:58', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', NULL, '2025-12-30 19:47:58', 'decrease', 1.00, 'Testing ', NULL, NULL, NULL, NULL),
('660479a1-6078-4469-90a8-663be16a03e7', NULL, 'waste', 'BAR/MIXOLOGIST OUTLET SR-D', NULL, 'Water Melon Juice (1)', 500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 17:22:20', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', NULL, '2026-01-05 17:22:20', NULL, 1.00, NULL, NULL, NULL, NULL, NULL),
('6cd216a8-d8ec-4137-8161-d20b56ad1099', NULL, 'issue', NULL, NULL, '[REVERSAL] Malt (500)', 250000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:14:15', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', '2026-01-07 15:14:15', NULL, 500.00, 'REVERSAL of movement beb7ebf8... Reason: z', NULL, NULL, NULL, NULL),
('6e88cd27-04ab-4ed1-9faa-3cdb89feedf8', NULL, 'adjustment', 'BAR OUTLET SR-D', NULL, 'Malt (2)', 1000.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:34:51', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', 'c47d93b1-4801-445b-a77e-8362ebb25442', NULL, '2025-12-31 05:34:51', 'increase', 2.00, NULL, NULL, NULL, NULL, NULL),
('70891294-eb84-417f-ac12-e0f8f17ddd93', NULL, 'transfer', 'BAR/MIXOLOGIST OUTLET SR-D', 'MAIN STORE SR-D', 'Water Melon Juice (1)', 500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 17:15:56', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'f3129970-a2fc-4d98-9f25-70598db1a740', '2026-01-05 17:15:56', NULL, 1.00, NULL, NULL, NULL, NULL, NULL),
('710b649d-1f25-4e27-a9a1-cb68044c91b4', NULL, 'write_off', 'BAR/MIXOLOGIST OUTLET SR-D', NULL, 'Water Melon Juice (1)', 500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 17:22:05', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', NULL, '2026-01-05 17:22:05', NULL, 1.00, NULL, NULL, NULL, NULL, NULL),
('715d18bd-dae2-4ef3-959b-52d07dfebc84', NULL, 'issue', NULL, NULL, 'Water Melon Juice (300)', 150000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 06:20:57', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-05 00:00:00', NULL, 300.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-05:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:595eed6e-8595-413c-a0e0-f78b3e8b0279:300:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260105-011'),
('720575d1-30be-4add-b1a1-ceeed183f7e5', NULL, 'issue', NULL, NULL, 'Fanta (500)', 250000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:06:59', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', '2026-01-07 00:00:00', NULL, 500.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:1e134a24-908d-4535-8443-28fa83f30a6a:f3b1dfbb-98df-4a52-ab1e-617c8e915a4c:500:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260107-001'),
('72243d47-1c20-4ad7-9465-28f601b6aede', NULL, 'issue', NULL, NULL, 'Water Melon Juice (300)', 150000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:56:33', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-05 00:00:00', NULL, 300.00, 'Issued from Main Store via ledger\\n[REVERSED on 2026-01-07T07:57:49.093Z - Reversal ID: 96db7e1e]', NULL, NULL, 'issue:2026-01-05:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:a8606352-f7d1-40e6-8500-8ffcbcc12924:300:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260105-002'),
('725967e6-83de-41f9-83a1-b297884b49f8', NULL, 'transfer', 'BAR/MIXOLOGIST OUTLET SR-D', 'MAIN STORE SR-D', 'Orange Juice (20)', 10000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-09 10:47:02', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'f3129970-a2fc-4d98-9f25-70598db1a740', '2026-01-08 00:00:00', NULL, 20.00, NULL, NULL, NULL, NULL, NULL),
('73304b63-7645-439f-893f-4ed7fd7c2424', NULL, 'write_off', 'MAIN STORE SR-D', NULL, 'Chicken Fries (40)', 20000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 23:47:04', '0d947773-28ee-4e02-b5b6-40455566817d', 'b3a2d778-a444-452e-b3dc-5300715abc5b', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', NULL, '2026-01-07 00:00:00', NULL, 40.00, NULL, NULL, NULL, NULL, NULL),
('7636add9-81f1-44cb-b66c-0a1cb4f0b301', NULL, 'issue', NULL, NULL, 'Chicken Fries (400)', 200000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 23:18:50', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-06 00:00:00', NULL, 400.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-06:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:0f33a311-9974-4c6d-bd95-8f3ebf172282:2a1eaab7-56a8-40d9-8fc3-d379beec67b2:400:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260106-002'),
('77c79a18-54b1-407e-a9c9-08bc844622c0', NULL, 'transfer', 'RESTAURANT/GRILL OUTLET SR-D', 'MAIN STORE SR-D', 'Water Melon Juice (1)', 500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 21:24:27', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'c8a17169-727d-4c3f-b026-00059fdf32a5', 'f3129970-a2fc-4d98-9f25-70598db1a740', '2026-01-07 00:00:00', NULL, 1.00, NULL, NULL, NULL, NULL, NULL),
('7be969c7-5d2b-4273-8193-9a8112215a4a', NULL, 'write_off', 'MAIN STORE SR-D', NULL, 'Chicken Fries (20)', 10000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 23:36:10', '0d947773-28ee-4e02-b5b6-40455566817d', 'b3a2d778-a444-452e-b3dc-5300715abc5b', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', NULL, '2026-01-07 00:00:00', NULL, 20.00, NULL, NULL, NULL, NULL, NULL),
('7cf2b513-ae89-4135-9b57-92fe96fd1a05', NULL, 'write_off', 'MAIN STORE SR-D', NULL, 'Orange Juice (30)', 15000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-09 10:41:54', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'f3129970-a2fc-4d98-9f25-70598db1a740', NULL, '2026-01-08 00:00:00', NULL, 30.00, NULL, NULL, NULL, NULL, NULL),
('83a3b8e2-6703-462d-b924-315cc28f138a', NULL, 'transfer', 'BAR/MIXOLOGIST OUTLET SR-D', 'RESTAURANT/GRILL OUTLET SR-D', 'Water Melon Juice (1)', 500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:50:06', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '2026-01-07 07:50:06', NULL, 1.00, NULL, NULL, NULL, NULL, NULL),
('83d58656-5bc4-4e52-af2b-6cff34f0194f', NULL, 'issue', NULL, NULL, 'Water Melon Juice (100)', 50000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:19:00', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-04 00:00:00', NULL, 100.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-04:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:a8606352-f7d1-40e6-8500-8ffcbcc12924:100:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260104-002'),
('8562da61-56a0-44dd-8ea8-0be885924dfc', NULL, 'transfer', 'BAR OUTLET SR-D', 'RESTAURANT OUTLET SR-D', 'Chicken Fries (20)', 10000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 09:50:26', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', '1e134a24-908d-4535-8443-28fa83f30a6a', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-07 00:00:00', NULL, 20.00, NULL, NULL, NULL, NULL, NULL),
('863910f1-ecf7-4a04-9824-4c37fe928ee1', NULL, 'transfer', 'BAR/MIXOLOGIST OUTLET SR-D', 'RESTAURANT/GRILL OUTLET SR-D', 'Water Melon Juice (100)', 50000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 05:27:31', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '2026-01-07 05:27:31', NULL, 100.00, NULL, NULL, NULL, NULL, NULL),
('87720f08-06a6-41b6-a8bf-8c00d4f0f888', NULL, 'issue', NULL, NULL, 'Fanta (20)', 10000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-08 02:19:56', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', '2026-01-08 00:00:00', NULL, 20.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-08:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:1e134a24-908d-4535-8443-28fa83f30a6a:f3b1dfbb-98df-4a52-ab1e-617c8e915a4c:20:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260108-001'),
('880427cb-b287-4d75-9d89-0765941eefeb', NULL, 'transfer', 'Unknown', 'Unknown', 'Water Melon Juice (5)', 2500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 04:27:43', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-07 04:27:43', NULL, 5.00, NULL, NULL, NULL, NULL, NULL),
('8aad5023-d36c-4868-b4eb-bf3a871b5c9b', NULL, 'issue', NULL, NULL, 'Orange Juice (300)', 150000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-09 10:39:41', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-07 00:00:00', NULL, 300.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:097eadbb-cad3-4ef9-aab3-21ac8d02e143:300:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260107-003'),
('8af73a32-46f7-413d-ab25-6ba41054a2da', NULL, 'transfer', 'RESTAURANT/GRILL OUTLET SR-D', 'BAR/MIXOLOGIST OUTLET SR-D', 'Orange Juice (10)', 5000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:33:37', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-06 00:00:00', NULL, 10.00, NULL, NULL, NULL, NULL, NULL),
('8b064346-355c-48f1-88b3-6febbe82c6a2', NULL, 'write_off', 'BAR/MIXOLOGIST OUTLET SR-D', NULL, 'Orange Juice (30)', 15000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:27:34', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', NULL, '2026-01-06 00:00:00', NULL, 30.00, NULL, NULL, NULL, NULL, NULL),
('8d1e76e8-880e-4afe-b44c-c7184fef05b7', NULL, 'issue', NULL, NULL, 'Water Melon Juice (300)', 150000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 21:09:09', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '2026-01-07 00:00:00', NULL, 300.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:f3129970-a2fc-4d98-9f25-70598db1a740:c8a17169-727d-4c3f-b026-00059fdf32a5:a8606352-f7d1-40e6-8500-8ffcbcc12924:300:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260107-002'),
('9228ed43-10a6-47cc-9779-f7cb7b7ea4f7', NULL, 'write_off', 'BAR OUTLET SR-D', NULL, 'Malt (3)', 1500.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:38:47', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', 'c47d93b1-4801-445b-a77e-8362ebb25442', NULL, '2025-12-31 05:38:47', NULL, 3.00, NULL, NULL, NULL, NULL, NULL),
('93ea492b-2b76-480c-996b-56f25b9c32fe', NULL, 'transfer', 'BAR OUTLET SR-D', 'RESTAURANT OUTLET SR-D', 'Fanta (10)', 5000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:21:06', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', '1e134a24-908d-4535-8443-28fa83f30a6a', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-07 00:00:00', NULL, 10.00, '\\n[REVERSED on 2026-01-08T02:03:51.533Z - Reversal ID: 9f4babe7]', NULL, NULL, NULL, NULL),
('96db7e1e-0213-45f1-ba37-05e340992f2e', NULL, 'issue', NULL, NULL, '[REVERSAL] Water Melon Juice (300)', 150000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:57:49', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-07 07:57:49', NULL, 300.00, 'REVERSAL of movement 72243d47... Reason: td', NULL, NULL, NULL, NULL),
('98817a96-61fd-47b7-a753-668b16f07a05', NULL, 'waste', 'MAIN STORE SR-D', NULL, 'Fanta (5)', 2500.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-08 02:17:27', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', NULL, '2026-01-08 00:00:00', NULL, 5.00, NULL, NULL, NULL, NULL, NULL),
('9ec44d94-5120-45fa-aaae-e0987f709a60', NULL, 'write_off', 'RESTAURANT OUTLET SR-D', NULL, 'Chicken Fries (2)', 1000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:52:15', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', '0f33a311-9974-4c6d-bd95-8f3ebf172282', NULL, '2026-01-08 00:00:00', NULL, 2.00, NULL, NULL, NULL, NULL, NULL),
('9f4babe7-a763-486d-bbfa-5983a9a60202', NULL, 'transfer', 'RESTAURANT OUTLET SR-D', 'BAR OUTLET SR-D', '[REVERSAL] Fanta (10)', 5000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-08 02:03:51', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '1e134a24-908d-4535-8443-28fa83f30a6a', '2026-01-08 02:03:51', NULL, 10.00, 'REVERSAL of movement 93ea492b... Reason: fd', NULL, NULL, NULL, NULL),
('a0c0574e-0279-44f0-9227-a07db78b8448', NULL, 'issue', NULL, NULL, 'Water Melon Juice (200)', 100000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 06:13:36', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '2026-01-05 00:00:00', NULL, 200.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-05:f3129970-a2fc-4d98-9f25-70598db1a740:4aecd215-ec9e-402d-bc48-1ebc6f79dfc3:595eed6e-8595-413c-a0e0-f78b3e8b0279:200:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260105-010'),
('a5772f89-3521-4b8d-bd37-de2d5543a2ce', NULL, 'issue', NULL, NULL, 'Fried Fish (500)', 250000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 19:57:53', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-06 00:00:00', NULL, 500.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-06:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:0f33a311-9974-4c6d-bd95-8f3ebf172282:a09560f4-54bc-4640-9efa-295f4b665032:500:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260106-001'),
('a8fdf9a4-9914-46ab-a110-c4d4a3633c72', NULL, 'transfer', 'RESTAURANT OUTLET SR-D', 'BAR OUTLET SR-D', 'Chicken Fries (50)', 25000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 09:45:52', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '1e134a24-908d-4535-8443-28fa83f30a6a', '2026-01-07 00:00:00', NULL, 50.00, NULL, NULL, NULL, NULL, NULL),
('a917f81e-0da3-46fb-8826-2bf3570ae2e4', NULL, 'transfer', 'RESTAURANT/GRILL OUTLET SR-D', 'MAIN STORE SR-D', 'Water Melon Juice (1)', 500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 21:23:50', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'c8a17169-727d-4c3f-b026-00059fdf32a5', 'f3129970-a2fc-4d98-9f25-70598db1a740', '2026-01-08 00:00:00', NULL, 1.00, '\\n[REVERSED on 2026-01-08T21:24:01.562Z - Reversal ID: aba8eae0]', NULL, NULL, NULL, NULL),
('ab7c58bf-00eb-49ad-8bc8-b7e68216ae53', NULL, 'issue', NULL, NULL, 'Chicken Fries (100)', 50000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-09 23:20:31', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-07 00:00:00', NULL, 100.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:0f33a311-9974-4c6d-bd95-8f3ebf172282:2a1eaab7-56a8-40d9-8fc3-d379beec67b2:100:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260107-010'),
('aba8eae0-5db8-4246-a614-0fe6f9508299', NULL, 'transfer', 'MAIN STORE SR-D', 'RESTAURANT/GRILL OUTLET SR-D', '[REVERSAL] Water Melon Juice (1)', 500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 21:24:01', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '2026-01-08 21:24:01', NULL, 1.00, 'REVERSAL of movement a917f81e... Reason: x', NULL, NULL, NULL, NULL),
('ac9fd5ef-4989-4fee-82b3-f4d43f956aaa', NULL, 'issue', NULL, NULL, 'Orange Juice (50)', 25000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:15:09', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '2026-01-08 00:00:00', NULL, 50.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-08:f3129970-a2fc-4d98-9f25-70598db1a740:c8a17169-727d-4c3f-b026-00059fdf32a5:097eadbb-cad3-4ef9-aab3-21ac8d02e143:50:6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'TRF-20260108-002'),
('ae785a7c-ab1e-4453-af39-e3e430f35008', NULL, 'transfer', 'JUICES OUTLET SR-D', 'MAIN STORE SR-D', 'PINIPPLE JUICE (1)', 600.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 19:44:54', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2025-12-30 19:44:54', NULL, 1.00, 'Return inward', NULL, NULL, NULL, NULL),
('af4eddc9-d170-4c55-80fb-4271aaed384f', NULL, 'issue', NULL, NULL, 'Fanta (200)', 100000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-08 20:56:23', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', '2026-01-07 00:00:00', NULL, 200.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:1e134a24-908d-4535-8443-28fa83f30a6a:f3b1dfbb-98df-4a52-ab1e-617c8e915a4c:200:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260107-008'),
('b13307a6-2432-4c8b-87e5-5c23df1bc6fb', NULL, 'issue', NULL, NULL, 'Chicken Fries (300)', 150000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:11:34', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-07 00:00:00', NULL, 300.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:0f33a311-9974-4c6d-bd95-8f3ebf172282:2a1eaab7-56a8-40d9-8fc3-d379beec67b2:300:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260107-006'),
('beb7ebf8-e0e9-4841-bffc-ddfb166d2ed2', NULL, 'issue', NULL, NULL, 'Malt (500)', 250000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:07:37', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '1e134a24-908d-4535-8443-28fa83f30a6a', '2026-01-07 00:00:00', NULL, 500.00, 'Issued from Main Store via ledger\\n[REVERSED on 2026-01-07T15:14:15.008Z - Reversal ID: 6cd216a8]', NULL, NULL, 'issue:2026-01-07:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:1e134a24-908d-4535-8443-28fa83f30a6a:2329f86b-aabd-4aac-b4f2-8e572f51588b:500:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260107-003'),
('bf881fb4-f51c-4bc0-8fe8-211227e3e623', NULL, 'transfer', 'MAIN STORE SR-D', 'RESTAURANT/GRILL OUTLET SR-D', 'Water Melon Juice (50)', 25000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 05:28:57', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '2026-01-07 05:28:57', NULL, 50.00, NULL, NULL, NULL, NULL, NULL),
('c1e36996-e66a-469d-902f-6e2a6e9b15a7', NULL, 'issue', NULL, NULL, 'Chicken Fries (100)', 50000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:46:30', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-08 00:00:00', NULL, 100.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-08:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:0f33a311-9974-4c6d-bd95-8f3ebf172282:2a1eaab7-56a8-40d9-8fc3-d379beec67b2:100:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260108-002'),
('cf44d785-cc9d-432c-99ba-0b56ca26d903', NULL, 'issue', NULL, NULL, 'Fanta (300)', 150000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:07:12', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-07 00:00:00', NULL, 300.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:0f33a311-9974-4c6d-bd95-8f3ebf172282:f3b1dfbb-98df-4a52-ab1e-617c8e915a4c:300:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260107-002'),
('d3da4dc2-cc30-411e-b864-1f1302a54617', NULL, 'adjustment', 'RESTAURANT OUTLET SR-D', NULL, 'Chicken Fries (1)', 500.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:53:41', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', '0f33a311-9974-4c6d-bd95-8f3ebf172282', NULL, '2026-01-08 00:00:00', 'increase', 1.00, '\\n[REVERSED on 2026-01-10T09:57:28.180Z - Reversal ID: e2ab3a87]', NULL, NULL, NULL, NULL),
('d561c2f7-9264-429f-9d30-802471a5392e', NULL, 'transfer', 'BAR OUTLET SR-D', 'MAIN STORE SR-D', 'Malt (2)', 1000.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:24:49', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', 'c47d93b1-4801-445b-a77e-8362ebb25442', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2025-12-31 05:24:49', NULL, 2.00, '\\n[REVERSED on 2025-12-31T10:00:30.985Z - Reversal ID: e5b05c0e]', NULL, NULL, NULL, NULL),
('d76127d5-fc17-47d1-b28a-74c392bf0ab3', NULL, 'transfer', 'RESTAURANT/GRILL OUTLET SR-D', 'MAIN STORE SR-D', 'Water Melon Juice (25)', 12500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-08 21:09:53', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f84e43d1-856c-4d02-b8ed-5d8f7ec04700', 'c8a17169-727d-4c3f-b026-00059fdf32a5', 'f3129970-a2fc-4d98-9f25-70598db1a740', '2026-01-07 00:00:00', NULL, 25.00, NULL, NULL, NULL, NULL, NULL),
('d8f7944c-37f4-46a3-b14a-2f78a0c7f4a1', NULL, 'transfer', 'BAR/MIXOLOGIST OUTLET SR-D', 'MAIN STORE SR-D', 'Water Melon Juice (5)', 2500.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 08:02:38', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'f3129970-a2fc-4d98-9f25-70598db1a740', '2026-01-07 08:02:38', NULL, 5.00, NULL, NULL, NULL, NULL, NULL),
('e060d5d8-5bd9-44ff-8e43-23153ee6a934', NULL, 'write_off', 'MAIN STORE SR-D', NULL, 'Orange Juice (50)', 25000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-10 00:23:38', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '02249257-b3e4-4c5e-a5e7-6025888df409', 'f3129970-a2fc-4d98-9f25-70598db1a740', NULL, '2026-01-06 00:00:00', NULL, 50.00, NULL, NULL, NULL, NULL, NULL),
('e1a4f183-875d-4bf5-a8c7-4b536293af14', NULL, 'transfer', 'RESTAURANT OUTLET SR-D', 'MAIN STORE SR-D', 'Fanta (50)', 25000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-08 02:22:58', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', '0f33a311-9974-4c6d-bd95-8f3ebf172282', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2026-01-08 00:00:00', NULL, 50.00, NULL, NULL, NULL, NULL, NULL),
('e2ab3a87-bd6d-4c84-8130-bb131b0eed7b', NULL, 'adjustment', 'RESTAURANT OUTLET SR-D', NULL, '[REVERSAL] Chicken Fries (1)', 500.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:57:28', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', '0f33a311-9974-4c6d-bd95-8f3ebf172282', NULL, '2026-01-10 09:57:28', 'decrease', 1.00, 'REVERSAL of movement d3da4dc2... Reason: u', NULL, NULL, NULL, NULL),
('e5b05c0e-8245-4045-9469-da37badac16e', NULL, 'transfer', 'MAIN STORE SR-D', 'BAR OUTLET SR-D', '[REVERSAL] Malt (2)', 1000.00, NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 10:00:30', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c3004de9-eac3-4ca7-a2f4-f51a9c8a6482', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2025-12-31 10:00:30', NULL, 2.00, 'REVERSAL of movement d561c2f7... Reason: rss', NULL, NULL, NULL, NULL),
('e963e8f4-6060-466f-ac7c-6fdb1a5a8dad', NULL, 'waste', 'MAIN STORE SR-D', NULL, 'Chicken Fries (15)', 7500.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:47:55', '0d947773-28ee-4e02-b5b6-40455566817d', 'b3a2d778-a444-452e-b3dc-5300715abc5b', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', NULL, '2026-01-08 00:00:00', NULL, 15.00, NULL, NULL, NULL, NULL, NULL),
('ea693a34-10dd-45b4-aadb-a01e402b3b3d', NULL, 'transfer', 'BAR OUTLET SR-D', 'MAIN STORE SR-D', 'Fanta (10)', 5000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:19:14', '0d947773-28ee-4e02-b5b6-40455566817d', '657079ba-c71c-40b4-9f66-debfa0a9b109', '1e134a24-908d-4535-8443-28fa83f30a6a', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2026-01-07 00:00:00', NULL, 10.00, NULL, NULL, NULL, NULL, NULL),
('eb0e238e-f0a8-46f5-87a7-55b9d708ea1d', NULL, 'adjustment', 'KITCHEN OUTLET SR-D', NULL, 'Cooking Pots (2)', 24000.00, NULL, '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 22:56:24', 'a792ef92-476b-43f7-b754-bb201bc67713', '7828c913-796e-4693-9ed7-f6a19a11ec0d', '776ddf28-fc34-44bf-a202-3cb5e304a862', NULL, '2026-02-01 00:00:00', 'increase', 2.00, NULL, NULL, NULL, NULL, NULL),
('f0bd16b1-d66c-4501-90ae-904c3f5eb17c', NULL, 'waste', 'RESTAURANT OUTLET SR-D', NULL, 'Chicken Fries (2)', 1000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-10 09:52:35', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', '0f33a311-9974-4c6d-bd95-8f3ebf172282', NULL, '2026-01-08 00:00:00', NULL, 2.00, NULL, NULL, NULL, NULL, NULL),
('f33b0f7d-15cd-40c3-9e4d-8442c3c9171e', NULL, 'issue', NULL, NULL, 'Malt (350)', 175000.00, NULL, 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2', '2026-01-07 15:07:52', '0d947773-28ee-4e02-b5b6-40455566817d', '85a7e500-07f9-4f0c-9bec-4e65c6ad98d4', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2026-01-07 00:00:00', NULL, 350.00, 'Issued from Main Store via ledger', NULL, NULL, 'issue:2026-01-07:e885756b-2d5d-4844-91ed-eeff5e2b5ae3:0f33a311-9974-4c6d-bd95-8f3ebf172282:2329f86b-aabd-4aac-b4f2-8e572f51588b:350:a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'TRF-20260107-004'),
('fdd4835b-b036-4d76-b2b3-70a07e1fd4e4', NULL, 'transfer', 'BAR/MIXOLOGIST OUTLET SR-D', 'MAIN STORE SR-D', 'Orange Juice (30)', 15000.00, NULL, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-09 10:50:02', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c844b11d-6c6c-41ba-a0da-c21646eea96b', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'f3129970-a2fc-4d98-9f25-70598db1a740', '2026-01-08 00:00:00', NULL, 30.00, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_movement_lines`
--

CREATE TABLE `stock_movement_lines` (
  `id` varchar(36) NOT NULL,
  `movement_id` varchar(36) NOT NULL,
  `item_id` varchar(36) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `unit_cost` decimal(12,2) NOT NULL,
  `line_value` decimal(12,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_movement_lines`
--

INSERT INTO `stock_movement_lines` (`id`, `movement_id`, `item_id`, `qty`, `unit_cost`, `line_value`, `created_at`) VALUES
('001a472f-6682-4424-9dfd-56b3c8aa64a4', '98817a96-61fd-47b7-a753-668b16f07a05', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 5.00, 500.00, 2500.00, '2026-01-08 02:17:27'),
('030cdaf4-8910-452c-a9e5-da08dee9cdae', '9ec44d94-5120-45fa-aaae-e0987f709a60', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 2.00, 500.00, 1000.00, '2026-01-10 09:52:15'),
('054ed293-fb2d-418a-9dc9-068404cb5ae8', 'b13307a6-2432-4c8b-87e5-5c23df1bc6fb', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 300.00, 500.00, 150000.00, '2026-01-07 15:11:34'),
('08e50ba8-099e-40d0-a570-a1ed130e5207', '258af520-c6b7-42d4-b688-eb58d67457bb', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 15.00, 500.00, 7500.00, '2026-01-10 09:47:32'),
('0b761304-4386-4635-9fa5-715f8b961ae6', '1bf67e7b-508f-4e33-9d2b-3cf5df8b6e6f', '2329f86b-aabd-4aac-b4f2-8e572f51588b', 250.00, 500.00, 125000.00, '2026-01-07 15:12:11'),
('0f438203-720a-448e-89e3-508a025d158d', '73304b63-7645-439f-893f-4ed7fd7c2424', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 40.00, 500.00, 20000.00, '2026-01-09 23:47:04'),
('0f808c96-3020-41ab-b21b-8c41874517c4', 'ac9fd5ef-4989-4fee-82b3-f4d43f956aaa', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 50.00, 500.00, 25000.00, '2026-01-10 00:15:09'),
('117e2437-6147-4977-85da-460e563fe5e8', '32fca88d-1327-461a-958c-f3bc21d6f1cb', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 100.00, 500.00, 50000.00, '2026-01-07 09:55:01'),
('138c22a6-3ca5-4cdc-ae16-b4761b31fa2f', 'eb0e238e-f0a8-46f5-87a7-55b9d708ea1d', '0ea64431-00b9-4ee6-8689-9c3cec032490', 2.00, 12000.00, 24000.00, '2026-02-01 22:56:24'),
('1620cca4-f885-401f-9a76-fe160b2bd8c7', '41ed03d3-c3ea-4480-896c-39e8d0f10e94', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 1.00, 500.00, 500.00, '2026-01-10 09:52:56'),
('1a004084-9b2d-42e7-a243-c481204d76aa', 'ab7c58bf-00eb-49ad-8bc8-b7e68216ae53', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 100.00, 500.00, 50000.00, '2026-01-09 23:20:31'),
('1ae8f580-0172-45f2-9a59-7bfc9432b9aa', '051832b3-c353-4820-b471-d9f6dc237099', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', 1.00, 600.00, 600.00, '2025-12-30 19:49:32'),
('1ed3f25d-d45d-4954-aeea-cd22c60cd97e', '96db7e1e-0213-45f1-ba37-05e340992f2e', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 300.00, 500.00, 150000.00, '2026-01-07 07:57:49'),
('2306d40f-ad3a-44ed-8dd8-601e82ca825b', '07cef5e9-1488-4684-96a2-87cb33bc5f1c', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 300.00, 500.00, 150000.00, '2026-01-10 00:25:18'),
('26a02769-f044-4945-b101-bca134b69589', '93ea492b-2b76-480c-996b-56f25b9c32fe', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 10.00, 500.00, 5000.00, '2026-01-07 15:21:06'),
('2891a1cb-54bc-4071-9a1e-e465ac7e963f', 'f33b0f7d-15cd-40c3-9e4d-8442c3c9171e', '2329f86b-aabd-4aac-b4f2-8e572f51588b', 350.00, 500.00, 175000.00, '2026-01-07 15:07:52'),
('2b4681ab-ad85-45ce-87c7-fd43d032423a', 'e5b05c0e-8245-4045-9469-da37badac16e', '0685f443-471a-4a34-927e-f5e41fbeb2d3', 2.00, 500.00, 1000.00, '2025-12-31 10:00:30'),
('438a2735-e05f-46bc-b8fd-8ddde26bb728', '6e88cd27-04ab-4ed1-9faa-3cdb89feedf8', '0685f443-471a-4a34-927e-f5e41fbeb2d3', 2.00, 500.00, 1000.00, '2025-12-31 05:34:51'),
('45ee3d66-93b0-4741-9780-9012f55dee77', 'd8f7944c-37f4-46a3-b14a-2f78a0c7f4a1', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 5.00, 500.00, 2500.00, '2026-01-07 08:02:38'),
('47c9924b-ab1a-43ef-a07f-7f66e15d3173', 'e2ab3a87-bd6d-4c84-8130-bb131b0eed7b', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 1.00, 500.00, 500.00, '2026-01-10 09:57:28'),
('49dcdcec-82e9-4a1e-bc1e-00dd7f9064ab', '6cd216a8-d8ec-4137-8161-d20b56ad1099', '2329f86b-aabd-4aac-b4f2-8e572f51588b', 500.00, 500.00, 250000.00, '2026-01-07 15:14:15'),
('4d2f85d0-58b6-4f01-a551-50fecc6a41cb', 'e1a4f183-875d-4bf5-a8c7-4b536293af14', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 50.00, 500.00, 25000.00, '2026-01-08 02:22:58'),
('4eb15934-7f31-4504-8505-68acacf1093f', '8af73a32-46f7-413d-ab25-6ba41054a2da', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 10.00, 500.00, 5000.00, '2026-01-10 00:33:37'),
('4ee71a4b-1bf1-4390-ba26-2c60d28d849e', 'beb7ebf8-e0e9-4841-bffc-ddfb166d2ed2', '2329f86b-aabd-4aac-b4f2-8e572f51588b', 500.00, 500.00, 250000.00, '2026-01-07 15:07:37'),
('54286a4c-1d42-415e-9e6d-edef1c62bd50', '4a0349fe-d1c8-4455-81f3-f8377f686d3d', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 20.00, 500.00, 10000.00, '2026-01-09 09:49:19'),
('56a0205a-a614-4520-9afe-c8f1b84b67d1', '83a3b8e2-6703-462d-b924-315cc28f138a', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 1.00, 500.00, 500.00, '2026-01-07 07:50:06'),
('5735e1d3-9144-4b5c-937d-ac960ecaa9b9', 'a5772f89-3521-4b8d-bd37-de2d5543a2ce', 'a09560f4-54bc-4640-9efa-295f4b665032', 500.00, 500.00, 250000.00, '2026-01-09 19:57:53'),
('5bac210d-f7f7-4c92-92bf-dcef6ebae63c', 'e060d5d8-5bd9-44ff-8e43-23153ee6a934', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 50.00, 500.00, 25000.00, '2026-01-10 00:23:38'),
('5c014078-e62c-41ab-a84a-aa9f790acbaf', 'e963e8f4-6060-466f-ac7c-6fdb1a5a8dad', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 15.00, 500.00, 7500.00, '2026-01-10 09:47:55'),
('5f2983f4-358b-41fc-908c-f8c466870049', '5e600316-c413-4b11-a0f4-cf2534ef8c61', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 100.00, 500.00, 50000.00, '2026-01-08 20:25:18'),
('6c9f4a5b-f83a-49b3-8b14-e256351b8f2c', 'cf44d785-cc9d-432c-99ba-0b56ca26d903', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 300.00, 500.00, 150000.00, '2026-01-07 15:07:12'),
('6f6cb0d5-6859-4461-8a99-d8113c34cb6f', '9228ed43-10a6-47cc-9779-f7cb7b7ea4f7', '0685f443-471a-4a34-927e-f5e41fbeb2d3', 3.00, 500.00, 1500.00, '2025-12-31 05:38:47'),
('79d0efb6-67c9-4d37-8484-175e5307fec8', '1005c74a-48c4-4e64-973e-6c5da1908f86', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 300.00, 500.00, 150000.00, '2026-01-07 07:12:13'),
('7ab5254c-6b0f-417d-b0bb-a99525e83dae', '3b4bcfce-7744-4468-9c37-83f0c325ccbb', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 20.00, 500.00, 10000.00, '2026-01-10 00:27:55'),
('88b063ca-aad8-4684-8d1e-1097540a0e35', 'f0bd16b1-d66c-4501-90ae-904c3f5eb17c', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 2.00, 500.00, 1000.00, '2026-01-10 09:52:35'),
('88ff5a2f-89d5-4c57-bd27-4a19719fca81', 'aba8eae0-5db8-4246-a614-0fe6f9508299', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 1.00, 500.00, 500.00, '2026-01-08 21:24:01'),
('8a95ef7d-f1e5-4686-ab2a-8db2c319b72f', '5a5c950e-b0fb-43bc-91aa-7a0ac21c449f', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 5.00, 500.00, 2500.00, '2026-01-09 09:52:43'),
('8ba20392-567d-4406-8965-f2e0e5aec078', '720575d1-30be-4add-b1a1-ceeed183f7e5', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 500.00, 500.00, 250000.00, '2026-01-07 15:06:59'),
('8d6b62e1-4bca-4a96-9a76-7cbf4eff181d', 'a917f81e-0da3-46fb-8826-2bf3570ae2e4', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 1.00, 500.00, 500.00, '2026-01-08 21:23:50'),
('8f13d2b2-a783-4363-bb43-49a7dbef150d', '49dfba4c-67e4-4d83-8af0-075e105dc797', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 30.00, 500.00, 15000.00, '2026-01-09 10:47:22'),
('95844d40-e3a5-402b-8f7c-f994ce287363', 'c1e36996-e66a-469d-902f-6e2a6e9b15a7', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 100.00, 500.00, 50000.00, '2026-01-10 09:46:30'),
('9739ac0f-8dbc-40dc-b751-ec5d4525e6d5', '5193c7ce-f7e1-4758-81c4-fece4579dc70', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', 1.00, 600.00, 600.00, '2025-12-30 18:58:52'),
('9a9e99fe-fee3-4d4c-b2ce-9a434fb64563', '83d58656-5bc4-4e52-af2b-6cff34f0194f', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 100.00, 500.00, 50000.00, '2026-01-07 07:19:00'),
('9ca78159-1b6b-4f3b-ad42-d8381a6a0a95', '87720f08-06a6-41b6-a8bf-8c00d4f0f888', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 20.00, 500.00, 10000.00, '2026-01-08 02:19:56'),
('9d1c1c23-b40a-4022-a970-9ec81279092e', '147e19f5-5e3e-4ede-b375-dd232eba95e0', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 400.00, 500.00, 200000.00, '2026-01-09 09:44:09'),
('a0990377-7ae0-4e3d-93d7-e9dd568f7edc', '44d11d1b-93fd-4f7a-9902-0dda499662a7', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 5.00, 500.00, 2500.00, '2026-01-09 09:52:23'),
('a11d402e-4ca0-4326-a01e-67aaba86e71c', '41fa8bc1-0669-43a8-9b0c-4dfd4f40946d', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 1000.00, 500.00, 500000.00, '2026-01-10 00:32:54'),
('a305856a-ee51-44dd-bb9b-02fda2e4f94b', '4ffeb0f0-9a4e-4c5d-9926-b95a88af81f3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 250.00, 500.00, 125000.00, '2026-01-07 08:00:09'),
('aaac4b56-0ad5-4ba8-a0c6-75de233b9c16', '8aad5023-d36c-4868-b4eb-bf3a871b5c9b', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 300.00, 500.00, 150000.00, '2026-01-09 10:39:41'),
('aba74c37-e1f0-4857-93cd-db0e225fc613', '77c79a18-54b1-407e-a9c9-08bc844622c0', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 1.00, 500.00, 500.00, '2026-01-08 21:24:27'),
('aec144c9-f3c5-4c12-ae1b-800502023900', 'd561c2f7-9264-429f-9d30-802471a5392e', '0685f443-471a-4a34-927e-f5e41fbeb2d3', 2.00, 500.00, 1000.00, '2025-12-31 05:24:49'),
('b338bbdf-45a1-46ce-a785-6b36f1be41e6', '8562da61-56a0-44dd-8ea8-0be885924dfc', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 20.00, 500.00, 10000.00, '2026-01-09 09:50:26'),
('b7bd2c76-638a-46de-a1a0-1a402260ad87', 'a8fdf9a4-9914-46ab-a110-c4d4a3633c72', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 50.00, 500.00, 25000.00, '2026-01-09 09:45:52'),
('b87593fe-0d05-4a4c-8acd-c56a402cfdcd', '72243d47-1c20-4ad7-9465-28f601b6aede', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 300.00, 500.00, 150000.00, '2026-01-07 07:56:33'),
('c4dd78cd-a3f2-4c36-bb02-70929096ad88', 'af4eddc9-d170-4c55-80fb-4271aaed384f', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 200.00, 500.00, 100000.00, '2026-01-08 20:56:23'),
('d565c4b9-9182-4e11-89a2-a140b8c3844e', 'ae785a7c-ab1e-4453-af39-e3e430f35008', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', 1.00, 600.00, 600.00, '2025-12-30 19:44:54'),
('d85aa8b7-eb6a-4264-bff3-0629eee466bf', '2bea414d-92ba-4f10-8e05-03670a8c4edf', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 500.00, 500.00, 250000.00, '2026-01-07 15:09:22'),
('d94d9e40-3448-46a3-a93d-9f66f353353a', 'ea693a34-10dd-45b4-aadb-a01e402b3b3d', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 10.00, 500.00, 5000.00, '2026-01-07 15:19:14'),
('ddeee71a-71a4-4951-b4c2-ee72e0888ce6', 'd76127d5-fc17-47d1-b28a-74c392bf0ab3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 25.00, 500.00, 12500.00, '2026-01-08 21:09:53'),
('dfdb417e-6da2-4fd8-90e5-be94290f670e', '8b064346-355c-48f1-88b3-6febbe82c6a2', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 30.00, 500.00, 15000.00, '2026-01-10 00:27:34'),
('e1d11c47-e517-4ce9-9613-340c3e1633cc', '215c53fe-120d-45ff-901c-5d62348dacd1', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 200.00, 500.00, 100000.00, '2026-01-09 10:41:07'),
('e7f26a77-6578-4ae2-9ab6-864fdab3d5dd', '7636add9-81f1-44cb-b66c-0a1cb4f0b301', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 400.00, 500.00, 200000.00, '2026-01-09 23:18:50'),
('e8e87428-2eb7-46ce-984e-93c62260cf46', 'fdd4835b-b036-4d76-b2b3-70a07e1fd4e4', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 30.00, 500.00, 15000.00, '2026-01-09 10:50:02'),
('e9283511-1442-4ed0-a7b2-8a498393d236', '8d1e76e8-880e-4afe-b44c-c7184fef05b7', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 300.00, 500.00, 150000.00, '2026-01-08 21:09:09'),
('ea39ac96-f682-4dc6-ba52-eabc9c70ef8d', '0c69c65f-f4ca-431e-a2a7-b0ad62d9cef5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 20.00, 500.00, 10000.00, '2026-01-09 10:42:18'),
('ea48cdc0-23cd-4070-89d3-6ed6fb44084b', '4a8094c8-1def-473b-bf9d-4d1d9b3f6f4f', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', 1.00, 600.00, 600.00, '2025-12-30 19:01:56'),
('ed8a564c-1454-4865-b63d-c6227f61cb3e', '725967e6-83de-41f9-83a1-b297884b49f8', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 20.00, 500.00, 10000.00, '2026-01-09 10:47:02'),
('ee171381-0f8c-462c-9d2e-b4c07e31a838', '7cf2b513-ae89-4135-9b57-92fe96fd1a05', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', 30.00, 500.00, 15000.00, '2026-01-09 10:41:54'),
('f269859c-2369-4a14-af9e-77fb9e83c1e8', 'd3da4dc2-cc30-411e-b864-1f1302a54617', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 1.00, 500.00, 500.00, '2026-01-10 09:53:41'),
('f345178f-0019-4076-9bf4-08ec8dc28c60', '9f4babe7-a763-486d-bbfa-5983a9a60202', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', 10.00, 500.00, 5000.00, '2026-01-08 02:03:51'),
('f5ce4781-5a8a-4301-9408-d4f102d3b6eb', '2a4f4c47-414a-432a-9c67-91fbae34e9dd', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', 5.00, 500.00, 2500.00, '2026-01-07 08:02:20'),
('fbf1681a-07db-4397-97d4-7e2a3681a47a', '7be969c7-5d2b-4273-8193-9a8112215a4a', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 20.00, 500.00, 10000.00, '2026-01-09 23:36:10'),
('fce92030-7205-455c-995f-662237809430', '4f4bab0b-b839-4812-a940-4804f3671baa', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', 10.00, 500.00, 5000.00, '2026-01-10 09:48:27'),
('fde14c83-95a4-4c60-b16b-991244f96251', '65a1d143-e58f-42cc-b9fa-f06e4e91ad2c', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', 1.00, 600.00, 600.00, '2025-12-30 19:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `store_issues`
--

CREATE TABLE `store_issues` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `issue_date` datetime NOT NULL,
  `from_department_id` varchar(36) NOT NULL,
  `to_department_id` varchar(36) NOT NULL,
  `notes` longtext DEFAULT NULL,
  `status` longtext NOT NULL DEFAULT 'posted',
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_issues`
--

INSERT INTO `store_issues` (`id`, `client_id`, `issue_date`, `from_department_id`, `to_department_id`, `notes`, `status`, `created_by`, `created_at`) VALUES
('1179cc57-fad0-4be5-95d7-1aee500f3efd', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-26 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:01:16'),
('12c6ce7e-4820-4e2b-972c-3cb96956837e', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-26 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 05:51:18'),
('150b643f-07db-46c5-81d6-c8f68a6a2b97', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-29 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 06:01:02'),
('1548a178-3eab-4f71-9ea1-d1e2ec1f9f46', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 13:53:41'),
('1ef13c31-c5aa-4942-9bb6-2bb68c6e55b3', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 15:07:31'),
('2eaf6c79-5750-4f6a-bf93-c57897517d6d', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-26 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 05:52:24'),
('2ed25f77-486b-42ce-91ae-45b525a47de1', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-29 00:00:00', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 22:16:38'),
('373f6b80-cd24-4bda-8dbb-c4687117193b', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', 'fd666e2e-2de8-4b34-8687-9d45c75a85c3', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 16:06:47'),
('3bb92c6d-6604-42ac-91e7-1747de843774', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-25 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 12:58:03'),
('3c2c0d4b-a8dd-49e1-b48f-394cfccc6408', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '78721483-0a9f-4e27-9e4f-30fc9f848485', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 16:29:08'),
('3d5ce852-ff48-4a04-9b8a-22d552c139e0', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 02:44:41'),
('40ba1cd5-aeee-4456-9ee5-eae07651b255', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', 'fd666e2e-2de8-4b34-8687-9d45c75a85c3', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 15:36:00'),
('41136898-7ad4-433d-a280-2d4e2a665506', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-25 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 12:59:47'),
('5181fe31-ced4-4507-8247-2f245f3e7584', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-29 00:00:00', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 22:17:49'),
('59e18f7c-c0a1-4d29-914c-be972ad5d3d8', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:10:53'),
('60abffa1-385c-4902-bc8d-29f0482eb2b2', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 05:59:28'),
('62d418e9-e867-44a6-9a8b-1dc0abafdb6f', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-29 00:00:00', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 22:15:57'),
('6551fdd3-5b8a-4b35-906b-8ef7d139dbb5', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-29 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 05:29:33'),
('7645c3a3-6d2a-4de3-a4b5-abdbc79b3d61', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 15:06:46'),
('78dc80ea-423d-4e17-8ade-fcde6f1715da', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:03:18'),
('7a18bbeb-2b08-441d-888c-3d3adb02ec82', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 13:55:35'),
('7fbbd59b-59e6-4984-8a7a-937a2cbbb191', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-29 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 14:42:13'),
('80377e8e-b095-4ac4-bbbd-d05cca8a68fb', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-28 00:00:00', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:21:34'),
('82bf0ca4-5cd6-4098-99ff-e2a5c9733158', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', 'fd666e2e-2de8-4b34-8687-9d45c75a85c3', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 16:05:50'),
('8dac7909-9086-4961-8a4f-1ec935c4ce5b', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '78721483-0a9f-4e27-9e4f-30fc9f848485', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 15:37:17'),
('a058b216-ed37-4b51-b70a-53b204fffa66', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-26 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:01:00'),
('a3734fcd-4e19-4664-8de1-d5fdb514e8f7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-29 00:00:00', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 22:17:24'),
('a6dad280-a186-4cff-969e-4c9c7a19e3b8', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-29 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', 'fd666e2e-2de8-4b34-8687-9d45c75a85c3', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 19:03:15'),
('acdc1c49-fa98-4ce1-aaa1-9b4be3e67fa7', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-26 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 05:50:30'),
('c0bac2e0-0db1-4402-8c62-7081a649ee12', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-26 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 05:58:18'),
('cfc2d219-0286-4e4a-9c92-a1737b8698d5', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-30 00:00:00', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'ask by samuel', 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 08:26:15'),
('d2c1fd7d-33b4-4c9c-904d-d1c566c20885', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-26 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'posted', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:01:36'),
('d414bd2a-5b07-41db-a243-c844bb1b8b08', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-26 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 05:50:55'),
('d48fe5dc-086e-404d-96dc-594130293089', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 15:19:28'),
('db4b91ab-4a55-4852-859e-b4a825fc2095', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-28 00:00:00', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:23:47'),
('eec8334e-84b3-4729-bebe-6fa697510c93', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '78721483-0a9f-4e27-9e4f-30fc9f848485', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 16:20:50'),
('f6b5587c-e192-4417-8ce6-4cfdd1034265', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-28 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', 'fd666e2e-2de8-4b34-8687-9d45c75a85c3', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-28 16:20:37'),
('f8d24b14-91dd-403d-9147-eb145538ce2b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '2025-12-28 00:00:00', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:24:14'),
('fbc19936-de49-42fe-b977-b00515de60a8', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2025-12-27 00:00:00', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '2ce2d797-64c0-48a4-9e3b-03fd62786195', NULL, 'recalled', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 05:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `store_issue_lines`
--

CREATE TABLE `store_issue_lines` (
  `id` varchar(36) NOT NULL,
  `store_issue_id` varchar(36) NOT NULL,
  `item_id` varchar(36) NOT NULL,
  `qty_issued` decimal(10,2) NOT NULL,
  `cost_price_snapshot` decimal(12,2) DEFAULT 0.00,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_issue_lines`
--

INSERT INTO `store_issue_lines` (`id`, `store_issue_id`, `item_id`, `qty_issued`, `cost_price_snapshot`, `created_at`) VALUES
('114dc5d4-6632-43be-87ab-f037bebd18bb', 'a058b216-ed37-4b51-b70a-53b204fffa66', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', 20.00, 0.00, '2025-12-29 13:01:00'),
('12ed9b94-4c26-4c49-959f-ce91bdc65916', 'f8d24b14-91dd-403d-9147-eb145538ce2b', '29070060-0461-41bc-afaa-d58281cef2bb', -10.00, 0.00, '2025-12-30 18:24:14'),
('1a94afb3-a56a-4655-b154-f8251905135e', '41136898-7ad4-433d-a280-2d4e2a665506', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', 20.00, 0.00, '2025-12-29 12:59:47'),
('1f912eb1-7b4d-4b89-a5f9-29a4a5b84f90', '62d418e9-e867-44a6-9a8b-1dc0abafdb6f', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', 300.00, 0.00, '2025-12-29 22:15:57'),
('22427ae5-1862-4ebe-8a00-338d0ed9453e', 'cfc2d219-0286-4e4a-9c92-a1737b8698d5', '0685f443-471a-4a34-927e-f5e41fbeb2d3', 450.00, 0.00, '2025-12-30 08:26:15'),
('274d6332-161c-4b00-b3ed-965bd77f03d0', '59e18f7c-c0a1-4d29-914c-be972ad5d3d8', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', 10.00, 0.00, '2025-12-29 13:10:53'),
('29f4aaab-ef71-43fc-8ff7-f6597757c6bd', 'a6dad280-a186-4cff-969e-4c9c7a19e3b8', 'd24028d5-7172-4fa4-a16a-e96a21e92c62', 1000.00, 0.00, '2025-12-29 19:03:15'),
('33c02d3c-3ec9-4156-ad1d-75c98e6efc6f', '7fbbd59b-59e6-4984-8a7a-937a2cbbb191', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', 100.00, 0.00, '2025-12-29 14:42:14'),
('455f49ff-9aac-4004-bbc9-81c8fd7ac2ac', '82bf0ca4-5cd6-4098-99ff-e2a5c9733158', '4f95bc96-08b8-4aad-9f1a-b88a0b211f33', 80.00, 0.00, '2025-12-29 16:05:50'),
('62ce8199-977d-4a55-b3c5-b2c4856ca5a8', '1179cc57-fad0-4be5-95d7-1aee500f3efd', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', 10.00, 0.00, '2025-12-29 13:01:16'),
('9b479d85-a8f5-40aa-9745-19a317ceb645', '373f6b80-cd24-4bda-8dbb-c4687117193b', 'd24028d5-7172-4fa4-a16a-e96a21e92c62', 70.00, 0.00, '2025-12-29 16:06:47'),
('a842a6d6-d6d7-4dfe-b134-717f452ac687', '78dc80ea-423d-4e17-8ade-fcde6f1715da', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', 15.00, 0.00, '2025-12-29 13:03:18'),
('b900b87b-0a65-42ba-9538-c2b689346635', 'db4b91ab-4a55-4852-859e-b4a825fc2095', '29070060-0461-41bc-afaa-d58281cef2bb', 40.00, 0.00, '2025-12-30 18:23:47'),
('bc073b14-50e2-454f-a151-a3561d32be38', '2ed25f77-486b-42ce-91ae-45b525a47de1', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', 700.00, 0.00, '2025-12-29 22:16:38'),
('c34a4a68-8de7-4963-92c9-80aec43fcc55', '80377e8e-b095-4ac4-bbbd-d05cca8a68fb', '29070060-0461-41bc-afaa-d58281cef2bb', 30.00, 0.00, '2025-12-30 18:21:34'),
('d44b9453-62a0-423f-aaae-704df5dbd6d4', '3bb92c6d-6604-42ac-91e7-1747de843774', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', 20.00, 0.00, '2025-12-29 12:58:03'),
('dd674df5-25a9-4db7-954d-8e9bb874e909', 'a3734fcd-4e19-4664-8de1-d5fdb514e8f7', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', 450.00, 0.00, '2025-12-29 22:17:24'),
('f09561ec-d5fb-4a10-b1d3-d975012179cf', 'd2c1fd7d-33b4-4c9c-904d-d1c566c20885', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', -5.00, 0.00, '2025-12-29 13:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `store_names`
--

CREATE TABLE `store_names` (
  `id` varchar(36) NOT NULL,
  `name` longtext NOT NULL,
  `status` longtext NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `client_id` varchar(36) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_names`
--

INSERT INTO `store_names` (`id`, `name`, `status`, `created_at`, `client_id`, `created_by`) VALUES
('0c86d91d-cbae-4b44-b431-e2d4745f52c5', 'MAIN STORE OUTLET SR-D', 'active', '2026-01-10 00:18:26', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '6419147a-44c1-4f3c-bbcb-51a46a91d1be'),
('13fd1c0e-3e9c-4fa2-b798-1d8ff611bb87', 'JUICES OUTLET SR-D', 'active', '2025-12-29 21:29:29', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('1805725f-006d-4f72-aa63-95a182a04bb8', 'KITCHEN OUTLET SR-D', 'active', '2026-02-01 20:06:27', 'a792ef92-476b-43f7-b754-bb201bc67713', '80486214-2b01-4950-b6b6-fac9a54c43cc'),
('1dd5c2ea-942b-4a49-8aee-f558918600f0', 'MAIN STORE SR-D', 'active', '2026-01-07 14:53:20', '0d947773-28ee-4e02-b5b6-40455566817d', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2'),
('30b18cac-f24b-469e-837d-3184f0a731d2', 'Grill 2 Pool Side SR-D', 'active', '2025-12-28 04:04:41', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', NULL),
('32f33217-fe1c-43a8-adf4-8ba3a898dc5a', 'Bar 1 SR-D', 'active', '2025-12-28 03:04:46', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', NULL),
('34bc8c21-57a3-4832-98c1-5a15b01505d9', 'RESTAURANT/GRILL OUTLET SR-D', 'active', '2026-01-05 03:47:10', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '6419147a-44c1-4f3c-bbcb-51a46a91d1be'),
('3a3bce42-ba0c-4d5e-8f4f-7f264cb46357', 'BAR/MIXOLOGIST OUTLET SR-D', 'active', '2026-01-05 03:47:02', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '6419147a-44c1-4f3c-bbcb-51a46a91d1be'),
('3f8213b0-26ff-403d-a7a9-acd4a599d92f', 'RESTAURANT OUTLET SR-D', 'active', '2026-01-07 14:53:05', '0d947773-28ee-4e02-b5b6-40455566817d', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2'),
('47696449-9f87-42da-b36d-9f27031e6489', 'BAR OUTLET SR-D', 'active', '2026-01-07 14:52:59', '0d947773-28ee-4e02-b5b6-40455566817d', 'a62196b8-c91c-465d-9f3d-35e82bb6d0d2'),
('560316e1-a80d-4a4a-97ae-13ffd1ee37a5', 'BAR OUTLET SR-D', 'active', '2025-12-30 08:23:41', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('73e5c291-544b-493d-aaf9-b0255991fefc', 'Main Store 1 SR-D', 'active', '2025-12-27 23:00:36', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', NULL),
('db93ae9e-caba-448a-92d1-6d9f2adcb91c', 'MAIN STORE SR-D', 'active', '2025-12-29 21:52:04', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('e44ffc4f-8a9a-4379-b5b0-274bbe8a8834', 'Bar 2 pool SR-D', 'active', '2025-12-28 03:05:05', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', NULL),
('e457ac14-65c9-4719-b437-d16eefc11a6b', 'GRILL OUTLET SR-D', 'active', '2025-12-29 21:28:40', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '5ed0ccee-d55a-4700-b092-efa7e84a1907'),
('e7631ce5-5c65-4d92-b7a5-d30afac8f0ba', 'MAIN STORE SR-D', 'active', '2026-01-05 03:48:04', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '6419147a-44c1-4f3c-bbcb-51a46a91d1be');

-- --------------------------------------------------------

--
-- Table structure for table `store_stock`
--

CREATE TABLE `store_stock` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `store_department_id` varchar(36) NOT NULL,
  `item_id` varchar(36) NOT NULL,
  `date` datetime NOT NULL,
  `opening_qty` decimal(10,2) DEFAULT 0.00,
  `added_qty` decimal(10,2) DEFAULT 0.00,
  `issued_qty` decimal(10,2) DEFAULT 0.00,
  `closing_qty` decimal(10,2) DEFAULT 0.00,
  `physical_closing_qty` decimal(10,2) DEFAULT NULL,
  `variance_qty` decimal(10,2) DEFAULT 0.00,
  `cost_price_snapshot` decimal(12,2) DEFAULT 0.00,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `transfers_in_qty` decimal(10,2) DEFAULT 0.00,
  `transfers_out_qty` decimal(10,2) DEFAULT 0.00,
  `inter_dept_in_qty` decimal(10,2) DEFAULT 0.00,
  `inter_dept_out_qty` decimal(10,2) DEFAULT 0.00,
  `waste_qty` decimal(10,2) DEFAULT 0.00,
  `write_off_qty` decimal(10,2) DEFAULT 0.00,
  `adjustment_qty` decimal(10,2) DEFAULT 0.00,
  `sold_qty` decimal(10,2) DEFAULT 0.00,
  `return_in_qty` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_stock`
--

INSERT INTO `store_stock` (`id`, `client_id`, `store_department_id`, `item_id`, `date`, `opening_qty`, `added_qty`, `issued_qty`, `closing_qty`, `physical_closing_qty`, `variance_qty`, `cost_price_snapshot`, `created_by`, `created_at`, `updated_at`, `transfers_in_qty`, `transfers_out_qty`, `inter_dept_in_qty`, `inter_dept_out_qty`, `waste_qty`, `write_off_qty`, `adjustment_qty`, `sold_qty`, `return_in_qty`) VALUES
('012db639-70fa-4248-9a27-b70599d026e9', '0d947773-28ee-4e02-b5b6-40455566817d', '1e134a24-908d-4535-8443-28fa83f30a6a', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-09 00:00:00', 370.00, 0.00, 0.00, 370.00, NULL, 0.00, 0.00, NULL, '2026-01-09 09:44:10', '2026-01-10 09:48:28', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('01791fca-c93f-4126-8358-34c903deb0e3', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-01 00:00:00', 0.00, 200.00, 0.00, 200.00, NULL, 0.00, 500.00, NULL, '2026-01-07 07:39:38', '2026-01-07 07:39:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('019e95f1-f025-4240-adc3-9e7ee5558b86', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-01 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:27', '2025-12-31 04:56:34', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('037ff60a-fafa-4a6d-b47b-503d63c749ee', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '3d9cba8b-22ba-4785-9afc-e2e6842eee5a', '2026-01-04 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 03:51:05', '2026-01-07 03:51:05', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('0434c9ef-a833-4c90-88a6-2234f45bc7b5', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-14 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:23', '2025-12-31 06:14:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('04952096-5b0e-461e-9471-75398ede937f', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-11 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:04', '2025-12-31 06:13:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('0516b358-8b85-4a08-8d8e-d69cc27f8278', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-01 00:00:00', 1700.00, 2000.00, 200.00, 3500.00, NULL, 0.00, 0.00, NULL, '2026-01-05 03:48:45', '2026-01-07 10:47:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('05236e59-6a82-4d52-afbd-3234fded9ab4', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-10 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:00', '2025-12-31 06:10:46', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('06b5870c-2fdd-41d5-9349-0797d2fe8c86', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-26 00:00:00', 100.00, 0.00, 15.00, 85.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:01:00', '2025-12-29 13:02:39', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('06e5d1f3-30c8-4fef-a1e9-37045bb37339', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-09 00:00:00', 800.00, 0.00, 0.00, 800.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:24', '2025-12-30 18:17:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('08830864-f963-417e-b54d-3d27ec4a563d', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2026-01-02 00:00:00', 119.00, 0.00, 0.00, 119.00, NULL, 0.00, 1000.00, '08cae6ca-1bda-42e0-8cee-bdb28d071529', '2026-01-02 22:15:09', '2026-01-02 22:15:09', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('09b819fc-3a6d-43b5-a3ec-a9225c0888f4', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-26 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:55', '2025-12-31 04:39:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('0a592120-c08b-4524-bebb-2d158a453514', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-10 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:00', '2025-12-31 06:10:46', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('0bcca749-9328-4f9f-ade8-e43d801184de', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-10 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:00', '2025-12-31 06:10:46', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('0bee03ad-5fdf-4c9e-9380-72bcb0551c74', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-24 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:33', '2025-12-31 06:14:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('0d387aba-04de-4c63-8d14-6643c3137c67', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-07 00:00:00', 0.00, 300.00, 0.00, 280.00, 270.00, -10.00, 0.00, NULL, '2026-01-07 08:02:21', '2026-01-08 21:24:27', 0.00, 26.00, 6.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('0d48efa7-37aa-4687-9cbb-7ce2860f68b7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-02 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:47', '2025-12-31 05:08:47', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('0e12f8f0-dca2-44c3-b0a7-6c51d5f82b39', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-16 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:35', '2025-12-31 06:14:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('0e156e6a-2ad4-4df4-ad88-c1283d18eb15', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '3d9cba8b-22ba-4785-9afc-e2e6842eee5a', '2026-01-05 00:00:00', 20.00, 0.00, 0.00, 20.00, 20.00, 0.00, 500.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 17:14:44', '2026-01-05 17:20:15', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('0e94f68a-5280-4d80-9d79-0c15c8360490', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'f051da21-7909-458e-9c63-d176f6106a0a', '2026-01-10 00:00:00', 0.00, 2000.00, 0.00, 2000.00, NULL, 0.00, 0.00, NULL, '2026-01-10 01:16:55', '2026-01-10 01:16:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('107ed85f-5421-47c4-80c0-14ff1486f9a1', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-31 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:08:07', '2025-12-31 08:04:03', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('10da38ef-bc0e-46ab-bdd3-2dac8bc5edc6', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-09 00:00:00', 755.00, 0.00, 0.00, 755.00, NULL, 0.00, 0.00, NULL, '2026-01-09 09:45:52', '2026-01-10 10:03:30', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('11de77f6-5ae4-4885-a6d9-b7ed0ddd6829', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-04 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 03:51:05', '2026-01-07 03:51:05', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('12bf6635-ff9e-4725-8fcd-14770fdae59c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-02 00:00:00', 500.00, 0.00, 0.00, 500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:45', '2025-12-30 18:16:45', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('13f0bf9a-9473-44b6-b5b5-903c6b10fe22', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2025-12-15 00:00:00', 0.00, 1200.00, 0.00, 1200.00, NULL, 0.00, 0.00, NULL, '2026-01-05 03:50:15', '2026-01-05 03:50:16', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('13f1965e-efce-4265-8fc3-c6a21f5f14ba', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-08 00:00:00', 990.00, 250.00, 0.00, 1210.00, NULL, 0.00, 0.00, NULL, '2026-01-09 10:41:07', '2026-01-10 00:33:38', 0.00, 30.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('16e68a40-5766-4b65-a8b7-7ed25e1cadeb', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-02 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:45', '2025-12-31 06:07:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('176ed06a-fe4e-4318-8b6b-26eb2136a693', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-28 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:23', '2025-12-31 06:14:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('1819c3c7-cb87-4e85-90f0-e6be29d5bb8f', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-27 00:00:00', 1500.00, 0.00, 0.00, 1500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:09', '2025-12-30 18:20:09', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('18e6995d-1f20-4605-a23e-d1312c42d1df', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-07 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:13', '2025-12-31 06:10:40', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('19448795-a900-4508-99ce-e5f7093c68f1', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-15 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:27', '2025-12-31 06:14:15', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('19f92dba-8aef-4f7b-a598-3ef9132f5457', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-08 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:17', '2025-12-31 06:10:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('1a2a07c3-a8ff-4846-97b0-20dbb1cc00ed', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-31 00:00:00', 11850.00, 2.00, 2.00, 11852.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:12:16', '2025-12-31 19:46:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('1b9bebaf-ab2c-4635-91f7-220b05f4c419', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-31 00:00:00', 450.00, 400.00, 0.00, 850.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:05:56', '2025-12-31 04:49:40', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('1c21bda1-c3e7-4ec1-942e-2892a2f92a25', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-09 00:00:00', 1210.00, 0.00, 0.00, 1210.00, NULL, 0.00, 0.00, NULL, '2026-01-09 10:41:07', '2026-01-10 00:33:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('1c931992-85a9-427c-8bda-b604fe83225c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-28 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:23', '2025-12-31 06:14:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('1ca7f597-7fa7-4b71-993d-42132666fea8', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-21 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:16', '2025-12-31 06:14:49', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('1d8ecc47-2ce6-401f-85a8-7fba38d9f1bf', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', 'd24028d5-7172-4fa4-a16a-e96a21e92c62', '2025-12-29 00:00:00', 0.00, 5000.00, 1000.00, 4000.00, NULL, NULL, 1000.00, NULL, '2025-12-29 18:08:00', '2025-12-29 19:03:15', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('1e3a4324-431d-4ca7-bd8a-873b1be3b731', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-17 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:41', '2025-12-31 06:14:19', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('20550007-cd56-4425-b833-3ff863603f59', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2026-01-01 00:00:00', 697.00, 0.00, 0.00, 697.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 01:23:13', '2026-01-01 01:23:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('2074dc4f-35bf-46ff-b43d-de35e2b8a2c7', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'a09560f4-54bc-4640-9efa-295f4b665032', '2026-01-09 00:00:00', 500.00, 0.00, 0.00, 500.00, NULL, 0.00, 0.00, NULL, '2026-01-09 19:54:35', '2026-01-09 19:57:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('20d91ed5-61ba-4c87-9df5-1b9372fd9587', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-08 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:17', '2025-12-31 06:10:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('213e668d-37ee-4f1e-95d8-b29728caff79', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '3d9cba8b-22ba-4785-9afc-e2e6842eee5a', '2026-01-06 00:00:00', 20.00, 0.00, 0.00, 20.00, NULL, 0.00, 500.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 06:41:02', '2026-01-07 06:41:02', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('23119387-0e6f-46a5-8495-81d872ab430e', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-17 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:41', '2025-12-31 06:14:19', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('23e9d4bc-efa8-4ef4-aae9-f8ad45a54d90', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-11 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:04', '2025-12-31 06:13:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('243c3ec3-11d4-45bc-a430-1c8bfd8a8d12', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-08 00:00:00', 1850.00, 0.00, 250.00, 1630.00, NULL, 0.00, 0.00, NULL, '2026-01-08 20:25:19', '2026-01-10 00:32:55', 0.00, 0.00, 0.00, 0.00, 20.00, 30.00, 0.00, 0.00, 80.00),
('2453156d-2f6d-4cb1-bbd5-f292383bc830', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-29 00:00:00', 0.00, 450.00, 0.00, 450.00, 445.00, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 22:17:25', '2026-01-01 00:06:33', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('25579050-cb24-4dd1-a107-54bf3f48e28b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-10 00:00:00', 800.00, 0.00, 0.00, 800.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:00', '2025-12-30 18:18:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('271f7f08-ac98-4b4f-bf61-97c626d933c6', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-13 00:00:00', 2850.00, 3000.00, 0.00, 5850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:17', '2025-12-31 06:16:19', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('27282d1f-8444-4546-b88e-5d660dcbd72f', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', '2026-01-08 00:00:00', 310.00, 0.00, 0.00, 250.00, NULL, 0.00, 0.00, NULL, '2026-01-08 02:03:52', '2026-01-08 02:22:58', 0.00, 50.00, 0.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('28b9e384-5bb6-4783-b407-fece493a2420', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-04 00:00:00', 3500.00, 0.00, 0.00, 3500.00, NULL, 0.00, 0.00, NULL, '2026-01-07 10:47:38', '2026-01-07 10:47:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('294b92b3-45f8-4892-a078-0548b6a6f73b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-29 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:35', '2025-12-31 06:14:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('2967c354-a40d-4e8a-9132-553c9e0ac33c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-30 00:00:00', 5000.00, 3.00, 0.00, 5003.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 16:50:13', '2025-12-31 06:14:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('2a1d8a5e-36e4-4ea4-ace9-5f8b1da3ddc1', '0d947773-28ee-4e02-b5b6-40455566817d', '1e134a24-908d-4535-8443-28fa83f30a6a', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', '2026-01-07 00:00:00', 0.00, 200.00, 0.00, 180.00, 170.00, -10.00, 0.00, NULL, '2026-01-07 15:06:59', '2026-01-08 20:57:31', 0.00, 10.00, 0.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('2a62d178-7254-45c3-aeb3-b614b47ff87c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-03 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:49', '2025-12-31 05:17:09', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('2d52500e-8a26-4ae0-bc90-aaf8cefdb01e', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', 'a09560f4-54bc-4640-9efa-295f4b665032', '2026-01-09 00:00:00', 450.00, 0.00, 0.00, 450.00, NULL, 0.00, 0.00, NULL, '2026-01-09 19:57:54', '2026-01-09 19:58:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('2e2540f4-587e-4dc9-b1d6-28eae297e466', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-20 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:03', '2025-12-31 06:14:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('2eea00c7-5dc9-43f5-b64c-404fc7fd794e', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '3d9cba8b-22ba-4785-9afc-e2e6842eee5a', '2026-01-02 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 04:53:30', '2026-01-05 04:53:30', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('2f40ff0c-8e7c-402d-8c93-78f40fc6c5ae', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-03 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:49', '2025-12-31 06:08:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('322af658-b69a-4b81-8eeb-3c1b003075aa', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-06 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:06', '2025-12-31 06:04:30', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('325f514c-097f-4d2a-b8a6-2eafcc91899e', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-26 00:00:00', 1500.00, 0.00, 0.00, 1500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:50', '2025-12-30 18:19:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('33327ebd-1e60-45f5-a11d-3e211f2e1054', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-26 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:50', '2025-12-31 06:14:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('3346d776-dfa4-472d-adf3-b6ad42d3189d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-17 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:41', '2025-12-31 06:14:19', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('335de359-28bd-45ee-b131-453065937687', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-03 00:00:00', 0.00, 300.00, 0.00, 300.00, 300.00, 0.00, 500.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:17:03', '2026-01-07 07:34:48', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('338e6fb5-61ad-4b1e-9e44-51568f27b65c', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-09 00:00:00', 1630.00, 0.00, 0.00, 1630.00, NULL, 0.00, 0.00, NULL, '2026-01-09 10:39:42', '2026-01-10 00:32:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('33a1db80-0c9c-4fed-964f-d8fe219e332c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2026-01-01 00:00:00', 0.00, 2000.00, 0.00, 2000.00, NULL, NULL, 600.00, NULL, '2026-01-01 05:21:53', '2026-01-01 05:21:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('33bcdf68-21fe-45df-81ab-943cfb319de0', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-25 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 12:58:03', '2025-12-29 13:00:37', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('34fb992a-ec8a-44d3-b775-3590e9ac449e', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-06 00:00:00', 0.00, 400.00, 0.00, 400.00, NULL, 0.00, 0.00, NULL, '2026-01-09 23:18:51', '2026-01-09 23:18:51', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('35913ba2-3033-4a8a-ac16-7dddbb7289f2', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-03 00:00:00', 1000.00, 0.00, 300.00, 700.00, NULL, 0.00, 500.00, NULL, '2026-01-07 07:39:24', '2026-01-07 07:39:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('35da3b4f-6628-4b15-a902-a2be2ec988dd', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-07 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:13', '2025-12-31 06:10:40', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('3688b41a-88b2-4ecd-8802-efc423b85102', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2025-12-25 00:00:00', 1200.00, 500.00, 0.00, 1700.00, NULL, 0.00, 0.00, NULL, '2026-01-05 03:49:02', '2026-01-05 03:50:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('379383c5-79e1-4560-9c44-d6c081bfd3c7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-27 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:09', '2025-12-31 06:14:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('37c2598e-4075-49bb-a4e2-3c9bedbe9453', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-23 00:00:00', 1500.00, 0.00, 0.00, 1500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:28', '2025-12-30 18:19:28', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('37e2d7e3-a97e-4aaa-a0b0-a9da69307e96', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-05 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:01', '2025-12-31 06:03:39', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('38634775-15cb-42dd-a569-0a2793757fd1', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-25 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:42', '2025-12-31 06:14:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('39e5cfd8-adef-448e-9887-4a53047aadf7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-24 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:45', '2025-12-31 04:39:45', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('3bd08b4a-83a2-41d7-9cb7-6a209b99f776', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-03 00:00:00', 100.00, 0.00, 0.00, 100.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:16:55', '2025-12-31 05:22:08', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('3d414653-a621-49ba-ac0d-aca8ef71d0ea', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-24 00:00:00', 21500.00, 0.00, 0.00, 21500.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:33', '2025-12-31 06:14:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('3e2c0947-e664-495b-85f0-476c77df9145', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-25 00:00:00', 1500.00, 0.00, 0.00, 1500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:43', '2025-12-30 18:19:43', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('3e3d21f5-adb9-48f7-a98e-d5b15804d89a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-11 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:04', '2025-12-31 06:13:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('3e646314-e8b2-40c9-8797-c93c7b585097', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'fd666e2e-2de8-4b34-8687-9d45c75a85c3', '4f95bc96-08b8-4aad-9f1a-b88a0b211f33', '2025-12-29 00:00:00', 80.00, 0.00, 0.00, 40.00, 40.00, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 16:36:17', '2025-12-29 16:36:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('3e87447e-3b00-4165-920b-62e064966705', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-17 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:41', '2025-12-31 06:14:19', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('3ed94f36-d4e1-4e7b-b865-122f68ff156b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-30 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 16:50:13', '2025-12-31 06:14:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('3f9e7bfa-3320-4ebb-9696-a7b87885db86', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-06 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:06', '2025-12-31 06:10:36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('40b704f2-36d2-44ee-b077-1ed50d3af63e', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-10 00:00:00', 1630.00, 0.00, 0.00, 1630.00, NULL, 0.00, 0.00, NULL, '2026-01-10 00:15:10', '2026-01-10 00:32:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('423eebd6-ead4-4264-acce-e85212cb54a4', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-29 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:18:21', '2025-12-30 21:21:31', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('4362acf8-be93-4781-a71a-15e0a0cfd904', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-26 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:55', '2025-12-31 04:39:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('43810c73-8579-41c7-8625-4b135301747d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-02 00:00:00', 0.00, 150.00, 0.00, 150.00, 130.00, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:10:32', '2025-12-31 05:33:04', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('44954e31-8bc0-4304-9c57-e1478467f91e', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-08 00:00:00', 280.00, 1.00, 0.00, 280.00, NULL, 0.00, 0.00, NULL, '2026-01-08 21:09:10', '2026-01-08 21:24:27', 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('44ec5dcf-ce76-4752-8aa8-b9bcfbd0062d', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', 'a09560f4-54bc-4640-9efa-295f4b665032', '2026-01-08 00:00:00', 450.00, 0.00, 0.00, 450.00, NULL, 0.00, 0.00, NULL, '2026-01-09 19:57:54', '2026-01-09 19:58:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('45b03b5d-6e98-4722-a70c-f4218c0c3b09', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-22 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:21', '2025-12-31 06:14:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('45cebe0a-3924-4d56-9fe0-39ebfae9575b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-19 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:53', '2025-12-31 06:14:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('45d9c575-ca51-41e0-9d65-e3be15e66e88', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-09 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:24', '2025-12-31 06:10:44', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('464f5442-14ad-42c3-96c2-5077a317d5aa', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-02 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:47', '2025-12-31 05:08:47', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('4653b3b9-05a1-42f3-a508-b4521b6fd0d4', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-28 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:22:42', '2025-12-30 18:31:19', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('4671c562-b952-40cb-9148-bbb7d41e891c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-18 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:47', '2025-12-31 06:14:21', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('470541c1-0ab6-4b2c-b55e-2f1b1be1e3c8', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', 'd24028d5-7172-4fa4-a16a-e96a21e92c62', '2025-12-28 00:00:00', 170.00, 0.00, 70.00, 100.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 16:04:59', '2025-12-29 18:10:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('47c68e9e-2745-484c-be62-363c246fcca8', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-04 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:59', '2025-12-31 05:08:59', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('48004597-0207-407f-b6b7-8f28660f3f13', '0d947773-28ee-4e02-b5b6-40455566817d', '1e134a24-908d-4535-8443-28fa83f30a6a', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-08 00:00:00', 380.00, 0.00, 0.00, 370.00, 350.00, -20.00, 0.00, NULL, '2026-01-09 09:44:10', '2026-01-10 09:48:28', 0.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('4864ea2a-18f5-4040-9819-f98861067ea2', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-29 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:35', '2025-12-31 06:14:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('4993a3ca-c08e-4b0e-9884-f80b89424e14', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-18 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:47', '2025-12-31 06:14:21', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('49e3308e-b937-404c-aabf-81d509c64a86', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-05 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:01', '2025-12-31 06:03:39', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('4a061bf7-9d1d-4dc7-8d6c-7b19cdae53f3', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-04 00:00:00', 150.00, 0.00, 0.00, 150.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:09:30', '2025-12-31 05:16:58', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('4c7a4e3e-2172-4612-be77-ee517fa82b00', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-25 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:43', '2025-12-31 06:14:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('4d7e36dd-e8c4-4d8d-bd7e-a639fdcfaf34', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '4f95bc96-08b8-4aad-9f1a-b88a0b211f33', '2025-12-28 00:00:00', 10.00, 90.00, 80.00, 20.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 16:04:59', '2025-12-29 18:10:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('4ef37f17-22d6-4efd-a2c6-19c839e49de2', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-06 00:00:00', 200.00, 300.00, 0.00, 460.00, 450.00, -10.00, 0.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 06:41:03', '2026-01-10 00:33:38', 0.00, 0.00, 10.00, 0.00, 20.00, 30.00, 0.00, 0.00, 0.00),
('500d62b2-1b97-4689-a3ef-6f30db024dc5', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-10 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:00', '2025-12-31 06:10:46', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('50d36104-6805-4c3e-90e1-34a0d6518de0', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-21 00:00:00', 1500.00, 0.00, 0.00, 1500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:16', '2025-12-31 04:21:10', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('519e4898-21c3-430e-88d3-7e13cdf71a7e', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-01 00:00:00', 0.00, 5000.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:36', '2025-12-31 06:42:36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('523dc548-1cef-4fe1-9e33-5eb72c571e81', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-28 00:00:00', 85.00, 0.00, 10.00, 75.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:10:53', '2025-12-29 18:10:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('52934db0-f866-49eb-8d10-c1a9532b5818', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-09 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:24', '2025-12-31 06:10:44', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('52da614c-5026-4812-9b84-fa174819c30a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-13 00:00:00', 800.00, 0.00, 0.00, 800.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:17', '2025-12-30 18:18:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('533f75e0-91a0-43ef-b39b-43f458be21f8', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-29 00:00:00', 40.00, 100.00, 0.00, 140.00, 119.00, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 14:42:14', '2025-12-29 15:12:46', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('53f33375-f136-4205-b923-75e869caee3c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-07 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:13', '2025-12-31 06:10:40', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('5455b035-a7b5-40b5-be78-3dfe8c08a798', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-31 00:00:00', 697.00, 0.00, 0.00, 697.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:05:56', '2025-12-31 04:05:56', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('55e8e257-14d1-4f65-aa5e-4f21cc673570', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-31 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:08:07', '2025-12-31 04:08:07', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('569490bb-d637-4590-a7f8-fe4d2f35f4a0', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-30 00:00:00', 710.00, 0.00, 5.00, 705.00, 697.00, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 23:37:08', '2025-12-30 21:28:05', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('577c5895-01b1-4710-9c4c-2be52d2a6bbb', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-03 00:00:00', 150.00, 200.00, 0.00, 350.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:16:55', '2025-12-31 05:30:23', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('580ca484-bd28-45c4-ab43-a06d96859266', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-07 00:00:00', 550.00, 400.00, 0.00, 939.00, 900.00, -39.00, 0.00, NULL, '2026-01-07 07:56:34', '2026-01-08 21:04:44', 0.00, 5.00, 0.00, 6.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('58c45a01-723e-44cc-af79-2a45635237c4', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-01 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:27', '2025-12-31 04:56:34', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('593cd5dd-d21b-45ee-aeb4-cd138888cf4d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-07 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:13', '2025-12-31 06:10:40', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('5a085fc1-06d6-45af-bd40-076d2146d863', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-14 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:23', '2025-12-31 06:14:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('5ad5dfeb-f0fe-4495-b08a-790f0cbb8139', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-08 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:17', '2025-12-31 06:10:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('5b636d84-9c22-4d99-8319-42e8ce7adb8a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-19 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:53', '2025-12-31 06:14:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('5b6d481f-825f-4bbc-8e54-40e51fb96031', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2329f86b-aabd-4aac-b4f2-8e572f51588b', '2026-01-08 00:00:00', -250.00, 0.00, 0.00, -250.00, NULL, 0.00, 0.00, NULL, '2026-01-08 01:51:47', '2026-01-08 01:51:47', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('5baeb97e-6eaa-4df5-8f1d-82d77ee080d4', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-30 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 20:42:14', '2025-12-30 20:42:14', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('5c1ff89a-c400-4d97-bd0a-7603d9ff164b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-29 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:16:39', '2025-12-30 21:19:25', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('5e229e06-7daa-4158-95eb-462dd0444bc4', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2329f86b-aabd-4aac-b4f2-8e572f51588b', '2026-01-07 00:00:00', 0.00, 250.00, 0.00, 250.00, NULL, 0.00, 0.00, NULL, '2026-01-07 15:07:52', '2026-01-07 15:12:12', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('5e6b5a5d-b2e4-43be-bb91-a5be9851019f', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-02 00:00:00', 1000.00, 2000.00, 150.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:45', '2025-12-31 05:10:32', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('5fcb84e8-f5fb-458e-9210-52937f8696a8', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-07 00:00:00', 800.00, 0.00, 0.00, 800.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:13', '2025-12-30 18:17:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('60d55798-ceb5-4bbb-aaa8-a952a931c2f2', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-05 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 03:50:31', '2026-01-07 03:50:31', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('60e9089e-10ec-4819-9ba6-57f652386314', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'a09560f4-54bc-4640-9efa-295f4b665032', '2026-01-07 00:00:00', 500.00, 0.00, 0.00, 500.00, NULL, 0.00, 0.00, NULL, '2026-01-09 19:57:11', '2026-01-09 19:57:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('61061fb7-db64-4cae-b4f4-3c300e9b9208', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-24 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:33', '2025-12-31 06:14:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('61a6ecae-38be-477f-a749-3fa14b4844a3', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-30 00:00:00', 11850.00, 450.00, 450.00, 11850.00, NULL, NULL, 500.00, NULL, '2025-12-30 08:04:45', '2025-12-31 06:14:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('6265f55f-d040-4a01-aae1-40f2f202e5ce', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-13 00:00:00', 2650.00, 3000.00, 0.00, 5650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:17', '2025-12-31 06:16:09', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `store_stock` (`id`, `client_id`, `store_department_id`, `item_id`, `date`, `opening_qty`, `added_qty`, `issued_qty`, `closing_qty`, `physical_closing_qty`, `variance_qty`, `cost_price_snapshot`, `created_by`, `created_at`, `updated_at`, `transfers_in_qty`, `transfers_out_qty`, `inter_dept_in_qty`, `inter_dept_out_qty`, `waste_qty`, `write_off_qty`, `adjustment_qty`, `sold_qty`, `return_in_qty`) VALUES
('6370783d-c245-44eb-b8ed-7bf47b2edc64', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-09 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:24', '2025-12-31 06:10:44', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('63c0516e-d60a-4c02-a5f9-b34c83759f5b', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-29 00:00:00', 75.00, 120.00, 100.00, 95.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 14:42:14', '2025-12-29 18:13:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('640445cb-2753-4067-b5c4-adc8758789ff', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-18 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:47', '2025-12-31 06:14:21', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('64ebd939-389e-4695-aeb7-2d2a98b6c594', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-22 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:21', '2025-12-31 06:14:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('650e5433-11fe-4f01-8495-9d4a2a70bc4f', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-03 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:53', '2025-12-31 05:08:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('659959a5-9ffc-437b-bcdd-6a623366c3a6', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-25 00:00:00', 10.00, 90.00, 0.00, 100.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 12:57:39', '2025-12-29 13:00:37', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('65f7e1e4-c97a-4a6d-b675-dbfe62a462e5', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', '2026-01-07 00:00:00', 0.00, 1000.00, 500.00, 510.00, NULL, 0.00, 0.00, NULL, '2026-01-07 14:57:18', '2026-01-08 20:56:23', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00),
('665ec905-7ec8-48a8-90b4-e6ef086e7845', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-31 00:00:00', 448.00, 4.00, 5.00, 447.00, 440.00, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:08:07', '2025-12-31 10:00:30', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('66a1302d-a390-4c45-bc9f-13a7cc0e6188', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-21 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:17', '2025-12-31 04:39:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('683db9fb-f23e-4beb-b4a2-1ff113ce3a76', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-28 00:00:00', 0.00, 0.00, 0.00, 0.00, 15.00, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 14:51:37', '2025-12-30 18:22:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('68654ed2-9c2f-439f-b37c-96c578d2d41b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-12 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:11', '2025-12-31 06:13:57', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('688c9e25-5a24-4e61-bb07-e1b00a519e79', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-09 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:24', '2025-12-31 06:10:44', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('68c29bf9-607c-441f-98af-2935d6d02086', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-23 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:28', '2025-12-31 06:14:51', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('69049ecc-466c-4dd8-b5b7-aa63c6eff254', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '3d9cba8b-22ba-4785-9afc-e2e6842eee5a', '2026-01-05 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 03:50:31', '2026-01-07 03:50:31', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('698c2b88-35fe-4014-be63-5323742d5035', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-06 00:00:00', 550.00, 0.00, 0.00, 550.00, 500.00, -50.00, 0.00, NULL, '2026-01-07 07:56:34', '2026-01-08 20:38:44', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('6a347b43-745f-43ec-a4d7-42d20781d4af', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-22 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:40', '2025-12-31 04:39:40', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('6a7ae331-7077-4b9c-80e1-bec54a489453', '0d947773-28ee-4e02-b5b6-40455566817d', '1e134a24-908d-4535-8443-28fa83f30a6a', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-10 00:00:00', 370.00, 0.00, 0.00, 370.00, NULL, 0.00, 0.00, NULL, '2026-01-10 09:48:28', '2026-01-10 09:48:28', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('6c5b8fca-26d6-488d-8186-887bc6334386', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-25 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:42', '2025-12-31 06:14:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('6d4cab15-ff75-4715-bc8a-4db49a66fff7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-03 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:53', '2025-12-31 05:08:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('6e4fb730-0c87-4ca3-b9d2-00d491e07409', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-07 00:00:00', 900.00, 1000.00, 800.00, 1060.00, NULL, 0.00, 0.00, NULL, '2026-01-07 14:57:37', '2026-01-09 23:47:04', 0.00, 0.00, 0.00, 0.00, 0.00, 60.00, 0.00, 0.00, 20.00),
('6e5e4e39-56fb-423d-9c86-d5ab86aa09c4', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-01 00:00:00', 0.00, 2000.00, 0.00, 2000.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:36', '2025-12-31 06:42:36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('70c42ac5-bb89-4350-962b-4ae446182c95', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-20 00:00:00', 150.00, 0.00, 0.00, 150.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 06:14:38', '2025-12-31 06:14:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('71ff4b3e-9fd3-4e47-88e9-839e3bf31249', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-31 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:12:16', '2025-12-31 19:46:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('72524d24-11d8-45ca-b8b9-cdb0ff73352c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-16 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:35', '2025-12-31 06:14:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('73a90a43-8c4e-4efc-ac63-f2294e7b7a14', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', 'a09560f4-54bc-4640-9efa-295f4b665032', '2026-01-07 00:00:00', 450.00, 0.00, 0.00, 450.00, NULL, 0.00, 0.00, NULL, '2026-01-09 19:57:54', '2026-01-09 19:58:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('742b388d-d52f-4468-a2dd-9e7ae5aa8ad6', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-26 00:00:00', 21800.00, 0.00, 0.00, 21800.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:50', '2025-12-31 06:14:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('746263cd-005d-440e-8116-2d2bd68ae96a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-21 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:17', '2025-12-31 04:39:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('750e3c30-b203-4aaa-9caf-8d31466e0f1e', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-23 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:28', '2025-12-31 06:14:51', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('75445bf2-ccb9-42c6-acc1-c1be0e502af0', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-15 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:27', '2025-12-31 06:14:15', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('75506763-5dd9-462c-9610-05d18d8017ae', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2026-01-01 00:00:00', 10.00, 0.00, 0.00, 10.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 01:23:13', '2026-01-01 01:23:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7585fa33-2c59-4eff-80ba-f3c8276c30d5', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', '2026-01-07 00:00:00', 0.00, 300.00, 0.00, 310.00, NULL, 0.00, 0.00, NULL, '2026-01-07 15:07:12', '2026-01-07 15:21:06', 0.00, 0.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('75eafdd8-171f-41f3-92a5-5a21a845cf1d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-14 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:23', '2025-12-31 06:14:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('761c4ec7-970f-4c55-b5ca-9b8c16b6eb68', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-25 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:43', '2025-12-31 06:14:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('76895f2f-ebc2-4962-a7ad-8cd157af58d9', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-28 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 14:51:37', '2025-12-30 14:51:37', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('77c84711-cae8-486a-a6cb-de9dae55c8d0', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-11 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:04', '2025-12-31 06:13:51', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('77e7fa0e-c412-4071-8ea9-5f2647b0a4e6', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-09 00:00:00', 941.00, 0.00, 0.00, 941.00, NULL, 0.00, 0.00, NULL, '2026-01-09 09:44:10', '2026-01-10 09:52:58', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7849a1e9-343e-41c3-ac6f-d17fdb1133e2', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-25 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:48', '2025-12-31 04:39:48', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7877af5c-52cd-435e-b01f-0b2ac0509e28', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-23 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:28', '2025-12-31 06:14:51', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('79ef8d06-9bb5-4d3c-bb75-11b6e32669b2', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-05 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:01', '2025-12-31 06:10:27', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7a094745-96f0-4482-9546-629296cec40a', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-09 00:00:00', 710.00, 0.00, 0.00, 710.00, NULL, 0.00, 0.00, NULL, '2026-01-09 10:39:43', '2026-01-10 00:33:39', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7a1e6138-db45-4681-87dc-5b1782ad8e77', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-28 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:22:42', '2025-12-30 18:31:19', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7ab7d9a2-bd7f-42fe-a37b-4ffba74e446c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-21 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:16', '2025-12-31 06:14:49', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7b78d318-fe01-49c0-9196-25ee35970030', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-29 00:00:00', 10.00, 0.00, 0.00, 10.00, 10.00, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 14:51:44', '2025-12-31 04:46:05', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7b815053-9514-4487-8272-328924fde809', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-08 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:17', '2025-12-31 06:10:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7c19ab10-d418-479b-bce9-89f0ce09c3db', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-05 00:00:00', 300.00, 250.00, 0.00, 550.00, 500.00, -50.00, 0.00, NULL, '2026-01-07 07:56:34', '2026-01-08 20:35:30', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7c81fada-5ff5-48c1-a5d5-8b87f2a49871', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-27 00:00:00', 21800.00, 0.00, 0.00, 21800.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:09', '2025-12-31 06:14:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7cdefcec-35b8-49b4-add0-1ebbe54914e7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-02 00:00:00', 0.00, 150.00, 0.00, 150.00, 100.00, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:10:40', '2025-12-31 05:23:12', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7dcf8748-12fb-486a-982c-dec835bd8636', '0d947773-28ee-4e02-b5b6-40455566817d', '1e134a24-908d-4535-8443-28fa83f30a6a', '2329f86b-aabd-4aac-b4f2-8e572f51588b', '2026-01-07 00:00:00', 0.00, 1000.00, 0.00, 1000.00, 950.00, 950.00, 0.00, NULL, '2026-01-07 15:07:38', '2026-01-08 21:01:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7e2fcf91-1637-4db9-90e2-6403cadcd8ef', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-30 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 16:50:13', '2025-12-31 06:14:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7e6dc704-bfc4-45ca-b5f5-0fbb9b4c32cb', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-06 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:06', '2025-12-31 06:04:30', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7eafd6d3-e300-43be-a831-78ae5d86431c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-27 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:09', '2025-12-31 06:14:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7ee53a1e-b366-4119-b4c1-0772af44e850', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'a09560f4-54bc-4640-9efa-295f4b665032', '2026-01-06 00:00:00', 0.00, 1000.00, 500.00, 500.00, NULL, 0.00, 0.00, NULL, '2026-01-09 19:57:11', '2026-01-09 19:57:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7f38a41d-207b-4177-8041-566ff84f8b4a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-01 00:00:00', 0.00, 500.00, 0.00, 500.00, NULL, NULL, 400.00, NULL, '2025-12-30 18:15:45', '2025-12-31 06:42:36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('7f6bf828-ee1a-4358-95c7-632044f4e059', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-08 00:00:00', 939.00, 0.00, 0.00, 939.00, NULL, 0.00, 0.00, NULL, '2026-01-08 20:35:30', '2026-01-08 21:04:45', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('812c9794-f26c-4bd5-b565-7667800344a7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-21 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:16', '2025-12-31 06:14:49', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('813b7a61-1545-4543-bd7e-a685a4fafade', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-25 00:00:00', 21500.00, 300.00, 0.00, 21800.00, NULL, NULL, 600.00, NULL, '2025-12-30 18:08:09', '2025-12-31 06:14:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('81f8bfb2-e6bb-46f1-bfe7-2f0f912a34fe', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-30 00:00:00', 0.00, 450.00, 0.00, 450.00, 448.00, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 08:26:15', '2025-12-30 20:43:31', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('82969779-9933-4553-87db-496929cd9c85', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'a09560f4-54bc-4640-9efa-295f4b665032', '2026-01-08 00:00:00', 500.00, 0.00, 0.00, 500.00, NULL, 0.00, 0.00, NULL, '2026-01-09 19:57:11', '2026-01-09 19:57:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('835f77d7-2192-4cf6-bb3f-73fe1db32092', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-27 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:41:23', '2025-12-31 04:41:23', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('83e9d660-6ede-4373-aa1b-f6fd2b01f3b7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-07 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:13', '2025-12-31 06:10:40', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('844da6fd-1be6-46ad-b49b-83f797d7dabd', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-01 00:00:00', 0.00, 1000.00, 0.00, 1000.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:36', '2025-12-31 06:42:36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('84587be1-c776-4d33-8445-72069a58f308', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-23 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:41', '2025-12-31 04:39:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('84c70661-f35b-4802-a254-05be90bb4de7', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-04 00:00:00', 700.00, 0.00, 0.00, 700.00, NULL, 0.00, 0.00, NULL, '2026-01-07 07:39:29', '2026-01-07 07:45:25', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('84fdbc73-5cca-486e-8cab-99087d365264', 'a792ef92-476b-43f7-b754-bb201bc67713', '776ddf28-fc34-44bf-a202-3cb5e304a862', '0ea64431-00b9-4ee6-8689-9c3cec032490', '2026-02-01 00:00:00', 0.00, 0.00, 0.00, 2.00, NULL, 0.00, 0.00, '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 20:08:01', '2026-02-01 21:56:25', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.00, 0.00, 0.00),
('850af80d-dfac-4eef-b0c7-524e3cdfa0ca', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-20 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:03', '2025-12-31 06:14:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('852acede-f7f3-458f-ba42-41ab97d9ccb6', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-26 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:50', '2025-12-31 06:14:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('85cad7c6-619f-4010-9f8d-fbae41a10ac6', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-23 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:41', '2025-12-31 04:39:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('86d4c374-c7f7-4d78-9ee0-fd7fd2c383ac', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-17 00:00:00', 3700.00, 0.00, 0.00, 3700.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:41', '2025-12-31 06:43:10', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('879b999f-3382-4650-8ae9-57259d108dc0', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-04 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:56', '2025-12-31 06:10:18', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('87bfdaed-d0bb-40a4-80e5-e9e41b65fccd', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'fd666e2e-2de8-4b34-8687-9d45c75a85c3', 'd24028d5-7172-4fa4-a16a-e96a21e92c62', '2025-12-29 00:00:00', 70.00, 1000.00, 0.00, 1070.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 19:03:15', '2025-12-29 19:03:15', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('88c4e50f-9c86-44de-b856-d18f167a69e3', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-07 00:00:00', 400.00, 400.00, 0.00, 770.00, 700.00, -70.00, 0.00, NULL, '2026-01-07 15:09:22', '2026-01-10 00:38:38', 0.00, 0.00, 20.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('897d3761-c6ac-4e58-91c6-f78d79a183ab', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-02 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:47', '2025-12-31 05:08:47', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('898f6e45-2d1c-47a5-a1e3-fe6d20299e66', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-27 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:09', '2025-12-31 06:14:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('8a2042ac-b3c2-4e9b-a8a3-e36790ded4bd', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-20 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:03', '2025-12-31 06:14:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('8c032793-3e5e-42f2-857b-f52dcc2cab0b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-11 00:00:00', 800.00, 0.00, 0.00, 800.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:04', '2025-12-31 06:13:51', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('8efbdb92-d163-419c-96d4-d35e4e137117', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', 'd24028d5-7172-4fa4-a16a-e96a21e92c62', '2026-01-01 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 01:23:24', '2026-01-01 06:29:56', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('8f76ed7c-791e-4126-ac01-946658e629e0', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-03 00:00:00', 2850.00, 0.00, 200.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:49', '2025-12-31 05:17:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('911b27d6-e009-4ae3-a7fd-e5420e69c852', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-27 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:41:23', '2025-12-31 04:41:23', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('91e7badb-e7b5-43b1-8267-221ebc6e634c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-24 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:33', '2025-12-31 06:14:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('93b51691-3a00-419e-b768-e343ed1a98a0', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-03 00:00:00', 500.00, 0.00, 0.00, 500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:49', '2025-12-30 18:16:49', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('942bb32d-c1b3-4406-9a86-eae4b8236ad2', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-26 00:00:00', 0.00, 15.00, 0.00, 15.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:01:00', '2025-12-29 13:02:39', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('946d906b-9ee0-40fa-a2d4-fcc0b1738144', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-08 00:00:00', -219.00, 2000.00, 1.00, 1781.00, NULL, 0.00, 0.00, NULL, '2026-01-08 20:10:58', '2026-01-08 21:24:28', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00),
('954a65a1-dd95-4c98-929d-ca68d0793ca6', '0d947773-28ee-4e02-b5b6-40455566817d', '1e134a24-908d-4535-8443-28fa83f30a6a', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-07 00:00:00', 0.00, 400.00, 0.00, 400.00, 380.00, -20.00, 0.00, NULL, '2026-01-09 09:44:10', '2026-01-09 09:54:03', 0.00, 20.00, 50.00, 20.00, 5.00, 5.00, 0.00, 0.00, 0.00),
('9712d932-f98f-401f-84f4-8d253410f3ca', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-31 00:00:00', 21800.00, 400.00, 400.00, 21800.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:12:16', '2025-12-31 19:46:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('97bcce67-a188-4874-a36f-7d3243c212e3', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-12 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:11', '2025-12-31 06:13:57', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('98588b2d-486c-4936-bb9d-ec2772988851', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-02 00:00:00', 1000.00, 2000.00, 150.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:45', '2025-12-31 05:11:25', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('99b918fe-7a8b-4c09-becc-a7a08fc1af87', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-05 00:00:00', 500.00, 0.00, 0.00, 500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:01', '2025-12-30 18:17:01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('99edfdf7-7e0f-42ad-a9e0-5b86d777330a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-12 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:11', '2025-12-31 06:13:57', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('9ab32f2c-ec06-4991-92ae-354662d94c63', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-27 00:00:00', 85.00, 0.00, 0.00, 85.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:03:18', '2025-12-29 13:11:26', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('9ab730c6-5dee-427a-9d69-f0c731359b52', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-20 00:00:00', 21000.00, 500.00, 0.00, 21500.00, NULL, NULL, 600.00, NULL, '2025-12-30 14:15:38', '2025-12-31 06:14:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('9b37eaa6-a8fd-42ee-b3dd-b5ed5cb14784', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-30 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 20:42:14', '2025-12-30 20:42:14', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('9ba72ad2-db96-4b77-9275-bc67c42bc1de', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-02 00:00:00', 3500.00, 0.00, 0.00, 3500.00, NULL, 0.00, 0.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-05 04:53:30', '2026-01-07 10:47:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('9cbdd6c6-a9ad-4e34-8d60-f24df4871fd6', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '3d9cba8b-22ba-4785-9afc-e2e6842eee5a', '2026-01-03 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-07 07:17:03', '2026-01-07 07:17:03', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('9d5eeea6-270f-4aaf-897f-f754974db515', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-10 00:00:00', 710.00, 0.00, 0.00, 710.00, NULL, 0.00, 0.00, NULL, '2026-01-10 00:25:20', '2026-01-10 00:33:39', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('9d7098f4-4a63-4b79-ac31-bf64bf7c7aec', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-06 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:06', '2025-12-31 06:10:36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('9e0d7013-904c-4ad5-8be8-6929e7484d48', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2329f86b-aabd-4aac-b4f2-8e572f51588b', '2026-01-07 00:00:00', 0.00, 1000.00, 1250.00, -250.00, NULL, 0.00, 0.00, NULL, '2026-01-07 14:57:30', '2026-01-08 01:51:46', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('9e7e50fb-8c71-45eb-b050-e087cdd06b96', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-06 00:00:00', 0.00, 1300.00, 400.00, 900.00, NULL, 0.00, 0.00, NULL, '2026-01-09 23:17:21', '2026-01-09 23:18:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('9f804b66-5013-45f9-96b3-bc14d7c6eb71', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-14 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:23', '2025-12-31 06:14:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a16f5ffe-5bf4-4b02-8da3-68e89bfc00c0', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-08 00:00:00', 760.00, 0.00, 0.00, 710.00, NULL, 0.00, 0.00, NULL, '2026-01-08 20:25:19', '2026-01-10 00:33:39', 0.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a199254b-d0cb-4d17-bf9a-403e4948623f', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-28 00:00:00', 0.00, 10.00, 0.00, 10.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 14:51:37', '2025-12-30 20:06:21', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a1e1c286-5240-4411-9647-818c804520a8', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-10 00:00:00', 1210.00, 0.00, 0.00, 1210.00, NULL, 0.00, 0.00, NULL, '2026-01-10 00:15:10', '2026-01-10 00:33:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a27c90fc-070b-4d9e-a34c-c0c9ce030aa5', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-05 00:00:00', 700.00, 0.00, 250.00, 450.00, NULL, 0.00, 0.00, NULL, '2026-01-07 07:56:33', '2026-01-07 08:00:09', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a2f038c0-9b09-4515-b724-668e817c9316', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-20 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:03', '2025-12-31 06:14:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a329fb72-e0ef-4be9-a5a6-6984096b18f5', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-17 00:00:00', 7500.00, 0.00, 0.00, 7500.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:41', '2025-12-31 06:43:10', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a3c94e4b-f3ea-4b75-a780-bbdea0f2d278', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-15 00:00:00', 800.00, 2900.00, 0.00, 3700.00, NULL, NULL, 400.00, NULL, '2025-12-30 16:53:31', '2025-12-31 06:42:15', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a3f79945-b8a4-4433-8e2f-1e0bec92ee66', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-04 00:00:00', 150.00, 0.00, 0.00, 150.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:09:30', '2025-12-31 05:16:58', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a44b0176-355a-4ac4-b372-2aeb0ef6cdb7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-22 00:00:00', 21500.00, 0.00, 0.00, 21500.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:21', '2025-12-31 06:14:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a467520e-ff7a-42ab-8e69-f303ed2677aa', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-08 00:00:00', 800.00, 0.00, 0.00, 800.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:17', '2025-12-30 18:17:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a4f8faf6-9958-470e-90cf-4befecd9fff3', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'bd22d458-81ba-414f-bcdb-4e047e7ab1c6', '4f95bc96-08b8-4aad-9f1a-b88a0b211f33', '2025-12-29 00:00:00', 20.00, 210.00, 0.00, 230.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 18:13:41', '2025-12-29 18:13:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a60740fb-a643-4c55-ba38-1d9dccaf91d3', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-24 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:33', '2025-12-31 06:14:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a612f18c-85ec-4df0-a419-325d07953e71', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-01 00:00:00', 0.00, 1000.00, 0.00, 1000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:36', '2025-12-31 06:42:36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a6e6a77e-e47c-4400-9240-ff3f65536529', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-21 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:16', '2025-12-31 06:14:49', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a704ab55-7963-443d-9f81-c602c454ee2a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-16 00:00:00', 3700.00, 0.00, 0.00, 3700.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:35', '2025-12-31 06:42:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a724e22d-7909-4760-b02d-dd76bf665e1b', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-08 00:00:00', 1060.00, 0.00, 100.00, 941.00, NULL, 0.00, 0.00, NULL, '2026-01-09 09:44:10', '2026-01-10 09:52:57', 0.00, 0.00, 0.00, 0.00, 15.00, 15.00, 0.00, 0.00, 11.00),
('a7daedbb-0d97-421b-bcdc-25923f1ddec3', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '3d9cba8b-22ba-4785-9afc-e2e6842eee5a', '2026-01-07 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '6419147a-44c1-4f3c-bbcb-51a46a91d1be', '2026-01-09 10:51:50', '2026-01-09 10:52:07', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a8bd727b-a422-4d56-a7ce-ecd4e32014be', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-13 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:17', '2025-12-31 06:14:07', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a95b52ec-6075-41a5-b43b-1718985f3b11', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-26 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:50', '2025-12-31 06:14:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('a9d79961-d891-46df-b115-e167991741ae', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-27 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:41:23', '2025-12-31 04:41:23', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('aa33237b-5b63-44ea-a7d9-af35c7f775b1', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-02 00:00:00', 2000.00, 5000.00, 150.00, 6850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:45', '2025-12-31 06:07:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('ab1129ff-0496-4cd6-b13a-82c8b67ca17b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-03 00:00:00', 6850.00, 0.00, 0.00, 6850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:49', '2025-12-31 06:08:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('ac189ab5-1899-4deb-94d8-2678026e1a00', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-24 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:45', '2025-12-31 04:39:45', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('acc963b3-8cca-4e8d-9c71-82dc73cdc3b1', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-04 00:00:00', 6850.00, 0.00, 0.00, 6850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:56', '2025-12-31 06:10:18', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('ae80cf7d-91ad-49c0-8b49-ad206155c0ba', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-28 00:00:00', 1500.00, 0.00, 10.00, 1490.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:23', '2025-12-30 20:06:21', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('ae8e1798-528c-40f0-9086-4ebc28283877', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-10 00:00:00', 755.00, 0.00, 0.00, 754.00, NULL, 0.00, 0.00, NULL, '2026-01-10 00:38:38', '2026-01-10 10:03:30', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -1.00, 0.00, 0.00),
('b0498739-7d19-4193-9144-e1d2e8c27dde', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-05 00:00:00', 3500.00, 0.00, 0.00, 3500.00, NULL, 0.00, 0.00, NULL, '2026-01-07 10:47:38', '2026-01-07 10:47:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b082a2d0-6a17-402c-b923-f8732e14bc83', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2026-01-01 00:00:00', 119.00, 0.00, 0.00, 119.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 01:23:24', '2026-01-01 01:23:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b16f3a39-6212-429b-ac4a-43033bf7dc41', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', 'd24028d5-7172-4fa4-a16a-e96a21e92c62', '2026-01-02 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 1000.00, '08cae6ca-1bda-42e0-8cee-bdb28d071529', '2026-01-02 22:15:09', '2026-01-02 22:15:09', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b18efbf1-8a56-45ba-aae7-49875166c927', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-15 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:27', '2025-12-31 06:14:15', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b2a6557f-591f-4913-bcb8-f354a4ca5405', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-21 00:00:00', 21500.00, 0.00, 0.00, 21500.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:16', '2025-12-31 06:14:49', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b60426b4-bef2-46f1-a255-c8c8249379d9', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-08 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:17', '2025-12-31 06:10:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b6242af6-1a13-46c4-9ac7-f7ba736fc162', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-07 00:00:00', 460.00, 300.00, 0.00, 760.00, NULL, 0.00, 0.00, NULL, '2026-01-08 20:25:19', '2026-01-10 00:33:39', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b6301d13-4ccb-49cc-ac00-1f1493064f5f', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2026-01-01 00:00:00', 850.00, 0.00, 0.00, 850.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 01:23:13', '2026-01-01 01:23:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b70a01c6-1709-4c80-a9b7-c17d5c4422c4', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-15 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:27', '2025-12-31 06:14:15', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b81d9ebb-9a07-4d2c-a672-ec1306caafd2', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2026-01-01 00:00:00', 850.00, 0.00, 0.00, 850.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 01:10:54', '2026-01-01 01:10:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b84675a1-7068-48ab-b159-507856641c71', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-16 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:35', '2025-12-31 06:14:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('b940b464-4e58-42da-b3aa-e69f135bc3d8', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-19 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:53', '2025-12-31 06:14:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `store_stock` (`id`, `client_id`, `store_department_id`, `item_id`, `date`, `opening_qty`, `added_qty`, `issued_qty`, `closing_qty`, `physical_closing_qty`, `variance_qty`, `cost_price_snapshot`, `created_by`, `created_at`, `updated_at`, `transfers_in_qty`, `transfers_out_qty`, `inter_dept_in_qty`, `inter_dept_out_qty`, `waste_qty`, `write_off_qty`, `adjustment_qty`, `sold_qty`, `return_in_qty`) VALUES
('bdb3197a-e6e5-49dd-994c-e2f805880d89', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-04 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:56', '2025-12-31 06:01:56', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('bdb7bec7-9935-441a-83dc-5e875435c518', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-02 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:40', '2025-12-31 05:10:08', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('be0452a4-e588-4801-b7ab-104b982cec92', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-25 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:48', '2025-12-31 04:39:48', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('be06edcc-9ad5-47e2-bc3a-60181c4203f2', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-28 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:23', '2025-12-31 06:14:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('be9c0f83-1b2d-4a09-878e-61ddcf3677e6', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-03 00:00:00', 100.00, 0.00, 0.00, 100.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:16:55', '2025-12-31 05:22:08', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('bf47e75e-22a2-482c-a52c-9d1f40a655a8', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-05 00:00:00', 6850.00, 5000.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:01', '2025-12-31 06:10:27', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('bf63003b-a77a-41ad-a6de-c0cbc7e95376', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-06 00:00:00', 0.00, 1000.00, 0.00, 990.00, NULL, 0.00, 0.00, NULL, '2026-01-10 00:32:55', '2026-01-10 00:33:37', 0.00, 0.00, 0.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('bfc6279c-3ceb-4685-94cf-d9fd1cbd1611', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-27 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:09', '2025-12-31 06:14:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c033bfce-a2df-4355-8a60-b2fcb9f95bdb', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-30 00:00:00', 10.00, 0.00, 0.00, 10.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 14:50:01', '2025-12-30 21:22:33', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c0687b00-8ffb-4569-90d5-f3d0bf0e8ca5', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-02 00:00:00', 0.00, 150.00, 0.00, 150.00, 100.00, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:10:40', '2025-12-31 05:23:12', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c24285c0-03f0-497f-b704-b075909b3cfe', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-30 00:00:00', 450.00, 0.00, 0.00, 450.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 14:50:01', '2025-12-30 14:50:01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c284b9b7-e965-47c1-8472-b43645e8e262', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'fd666e2e-2de8-4b34-8687-9d45c75a85c3', 'd24028d5-7172-4fa4-a16a-e96a21e92c62', '2025-12-28 00:00:00', 0.00, 70.00, 0.00, 70.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 16:06:47', '2025-12-29 16:06:47', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c30cb2c1-b152-4928-8eae-002d9b700e7d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-31 00:00:00', 10.00, 0.00, 0.00, 10.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:05:56', '2025-12-31 04:05:56', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c320f5d7-3513-4011-b28f-f911db0f62d6', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-28 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:23', '2025-12-31 06:14:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c38b76a2-6052-4acd-a67f-ae722ecafbdc', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-28 00:00:00', 30.00, 10.00, 0.00, 40.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:10:53', '2025-12-29 13:10:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c397c8ab-94b3-4b24-934e-35b179b6f8cb', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-22 00:00:00', 1500.00, 0.00, 0.00, 1500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:21', '2025-12-30 18:19:21', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c40c9af5-2380-48c4-92f3-44f57d1b61bd', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-13 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:17', '2025-12-31 06:14:07', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c460c1aa-1ad9-4dc2-b7ec-81b14b603b4c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-19 00:00:00', 1200.00, 0.00, 0.00, 1200.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:53', '2025-12-30 18:18:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c46e6eb1-1aaa-4b31-aff6-8706a97c93c3', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-22 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:21', '2025-12-31 06:14:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c4de21f4-d3b9-4042-bab2-3cd35429c95e', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-12 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:11', '2025-12-31 06:13:57', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c549369e-f681-4aef-af4f-34ead8baf683', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-18 00:00:00', 3700.00, 0.00, 0.00, 3700.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:47', '2025-12-31 06:43:14', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c5cb81d8-9f3a-45a1-91bb-9f70aa8aeecd', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-12 00:00:00', 800.00, 0.00, 0.00, 800.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:11', '2025-12-30 18:18:11', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c5fe67c4-12eb-43b1-8513-9029c764269a', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'c8a17169-727d-4c3f-b026-00059fdf32a5', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-07 00:00:00', 990.00, 0.00, 0.00, 990.00, NULL, 0.00, 0.00, NULL, '2026-01-10 00:32:55', '2026-01-10 00:33:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c627f074-b45e-4f5f-aa3c-c4e75c6c8fae', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-24 00:00:00', 1500.00, 0.00, 0.00, 1500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:33', '2025-12-30 18:19:33', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c63aac5f-8e30-454d-b9c9-a92dbb6f9e89', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', '4f95bc96-08b8-4aad-9f1a-b88a0b211f33', '2026-01-02 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '08cae6ca-1bda-42e0-8cee-bdb28d071529', '2026-01-02 22:15:09', '2026-01-02 22:15:09', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c684f740-f540-499b-a570-e1ca18e5c9a6', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-30 00:00:00', 1490.00, 0.00, 0.00, 1490.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 16:50:13', '2025-12-31 06:12:58', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c6dc3d06-88c8-43ac-b2a9-c20773390ac8', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-29 00:00:00', 15.00, 700.00, 0.00, 710.00, 710.00, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 22:15:57', '2025-12-31 04:46:05', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c760587f-626b-486b-9c19-ebd415b05515', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-14 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:23', '2025-12-31 06:14:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c7a042af-ce8d-4e11-9b02-8471145c8cfe', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-11 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:04', '2025-12-31 06:13:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c7a2bd83-d466-424b-97f6-6c4caab717e0', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-06 00:00:00', 450.00, 0.00, 0.00, 450.00, NULL, 0.00, 0.00, NULL, '2026-01-07 07:56:34', '2026-01-07 08:00:09', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('c9b2bd86-3d52-4830-8a9d-879eb4be3f85', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-29 00:00:00', 22250.00, 0.00, 450.00, 21800.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 22:17:25', '2025-12-31 06:14:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('cb84732e-6bbd-4486-b21e-3002bf1cb683', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-09 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:24', '2025-12-31 06:10:44', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('cbbcd454-ea0a-4c20-ab5e-43415cfaa7d6', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-24 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:45', '2025-12-31 04:39:45', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('cf50a6d0-4897-4f66-b654-83944f01eb43', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-06 00:00:00', 3500.00, 0.00, 1300.00, 2150.00, NULL, 0.00, 0.00, NULL, '2026-01-07 10:47:38', '2026-01-10 00:32:54', 0.00, 0.00, 0.00, 0.00, 0.00, 50.00, 0.00, 0.00, 0.00),
('d0bbcac6-e12f-4b9c-8ae2-260c399766ff', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-22 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:40', '2025-12-31 04:39:40', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d0f85ea1-c639-47e5-9ba6-4d4dee8e30d7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-29 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:35', '2025-12-31 06:14:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d2062a4e-e463-4409-9975-e24ffdfe3c3d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-03 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:49', '2025-12-31 06:08:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d2314ebf-bc4c-4d4a-981b-37187e29c0e5', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-03 00:00:00', 3500.00, 0.00, 0.00, 3500.00, NULL, 0.00, 0.00, NULL, '2026-01-07 10:47:38', '2026-01-07 10:47:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d2aa7070-2efb-4a3c-8c92-8c4fc6cf6ce5', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-04 00:00:00', 150.00, 0.00, 0.00, 150.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:09:30', '2025-12-31 05:16:58', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d413907a-002a-4fe8-8fa8-5aee4268d7c7', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', '1f50d65e-4c16-4e37-93de-a6cdf0b73cf7', '2025-12-27 00:00:00', 15.00, 0.00, 0.00, 15.00, NULL, 0.00, 1000.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 13:03:18', '2025-12-29 13:11:26', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d421b94c-56e3-4c99-b8f1-34e57c112b4a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-26 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:55', '2025-12-31 04:39:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d579a6dd-c0e2-42ce-a507-4d6b20a87ccb', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-18 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:47', '2025-12-31 06:14:21', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d57b5f57-c996-4ad3-ae7d-4d8aef51939b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-04 00:00:00', 500.00, 0.00, 0.00, 500.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:56', '2025-12-30 18:16:56', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d5eece2d-15a7-433a-a388-a917f269b8ff', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-13 00:00:00', 21000.00, 0.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:17', '2025-12-31 06:14:07', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d76d9216-5aae-4645-ad5e-91583d12fa37', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-16 00:00:00', 7500.00, 0.00, 0.00, 7500.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:35', '2025-12-31 06:42:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d8cec224-c47b-4ad9-afb0-bc6ffbb802a2', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-03 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:53', '2025-12-31 05:08:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d9cf5cb0-b990-436c-819c-21cc232bee2e', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-30 00:00:00', 21800.00, 0.00, 0.00, 21800.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 16:50:13', '2025-12-31 06:14:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('d9d29a06-34c0-4dc2-aa53-af54253ec51f', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-19 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:53', '2025-12-31 06:14:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('daf3ebf9-2cde-49be-a327-c56953f7cbd3', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-01 00:00:00', 0.00, 1000.00, 0.00, 1000.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:36', '2025-12-31 06:42:36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('db0f9ffb-ae75-49de-89a0-a461b58f7f84', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', 'a09560f4-54bc-4640-9efa-295f4b665032', '2026-01-06 00:00:00', 0.00, 500.00, 0.00, 500.00, 450.00, -50.00, 0.00, NULL, '2026-01-09 19:57:54', '2026-01-09 19:58:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('dbf9da0b-95e3-4b26-8716-a1486d8d5a04', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-23 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:28', '2025-12-31 06:14:51', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('dc29bd0d-f035-4b3f-b804-eb2800157eb9', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-15 00:00:00', 5000.00, 2500.00, 0.00, 7500.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:27', '2025-12-31 06:42:28', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('dc4b220e-711a-4d82-8638-5c2f357631e4', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-04 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:56', '2025-12-31 06:01:56', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('dd3d932d-4fc8-4400-b3e7-195dd943aa3f', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-02 00:00:00', 1000.00, 20000.00, 0.00, 21000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:45', '2025-12-31 06:07:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('ddb79639-b556-48c6-8501-aa39db9c6efd', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-21 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:17', '2025-12-31 04:39:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('de554741-a534-4400-a82c-e6ab20eeae37', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-12 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:11', '2025-12-31 06:13:57', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('de8efc0a-cd89-479b-9196-de020b0d1729', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2026-01-01 00:00:00', 10.00, 0.00, 0.00, 10.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 01:10:54', '2026-01-01 01:10:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('df47753f-3c6a-4adf-a657-c19944b6f2b0', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-26 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:50', '2025-12-31 06:14:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('dfd3d416-5ab4-4567-8885-99ff1476690e', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-14 00:00:00', 800.00, 0.00, 0.00, 800.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:23', '2025-12-30 18:18:23', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('e0619292-f721-4d1d-b772-871f9137083c', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', '097eadbb-cad3-4ef9-aab3-21ac8d02e143', '2026-01-07 00:00:00', 2150.00, 0.00, 300.00, 1850.00, NULL, 0.00, 0.00, NULL, '2026-01-07 10:47:38', '2026-01-10 00:32:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('e34858c2-49a6-4b5d-8d82-4c34595643ce', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-31 00:00:00', 2650.00, 200.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:12:16', '2025-12-31 19:46:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('e364e917-406d-43e0-ac3a-d4e9de90cc9b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-01 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:27', '2025-12-31 04:56:34', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('e4fa62f3-4e11-40bf-a3b0-77cad90a4217', '0d947773-28ee-4e02-b5b6-40455566817d', '0f33a311-9974-4c6d-bd95-8f3ebf172282', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-08 00:00:00', 700.00, 100.00, 0.00, 796.00, 755.00, -46.00, 0.00, NULL, '2026-01-09 09:45:52', '2026-01-10 10:03:30', 0.00, 1.00, 0.00, 0.00, 2.00, 2.00, 1.00, 0.00, 0.00),
('e5d5de67-4b1b-4809-882c-5b339815a6de', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-05 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:01', '2025-12-31 06:10:27', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('e7db07af-d897-415b-b5ae-b4c637f35fa5', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', '4aecd215-ec9e-402d-bc48-1ebc6f79dfc3', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-04 00:00:00', 300.00, 0.00, 0.00, 300.00, NULL, 0.00, 0.00, NULL, '2026-01-07 07:39:33', '2026-01-07 07:45:25', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('e8bb32e9-9c2b-43f6-93de-ca96fa6b306e', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-18 00:00:00', 7500.00, 0.00, 0.00, 7500.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:47', '2025-12-31 06:43:14', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('e8c25570-6899-404a-9c3c-e503e0d0c84d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-04 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:16:56', '2025-12-31 06:10:18', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('e9d3c1aa-11a1-4747-b8ef-b3c1c7dc209a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-29 00:00:00', 1490.00, 0.00, 0.00, 1490.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:20:35', '2025-12-31 06:12:57', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('ed04ce13-b53a-4edb-ac57-ba37c7dba85d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-28 00:00:00', 21800.00, 450.00, 0.00, 22250.00, NULL, NULL, 600.00, NULL, '2025-12-29 21:55:01', '2025-12-31 06:14:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('eea22af9-6169-41af-abc3-6b5f50115992', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-28 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:22:41', '2025-12-30 18:31:19', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('ef226cb3-5087-43a0-909e-6b55a45811c9', '0d947773-28ee-4e02-b5b6-40455566817d', '1e134a24-908d-4535-8443-28fa83f30a6a', '2329f86b-aabd-4aac-b4f2-8e572f51588b', '2026-01-08 00:00:00', 1000.00, 0.00, 0.00, 1000.00, NULL, 0.00, 0.00, NULL, '2026-01-08 21:00:12', '2026-01-08 21:01:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('ef4c5a7f-00ad-40d8-94aa-7417d0b2180b', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', '2a1eaab7-56a8-40d9-8fc3-d379beec67b2', '2026-01-10 00:00:00', 941.00, 0.00, 0.00, 941.00, NULL, 0.00, 0.00, NULL, '2026-01-10 09:46:30', '2026-01-10 09:52:58', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('ef9eac47-2fef-4700-8279-78ff79a5661d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-19 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:53', '2025-12-31 06:14:24', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f0008dda-b80d-45c5-ba32-f2c8a16693b1', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-20 00:00:00', 150.00, 0.00, 0.00, 150.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 06:14:38', '2025-12-31 06:14:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f0b99da0-d216-4bb0-8508-3d38cc1d4869', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-29 00:00:00', 5000.00, 700.00, 700.00, 5000.00, NULL, NULL, 600.00, NULL, '2025-12-29 21:56:26', '2025-12-31 06:14:55', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f0e07c93-2491-4277-b7e6-64a67883f2e0', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-29 00:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 21:17:44', '2025-12-30 21:20:18', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f0f3ccf3-fa6c-4d37-8e4f-2674e96ecbf0', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-06 00:00:00', 5000.00, 0.00, 0.00, 5000.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:17:06', '2025-12-31 06:10:36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f2ecd999-f06e-484b-ac27-034d61fc8677', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-04 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:59', '2025-12-31 05:08:59', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f354c465-cdf1-44ce-a6a5-6295103d138a', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-06 00:00:00', 500.00, 300.00, 0.00, 800.00, NULL, NULL, 400.00, NULL, '2025-12-30 18:16:10', '2025-12-30 18:17:06', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f3e80a35-9be4-4af6-9e92-ef675bab5a48', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'fd666e2e-2de8-4b34-8687-9d45c75a85c3', '4f95bc96-08b8-4aad-9f1a-b88a0b211f33', '2025-12-28 00:00:00', 0.00, 80.00, 0.00, 80.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 16:05:50', '2025-12-29 16:05:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f3ebe180-1208-4b64-b05b-0d30d40a4a3b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'd3a42547-ff64-4772-923c-4a8a112f6be9', '2025-12-16 00:00:00', 2850.00, 0.00, 0.00, 2850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:35', '2025-12-31 06:14:17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f50dee68-61e8-46ad-8beb-a2611b5bdeed', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-25 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:48', '2025-12-31 04:39:48', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f50e4c42-599a-4d2a-ae11-094f2b6e94d1', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-04 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 05:08:59', '2025-12-31 05:08:59', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f609d282-9dd1-4156-90a7-f2cb903de665', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-20 00:00:00', 1200.00, 300.00, 0.00, 1500.00, NULL, NULL, 400.00, NULL, '2025-12-30 13:59:10', '2025-12-31 04:33:30', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f61293c7-d59a-47b6-a8d8-6edd0df0fea2', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2025-12-31 00:00:00', 5003.00, 0.00, 0.00, 5003.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:12:16', '2025-12-31 19:46:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f6406f14-032f-478c-aa99-15713d530056', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-23 00:00:00', 21500.00, 0.00, 0.00, 21500.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:28', '2025-12-31 06:14:51', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f6bba5b4-cfbd-4fc1-a0b0-a57c0c52c3d0', '0d947773-28ee-4e02-b5b6-40455566817d', 'e885756b-2d5d-4844-91ed-eeff5e2b5ae3', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', '2026-01-08 00:00:00', 510.00, 0.00, 20.00, 535.00, NULL, 0.00, 0.00, NULL, '2026-01-08 02:17:27', '2026-01-08 20:56:24', 0.00, 0.00, 0.00, 0.00, 5.00, 0.00, 0.00, 0.00, 50.00),
('f730b72f-f341-450b-8c8b-0a11c4a77da7', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-23 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:41', '2025-12-31 04:39:41', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('f863b6b1-91d5-4da7-9917-ba1d2f200741', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', '3315d410-2302-4ff8-8a38-6af5f1bee4ee', '2025-12-22 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:39:40', '2025-12-31 04:39:40', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('fa1f2de2-0c5e-4bb8-b168-d713b116a493', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'b30e98ff-9e99-4f22-b814-cd976d2c9c71', 'e55abe0b-52ac-487b-9a47-3a83ee61a95d', '2026-01-01 00:00:00', 697.00, 0.00, 0.00, 697.00, NULL, 0.00, 600.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 01:10:54', '2026-01-01 01:10:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('fa9f2ea1-51fd-4466-8b99-dc21561ad271', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-01 00:00:00', 0.00, 1000.00, 0.00, 1000.00, NULL, 0.00, 0.00, NULL, '2026-01-07 07:10:52', '2026-01-07 07:10:52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('fb8d156c-e946-45e5-b688-2465d550c109', '0d947773-28ee-4e02-b5b6-40455566817d', '1e134a24-908d-4535-8443-28fa83f30a6a', 'f3b1dfbb-98df-4a52-ab1e-617c8e915a4c', '2026-01-08 00:00:00', 180.00, 20.00, 0.00, 210.00, 450.00, 240.00, 0.00, NULL, '2026-01-08 02:03:51', '2026-01-08 20:57:31', 0.00, 0.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('fc3081fe-b27e-4371-808c-025e1006c729', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-10 00:00:00', 11850.00, 0.00, 0.00, 11850.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:18:00', '2025-12-31 06:10:46', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('fc3832ff-1c31-4a11-a53e-0df550a9ef91', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', '2ce2d797-64c0-48a4-9e3b-03fd62786195', '4f95bc96-08b8-4aad-9f1a-b88a0b211f33', '2026-01-01 00:00:00', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-01-01 01:23:24', '2026-01-01 06:29:56', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('fd4157b2-0e54-4ab3-b276-ffb32d18e2a4', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'f3129970-a2fc-4d98-9f25-70598db1a740', 'a8606352-f7d1-40e6-8500-8ffcbcc12924', '2026-01-07 00:00:00', 450.00, 100.00, 700.00, 250.00, NULL, 0.00, 500.00, NULL, '2026-01-07 07:56:34', '2026-01-09 10:52:07', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 31.00),
('fd50f344-27e3-4d8e-ae42-b01227f24efa', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '2f64a260-d98d-40cc-bd44-346f94737415', '2025-12-22 00:00:00', 2650.00, 0.00, 0.00, 2650.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-30 18:19:21', '2025-12-31 06:14:50', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('fdd7b60f-3d12-42a9-8273-4744ed8b064d', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'c47d93b1-4801-445b-a77e-8362ebb25442', '0685f443-471a-4a34-927e-f5e41fbeb2d3', '2025-12-20 00:00:00', 150.00, 0.00, 0.00, 150.00, NULL, 0.00, 500.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 06:14:38', '2025-12-31 06:14:38', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('ff6ed808-cf70-4d73-87db-2c1c7e1be66c', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', '43d27fe4-d8e1-4319-9f6b-7657ce33be4a', '29070060-0461-41bc-afaa-d58281cef2bb', '2025-12-31 00:00:00', 1490.00, 0.00, 0.00, 1490.00, NULL, 0.00, 400.00, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-31 04:12:16', '2025-12-31 19:46:35', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` varchar(36) NOT NULL,
  `plan_name` longtext NOT NULL DEFAULT 'starter',
  `billing_period` longtext NOT NULL DEFAULT 'monthly',
  `slots_purchased` int(11) NOT NULL DEFAULT 1,
  `status` longtext NOT NULL DEFAULT 'trial',
  `start_date` datetime NOT NULL DEFAULT current_timestamp(),
  `end_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `organization_id` varchar(36) NOT NULL,
  `provider` longtext DEFAULT 'manual',
  `next_billing_date` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `max_clients_override` int(11) DEFAULT NULL,
  `max_srd_departments_override` int(11) DEFAULT NULL,
  `max_main_store_override` int(11) DEFAULT NULL,
  `max_seats_override` int(11) DEFAULT NULL,
  `retention_days_override` int(11) DEFAULT NULL,
  `paystack_customer_code` longtext DEFAULT NULL,
  `paystack_subscription_code` longtext DEFAULT NULL,
  `paystack_plan_code` longtext DEFAULT NULL,
  `paystack_email_token` longtext DEFAULT NULL,
  `last_payment_date` datetime DEFAULT NULL,
  `last_payment_amount` decimal(12,2) DEFAULT NULL,
  `last_payment_reference` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `plan_name`, `billing_period`, `slots_purchased`, `status`, `start_date`, `end_date`, `created_at`, `updated_at`, `organization_id`, `provider`, `next_billing_date`, `expires_at`, `notes`, `updated_by`, `max_clients_override`, `max_srd_departments_override`, `max_main_store_override`, `max_seats_override`, `retention_days_override`, `paystack_customer_code`, `paystack_subscription_code`, `paystack_plan_code`, `paystack_email_token`, `last_payment_date`, `last_payment_amount`, `last_payment_reference`) VALUES
('08511ffc-3d88-459f-9024-a497957f91fd', 'starter', 'monthly', 1, 'trial', '2026-01-02 01:33:30', NULL, '2026-01-02 01:33:30', '2026-01-02 01:33:30', '62b4d151-7e74-4012-84fd-d44acedfb8d5', 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0e1efd17-23d7-4127-9663-e49ac0817803', 'starter', 'monthly', 1, 'trial', '2026-02-09 02:20:32', NULL, '2026-02-09 03:20:32', '2026-02-09 03:20:32', 'e9cda146-1933-4a59-82a5-07a9f183928a', 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('3a8c498a-9cc9-44b5-ac61-05ffc94fe8c4', 'starter', 'monthly', 1, 'trial', '2026-02-01 18:17:32', NULL, '2026-02-01 19:17:32', '2026-02-01 19:17:32', '88cc42f9-116f-409b-8af2-0fb09b0d455d', 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('3d09f425-afc0-4cf6-aac2-f5d53fddb12a', 'starter', 'monthly', 1, 'trial', '2026-01-05 04:20:46', NULL, '2026-01-05 04:20:46', '2026-01-05 04:20:46', '81586752-9ad1-4ba7-92e0-2021626f9412', 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('4a2982d1-6634-48da-ab7f-c7a2300e02a7', 'starter', 'monthly', 1, 'trial', '2026-01-01 21:26:05', NULL, '2026-01-01 21:26:05', '2026-01-01 21:26:05', 'd18379c6-217e-4d60-8705-a5cae16986b0', 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('539b3812-6cf4-47f3-82c0-5c7755f4b349', 'starter', 'monthly', 1, 'trial', '2026-01-01 22:10:25', NULL, '2026-01-01 22:10:25', '2026-01-01 22:10:25', '9f06a02a-93b2-4044-9f37-b174f537e82a', 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('725c8604-fcf9-4a52-a59b-d54492af5e2d', 'starter', 'monthly', 1, 'trial', '2026-01-01 21:29:56', NULL, '2026-01-01 21:29:55', '2026-01-01 21:29:55', '9696e18f-d53b-45cf-adae-616376d18ad2', 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('91eba1d5-c7b4-4b6a-accc-ec45382ab2b0', 'starter', 'monthly', 1, 'trial', '2026-01-01 19:29:22', NULL, '2026-01-01 19:29:22', '2026-01-01 19:29:22', '597b39e0-c81b-4465-8b07-0f70ce9cb0a6', 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('e97c643b-c6bc-4cbc-8f9a-5af033f09986', 'starter', 'monthly', 1, 'trial', '2026-01-01 21:27:06', NULL, '2026-01-01 21:27:06', '2026-01-01 21:27:06', 'ee24b79f-7e0a-48bc-9642-d2d9603a36ab', 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ed19e4ef-d25c-48f6-bb15-763d827aa247', 'enterprise', 'yearly', 1, 'active', '2026-01-03 03:56:22', NULL, '2026-01-03 03:56:22', '2026-01-25 21:10:31', 'd09a34a2-4e1d-4048-be05-faa10238aae7', 'manual', NULL, NULL, '', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('f129ca8c-5574-4cf4-a19d-baaf720c036c', 'starter', 'monthly', 1, 'active', '2026-01-07 10:50:43', NULL, '2026-01-07 10:50:43', '2026-01-10 09:41:43', '4144bb32-2cbb-46df-a2e7-ef96f9acebab', 'manual_free', NULL, '2026-01-11 00:00:00', 'Free access granted by platform admin', 'a32b98c5-cb4e-4c57-8637-f54baf9e74f6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` varchar(36) NOT NULL,
  `slug` longtext NOT NULL,
  `display_name` longtext NOT NULL,
  `description` longtext DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `monthly_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `quarterly_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `yearly_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `currency` longtext NOT NULL DEFAULT 'NGN',
  `max_clients` int(11) NOT NULL DEFAULT 1,
  `max_srd_departments_per_client` int(11) NOT NULL DEFAULT 4,
  `max_main_store_per_client` int(11) NOT NULL DEFAULT 1,
  `max_seats` int(11) NOT NULL DEFAULT 2,
  `retention_days` int(11) NOT NULL DEFAULT 30,
  `can_view_reports` tinyint(1) NOT NULL DEFAULT 1,
  `can_download_reports` tinyint(1) NOT NULL DEFAULT 0,
  `can_print_reports` tinyint(1) NOT NULL DEFAULT 0,
  `can_access_purchases_register_page` tinyint(1) NOT NULL DEFAULT 0,
  `can_access_second_hit_page` tinyint(1) NOT NULL DEFAULT 0,
  `can_download_second_hit_full_table` tinyint(1) NOT NULL DEFAULT 0,
  `can_download_main_store_ledger_summary` tinyint(1) NOT NULL DEFAULT 0,
  `can_use_beta_features` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`id`, `slug`, `display_name`, `description`, `is_active`, `sort_order`, `monthly_price`, `quarterly_price`, `yearly_price`, `currency`, `max_clients`, `max_srd_departments_per_client`, `max_main_store_per_client`, `max_seats`, `retention_days`, `can_view_reports`, `can_download_reports`, `can_print_reports`, `can_access_purchases_register_page`, `can_access_second_hit_page`, `can_download_second_hit_full_table`, `can_download_main_store_ledger_summary`, `can_use_beta_features`, `created_at`, `updated_at`) VALUES
('0021adbe-a63b-48ef-bd9b-8be125d2e378', 'starter', 'Starter', 'Perfect for small businesses getting started', 1, 1, 1000.00, 40500.00, 144000.00, 'NGN', 1, 4, 1, 2, 90, 1, 1, 0, 0, 0, 0, 0, 0, '2026-01-10 05:32:40', '2026-01-10 09:38:12'),
('0530cbfb-93c2-487e-9d01-06ead113d8ed', 'business', 'Business', 'Full-featured for established businesses', 1, 3, 75000.00, 202500.00, 720000.00, 'NGN', 5, 12, 1, 12, 365, 1, 1, 1, 1, 1, 1, 1, 0, '2026-01-10 05:32:40', '2026-01-10 05:32:40'),
('2654d29e-d5a8-4bd1-bf5a-14374f3da8be', 'growth', 'Growth', 'For growing businesses with more needs', 1, 2, 35000.00, 94500.00, 336000.00, 'NGN', 3, 7, 1, 5, 180, 1, 1, 1, 1, 0, 0, 0, 0, '2026-01-10 05:32:40', '2026-01-10 05:57:56'),
('a14ced71-e1d2-4b80-b72a-8696fe6609e6', 'enterprise', 'Enterprise', 'Custom solutions with dedicated support', 1, 4, 150000.00, 405000.00, 1440000.00, 'NGN', 10, 999, 1, 999, 9999, 1, 1, 1, 1, 1, 1, 1, 1, '2026-01-10 05:32:40', '2026-01-10 05:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `name` longtext NOT NULL,
  `contact_person` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `status` longtext NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `client_id`, `name`, `contact_person`, `phone`, `email`, `address`, `status`, `created_at`) VALUES
('2de7ad8b-1394-4cc1-93a4-947f38c88c77', '0d947773-28ee-4e02-b5b6-40455566817d', 'Edmond Global resources Ltd', 'Ighodaro Nosa Ogiemwanye', '09037162950', 'openclax@gmail.com', '8 Herald Of Christ Close', 'active', '2026-01-07 14:52:06'),
('367823f0-2197-40bd-9bc9-1847d653f8b0', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'Edmond son ltd', 'Ighodaro ', '09037162950', NULL, '8 Herald Of Christ Close', 'active', '2026-01-05 15:40:10'),
('3b37bf2b-9563-456a-950b-a2453c851f3a', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'Edmond Global resources Ltd', 'Unknown', NULL, NULL, NULL, 'active', '2025-12-28 04:45:35'),
('b0873ae9-c584-4b20-b2bd-3010b8aee970', 'a792ef92-476b-43f7-b754-bb201bc67713', 'NLM Ltd', 'Chinasa Ebube', '+23487899967', 'ajjulius7@gmail.com', '1154 Ugbowo Lagos road, Benin city, Edo state', 'active', '2026-02-01 20:05:17'),
('bd9a5a84-6231-4101-900a-f5fa11af393b', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'Samson Enterprise', 'Samuel Samson', '09037162', NULL, '23', 'active', '2025-12-29 22:26:46'),
('ea1b27ba-f514-4963-8f6a-21c43afd4a60', 'fb428d91-bacb-44ed-b4cd-310c87c5a8de', 'John drink store', 'favour Esohan', '09037162', NULL, '8 Herald Of Christ Close', 'active', '2025-12-27 09:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `surpluses`
--

CREATE TABLE `surpluses` (
  `id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `department_id` varchar(36) NOT NULL,
  `audit_date` datetime NOT NULL,
  `surplus_amount` decimal(12,2) NOT NULL,
  `status` longtext NOT NULL DEFAULT 'open',
  `classification` longtext DEFAULT NULL,
  `comments` longtext DEFAULT NULL,
  `evidence_url` longtext DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surpluses`
--

INSERT INTO `surpluses` (`id`, `client_id`, `department_id`, `audit_date`, `surplus_amount`, `status`, `classification`, `comments`, `evidence_url`, `created_by`, `created_at`, `updated_at`) VALUES
('43c9b6ae-4b92-46e0-843f-9cb84dad0eac', '30dbc5bb-60c2-4a73-bcc1-f18b8ca7189c', 'f0dd0739-ff38-4819-b311-c6c9992bd79d', '2025-12-30 00:00:00', 1000.00, 'open', NULL, 'tips', NULL, '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 23:53:31', '2025-12-29 23:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `surplus_history`
--

CREATE TABLE `surplus_history` (
  `id` varchar(36) NOT NULL,
  `surplus_id` varchar(36) NOT NULL,
  `action` longtext NOT NULL,
  `previous_status` longtext DEFAULT NULL,
  `new_status` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surplus_history`
--

INSERT INTO `surplus_history` (`id`, `surplus_id`, `action`, `previous_status`, `new_status`, `notes`, `created_by`, `created_at`) VALUES
('31646940-5fc3-4169-bb5b-fa6203336c29', '43c9b6ae-4b92-46e0-843f-9cb84dad0eac', 'created', NULL, 'open', 'Initial surplus logged', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2025-12-29 23:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` varchar(36) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `username` longtext NOT NULL,
  `password` longtext NOT NULL,
  `full_name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `role` longtext NOT NULL DEFAULT 'auditor',
  `phone` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` longtext NOT NULL DEFAULT 'active',
  `must_change_password` tinyint(1) DEFAULT 0,
  `password_reset_token` longtext DEFAULT NULL,
  `password_reset_expiry` datetime DEFAULT NULL,
  `login_attempts` int(11) DEFAULT 0,
  `locked_until` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `access_scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`access_scope`)),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `organization_id` varchar(36) DEFAULT NULL,
  `organization_role` longtext DEFAULT 'member',
  `email_verified` tinyint(1) DEFAULT 0,
  `verification_token` longtext DEFAULT NULL,
  `verification_expiry` datetime DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT 0,
  `locked_reason` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `email`, `role`, `phone`, `created_at`, `status`, `must_change_password`, `password_reset_token`, `password_reset_expiry`, `login_attempts`, `locked_until`, `last_login_at`, `access_scope`, `updated_at`, `organization_id`, `organization_role`, `email_verified`, `verification_token`, `verification_expiry`, `is_locked`, `locked_reason`) VALUES
('08cae6ca-1bda-42e0-8cee-bdb28d071529', 'algadginternationalltd@gmail.com', '$2b$12$2j4mve2Q2Jzgu8VFj2kDsO/tzGZWvqshaNZp1z94Eh0Ud1HMPLy.e', 'Ighodaro Nosa Ogiemwanye', 'algadginternationalltd@gmail.com', 'super_admin', NULL, '2026-01-02 01:33:30', 'active', 0, '35917b181f4b053dd582bc0173ac422029db55332413ccc72eb8f96c35d9d5e3', '2026-01-10 11:14:25', 0, NULL, '2026-01-03 03:54:11', '{\"global\": true}', '2026-01-10 10:14:25', '62b4d151-7e74-4012-84fd-d44acedfb8d5', 'owner', 1, NULL, NULL, 0, NULL),
('0ff460ab-5b96-4b2d-b85f-d04c54faf25f', 'demo_user', '$2b$12$jR6CiAokA9t8OTllsmEfieHxKni7P0P6.bqKNqgxq.xo8Q4KQ.BAi', 'Demo User', 'demo@miauditops.com', 'super_admin', NULL, '2026-01-05 04:20:46', 'inactive', 0, NULL, NULL, 0, NULL, '2026-02-08 21:50:15', '{\"global\": true}', '2026-02-08 21:50:15', '81586752-9ad1-4ba7-92e0-2021626f9412', 'owner', 1, NULL, NULL, 1, 'sd'),
('27debef5-907c-463a-97e8-c70cd012dfd7', 'newtest123@gmail.com', '$2b$12$1bUbdXswfwAHfiewmOzLcep466oyZkdnag507a6L08DZG1iqwEhSe', 'New Test User', 'newtest123@gmail.com', 'super_admin', NULL, '2026-01-01 22:10:25', 'inactive', 0, '21c1be132d441937beeb07e3d7d1e5bb72d48f1351ef94c754eec048d0315212', '2026-01-10 06:04:42', 0, NULL, NULL, '{\"global\": true}', '2026-01-10 05:04:42', '9f06a02a-93b2-4044-9f37-b174f537e82a', 'owner', 0, '63b923e652125e08bfdb1057bf2272ec6455d97b062cd046a741bba3e01d5f5f', '2026-01-11 05:04:37', 1, 'h'),
('49650644-8e70-488e-8597-16cb4254d906', 'testuser4', '$2b$12$OoJiH05O9LvV5hNH1zhTs.Ot4p24p./juJe8Ikl3Ep0tv8yfH6T2i', 'Test User 4', 'test4@example.com', 'super_admin', NULL, '2026-01-01 21:27:06', 'active', 0, NULL, NULL, 0, NULL, NULL, '{\"global\": true}', '2026-01-01 21:27:06', 'ee24b79f-7e0a-48bc-9642-d2d9603a36ab', 'owner', 0, '3d47b271edc774e6564b4c985a3acd2a956a7354f538d337047fadedeaf6bbc7', '2026-01-02 21:27:06', 0, NULL),
('5ed0ccee-d55a-4700-b092-efa7e84a1907', 'miemploya@gmail.com', '$2b$12$QvRxAGTQxTrInk5ONpRfNegiuZClgPxiyqgJmcAhPdn0wc3BRmEEe', 'Ighodaro Nosa Ogiemwanye', 'miemploya@gmail.com', 'super_admin', NULL, '2025-12-26 07:40:10', 'active', 0, '7fdff439433329ebaf531edfc833546f095c37ccdac8a6083e19de7a77eef6c7', '2026-01-05 06:55:01', 0, NULL, '2026-02-09 00:45:18', '{\"global\": true}', '2026-02-09 00:45:18', 'd09a34a2-4e1d-4048-be05-faa10238aae7', 'member', 1, NULL, NULL, 0, NULL),
('63ab12e8-e632-4c1a-919e-056eaf8cfe8a', 'auditor', '$2b$10$cGxYxu7RfMV70jgIe6lvme8RPe.TWiVq.WeODlfVxBZKk8Z21lfHe', 'Demo Auditor', 'auditor@miemploya.com', 'auditor', '+234 800 000 0000', '2025-12-26 08:34:06', 'active', 0, NULL, NULL, 0, NULL, NULL, NULL, '2025-12-26 08:34:06', NULL, 'member', 0, NULL, NULL, 0, NULL),
('6419147a-44c1-4f3c-bbcb-51a46a91d1be', 'openclax@gmail.com', '$2b$12$P9IvJ.llJg/jb/BKlOJQR.nMFiSc.ttnqUV6LQdOTIDvAAo5zD6v.', 'Ighodaro Nosa Ogiemwanye', 'openclax@gmail.com', 'super_admin', NULL, '2026-01-03 03:56:22', 'active', 0, NULL, NULL, 0, NULL, '2026-01-12 14:00:27', '{\"global\": true}', '2026-01-12 14:00:27', 'd09a34a2-4e1d-4048-be05-faa10238aae7', 'owner', 1, NULL, NULL, 0, NULL),
('7e0fef88-1873-4099-bc02-ade3309d4817', 'testuser3', '$2b$12$JcFjAfLNpn.VoeOIA7rjqeG.zKotkLt1/ti95gPkuRsw6Jziag5lO', 'Test User 3', 'test3@example.com', 'super_admin', NULL, '2026-01-01 21:26:05', 'active', 0, NULL, NULL, 0, NULL, NULL, '{\"global\": true}', '2026-01-01 21:26:05', 'd18379c6-217e-4d60-8705-a5cae16986b0', 'owner', 0, '053dd4744c9d6a6fcb2e538a9f8b80801a113f4a3324e7b5ffbb589fd3bb2f21', '2026-01-02 21:26:05', 0, NULL),
('80486214-2b01-4950-b6b6-fac9a54c43cc', 'zuxabotics@gmail.com', '$2b$12$MdTT2PZ7JZOCZM/2TpOk.ONXbxa9kIMKT/6EZWGjOqehp56m3rSQa', 'Jason Derulo', 'zuxabotics@gmail.com', 'super_admin', NULL, '2026-02-01 19:17:32', 'active', 0, NULL, NULL, 0, NULL, '2026-02-08 21:24:12', '{\"global\":true}', '2026-02-08 21:24:12', '88cc42f9-116f-409b-8af2-0fb09b0d455d', 'owner', 1, 'a45754e4da452f4985677aaa780c009ab7ac6da2eadf291f17137668778dfd22', '2026-02-02 18:17:32', 0, NULL),
('899f389d-bfb9-4dca-9342-ecea47bee9ee', 'AdminTrial', '$2b$12$rECd1otDF62IbvDb0FpzceYPB0ox0DNEY7H7ea9Ki6.VlX0p363ca', 'Aisosa Julius', 'ajjulius3@gmail.com', 'auditor', NULL, '2026-02-02 00:58:14', 'active', 0, NULL, NULL, 0, NULL, '2026-02-09 00:52:00', '{\"global\":false}', '2026-02-09 00:52:00', '88cc42f9-116f-409b-8af2-0fb09b0d455d', 'member', 1, NULL, NULL, 0, NULL),
('a62196b8-c91c-465d-9f3d-35e82bb6d0d2', 'ighodaro.efeandassociates@gmail.com', '$2b$12$sgUQxI4rTOyfKpuO/uhF0O9LJ7os0v9Nsr.oK6hjinJJIROKdFIw2', 'Ighodaro Nosa Ogiemwanye', 'ighodaro.efeandassociates@gmail.com', 'super_admin', NULL, '2026-01-07 10:50:43', 'active', 0, '9058cedd8b5aaf50c9195f23bf4d1aa05e68c56011c148f8837ae77447df8fec', '2026-01-10 06:03:57', 0, NULL, '2026-01-10 09:36:13', '{\"global\": true}', '2026-01-10 09:36:13', '4144bb32-2cbb-46df-a2e7-ef96f9acebab', 'owner', 1, NULL, NULL, 0, NULL),
('cee5f6ef-9c3e-4103-a2a0-1c44d621293d', 'zuxajay@gmail.com', '$2b$12$BE6O.jNucMETki7lowqvGOtHAuC0.fBMxu79kSNrK4ucqs/pPgGIm', 'Fidelis Jay', 'zuxajay@gmail.com', 'super_admin', NULL, '2026-02-09 03:20:32', 'active', 0, NULL, NULL, 0, NULL, NULL, '{\"global\":true}', '2026-02-09 02:26:38', 'e9cda146-1933-4a59-82a5-07a9f183928a', 'owner', 0, '38d04bb9a547e16eb3d842f9b4ead4a4ae9ce47a91a191eda19ade656bca536f', '2026-02-10 02:26:38', 0, NULL),
('d4d4bbe7-b72b-4349-ba5b-ccdcad87dd4e', 'testuser5', '$2b$12$McVHGfbz0Av7Rkqj5adZCOS4O7wKOKZd/i/WgtJvYWCwtvFywGEO2', 'Test User 5', 'test5@example.com', 'super_admin', NULL, '2026-01-01 21:29:55', 'active', 0, NULL, NULL, 0, NULL, NULL, '{\"global\": true}', '2026-01-01 21:29:55', '9696e18f-d53b-45cf-adae-616376d18ad2', 'owner', 0, 'a728ee522ef1798906bd985201ce1bb62fa8ee79c4b1c460e3e25511a43f8b2f', '2026-01-02 21:29:55', 0, NULL),
('dbd700e5-b8d8-4ccf-8535-e67067f4804a', 'testuser2', '$2b$12$2NezLPffDpTY5F7s57tJuuHAqUzzC3hvTMPREYMM7KDd0vGvlsYia', 'Test User', 'test2@example.com', 'super_admin', NULL, '2026-01-01 19:29:22', 'active', 0, NULL, NULL, 0, NULL, NULL, '{\"global\": true}', '2026-01-01 19:29:22', '597b39e0-c81b-4465-8b07-0f70ce9cb0a6', 'owner', 0, 'c3cba1ebd3acf901270f0bd6fb8fa27a2a8fe75b014cf887888a8d9f965efcd8', '2026-01-02 19:29:22', 0, NULL),
('f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'john.doe', '$2b$12$wRRFTDFJ1aXbZPI.81y38O3OpVW943xPF9NtkMH4gsUuPPXj33wfi', 'Victory', 'ighodaro.algadg@gmail.com', 'auditor', NULL, '2025-12-30 12:24:37', 'active', 0, NULL, NULL, 4, NULL, '2026-01-01 22:13:34', '{\"global\": false}', '2026-02-08 23:01:16', NULL, 'member', 1, 'fdaa66db27af44db1ed2a6b3844a54e4b11f71cadd0f7ac9d8604cce659ccd24', '2026-01-02 21:49:45', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_client_access`
--

CREATE TABLE `user_client_access` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `status` longtext NOT NULL DEFAULT 'assigned',
  `assigned_by` varchar(255) NOT NULL,
  `assigned_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `suspend_reason` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_client_access`
--

INSERT INTO `user_client_access` (`id`, `user_id`, `client_id`, `status`, `assigned_by`, `assigned_at`, `updated_at`, `suspend_reason`, `notes`) VALUES
('a0f952dc-e909-4a22-83df-db5ffd70d007', '899f389d-bfb9-4dca-9342-ecea47bee9ee', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'assigned', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-02-08 23:36:00', '2026-02-08 23:03:41', NULL, NULL),
('c15bc427-e4d0-4a3f-98e7-d1a7c4c0f14e', '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', 'a792ef92-476b-43f7-b754-bb201bc67713', 'assigned', '80486214-2b01-4950-b6b6-fac9a54c43cc', '2026-02-01 22:58:03', '2026-02-01 22:58:03', NULL, 'Am just testing  the record '),
('c38438a5-04e2-46fd-94e4-024f84dccb5a', '63ab12e8-e632-4c1a-919e-056eaf8cfe8a', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'removed', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-02-09 00:03:30', '2026-02-08 23:03:35', NULL, NULL),
('f8bb54b3-0bd8-4e1e-873d-eadf982bc4ce', 'f39d9eec-1e73-4de3-8eb8-da6d7d2c2db4', 'd40fe583-f75d-4714-b3b5-9d83a9a332a9', 'removed', '5ed0ccee-d55a-4700-b092-efa7e84a1907', '2026-02-08 23:59:45', '2026-02-08 23:01:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `theme` longtext NOT NULL DEFAULT 'light',
  `auto_save_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `auto_save_interval_seconds` int(11) NOT NULL DEFAULT 60,
  `variance_threshold_percent` decimal(5,2) NOT NULL DEFAULT 5.00,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `email_notifications_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `exception_alerts_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `variance_alerts_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `daily_digest_enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`id`, `user_id`, `theme`, `auto_save_enabled`, `auto_save_interval_seconds`, `variance_threshold_percent`, `updated_at`, `email_notifications_enabled`, `exception_alerts_enabled`, `variance_alerts_enabled`, `daily_digest_enabled`) VALUES
('7d1c9447-c4f3-419c-8417-d4f5aea172d5', '5ed0ccee-d55a-4700-b092-efa7e84a1907', 'light', 1, 60, 5.00, '2026-01-12 14:06:32', 1, 1, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_change_log`
--
ALTER TABLE `audit_change_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_contexts`
--
ALTER TABLE `audit_contexts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_logs_created_at_idx` (`created_at`);

--
-- Indexes for table `audit_reissue_permissions`
--
ALTER TABLE `audit_reissue_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_exports`
--
ALTER TABLE `data_exports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exceptions`
--
ALTER TABLE `exceptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exception_activity`
--
ALTER TABLE `exception_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exception_comments`
--
ALTER TABLE `exception_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods_received_notes`
--
ALTER TABLE `goods_received_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_departments`
--
ALTER TABLE `inventory_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_department_categories`
--
ALTER TABLE `inventory_department_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_serial_events`
--
ALTER TABLE `item_serial_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_settings`
--
ALTER TABLE `organization_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_declarations`
--
ALTER TABLE `payment_declarations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_admin_audit_log`
--
ALTER TABLE `platform_admin_audit_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_admin_users`
--
ALTER TABLE `platform_admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_item_events`
--
ALTER TABLE `purchase_item_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receivables`
--
ALTER TABLE `receivables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receivable_history`
--
ALTER TABLE `receivable_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reconciliations`
--
ALTER TABLE `reconciliations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_entries`
--
ALTER TABLE `sales_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `srd_ledger_daily`
--
ALTER TABLE `srd_ledger_daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `srd_stock_movements`
--
ALTER TABLE `srd_stock_movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `srd_transfers`
--
ALTER TABLE `srd_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_movement_lines`
--
ALTER TABLE `stock_movement_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_issues`
--
ALTER TABLE `store_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_issue_lines`
--
ALTER TABLE `store_issue_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_names`
--
ALTER TABLE `store_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_stock`
--
ALTER TABLE `store_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surpluses`
--
ALTER TABLE `surpluses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surplus_history`
--
ALTER TABLE `surplus_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_client_access`
--
ALTER TABLE `user_client_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
