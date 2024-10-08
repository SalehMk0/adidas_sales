CREATE TABLE `adidas` (
  `sale_id` int PRIMARY KEY,
  `retailer_id` int,
  `city_id` int,
  `date_id` int,
  `product_id` int,
  `unit_price` float,
  `units_sold` int,
  `total_sales` float,
  `profit` float,
  `margin` int,
  `method_id` int
);

CREATE TABLE `Regions` (
  `region_id` int PRIMARY KEY,
  `region` varchar(255)
);

CREATE TABLE `Cities` (
  `city_id` int PRIMARY KEY,
  `city` varchar(255),
  `state_id` int
);

CREATE TABLE `States` (
  `state_id` int PRIMARY KEY,
  `state` varchar(255),
  `region_id` int
);

CREATE TABLE `products` (
  `product_id` int PRIMARY KEY,
  `product` varchar(255)
);

CREATE TABLE `Retailers` (
  `retailer_id` int PRIMARY KEY,
  `retailer` varchar(255)
);

CREATE TABLE `Sale_Methods` (
  `method_id` int PRIMARY KEY,
  `method` varchar(255)
);

CREATE TABLE `dates` (
  `date_id` int PRIMARY KEY,
  `year` int,
  `month` int,
  `day` int
);

ALTER TABLE `States` ADD FOREIGN KEY (`region_id`) REFERENCES `Regions` (`region_id`);

ALTER TABLE `Cities` ADD FOREIGN KEY (`state_id`) REFERENCES `States` (`state_id`);

ALTER TABLE `adidas` ADD FOREIGN KEY (`city_id`) REFERENCES `Cities` (`city_id`);

ALTER TABLE `adidas` ADD FOREIGN KEY (`retailer_id`) REFERENCES `Retailers` (`retailer_id`);

ALTER TABLE `adidas` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

ALTER TABLE `adidas` ADD FOREIGN KEY (`method_id`) REFERENCES `Sale_Methods` (`method_id`);

ALTER TABLE `adidas` ADD FOREIGN KEY (`date_id`) REFERENCES `dates` (`date_id`);
