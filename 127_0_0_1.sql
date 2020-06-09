-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2020 at 07:11 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fattendance`
--
CREATE DATABASE IF NOT EXISTS `fattendance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fattendance`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add student', 1, 'add_student'),
(2, 'Can change student', 1, 'change_student'),
(3, 'Can delete student', 1, 'delete_student'),
(4, 'Can view student', 1, 'view_student'),
(5, 'Can add teacher', 2, 'add_teacher'),
(6, 'Can change teacher', 2, 'change_teacher'),
(7, 'Can delete teacher', 2, 'delete_teacher'),
(8, 'Can view teacher', 2, 'view_teacher'),
(9, 'Can add u image', 3, 'add_uimage'),
(10, 'Can change u image', 3, 'change_uimage'),
(11, 'Can delete u image', 3, 'delete_uimage'),
(12, 'Can view u image', 3, 'view_uimage'),
(13, 'Can add u video', 4, 'add_uvideo'),
(14, 'Can change u video', 4, 'change_uvideo'),
(15, 'Can delete u video', 4, 'delete_uvideo'),
(16, 'Can view u video', 4, 'view_uvideo'),
(17, 'Can add log entry', 5, 'add_logentry'),
(18, 'Can change log entry', 5, 'change_logentry'),
(19, 'Can delete log entry', 5, 'delete_logentry'),
(20, 'Can view log entry', 5, 'view_logentry'),
(21, 'Can add permission', 6, 'add_permission'),
(22, 'Can change permission', 6, 'change_permission'),
(23, 'Can delete permission', 6, 'delete_permission'),
(24, 'Can view permission', 6, 'view_permission'),
(25, 'Can add group', 7, 'add_group'),
(26, 'Can change group', 7, 'change_group'),
(27, 'Can delete group', 7, 'delete_group'),
(28, 'Can view group', 7, 'view_group'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add content type', 9, 'add_contenttype'),
(34, 'Can change content type', 9, 'change_contenttype'),
(35, 'Can delete content type', 9, 'delete_contenttype'),
(36, 'Can view content type', 9, 'view_contenttype'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session'),
(41, 'Can add uiv data', 11, 'add_uivdata'),
(42, 'Can change uiv data', 11, 'change_uivdata'),
(43, 'Can delete uiv data', 11, 'delete_uivdata'),
(44, 'Can view uiv data', 11, 'view_uivdata'),
(45, 'Can add ui data', 12, 'add_uidata'),
(46, 'Can change ui data', 12, 'change_uidata'),
(47, 'Can delete ui data', 12, 'delete_uidata'),
(48, 'Can view ui data', 12, 'view_uidata'),
(49, 'Can add uv data', 13, 'add_uvdata'),
(50, 'Can change uv data', 13, 'change_uvdata'),
(51, 'Can delete uv data', 13, 'delete_uvdata'),
(52, 'Can view uv data', 13, 'view_uvdata');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$vbsE0ik4dFOU$zLfyUGFt1HAhJaCBZ5JQz7qGAmLl4DMgrvLnxTx1c6A=', '2020-01-04 05:33:49.240185', 1, 'Sagar', '', '', '2017.sagar.sidhwa@ves.ac.in', 1, 1, '2020-01-04 05:33:10.353007');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-04 05:52:55.869133', '3', 'UImage object (3)', 1, '[{\"added\": {}}]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(5, 'admin', 'logentry'),
(7, 'auth', 'group'),
(6, 'auth', 'permission'),
(8, 'auth', 'user'),
(9, 'contenttypes', 'contenttype'),
(1, 'face', 'student'),
(2, 'face', 'teacher'),
(12, 'face', 'uidata'),
(3, 'face', 'uimage'),
(11, 'face', 'uivdata'),
(13, 'face', 'uvdata'),
(4, 'face', 'uvideo'),
(10, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-04 05:29:47.814564'),
(2, 'auth', '0001_initial', '2020-01-04 05:29:51.688956'),
(3, 'admin', '0001_initial', '2020-01-04 05:30:06.758420'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-04 05:30:12.881132'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-04 05:30:13.069656'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-04 05:30:14.683264'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-04 05:30:14.844761'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-04 05:30:15.015776'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-04 05:30:15.099632'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-04 05:30:16.818863'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-04 05:30:16.860867'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-04 05:30:16.922874'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-04 05:30:17.095153'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-04 05:30:17.260984'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-04 05:30:17.413049'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-04 05:30:17.503252'),
(17, 'face', '0001_initial', '2020-01-04 05:30:17.776006'),
(18, 'face', '0002_teacher', '2020-01-04 05:30:18.069790'),
(19, 'face', '0003_uimage', '2020-01-04 05:30:18.309577'),
(20, 'face', '0004_uvideo', '2020-01-04 05:30:19.583716'),
(21, 'sessions', '0001_initial', '2020-01-04 05:30:21.037716'),
(22, 'face', '0005_uivdata', '2020-01-04 13:50:55.000934'),
(23, 'face', '0005_uidata', '2020-01-04 14:24:01.927540'),
(24, 'face', '0006_uvdata', '2020-01-04 14:31:21.722887');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ip8vrtdsgmiqbe3bkhn64di9wmc7w4hq', 'MjcxN2NjNmEyZTJiMjM5MGRmZmI3Y2JkNzA4ZWNlNzZhN2E1YTU1Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYTU1ZGY5Y2JlZTAxZWQxMjA4ZTNkOWQzMmVmMzNmOWRhZTI4MzY0In0=', '2020-01-18 05:33:49.371889');

-- --------------------------------------------------------

--
-- Table structure for table `face_student`
--

CREATE TABLE `face_student` (
  `id` int(11) NOT NULL,
  `users` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `face_student`
--

INSERT INTO `face_student` (`id`, `users`, `name`, `sname`, `fname`, `mname`, `email`, `dept`, `contact`, `address`, `password`, `cpassword`) VALUES
(1, 'student', 'Kushal', 'Dayani', 'M', 'M', '2017.kushal.dayani@ves.ac.in', 'Electronics Engineering', '9028613156', 'kkk', '11111111', '11111111'),
(2, 'student', 'DevendraSingh ', 'Labana', 'S', 'S', '2017.devendrasingh.labana@ves.ac.in', 'Electronics and Telecommunication Engineering', '77777777', 'ddd', '22222222', '22222222'),
(3, 'student', 'kdYA1', 'KAJDUDDN', 'HSUIAMAKA', 'LSOOWMW', 'kuday@gmail.com', 'Computer Engineering', '9632514771', 'kajsjsjsnsmdddokdd', '9876543210', '9876543210'),
(5, 'student', 'Stemp', 'T', 'T', 'T', '2017.st.st@ves.ac.in', 'Information and Technology Engineering', '0000011111', 'ttttttt', '01010101', '01010101'),
(6, 'student', 'k', 'k', 'k', 'k', '2017.k.k.@ves.ac.in', 'Electronics Engineering', '9999999999', 'k', 'k', 'k');

-- --------------------------------------------------------

--
-- Table structure for table `face_teacher`
--

CREATE TABLE `face_teacher` (
  `id` int(11) NOT NULL,
  `users` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `face_teacher`
--

INSERT INTO `face_teacher` (`id`, `users`, `name`, `sname`, `fname`, `mname`, `email`, `dept`, `contact`, `address`, `password`, `cpassword`) VALUES
(1, 'teacher', 'Sagar', 'Sidhwa', 'Naresh', 'Gauri', '2017.sagar.sidhwa@ves.ac.in', 'Computer Engineering', '8237688658', 'BK-no-279,room-no-1,opp S.E.S Girls High School,nr-Jhulelal Mandir,Ulhasnagar-2', '8237688658', '8237688658'),
(2, 'teacher', 'Somesh', 'Tiwari', 'S', 'S', '2017.somesh.tiwari@ves.ac.in', 'Computer Engineering', '7208413118', 'Bhandup', '22222222', '22222222'),
(5, 'teacher', 'Temp', 't', 't', 't', '2017.t.t@ves.ac.in', 'Instrumental Engineering', '0000000000', 'ttttttt', '33333333', '33333333'),
(6, 'teacher', 'S', 'S', 'S', 'S', '2017.s.s.@ves.ac.in', 'Computer Engineering', '8888888888', 's', 's', 's');

-- --------------------------------------------------------

--
-- Table structure for table `face_uidata`
--

CREATE TABLE `face_uidata` (
  `id` int(11) NOT NULL,
  `ivname` varchar(50) NOT NULL,
  `ivd` varchar(50) NOT NULL,
  `ivt` varchar(50) NOT NULL,
  `ivp` varchar(50) NOT NULL,
  `it_id` int(11) NOT NULL,
  `tt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `face_uidata`
