USE `geodata`;

ALTER TABLE `_countries` MODIFY COLUMN `country_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
ALTER TABLE `_countries` ADD INDEX (`title_ru`),  MODIFY COLUMN `title_ru` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_ua`), MODIFY COLUMN `title_ua` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_be`), MODIFY COLUMN `title_be` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_en`), MODIFY COLUMN `title_en` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_es`), MODIFY COLUMN `title_es` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_pt`), MODIFY COLUMN `title_pt` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_de`), MODIFY COLUMN `title_de` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_fr`), MODIFY COLUMN `title_fr` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_it`), MODIFY COLUMN `title_it` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_pl`), MODIFY COLUMN `title_pl` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_ja`), MODIFY COLUMN `title_ja` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_lt`), MODIFY COLUMN `title_lt` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_lv`), MODIFY COLUMN `title_lv` VARCHAR(150) NOT NULL;
ALTER TABLE `_countries` ADD INDEX (`title_cz`), MODIFY COLUMN `title_cz` VARCHAR(150) NOT NULL;

ALTER TABLE `_regions` MODIFY COLUMN `region_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
ALTER TABLE `_regions` MODIFY COLUMN `country_id` INT NOT NULL;
ALTER TABLE `_regions` ADD CONSTRAINT fk_country_id FOREIGN KEY (country_id) REFERENCES `_countries`(country_id);
ALTER TABLE `_regions` ADD INDEX (`title_ru`),  MODIFY COLUMN `title_ru` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_ua`), MODIFY COLUMN `title_ua` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_be`), MODIFY COLUMN `title_be` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_en`), MODIFY COLUMN `title_en` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_es`), MODIFY COLUMN `title_es` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_pt`), MODIFY COLUMN `title_pt` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_de`), MODIFY COLUMN `title_de` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_fr`), MODIFY COLUMN `title_fr` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_it`), MODIFY COLUMN `title_it` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_pl`), MODIFY COLUMN `title_pl` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_ja`), MODIFY COLUMN `title_ja` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_lt`), MODIFY COLUMN `title_lt` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_lv`), MODIFY COLUMN `title_lv` VARCHAR(150) NOT NULL;
ALTER TABLE `_regions` ADD INDEX (`title_cz`), MODIFY COLUMN `title_cz` VARCHAR(150) NOT NULL;

ALTER TABLE `_cities` MODIFY COLUMN `city_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
ALTER TABLE `_cities` MODIFY COLUMN `country_id` INT NOT NULL;
ALTER TABLE `_cities` ADD CONSTRAINT fk_country_id FOREIGN KEY (country_id) REFERENCES `_countries`(country_id);
ALTER TABLE `_cities` MODIFY COLUMN `important` TINYINT(1) NOT NULL;
ALTER TABLE `_cities` MODIFY COLUMN `region_id` INT NOT NULL;
ALTER TABLE `_cities` ADD CONSTRAINT fk_region_id FOREIGN KEY (region_id) REFERENCES `_regions_cities_cities`(region_id);
ALTER TABLE `_cities` ADD INDEX (`title_ru`),  MODIFY COLUMN `title_ru` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_ua`), MODIFY COLUMN `title_ua` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_be`), MODIFY COLUMN `title_be` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_en`), MODIFY COLUMN `title_en` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_es`), MODIFY COLUMN `title_es` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_pt`), MODIFY COLUMN `title_pt` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_de`), MODIFY COLUMN `title_de` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_fr`), MODIFY COLUMN `title_fr` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_it`), MODIFY COLUMN `title_it` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_pl`), MODIFY COLUMN `title_pl` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_ja`), MODIFY COLUMN `title_ja` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_lt`), MODIFY COLUMN `title_lt` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_lv`), MODIFY COLUMN `title_lv` VARCHAR(150) NOT NULL;
ALTER TABLE `_cities` ADD INDEX (`title_cz`), MODIFY COLUMN `title_cz` VARCHAR(150) NOT NULL;
