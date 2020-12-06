-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 05 2020 г., 20:01
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Структура таблицы `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Дамп данных таблицы `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sample_db\",\"table\":\"ticket\"},{\"db\":\"sample_db\",\"table\":\"reservation\"},{\"db\":\"sample_db\",\"table\":\"partner_offer\"},{\"db\":\"sample_db\",\"table\":\"location\"},{\"db\":\"sample_db\",\"table\":\"food\"},{\"db\":\"sample_db\",\"table\":\"flight\"},{\"db\":\"sample_db\",\"table\":\"employee\"},{\"db\":\"sample_db\",\"table\":\"department\"},{\"db\":\"sample_db\",\"table\":\"client_feedback\"},{\"db\":\"sample_db\",\"table\":\"client\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Дамп данных таблицы `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'sample_db', 'admin', '{\"CREATE_TIME\":\"2020-12-02 20:00:23\",\"col_order\":[0,1],\"col_visib\":[1,1],\"sorted_col\":\"`admin`.`login` ASC\"}', '2020-12-03 11:07:32');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Дамп данных таблицы `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-05 18:48:45', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ru\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Индексы таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Индексы таблицы `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Индексы таблицы `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Индексы таблицы `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Индексы таблицы `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Индексы таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Индексы таблицы `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Индексы таблицы `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Индексы таблицы `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Индексы таблицы `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Индексы таблицы `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- База данных: `sample_db`
--
CREATE DATABASE IF NOT EXISTS `sample_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sample_db`;

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `login` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`login`, `password`) VALUES
('alex', '1234a'),
('king', '1234a');

-- --------------------------------------------------------

--
-- Структура таблицы `airplane`
--