--

INSERT INTO `face_uidata` (`id`, `ivname`, `ivd`, `ivt`, `ivp`, `it_id`, `tt_id`) VALUES
(1, 'Sagar', '2020-01-04', '19:56:37', 'P', 26, 1),
(2, 'Yogesh', '2020-01-04', '19:56:37', 'P', 26, 1),
(3, 'Anish', '2020-01-04', '19:56:37', 'P', 26, 1),
(4, 'Somesh', '2020-01-04', '19:56:37', 'P', 26, 1),
(5, 'Sagar', '2020-01-04', '21:09:29', 'P', 27, 1),
(6, 'Yogesh', '2020-01-04', '21:09:29', 'P', 27, 1),
(7, 'Anish', '2020-01-04', '21:09:29', 'P', 27, 1),
(8, 'Somesh', '2020-01-04', '21:09:29', 'P', 27, 1),
(9, 'Chirag', '2020-01-05', '19:44:14', 'P', 29, 1),
(10, 'Sahil', '2020-01-05', '19:44:14', 'P', 29, 1),
(11, 'Manav', '2020-01-05', '19:44:14', 'P', 29, 1),
(12, 'Chirag', '2020-01-05', '19:44:14', 'P', 28, 1),
(13, 'Sahil', '2020-01-05', '19:44:14', 'P', 28, 1),
(14, 'Yogesh', '2020-01-05', '19:44:14', 'P', 29, 1),
(15, 'Manav', '2020-01-05', '19:44:14', 'P', 28, 1),
(16, 'Yogesh', '2020-01-05', '19:44:14', 'P', 28, 1),
(17, 'Somesh', '2020-01-16', '00:14:36', 'P', 30, 1),
(18, 'Somesh', '2020-01-19', '23:04:39', 'P', 31, 2),
(19, 'Jayesh', '2020-01-19', '23:15:23', 'P', 32, 5);

