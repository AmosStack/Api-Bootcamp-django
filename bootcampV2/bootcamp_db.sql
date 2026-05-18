CREATE DATABASE bootcamp_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE bootcamp_db;

CREATE TABLE `API_user` (
  `id` bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) NULL,
  `is_superuser` bool NOT NULL,
  `username` varchar(150) NOT NULL UNIQUE,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` bool NOT NULL,
  `is_active` bool NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL UNIQUE,
  `phone_number` varchar(20) NULL,
  `profile_picture` varchar(100) NULL,
  `bio` longtext NULL,
  `is_verified` bool NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
);