CREATE TABLE `airplane` (
  `airplane_id` varchar(16) NOT NULL,
  `aiport_code` varchar(16) NOT NULL,
  `model` varchar(16) NOT NULL,
  `capacity` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `baggage_occupancy` int(11) NOT NULL,
  `manufacturers` varchar(32) DEFAULT NULL,
  `aircraft_details` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `airplane`
--

INSERT INTO `airplane` (`airplane_id`, `aiport_code`, `model`, `capacity`, `weight`, `baggage_occupancy`, `manufacturers`, `aircraft_details`) VALUES
('8840', 'GUW', 'EN-7X', 700, 600, 2998, 'AIRCRAFT', ''),
('8841', 'ALA', 'EN-7X', 700, 500, 3000, 'BOEING', NULL),
('8842', 'NUR', 'EN-7X', 700, 500, 3000, 'BOEING', NULL),
('8843', 'AST', 'EN-8X', 800, 500, 3000, 'BOEING', NULL),
('8844', 'AKT', 'EN-7X', 700, 500, 3000, 'BOEING', NULL),
('8845', 'AKA', 'EN-8X', 800, 500, 3000, 'BOEING', NULL),
('8846', 'ALA', 'EN-7X', 700, 500, 3000, 'BOEING', NULL),
('8847', 'GUW', 'EN-8X', 800, 500, 3000, 'BOEING', NULL),
('8848', 'ALA', 'EN-7X', 700, 500, 3000, 'BOEING', NULL),
('8849', 'NUR', 'EN-8X', 800, 500, 3000, 'BOEING', NULL),
('8850', 'AKT', 'EN-8X', 800, 500, 3000, 'BOEING', '');

-- --------------------------------------------------------

--
-- Структура таблицы `airport`
--

CREATE TABLE `airport` (
  `airport_code` varchar(16) NOT NULL,
  `location_id` varchar(8) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `work_days` varchar(32) NOT NULL,
  `work_time` varchar(32) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `technical_days` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `airport`
--

INSERT INTO `airport` (`airport_code`, `location_id`, `phone_number`, `work_days`, `work_time`, `email`, `technical_days`) VALUES
('AKA', '12345669', '8(766)707-85-90', 'monday-friday', '8 hours', '10@gmail.com', 'saturday'),
('AKT', '12345676', '8(766)707-85-97', 'monday-friday', '8 hours', '3@gmail.com', 'saturday'),
('ALA', '12345677', '8(766)707-85-98', 'monday-friday', '8 hours', '2@gmail.com', 'saturday'),
('AST', '12345675', '8(766)707-85-96', 'monday-friday', '8 hours', '4@gmail.com', 'saturday'),
('GUW', '12345678', '8(766)707-85-99', 'monday-friday', '8 hours', '1@gmail.com', 'saturday'),
('KAS', '12345671', '8(766)707-85-92', 'monday-friday', '8 hours', '8@gmail.com', 'saturday'),
('KEK', '12345672', '8(766)707-85-93', 'monday-friday', '8 hours', '7@gmail.com', 'saturday'),
('NUR', '12345674', '8(766)707-85-95', 'monday-friday', '8 hours', '5@gmail.com', 'saturday'),
('PAV', '12345673', '8(766)707-85-94', 'monday-friday', '8 hours', '6@gmail.com', 'saturday'),
('TAL', '12345670', '8(766)707-85-91', 'monday-friday', '8 hours', '9@gmail.com', 'saturday');

-- --------------------------------------------------------

--
-- Структура таблицы `baggage`
--

CREATE TABLE `baggage` (
  `baggage_id` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `baggage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `baggage`
--

INSERT INTO `baggage` (`baggage_id`, `cost`, `weight`, `baggage`) VALUES
(3910, 600, 15, 0),
(3911, 600, 15, 1),
(3912, 600, 15, 2),
(3913, 600, 15, 3),
(3914, 600, 15, 4),
(3915, 600, 15, 5),
(3916, 600, 15, 6),
(3917, 600, 15, 7),
(3918, 600, 15, 8),
(3919, 600, 15, 9),
(4000, 700, 20, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `booking_agency`
--

CREATE TABLE `booking_agency` (
  `agency_id` int(11) NOT NULL,
  `agency_name` varchar(32) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `email` varchar(32) NOT NULL,
  `description` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `booking_agency`
--

INSERT INTO `booking_agency` (`agency_id`, `agency_name`, `phone_number`, `email`, `description`) VALUES
(20, 'booking agency0', '8-800-555-35-60', 'agency0@gmail.com', 'description text'),
(21, 'booking agency1', '8-800-555-35-61', 'agency1@gmail.com', 'description text'),
(22, 'booking agency2', '8-800-555-35-62', 'agency2@gmail.com', 'description text'),
(23, 'booking agency3', '8-800-555-35-63', 'agency3@gmail.com', 'description text'),
(24, 'booking agency4', '8-800-555-35-64', 'agency4@gmail.com', 'description text'),
(25, 'booking agency5', '8-800-555-35-65', 'agency5@gmail.com', 'description text'),
(26, 'booking agency6', '8-800-555-35-66', 'agency6@gmail.com', 'description text'),
(27, 'booking agency7', '8-800-555-35-67', 'agency7@gmail.com', 'description text'),
(28, 'booking agency8', '8-800-555-35-68', 'agency8@gmail.com', 'description text'),
(29, 'booking agency9', '8-800-555-35-69', 'agency9@gmail.com', 'description text'),
(30, 'booking agency11', '8-800-555-35-71', 'agency11@gmail.com', 'description text');

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `card_id` varchar(16) NOT NULL,
  `first_name` varchar(16) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `fathers_name` varchar(16) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `email` varchar(16) NOT NULL,
  `birth_date` date NOT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `num_of_flights` int(11) DEFAULT NULL,
  `citizen` varchar(32) NOT NULL,
  `covid_test` varchar(32) DEFAULT NULL,
  `gov_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`client_id`, `employee_id`, `card_id`, `first_name`, `last_name`, `fathers_name`, `phone_number`, `email`, `birth_date`, `sex`, `num_of_flights`, `citizen`, `covid_test`, `gov_id`) VALUES
(1230, 121, 'id2', 'maxa', 'alihanov', 'alihanovich', '8-800-555-35-51', '12341@gmail.com', '1992-10-30', 'male', 200, 'Kazakhstan	', 'positive', 123441),
(1231, 121, 'id2', 'valihan', 'alihanov', 'alihanovich', '8-800-555-35-51', '12341@gmail.com', '1992-11-22', 'male', 2, 'Kazakhstan', 'negative', 123441),
(1232, 121, 'id3', 'palihan', 'alihanov', 'alihanovich', '8-800-555-35-52', '12342@gmail.com', '1993-11-22', 'male', 4, 'Kazakhstan', 'negative', 123442),
(1233, 125, 'id4', 'zhalihan', 'alihanov', 'alihanovich', '8-800-555-35-53', '12343@gmail.com', '1994-11-22', 'male', 6, 'Kazakhstan', 'negative', 123443),
(1234, 125, 'id5', 'shalihan', 'alihanov', 'alihanovich', '8-800-555-35-54', '12344@gmail.com', '1995-11-22', 'male', 8, 'Kazakhstan', 'negative', 123444),
(1235, 125, 'id6', 'ualihan', 'alihanov', 'alihanovich', '8-800-555-35-55', '12345@gmail.com', '1996-11-22', 'male', 10, 'Kazakhstan', 'negative', 123445),
(1236, 125, 'id7', 'lalihan', 'alihanov', 'alihanovich', '8-800-555-35-56', '12346@gmail.com', '1997-11-22', 'male', 12, 'Kazakhstan', 'negative', 123446),
(1237, 128, 'id8', 'balihan', 'alihanov', 'alihanovich', '8-800-555-35-57', '12347@gmail.com', '1998-11-22', 'male', 14, 'Kazakhstan', 'negative', 123447),
(1238, 128, 'id9', 'talihan', 'alihanov', 'alihanovich', '8-800-555-35-58', '12348@gmail.com', '1999-11-22', 'male', 16, 'Kazakhstan', 'negative', 123448),
(1239, 128, 'id1', 'palihan', 'alihanov', 'alihanovich', '8-800-555-35-59', '12349@gmail.com', '2000-11-22', 'male', 20, 'Kazakhstan', 'negative', 123449);

-- --------------------------------------------------------

--
-- Структура таблицы `client_feedback`
--

CREATE TABLE `client_feedback` (
  `feedback_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `star_number` int(11) NOT NULL,
  `due_date` varchar(16) DEFAULT NULL,
  `service_class` varchar(16) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `department`
--

CREATE TABLE `department` (
  `dep_id` int(11) NOT NULL,
  `airport_code` varchar(16) NOT NULL,
  `dep_name` varchar(32) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `dep_type` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `department`
--

INSERT INTO `department` (`dep_id`, `airport_code`, `dep_name`, `phone_number`, `email`, `dep_type`) VALUES
(1, 'GUW', 'IT', '8-800-555-35-31', '11@gmail.com', 'it_department'),
(2, 'GUW', 'service', '8-800-555-35-32', '12@gmail.com', 'service_dep'),
(3, 'GUW', 'sales', '8-800-555-35-33', '13@gmail.com', 'sales_department'),
(4, 'KAS', 'IT', '8-800-555-35-34', '14@gmail.com', 'it_department'),
(5, 'PAV', 'sales', '8-800-555-35-35', '15@gmail.com', 'sales_department'),
(6, 'PAV', 'service', '8-800-555-35-36', '16@gmail.com', 'service_dep'),
(7, 'KEK', 'IT', '8-800-555-35-37', '17@gmail.com', 'it_department'),
(8, 'KEK', 'sales', '8-800-555-35-38', '18@gmail.com', 'sales_department'),
(9, 'KEK', 'service', '8-800-555-35-39', '19@gmail.com', 'service_dep'),
(10, 'AKA', 'IT', '8-800-555-35-30', '10@gmail.com', 'it_department');

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `first_name` varchar(16) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `fathers_name` varchar(16) NOT NULL,
  `position` varchar(16) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `salary` int(11) NOT NULL,
  `work_exprience` int(11) DEFAULT NULL,
  `work_schedule` varchar(32) DEFAULT NULL,
  `gov_id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`employee_id`, `dep_id`, `first_name`, `last_name`, `fathers_name`, `position`, `phone_number`, `salary`, `work_exprience`, `work_schedule`, `gov_id`, `email`) VALUES
(120, 1, 'Serik', 'Serikov', 'serikovich', 'developer', '8-800-555-35-40', 4000, 3, 'monday-friday', 123450, '120@gmail.com'),
(121, 2, 'Merik', 'Merikov', 'Merikovich', 'servicer', '8-800-555-35-41', 4000, 4, 'monday-friday', 123451, '121@gmail.com'),
(122, 3, 'Berik', 'Berikov', 'Berikovich', 'saler', '8-800-555-35-42', 4000, 5, 'monday-friday', 123452, '122@gmail.com'),
(123, 4, 'Zerik', 'Zerikov', 'Zerikovich', 'developer', '8-800-555-35-43', 4000, 6, 'monday-friday', 123453, '123@gmail.com'),
(124, 5, 'Derik', 'Derikov', 'Derikovich', 'saler', '8-800-555-35-44', 4000, 7, 'monday-friday', 123454, '124@gmail.com'),
(125, 6, 'Terik', 'Terikov', 'Terikovich', 'service', '8-800-555-35-45', 4000, 8, 'monday-friday', 123455, '125@gmail.com'),
(126, 7, 'Nerik', 'Nerikov', 'Nerikovich', 'developer', '8-800-555-35-46', 4000, 9, 'monday-friday', 123456, '126@gmail.com'),
(127, 8, 'Verik', 'Verikov', 'Verikovich', 'saler', '8-800-555-35-47', 4000, 10, 'monday-friday', 123457, '127@gmail.com'),
(128, 9, 'Erik', 'Erikov', 'Erikovich', 'serviser', '8-800-555-35-48', 4000, 2, 'monday-friday', 123458, '128@gmail.com'),
(129, 10, 'Rik', 'Rikov', 'Rikovich', 'developer', '8-800-555-35-49', 4000, 1, 'monday-friday', 123459, '129@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `reservation_id` varchar(16) NOT NULL,
  `airplane_id` varchar(16) NOT NULL,
  `departure_date` date NOT NULL,
  `arrival_date` date NOT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `departure_place` varchar(16) NOT NULL,
  `arrival_place` varchar(16) NOT NULL,
  `direction` varchar(64) DEFAULT NULL,
  `flights_points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `flight`
--

INSERT INTO `flight` (`flight_id`, `reservation_id`, `airplane_id`, `departure_date`, `arrival_date`, `departure_time`, `arrival_time`, `departure_place`, `arrival_place`, `direction`, `flights_points`) VALUES
(2530, '5910', '8840', '2020-10-10', '2020-10-11', '00:00:00', '01:20:00', 'Almaty', 'Astana', 'Almaty-Astana', 5),
(2531, '5911', '8841', '2020-10-20', '2020-10-20', '10:15:00', '13:20:15', 'Kostanay', 'Almaty', 'Kostanay-Almaty', 5),
(2532, '5912', '8842', '2020-10-30', '2020-11-01', '12:35:10', '13:20:15', 'Aktobe', 'Astana', 'Aktobe-Astana', 5),
(2533, '5913', '8843', '2020-05-10', '2020-05-11', '04:25:11', '11:10:15', 'Aktobe', 'Astana', 'Aktobe-Astana', 5),
(2534, '5914', '8844', '2020-05-11', '2020-05-12', '02:15:24', '01:04:05', 'Atray', 'Astana', 'Atray-Astana', 5),
(2535, '5915', '8845', '2020-12-30', '2020-12-31', '12:15:14', '01:04:05', 'Aktay', 'Almaty', 'Atray-Almaty', 5),
(2536, '5916', '8846', '2020-03-21', '2020-03-22', '11:12:43', '01:04:05', 'Astana', 'Almaty', 'Astana-Almaty', 5),
(2537, '5917', '8847', '2020-02-13', '2020-02-15', '03:23:14', '02:12:45', 'Astana', 'Moskow', 'Astana-Moskow', 10),
(2538, '5918', '8848', '2020-11-12', '2020-11-13', '12:41:34', '00:01:01', 'Astana', 'Almaty', 'Astana-Almaty', 5),
(2539, '5919', '8849', '2020-01-01', '2020-01-01', '04:03:21', '08:21:31', 'Aktobe', 'Paris', 'Aktobe-Paris', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `food_name` varchar(32) NOT NULL,
  `date_purchase` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `date_purchase`, `expiration_date`, `price`) VALUES
(1500, 'Standard', '2020-10-10', '2021-10-10', 100),
(1501, 'Standard+', '2020-10-10', '2022-10-10', 200),
(1502, 'Standard', '2020-10-10', '2021-10-10', 100),
(1503, 'Standard', '2020-10-10', '2021-10-10', 100),
(1504, 'Exclusive', '2019-10-10', '2030-10-10', 1000),
(1505, 'Standard+', '2020-10-10', '2022-10-10', 200),
(1506, 'Standard', '2020-10-10', '2021-10-10', 100),
(1507, 'Standard', '2020-10-10', '2021-10-10', 100),
(1508, 'Standard+', '2020-10-10', '2022-10-10', 200),
(1509, 'Standard', '2020-10-10', '2021-10-10', 100),
(1510, 'Standard+', '2020-10-11', '2021-10-11', 200),
(1511, 'Standard+', '2020-10-11', '2021-10-11', 200);

-- --------------------------------------------------------

--
-- Структура таблицы `location`
--

CREATE TABLE `location` (
  `location_id` varchar(8) NOT NULL,
  `country` varchar(16) NOT NULL,
  `city` varchar(16) NOT NULL,
  `address` varchar(64) NOT NULL,
  `zip_code` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `location`
--

INSERT INTO `location` (`location_id`, `country`, `city`, `address`, `zip_code`) VALUES
('12345669', 'Kazakhstan', 'Aktau', 'backerstreet 221d', '12345679'),
('12345670', 'Kazakhstan', 'Taldykorgan', 'backerstreet 228b', '12345678'),
('12345671', 'Kazakhstan', 'Kaskelen', 'backerstreet 221a', '12345677'),
('12345672', 'Kazakhstan', 'Shymkek', 'backerstreet 221c', '12345676'),
('12345673', 'Kazakhstan', 'Pavlodar', 'backerstreet 221b', '12345675'),
('12345674', 'Kazakhstan', 'Nur-Sultan', 'backerstreet 221x', '12345674'),
('12345675', 'Kazakhstan', 'Astana', 'backerstreet 1337b', '12345673'),
('12345676', 'Kazakhstan', 'Aktobe', 'backerstreet 221kek', '12345672'),
('12345677', 'Kazakhstan', 'Almaty', 'backerstreet 228', '12345671'),
('12345678', 'Kazakhstan', 'Atyrau', 'backerstreet 1337', '12345670');

-- --------------------------------------------------------

--
-- Структура таблицы `partner_offer`
--

CREATE TABLE `partner_offer` (
  `card_id` varchar(16) NOT NULL,
  `discount` int(11) NOT NULL,
  `accumulated_points` int(11) DEFAULT NULL,
  `validity` varchar(16) DEFAULT NULL,
  `offer_name` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `partner_offer`
--

INSERT INTO `partner_offer` (`card_id`, `discount`, `accumulated_points`, `validity`, `offer_name`) VALUES
('id1', 40, 100, '2025-11-22', 'client_disc'),
('id10', 2, 5, '2025-11-22', 'client_disc'),
('id2', 12, 30, '2025-11-22', 'client_disc'),
('id3', 16, 40, '2025-11-22', 'client_disc'),
('id4', 8, 20, '2025-11-22', 'client_disc'),
('id5', 20, 50, '2025-11-22', 'client_disc'),
('id6', 24, 60, '2025-11-22', 'client_disc'),
('id7', 28, 70, '2025-11-22', 'client_disc'),
('id8', 36, 90, '2025-11-22', 'client_disc'),
('id9', 4, 10, '2025-11-22', 'client_disc');

-- --------------------------------------------------------

--
-- Структура таблицы `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` varchar(16) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `baggage_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `seat` int(11) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `ticket_id`, `baggage_id`, `food_id`, `agency_id`, `seat`, `section`) VALUES
('5910', 8640, 3910, 1500, 20, 1, 1),
('5911', 8641, 3911, 1501, 21, 2, 2),
('5912', 8642, 3912, 1502, 22, 3, 3),
('5913', 8643, 3913, 1503, 23, 4, 4),
('5914', 8644, 3914, 1504, 24, 5, 5),
('5915', 8645, 3915, 1505, 25, 6, 6),
('5916', 8646, 3916, 1506, 26, 7, 7),
('5917', 8647, 3917, 1507, 27, 8, 8),
('5918', 8648, 3918, 1508, 28, 9, 9),
('5919', 8649, 3919, 1509, 29, 10, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `ticket_number` int(11) NOT NULL,
  `ticked_issued_moment` varchar(256) DEFAULT NULL,
  `ticket_refindability` varchar(8) NOT NULL,
  `ticket_type` varchar(16) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `client_id`, `ticket_number`, `ticked_issued_moment`, `ticket_refindability`, `ticket_type`, `cost`) VALUES
(8640, 1230, 0, NULL, 'non-ref', 'None tickets', 100),
(8641, 1231, 1, NULL, 'ref', 'First Class', 500),
(8642, 1232, 2, 'the place has changed', 'ref', 'One-Way Ticket', 200),
(8643, 1233, 3, 'food is cold', 'non-ref', 'Round-trip', 400),
(8644, 1234, 4, NULL, 'ref', 'Business Class', 700),
(8645, 1235, 5, NULL, 'non-ref', 'Coach Ticket', 150),
(8646, 1236, 6, NULL, 'ref', 'One-Way Ticket', 300),
(8647, 1237, 7, NULL, 'non-ref', 'One-Way Ticket', 300),
(8648, 1238, 8, NULL, 'ref', 'Round-trip', 500),
(8649, 1239, 9, NULL, 'non-ref', 'Business Class', 900);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`airplane_id`),
  ADD KEY `aiport_code` (`aiport_code`);

--
-- Индексы таблицы `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_code`),
  ADD KEY `location_id` (`location_id`);

