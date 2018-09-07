-- META_Author: ychawla@brightedge.com
-- META_Description: Create tables for tracking persona modal dismiss
-- META_Pods: command-console
-- META_Machine Type: db-master
-- META_Dependencies: None

USE commandconsole;

DROP TABLE IF EXISTS `persona_dismissed_count`;

CREATE TABLE `persona_dismissed_count` (
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `time_value` INTEGER(8) UNSIGNED NOT NULL COMMENT 'Unsigned integer representing the date in YYYYMMDD format',
    `pod_id` TINYINT(3) UNSIGNED DEFAULT NULL COMMENT 'pod num',
    `dismissed_count` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Integer for number of dismissals for persona home modal',
    PRIMARY KEY (`id`),
    UNIQUE KEY (`time_value`, `pod_id`)
);
