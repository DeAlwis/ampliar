ALTER TABLE `ads`
	CHANGE COLUMN `description` `description` TEXT NULL AFTER `ad_name`,
	CHANGE COLUMN `ad_price` `ad_price` TEXT NULL AFTER `description`,
	CHANGE COLUMN `sub_category_id` `sub_category` TEXT NULL DEFAULT NULL AFTER `ad_price`,
	CHANGE COLUMN `district_local_area_id` `district_local_area` TEXT NULL DEFAULT NULL AFTER `sub_category`,
	ADD COLUMN `district` TEXT NULL DEFAULT NULL AFTER `district_local_area`,
	ADD COLUMN `category` TEXT NULL AFTER `updated_at`;


ALTER TABLE `ads`
	CHANGE COLUMN `ad_price` `ad_price` INT NULL AFTER `description`;