--
-- Индексы таблицы `baggage`
--
ALTER TABLE `baggage`
  ADD PRIMARY KEY (`baggage_id`);

--
-- Индексы таблицы `booking_agency`
--
ALTER TABLE `booking_agency`
  ADD PRIMARY KEY (`agency_id`);

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `card_id` (`card_id`);

--
-- Индексы таблицы `client_feedback`
--
ALTER TABLE `client_feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Индексы таблицы `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dep_id`),
  ADD KEY `airport_code` (`airport_code`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `dep_id` (`dep_id`);

--
-- Индексы таблицы `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `airplane_id` (`airplane_id`);

--
-- Индексы таблицы `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Индексы таблицы `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Индексы таблицы `partner_offer`
--
ALTER TABLE `partner_offer`
  ADD PRIMARY KEY (`card_id`);

--
-- Индексы таблицы `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD UNIQUE KEY `ticket_id` (`ticket_id`),
  ADD KEY `baggage_id` (`baggage_id`),
  ADD KEY `food_id` (`food_id`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Индексы таблицы `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `airplane`
--
ALTER TABLE `airplane`
  ADD CONSTRAINT `airplane_ibfk_1` FOREIGN KEY (`aiport_code`) REFERENCES `airport` (`airport_code`);

--
-- Ограничения внешнего ключа таблицы `airport`
--
ALTER TABLE `airport`
  ADD CONSTRAINT `airport_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Ограничения внешнего ключа таблицы `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `client_ibfk_2` FOREIGN KEY (`card_id`) REFERENCES `partner_offer` (`card_id`),
  ADD CONSTRAINT `client_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `client_ibfk_4` FOREIGN KEY (`card_id`) REFERENCES `partner_offer` (`card_id`);

--
-- Ограничения внешнего ключа таблицы `client_feedback`
--
ALTER TABLE `client_feedback`
  ADD CONSTRAINT `client_feedback_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `client_feedback_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Ограничения внешнего ключа таблицы `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`airport_code`) REFERENCES `airport` (`airport_code`),
  ADD CONSTRAINT `department_ibfk_2` FOREIGN KEY (`airport_code`) REFERENCES `airport` (`airport_code`);

--
-- Ограничения внешнего ключа таблицы `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `department` (`dep_id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`dep_id`) REFERENCES `department` (`dep_id`);

--
-- Ограничения внешнего ключа таблицы `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`),
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`airplane_id`) REFERENCES `airplane` (`airplane_id`);

--
-- Ограничения внешнего ключа таблицы `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`baggage_id`) REFERENCES `baggage` (`baggage_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`agency_id`) REFERENCES `booking_agency` (`agency_id`);

--
-- Ограничения внешнего ключа таблицы `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`);
--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
