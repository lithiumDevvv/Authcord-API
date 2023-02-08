SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `apikeys` (
  `apikey` varchar(1000) NOT NULL,
  `adminkey` varchar(1000) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `expiration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `apphashes` (
  `apphash` varchar(1000) NOT NULL,
  `apikey` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `logins` (
  `hwid` varchar(1000) NOT NULL,
  `id` varchar(1000) NOT NULL,
  `apikey` varchar(1000) NOT NULL,
  `apphash` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `one_time_keys` (
  `id` int(11) NOT NULL,
  `onetimekey` varchar(255) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `one_time_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `onetimekey` (`onetimekey`);


ALTER TABLE `one_time_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

