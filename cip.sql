-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2021 pada 06.25
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `actor`
--

CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `actor`
--

INSERT INTO `actor` (`id`, `name`, `age`, `gender`) VALUES
(49, 'Athena Rutherss', 67, 'female'),
(50, 'Mr. Tate Dare Jr.', 49, 'male'),
(51, 'Oral Cartwright Jr.', 55, 'male'),
(52, 'Celestine Wuckert MD', 24, 'female'),
(53, 'Christophe Armstrong', 69, 'male'),
(54, 'Jonathon Sanford', 42, 'male'),
(55, 'Shaun Hill', 47, 'male'),
(56, 'Kenyatta Schuster', 51, 'female'),
(57, 'Tremayne Hettinger IV', 47, 'male'),
(58, 'Prof. Imelda Hudson Jr.', 17, 'female'),
(59, 'Wilhelm Cruickshank PhD', 14, 'male'),
(60, 'Westley Kuhn', 33, 'male'),
(61, 'Lyla Casper', 13, 'female'),
(62, 'Ms. Cecilia Green', 26, 'female'),
(63, 'Kane Hyatts', 18, 'male'),
(64, 'Larissa Hayes DDS', 60, 'female'),
(65, 'Miss Heloise Ernser', 20, 'female'),
(66, 'Mr. Bryce Runte MD', 36, 'male'),
(67, 'Dr. Brendon Watsica', 61, 'male'),
(68, 'Prof. Carolyn Schulist V', 66, 'female'),
(69, 'Jace Lynch III', 29, 'male'),
(70, 'D\'angelo Dietrich MD', 66, 'male'),
(71, 'Darien Cruickshank', 9, 'male'),
(72, 'Dr. Santos Schmitt I', 27, 'male'),
(73, 'Kendall Fay', 52, 'male'),
(74, 'Yadira Muller', 62, 'female'),
(75, 'Prof. Claud Grady IV', 55, 'male'),
(76, 'Levi Rowe', 32, 'male'),
(77, 'Cordia Leuschke', 51, 'female'),
(78, 'Dr. Alejandrin Feil', 51, 'male'),
(79, 'Prof. Miguel Mann', 19, 'male'),
(80, 'Everardo Romaguera', 68, 'male'),
(81, 'Prof. Alisa Hermann', 12, 'female'),
(82, 'Ethel Homenick', 50, 'male'),
(83, 'Mr. Elliot Hansen Sr.', 28, 'male'),
(84, 'Valentina Marvin', 23, 'female'),
(85, 'Miss Rebecca Schaden DDS', 41, 'female'),
(86, 'Rupert McDermott', 7, 'male'),
(87, 'Rusty Ferry Jr.', 61, 'male'),
(88, 'Miss Autumn Olson', 45, 'female'),
(89, 'Katelynn Nikolaus', 22, 'female'),
(90, 'Ms. Camille Harber', 12, 'female'),
(91, 'Darlene Mitchell', 69, 'female'),
(92, 'Evan Jakubowski', 33, 'male'),
(93, 'Lance Jacobi', 53, 'male'),
(94, 'Aylin Lebsack', 19, 'female'),
(95, 'Randy Will DDS', 60, 'male'),
(96, 'Prof. Matteo Deckow', 18, 'male'),
(97, 'Prof. Loy Bergnaum', 67, 'male'),
(98, 'Dr. Bert Jaskolski', 53, 'female'),
(99, 'Neoma Schmeler', 69, 'female'),
(100, 'Prof. Annabelle Larson', 35, 'female'),
(101, 'Josiah Hammes', 17, 'male'),
(102, 'Viviane Carter DDS', 51, 'female'),
(103, 'Giovanna Wisoky', 20, 'female'),
(104, 'Harmony Fahey', 65, 'female'),
(105, 'River Botsford MD', 67, 'female'),
(106, 'Miss Jeanne Gusikowski', 10, 'female'),
(107, 'Prof. Deron Jaskolski III', 40, 'male'),
(108, 'Natasha Satterfield', 52, 'female'),
(109, 'Gerard Predovic', 56, 'male'),
(110, 'Gino Lindgren MD', 40, 'male'),
(111, 'Orland Nikolaus', 68, 'male'),
(112, 'Mr. Nicolas Gibson', 9, 'male'),
(113, 'Mr. Eliseo Dietrich MD', 47, 'male'),
(114, 'Tre Ferry', 13, 'male'),
(115, 'Damion McLaughlin', 69, 'male'),
(116, 'Darrick Macejkovic I', 41, 'male'),
(117, 'Tyra Cassin', 36, 'female'),
(118, 'Jermey Treutel', 21, 'male'),
(119, 'Ahmed Keeling', 28, 'male'),
(120, 'Prof. Arely Lehner', 58, 'male'),
(121, 'Cyrus Bogan', 70, 'male'),
(122, 'Marjolaine Sawayn', 69, 'female'),
(123, 'Jonathon Kutch', 22, 'male'),
(124, 'Sheldon Grimes', 59, 'male'),
(125, 'Mrs. Nyah Robel', 63, 'female'),
(126, 'Miss Jermaine Howe II', 22, 'female'),
(127, 'Eli Feil', 48, 'male'),
(128, 'Andre Krajcik', 38, 'male'),
(129, 'Dr. Meda Hermiston', 58, 'female'),
(130, 'Ms. Micaela Leannon', 51, 'female'),
(131, 'Danielle Langworth', 64, 'female'),
(132, 'Macy Hudson', 40, 'female'),
(133, 'Nicklaus Jaskolski III', 69, 'male'),
(134, 'Mr. Nathaniel Stracke DDS', 12, 'male'),
(135, 'Cruz Bergstrom III', 16, 'male'),
(136, 'Carter Jenkins', 51, 'male'),
(137, 'Lexi Cassin', 60, 'female'),
(138, 'Prof. Charles Jakubowski', 27, 'male'),
(139, 'Prof. Ara Douglas Jr.', 11, 'female'),
(140, 'Dr. Emil Zieme MD', 57, 'male'),
(141, 'Mr. Judson Strosin', 30, 'male'),
(142, 'Vanessa Durgan', 51, 'female'),
(143, 'Prof. Rosendo Schoen II', 58, 'male'),
(144, 'Mrs. Onie Ritchie III', 40, 'female'),
(145, 'Dr. Norberto Hermann', 9, 'male'),
(146, 'Elijah McLaughlin', 22, 'male'),
(147, 'Dr. Kirstin Ryan', 12, 'female'),
(148, 'Kyleigh Price', 40, 'male'),
(149, 'Boyd Armstrong', 45, 'male'),
(150, 'Princess Lindgren', 57, 'female'),
(151, 'Keith Macejkovic', 7, 'male'),
(154, 'dio', 22, 'male'),
(155, 'dia', 11, 'female');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'windiogame@gmail.com', 2, '2021-06-11 04:06:03', 0),
(2, '::1', 'windiogame@gmail.com', 2, '2021-06-11 04:07:40', 0),
(3, '::1', 'windioya25@gmail.com', 3, '2021-06-11 04:09:18', 1),
(4, '::1', 'windioya25@gmail.com', 3, '2021-06-11 04:10:57', 1),
(5, '::1', 'windioya25@gmail.com', 3, '2021-06-11 04:11:29', 1),
(6, '::1', 'windioya@gmail.com', NULL, '2021-06-11 04:25:40', 0),
(7, '::1', 'asa', NULL, '2021-06-11 04:28:06', 0),
(8, '::1', 'asa', NULL, '2021-06-11 04:31:19', 0),
(9, '::1', 'sasa', NULL, '2021-06-11 04:33:38', 0),
(10, '::1', 'sdad', NULL, '2021-06-11 04:34:15', 0),
(11, '::1', 'asa', NULL, '2021-06-11 04:34:26', 0),
(12, '::1', 'adad', NULL, '2021-06-11 04:35:35', 0),
(13, '::1', 'windioya25@gmail.com', 3, '2021-06-11 04:42:26', 1),
(14, '::1', 'windioya25@gmail.com', 3, '2021-06-11 04:42:36', 1),
(15, '::1', 'tiaa', NULL, '2021-06-11 04:43:08', 0),
(16, '::1', 'tia@gmail.com', 4, '2021-06-11 04:43:16', 1),
(17, '::1', 'windioya25@gmail.com', 3, '2021-06-11 04:56:02', 1),
(18, '::1', 'windioya25@gmail.com', 3, '2021-06-11 05:04:57', 1),
(19, '::1', 'windioya25@gmail.com', 3, '2021-06-13 22:27:57', 1),
(20, '::1', 'andi@gmail.com', 5, '2021-06-13 22:30:54', 1),
(21, '::1', 'windioya25@gmail.com', 3, '2021-06-13 22:31:18', 1),
(22, '::1', 'windioya25@gmail.com', 3, '2021-06-13 23:06:25', 1),
(23, '::1', 'andi@gmail.com', 5, '2021-06-13 23:06:48', 1),
(24, '::1', 'windioya25@gmail.com', 3, '2021-06-13 23:07:48', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1623401865, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `director` varchar(20) NOT NULL,
  `year` varchar(4) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `movie`
--

INSERT INTO `movie` (`id`, `title`, `director`, `year`, `img`) VALUES
(18, 'Titanic', 'James Cameron', '1995', 'titanic_1.jpg'),
(21, 'The Matrix', 'Lilly Wachowski', '1999', 'default.jpg'),
(26, 'Inception', 'Christopher Nolans', '2010', '1623289926_4be20c798eaba4a72e33.jpg'),
(27, 'Men in Black', 'Barry Sonnenfeld', '1997', '1623299439_fcfb7c90b56f81e45941.jpg'),
(28, 'Alien', 'Ridley Scott', '1979', 'default.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'windioya25@gmail.com', 'windioo', '$2y$10$03hFTwsKrrYWL1eGLH3yy.M9KR/TijEJHsuvFZNDRhAZp5aBK..Kq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-06-11 04:09:12', '2021-06-11 04:09:12', NULL),
(4, 'tia@gmail.com', 'tiaa', '$2y$10$UtPYt59aWNUbn1heRIVc3exNZI9ZdfWWNaCQ5sf2vPtGz0aXQFO7O', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-06-11 04:43:02', '2021-06-11 04:43:02', NULL),
(5, 'andi@gmail.com', 'andii', '$2y$10$IrnFz2M34tKOexK/O6k05u4fGTPXeMmd8.ta.xwT9dlkflZMj4Nja', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-06-13 22:30:40', '2021-06-13 22:30:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