-- --------------------------------------------------------

--
-- Table structure for table `face_uimage`
--

CREATE TABLE `face_uimage` (
  `id` int(11) NOT NULL,
  `classno` varchar(10) NOT NULL,
  `lecture` varchar(10) NOT NULL,
  `slotno` varchar(10) NOT NULL,
  `dt` datetime(6) NOT NULL,
  `img` varchar(100) NOT NULL,
  `t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `face_uimage`
--

INSERT INTO `face_uimage` (`id`, `classno`, `lecture`, `slotno`, `dt`, `img`, `t_id`) VALUES
(1, 'D12A', 'AAOA', '8:10-9:10', '2020-01-04 11:05:48.179433', 'Group4.jpg', 1),
(9, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:31:08.717273', 'Group3.jpg', 1),
(10, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:36:11.879400', 'Group3_dgYwlg3.jpg', 1),
(11, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:37:57.900733', 'Group3_LM9KdCM.jpg', 1),
(12, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:39:21.946982', 'Group3_RZ56RSj.jpg', 1),
(13, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:41:02.484236', 'Group3_hQ7ENxK.jpg', 1),
(14, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:42:20.215302', 'Group3_8QA8B56.jpg', 1),
(15, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:43:42.615679', 'Group3_eysF6Sk.jpg', 1),
(16, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:44:47.329502', 'Group3_2ribOjN.jpg', 1),
(17, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:47:59.798133', 'Group3_2XPN9Wi.jpg', 1),
(18, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:51:52.562846', 'Group3_nztJKqP.jpg', 1),
(19, 'D12A', 'CS', '8:10-9:10', '2020-01-04 12:53:04.900079', 'Group3_gdz1bed.jpg', 1),
(20, 'D12A', 'CS', '8:10-9:10', '2020-01-04 13:09:49.770495', 'Group3_nr4Ge6e.jpg', 1),
(21, 'D12A', 'OS', '8:10-9:10', '2020-01-04 14:00:29.964689', 'Group.jpg', 1),
(22, 'D12A', 'CS', '8:10-9:10', '2020-01-04 19:35:48.198376', 'Group3_rDybisy.jpg', 1),
(23, 'D12A', 'CS', '8:10-9:10', '2020-01-04 19:39:21.487568', 'Group3_0hEh9c3.jpg', 1),
(24, 'D12A', 'CS', '8:10-9:10', '2020-01-04 19:43:22.384105', 'Group3_1rW6nqO.jpg', 1),
(25, 'D12A', 'CS', '8:10-9:10', '2020-01-04 19:45:23.020452', 'Group3_wWOHjdp.jpg', 1),
(26, 'D12A', 'CS', '8:10-9:10', '2020-01-04 19:56:01.870911', 'Group3_dyFyunU.jpg', 1),
(27, 'D12A', 'CS', '8:10-9:10', '2020-01-04 21:08:37.966812', 'Group3_vpXUidk.jpg', 1),
(28, 'D12B', 'ML', '12:45-1:45', '2020-01-05 19:42:39.577085', 'Group_7qwhDgA.jpg', 1),
(29, 'D12B', 'ML', '12:45-1:45', '2020-01-05 19:42:41.341036', 'Group_CrH5nY1.jpg', 1),
(30, 'D12B', 'OS', '8:10-10:10', '2020-01-16 00:13:37.158647', 'Somesh.jpg', 1),
(31, 'D12C', 'SPA', '3:00-4:00', '2020-01-19 23:04:12.623792', 'Somesh_HTFB4FU.jpg', 2),
(32, 'D12B', 'aaoa', '3:00-4:00', '2020-01-19 23:14:55.735970', 'Jayesh.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `face_uvdata`
--

CREATE TABLE `face_uvdata` (
  `id` int(11) NOT NULL,
  `ivname` varchar(50) NOT NULL,
  `ivd` varchar(50) NOT NULL,
  `ivt` varchar(50) NOT NULL,
  `ivp` varchar(50) NOT NULL,
  `iV_id` int(11) NOT NULL,
  `tt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `face_uvdata`
--

INSERT INTO `face_uvdata` (`id`, `ivname`, `ivd`, `ivt`, `ivp`, `iV_id`, `tt_id`) VALUES
(1, 'Jayesh', '2020-01-09', '15:11:45', 'P', 1, 1),
(2, 'Sagar', '2020-01-09', '15:11:48', 'P', 1, 1),
(3, 'Jayesh', '2020-01-12', '19:50:03', 'P', 2, 1),
(4, 'Unknown', '2020-01-12', '19:50:13', 'P', 2, 1),
(5, 'Jayesh', '2020-01-15', '22:15:58', 'P', 3, 1),
(6, 'Jayesh', '2020-01-15', '22:21:16', 'P', 4, 1),
(7, 'Sahil', '2020-01-15', '22:21:20', 'P', 4, 1),
(8, 'Unknown', '2020-01-15', '22:21:20', 'P', 4, 1),
(9, 'Jayesh', '2020-01-19', '23:15:23', 'P', 6, 5),
(10, 'Unknown', '2020-01-19', '23:22:02', 'P', 6, 5),
(11, 'Sagar', '2020-01-19', '23:22:09', 'P', 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `face_uvideo`
--

CREATE TABLE `face_uvideo` (
  `id` int(11) NOT NULL,
  `classno` varchar(10) NOT NULL,
  `lecture` varchar(10) NOT NULL,
  `slotno` varchar(10) NOT NULL,
  `dt` datetime(6) NOT NULL,
  `ipadd` varchar(40) NOT NULL,
  `t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `face_uvideo`
--

INSERT INTO `face_uvideo` (`id`, `classno`, `lecture`, `slotno`, `dt`, `ipadd`, `t_id`) VALUES
(1, 'D12A', 'CS', '12:45-1:45', '2020-01-09 15:11:02.478140', '0', 1),
(2, 'D12A', 'CS', '12:45-1:45', '2020-01-12 19:49:31.371738', '0', 1),
(3, 'D12B', 'CS', '8:10-10:10', '2020-01-15 22:15:14.903022', '0', 1),
(4, 'D12A', 'aaoa', '10:10-10:2', '2020-01-15 22:20:40.743472', '0', 1),
(5, 'D12C', 'AAOA', '8:10-10:10', '2020-01-19 23:05:22.954564', '0', 2),
(6, 'D12C', 'ML', '12:45-1:45', '2020-01-19 23:21:31.843544', '0', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `face_student`
--
ALTER TABLE `face_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `face_teacher`
--
ALTER TABLE `face_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `face_uidata`
--
ALTER TABLE `face_uidata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `face_uidata_it_id_b7484109_fk_face_uimage_id` (`it_id`),
  ADD KEY `face_uidata_tt_id_b8fecf89_fk_face_teacher_id` (`tt_id`);

--
-- Indexes for table `face_uimage`
--
ALTER TABLE `face_uimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `face_uimage_t_id_a5c4dbfe_fk_face_teacher_id` (`t_id`);

--
-- Indexes for table `face_uvdata`
--
ALTER TABLE `face_uvdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `face_uvdata_iV_id_41425868_fk_face_uvideo_id` (`iV_id`),
  ADD KEY `face_uvdata_tt_id_898a2a56_fk_face_teacher_id` (`tt_id`);

--
-- Indexes for table `face_uvideo`
--
ALTER TABLE `face_uvideo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `face_uvideo_t_id_9c0f72b3_fk_face_teacher_id` (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `face_student`
--
ALTER TABLE `face_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `face_teacher`
--
ALTER TABLE `face_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `face_uidata`
--
ALTER TABLE `face_uidata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `face_uimage`
--
ALTER TABLE `face_uimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `face_uvdata`
--
ALTER TABLE `face_uvdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `face_uvideo`
--
ALTER TABLE `face_uvideo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `face_uidata`
--
ALTER TABLE `face_uidata`
  ADD CONSTRAINT `face_uidata_it_id_b7484109_fk_face_uimage_id` FOREIGN KEY (`it_id`) REFERENCES `face_uimage` (`id`),
  ADD CONSTRAINT `face_uidata_tt_id_b8fecf89_fk_face_teacher_id` FOREIGN KEY (`tt_id`) REFERENCES `face_teacher` (`id`);

--
-- Constraints for table `face_uimage`
--
ALTER TABLE `face_uimage`
  ADD CONSTRAINT `face_uimage_t_id_a5c4dbfe_fk_face_teacher_id` FOREIGN KEY (`t_id`) REFERENCES `face_teacher` (`id`);

--
-- Constraints for table `face_uvdata`
--
ALTER TABLE `face_uvdata`
  ADD CONSTRAINT `face_uvdata_iV_id_41425868_fk_face_uvideo_id` FOREIGN KEY (`iV_id`) REFERENCES `face_uvideo` (`id`),
  ADD CONSTRAINT `face_uvdata_tt_id_898a2a56_fk_face_teacher_id` FOREIGN KEY (`tt_id`) REFERENCES `face_teacher` (`id`);

--
-- Constraints for table `face_uvideo`
--
ALTER TABLE `face_uvideo`
  ADD CONSTRAINT `face_uvideo_t_id_9c0f72b3_fk_face_teacher_id` FOREIGN KEY (`t_id`) REFERENCES `face_teacher` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
