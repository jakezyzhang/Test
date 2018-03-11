CREATE TABLE `users` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(50) NOT NULL COLLATE 'utf8_bin',
	`password` VARCHAR(50) NOT NULL COLLATE 'utf8_bin',
	`displayname` VARCHAR(50) NOT NULL COLLATE 'utf8_bin',
	PRIMARY KEY (`id`)
)
COLLATE='utf8_bin'
ENGINE=InnoDB
;
