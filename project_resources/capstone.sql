/*
 Navicat Premium Data Transfer

 Source Server         : MySQL-LOCAL
 Source Server Type    : MariaDB
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : capstone

 Target Server Type    : MariaDB
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 06/02/2023 16:28:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for artist_table
-- ----------------------------
DROP TABLE IF EXISTS `artist_table`;
CREATE TABLE `artist_table`  (
  `artist_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `barangay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `postal_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `open_for_commission` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`artist_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artist_table
-- ----------------------------
INSERT INTO `artist_table` VALUES (1, 'Foskin', 'Mattie', '98146355218', 'mfoskin0@uiuc.edu', 'FYL4YYPVohK', '59156 Cardinal Plaza', '7', 'Dayton', 'New Orleans', 'Louisiana', '70149', 1);
INSERT INTO `artist_table` VALUES (2, 'Hellewell', 'Katharine', '98894723445', 'khellewell1@wordpress.com', 'nAY6qHnhx', '83720 Fallview Place', '3', 'Hollow Ridge', 'Newport Beach', 'California', '92662', 0);
INSERT INTO `artist_table` VALUES (3, 'Rother', 'Mollie', '91460176855', 'mrother2@alibaba.com', 'pC6XqMFH', '73 Autumn Leaf Parkway', '6', 'Grover', 'Odessa', 'Texas', '79769', 0);
INSERT INTO `artist_table` VALUES (4, 'Eric', 'Mamie', '95697275560', 'meric3@fema.gov', 'UjhE9xpoNte', '456 Reindahl Park', '2', 'Artisan', 'Battle Creek', 'Michigan', '49018', 1);
INSERT INTO `artist_table` VALUES (5, 'Danelutti', 'Dyane', '94005026087', 'ddanelutti4@google.pl', 'uDweg93rv', '3692 Barby Trail', '5', 'School', 'Washington', 'District of Columbia', '20073', 1);
INSERT INTO `artist_table` VALUES (6, 'Richardot', 'Renaud', '99378998887', 'rrichardot5@lulu.com', 'IrrbnqRy', '80 Superior Road', '1', 'Cody', 'Washington', 'District of Columbia', '20404', 0);
INSERT INTO `artist_table` VALUES (7, 'Ramberg', 'Blythe', '93147495000', 'bramberg6@tuttocitta.it', 'HM1Kn8vcBkU9', '7 Blaine Parkway', '10', 'Buhler', 'Newport News', 'Virginia', '23612', 0);
INSERT INTO `artist_table` VALUES (8, 'De Castri', 'Asia', '95045842315', 'adecastri7@feedburner.com', 'vUa6qgPLVyRR', '71039 Spaight Park', '1', 'Stang', 'Salinas', 'California', '93907', 0);
INSERT INTO `artist_table` VALUES (9, 'Sebley', 'Marijn', '93701490333', 'msebley8@csmonitor.com', 'fnRSWyTZl1E', '45488 Karstens Circle', '3', 'Ridge Oak', 'Yonkers', 'New York', '10705', 0);
INSERT INTO `artist_table` VALUES (10, 'Strangeways', 'Bevon', '93015619047', 'bstrangeways9@github.io', 'SherFVJtw', '12 Thompson Crossing', '9', 'Delladonna', 'Midland', 'Texas', '79710', 1);
INSERT INTO `artist_table` VALUES (11, 'Bonn', 'Constantine', '91445659972', 'cbonna@tuttocitta.it', 'prXzWtAA3K', '12 La Follette Parkway', '1', 'Linden', 'Salt Lake City', 'Utah', '84189', 0);
INSERT INTO `artist_table` VALUES (12, 'Northcote', 'Garwood', '90206906145', 'gnorthcoteb@goo.ne.jp', 'KZmUj5ykhP', '17 Cardinal Terrace', '1', 'Petterle', 'Salt Lake City', 'Utah', '84135', 1);
INSERT INTO `artist_table` VALUES (13, 'Youens', 'Milena', '92568310723', 'myouensc@tinyurl.com', 'fHerktPf1nIg', '8857 Tennyson Court', '10', 'Fieldstone', 'Milwaukee', 'Wisconsin', '53215', 1);
INSERT INTO `artist_table` VALUES (14, 'Deathridge', 'Clarke', '94538792357', 'cdeathridged@ed.gov', 'EHOSw2Q1', '5 Crescent Oaks Street', '10', 'Union', 'Oakland', 'California', '94605', 1);
INSERT INTO `artist_table` VALUES (15, 'Boyce', 'Wallas', '99913240107', 'wboycee@canalblog.com', '8OPSmb', '558 Johnson Parkway', '7', 'Orin', 'Akron', 'Ohio', '44310', 1);
INSERT INTO `artist_table` VALUES (16, 'Dahl', 'Delinda', '92133463720', 'ddahlf@harvard.edu', 'd9FxONSYwnS', '83 Towne Street', '8', 'Superior', 'Cincinnati', 'Ohio', '45999', 0);
INSERT INTO `artist_table` VALUES (17, 'Lapree', 'Helyn', '92167154461', 'hlapreeg@newsvine.com', 'xxqc9p', '139 Oriole Drive', '3', 'Everett', 'Santa Monica', 'California', '90405', 0);
INSERT INTO `artist_table` VALUES (18, 'Chezier', 'Bernette', '91156524644', 'bchezierh@lycos.com', '0W5v1AGF', '29786 Petterle Terrace', '5', 'Monument', 'Knoxville', 'Tennessee', '37914', 0);
INSERT INTO `artist_table` VALUES (19, 'Obell', 'Stanley', '93215078902', 'sobelli@mozilla.org', 'HoHIlWnoE', '89573 Dunning Plaza', '1', 'Chinook', 'Tampa', 'Florida', '33661', 0);
INSERT INTO `artist_table` VALUES (20, 'Gensavage', 'Harmonia', '94690543623', 'hgensavagej@netscape.com', 'iz0pMUfkN3K5', '73 Birchwood Lane', '2', 'Loftsgordon', 'San Diego', 'California', '92115', 1);

-- ----------------------------
-- Table structure for base_table
-- ----------------------------
DROP TABLE IF EXISTS `base_table`;
CREATE TABLE `base_table`  (
  `base_id` int(11) NOT NULL AUTO_INCREMENT,
  `base_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`base_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_table
-- ----------------------------
INSERT INTO `base_table` VALUES (1, 'Canvas');
INSERT INTO `base_table` VALUES (2, 'Board');
INSERT INTO `base_table` VALUES (3, 'Cardboard');
INSERT INTO `base_table` VALUES (4, 'Wood');
INSERT INTO `base_table` VALUES (5, 'Glass');
INSERT INTO `base_table` VALUES (6, 'Panel');
INSERT INTO `base_table` VALUES (7, 'Bronze');
INSERT INTO `base_table` VALUES (8, 'Paper');
INSERT INTO `base_table` VALUES (9, 'Fine Art Paper');
INSERT INTO `base_table` VALUES (10, 'Special Paper');
INSERT INTO `base_table` VALUES (11, 'Fabric');
INSERT INTO `base_table` VALUES (12, 'Soft (Fabrics)');
INSERT INTO `base_table` VALUES (13, 'Others');

-- ----------------------------
-- Table structure for buyer_table
-- ----------------------------
DROP TABLE IF EXISTS `buyer_table`;
CREATE TABLE `buyer_table`  (
  `buyer_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `barangay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `postal_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`buyer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buyer_table
-- ----------------------------
INSERT INTO `buyer_table` VALUES (1, 'Drache', 'Benedicta', '+1 (405) 56', 'bdrache0@harvard.edu', 'aHvKPC', '7 Vera Drive', '9', 'Charlie November Alfa Quebec Sierra India Victor Echo Bravo Uniform Whiskey Oscar Juliett Lima Yankee Hotel Delta Papa Romeo Mike', 'Oklahoma City', 'Oklahoma', '73109');
INSERT INTO `buyer_table` VALUES (2, 'Duplan', 'Netty', '+1 (408) 67', 'nduplan1@marketwatch.com', '9sXsmBMDax', '99671 Fuller Park', '10', 'Romeo Charlie Lima Juliett Alfa Kilo Echo Quebec Delta Sierra Oscar Yankee Mike Bravo Foxtrot Whiskey X-ray Zulu', 'San Jose', 'California', '95138');
INSERT INTO `buyer_table` VALUES (3, 'Barrasse', 'Pearl', '+1 (915) 42', 'pbarrasse2@mayoclinic.com', 'nsjO4zh', '61657 Jay Way', '8', 'Bravo Oscar Lima Victor Yankee Mike November Romeo Delta Sierra Alfa', 'El Paso', 'Texas', '79940');
INSERT INTO `buyer_table` VALUES (4, 'Canas', 'Kelley', '+1 (650) 80', 'kcanas3@apache.org', 'Hdu6b0RRh484', '293 Maryland Trail', '4', 'Tango Echo Foxtrot Alfa November X-ray Quebec Lima Oscar Charlie Yankee Bravo Sierra Delta', 'Redwood City', 'California', '94064');
INSERT INTO `buyer_table` VALUES (5, 'Endrizzi', 'Pieter', '+1 (806) 78', 'pendrizzi4@nbcnews.com', '3oe5BUPt', '25666 Mitchell Circle', '2', 'Yankee Charlie Victor Sierra Lima Papa Oscar Mike Whiskey November Golf Tango Delta India Alfa Romeo Kilo', 'Amarillo', 'Texas', '79105');
INSERT INTO `buyer_table` VALUES (6, 'Wiskar', 'Daven', '+1 (831) 98', 'dwiskar5@cnn.com', 'poNLpKrO', '57 Shasta Road', '8', 'Oscar Lima Delta Papa Charlie Mike Uniform Kilo November Tango Alfa X-ray Sierra Golf Whiskey Victor Hotel', 'Salinas', 'California', '93907');
INSERT INTO `buyer_table` VALUES (7, 'McClements', 'Sal', '+1 (812) 98', 'smcclements6@spotify.com', 'Cw9LlY', '2 Sloan Plaza', '7', 'X-ray Echo Romeo Golf Charlie Kilo Lima Yankee Mike Victor Uniform', 'Evansville', 'Indiana', '47732');
INSERT INTO `buyer_table` VALUES (8, 'Lethibridge', 'Laurence', '+1 (301) 66', 'llethibridge7@amazon.co.jp', 'cWpdq0k', '22594 Meadow Vale Street', '7', 'Whiskey Kilo November Yankee Romeo Hotel Charlie Bravo India Sierra Victor Mike Lima Foxtrot Golf Juliett Oscar Uniform Echo', 'Baltimore', 'Maryland', '21203');
INSERT INTO `buyer_table` VALUES (9, 'Verick', 'Elicia', '+1 (806) 21', 'everick8@businessinsider.com', 'EiPYOAKvVn2', '4501 Kenwood Street', '7', 'Oscar Whiskey India November Delta Lima Foxtrot Uniform Quebec Bravo Charlie Papa Tango Victor', 'Lubbock', 'Texas', '79415');
INSERT INTO `buyer_table` VALUES (10, 'Kulis', 'Ly', '+1 (520) 93', 'lkulis9@wiley.com', 'd6pSVp8zj6W', '16189 Bultman Lane', '2', 'Zulu Echo X-ray Hotel Uniform Romeo Oscar Charlie Sierra Alfa Mike India Golf Kilo Victor Tango', 'Tucson', 'Arizona', '85710');

-- ----------------------------
-- Table structure for medium_table
-- ----------------------------
DROP TABLE IF EXISTS `medium_table`;
CREATE TABLE `medium_table`  (
  `medium_id` int(11) NOT NULL AUTO_INCREMENT,
  `medium_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`medium_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medium_table
-- ----------------------------
INSERT INTO `medium_table` VALUES (1, 'Acylic');
INSERT INTO `medium_table` VALUES (2, 'Charcoal');
INSERT INTO `medium_table` VALUES (3, 'Digital');
INSERT INTO `medium_table` VALUES (4, 'Oil');
INSERT INTO `medium_table` VALUES (5, 'Watercolor');
INSERT INTO `medium_table` VALUES (6, 'Graphite');
INSERT INTO `medium_table` VALUES (7, 'Ink');
INSERT INTO `medium_table` VALUES (8, 'Pastel');
INSERT INTO `medium_table` VALUES (9, 'Pencil');
INSERT INTO `medium_table` VALUES (10, 'Others');

-- ----------------------------
-- Table structure for ordered_item_table
-- ----------------------------
DROP TABLE IF EXISTS `ordered_item_table`;
CREATE TABLE `ordered_item_table`  (
  `ordered_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ordered_item_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  CONSTRAINT `ordered_item_table_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_table` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ordered_item_table
-- ----------------------------
INSERT INTO `ordered_item_table` VALUES (3, 2);
INSERT INTO `ordered_item_table` VALUES (14, 4);
INSERT INTO `ordered_item_table` VALUES (11, 6);
INSERT INTO `ordered_item_table` VALUES (4, 7);
INSERT INTO `ordered_item_table` VALUES (8, 8);
INSERT INTO `ordered_item_table` VALUES (7, 10);
INSERT INTO `ordered_item_table` VALUES (6, 11);
INSERT INTO `ordered_item_table` VALUES (12, 12);
INSERT INTO `ordered_item_table` VALUES (1, 16);
INSERT INTO `ordered_item_table` VALUES (10, 20);
INSERT INTO `ordered_item_table` VALUES (9, 22);
INSERT INTO `ordered_item_table` VALUES (2, 23);
INSERT INTO `ordered_item_table` VALUES (5, 28);
INSERT INTO `ordered_item_table` VALUES (13, 29);

-- ----------------------------
-- Table structure for payment_method_table
-- ----------------------------
DROP TABLE IF EXISTS `payment_method_table`;
CREATE TABLE `payment_method_table`  (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`payment_method_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_method_table
-- ----------------------------
INSERT INTO `payment_method_table` VALUES (1, 'Credit Card');
INSERT INTO `payment_method_table` VALUES (2, 'Debit Card');
INSERT INTO `payment_method_table` VALUES (3, 'eWallet');
INSERT INTO `payment_method_table` VALUES (4, 'Money Transfer');
INSERT INTO `payment_method_table` VALUES (5, 'Pay Later');

-- ----------------------------
-- Table structure for product_table
-- ----------------------------
DROP TABLE IF EXISTS `product_table`;
CREATE TABLE `product_table`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `artist_id` int(11) NULL DEFAULT NULL,
  `width` double NULL DEFAULT NULL,
  `height` double NULL DEFAULT NULL,
  `base_id` int(11) NULL DEFAULT NULL,
  `medium_id` int(11) NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  `art_style` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `coa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_preview` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `price` double NULL DEFAULT NULL,
  `sold` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `artist_id`(`artist_id`) USING BTREE,
  INDEX `base_id`(`base_id`) USING BTREE,
  INDEX `medium_id`(`medium_id`) USING BTREE,
  CONSTRAINT `product_table_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist_table` (`artist_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_table_ibfk_2` FOREIGN KEY (`medium_id`) REFERENCES `medium_table` (`medium_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_table_ibfk_3` FOREIGN KEY (`base_id`) REFERENCES `base_table` (`base_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_table
-- ----------------------------
INSERT INTO `product_table` VALUES (1, 'Boldt', 'Alessandro', 3, 89, 120, 11, 2, '2022-07-21 05:05:47', 'Gwenaëlle', '', '', 33557, 0);
INSERT INTO `product_table` VALUES (2, 'Tysack', 'Marcille', 11, 43, 29, 12, 7, '2018-04-06 22:55:09', 'Crééz', '', '', 90960, 1);
INSERT INTO `product_table` VALUES (3, 'Drayson', 'Dannye', 3, 82, 43, 12, 3, '2022-05-03 20:49:32', 'Marlène', '', '', 8240, 0);
INSERT INTO `product_table` VALUES (4, 'Garrit', 'Randal', 17, 62, 20, 11, 6, '2022-05-13 16:58:50', 'Méthode', '', '', 67886, 0);
INSERT INTO `product_table` VALUES (5, 'Buzzing', 'Vaughan', 7, 73, 59, 4, 7, '2018-10-30 03:29:44', 'Håkan', '', '', 12924, 1);
INSERT INTO `product_table` VALUES (6, 'Heaps', 'Devonne', 13, 118, 124, 10, 9, '2018-11-30 22:13:54', 'Kù', '', '', 12971, 1);
INSERT INTO `product_table` VALUES (7, 'Ferenczy', 'Audrey', 9, 52, 69, 13, 10, '2019-10-11 02:38:08', 'Marie-hélène', '', '', 35189, 1);
INSERT INTO `product_table` VALUES (8, 'Aggs', 'Nobe', 12, 92, 12, 11, 3, '2019-09-05 13:42:41', 'Cinéma', '', '', 14354, 0);
INSERT INTO `product_table` VALUES (9, 'Dulwitch', 'Olimpia', 1, 106, 41, 11, 6, '2018-12-15 14:35:49', 'Publicité', '', '', 22326, 0);
INSERT INTO `product_table` VALUES (10, 'Robke', 'Joela', 6, 61, 62, 4, 5, '2020-04-16 23:55:41', 'Esbjörn', '', '', 16342, 1);
INSERT INTO `product_table` VALUES (11, 'Organ', 'Pippo', 3, 90, 73, 11, 10, '2020-01-31 12:35:30', 'Gwenaëlle', '', '', 96597, 1);
INSERT INTO `product_table` VALUES (12, 'Beaconsall', 'Mirabel', 15, 79, 27, 11, 6, '2021-01-25 12:40:23', 'Mélodie', '', '', 52846, 0);
INSERT INTO `product_table` VALUES (13, 'Lewsley', 'Martguerita', 17, 49, 71, 3, 8, '2023-01-10 12:51:25', 'Camélia', '', '', 89153, 1);
INSERT INTO `product_table` VALUES (14, 'Alywen', 'Arel', 9, 106, 41, 13, 10, '2022-06-25 11:33:09', 'Mélia', '', '', 12948, 0);
INSERT INTO `product_table` VALUES (15, 'Sheaber', 'Mathian', 2, 85, 58, 2, 6, '2017-10-19 13:15:25', 'Maëly', '', '', 91853, 0);
INSERT INTO `product_table` VALUES (16, 'Sudran', 'Woodrow', 13, 29, 80, 10, 3, '2018-02-05 21:13:21', 'Cloé', '', '', 10687, 1);
INSERT INTO `product_table` VALUES (17, 'Nesfield', 'Joshia', 5, 14, 13, 1, 5, '2021-11-03 11:39:41', 'Örjan', '', '', 77000, 0);
INSERT INTO `product_table` VALUES (18, 'Kerkham', 'Elfie', 7, 78, 15, 1, 8, '2020-10-31 12:22:25', 'Thérèse', '', '', 44559, 0);
INSERT INTO `product_table` VALUES (19, 'Ledwidge', 'Cam', 7, 99, 53, 12, 2, '2018-10-16 20:03:57', 'Cécile', '', '', 46901, 1);
INSERT INTO `product_table` VALUES (20, 'Willets', 'Hedvig', 8, 94, 15, 3, 5, '2022-06-08 17:25:49', 'Åke', '', '', 32396, 1);
INSERT INTO `product_table` VALUES (21, 'Harrigan', 'Arni', 19, 84, 50, 12, 8, '2020-06-10 22:09:43', 'Publicité', '', '', 17920, 0);
INSERT INTO `product_table` VALUES (22, 'Conti', 'Lulu', 18, 71, 46, 10, 6, '2020-02-14 23:52:43', 'Océanne', '', '', 47330, 1);
INSERT INTO `product_table` VALUES (23, 'Wash', 'Gar', 8, 49, 107, 13, 3, '2017-12-02 21:07:44', 'Josée', '', '', 20485, 1);
INSERT INTO `product_table` VALUES (24, 'Wickins', 'Phillida', 15, 44, 125, 9, 10, '2022-05-10 10:28:50', 'Eléa', '', '', 22099, 1);
INSERT INTO `product_table` VALUES (25, 'Tonbye', 'Paxton', 10, 49, 124, 12, 3, '2021-07-03 05:53:10', 'Inès', '', '', 47199, 1);
INSERT INTO `product_table` VALUES (26, 'Cracknall', 'Anatol', 5, 126, 110, 5, 9, '2018-06-08 20:58:19', 'Adélie', '', '', 56047, 0);
INSERT INTO `product_table` VALUES (27, 'Few', 'Modesta', 7, 22, 124, 11, 7, '2020-09-12 13:20:27', 'Håkan', '', '', 86561, 1);
INSERT INTO `product_table` VALUES (28, 'Pettigrew', 'Alisander', 11, 34, 89, 5, 6, '2017-11-12 04:49:11', 'Séréna', '', '', 65426, 0);
INSERT INTO `product_table` VALUES (29, 'Waterworth', 'Margit', 5, 42, 87, 7, 2, '2018-07-02 11:28:19', 'Frédérique', '', '', 58940, 1);
INSERT INTO `product_table` VALUES (30, 'Kindread', 'Lamont', 3, 58, 37, 11, 9, '2020-06-08 22:57:11', 'Clémence', '', '', 79945, 0);

-- ----------------------------
-- Table structure for transaction_table
-- ----------------------------
DROP TABLE IF EXISTS `transaction_table`;
CREATE TABLE `transaction_table`  (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `date_of_transaction` datetime NULL DEFAULT NULL,
  `order_item_id` int(11) NULL DEFAULT NULL,
  `payment_method_id` int(11) NULL DEFAULT NULL,
  `total_price` double NULL DEFAULT NULL,
  PRIMARY KEY (`transaction_id`) USING BTREE,
  INDEX `buyer_id`(`buyer_id`) USING BTREE,
  INDEX `order_item_id`(`order_item_id`) USING BTREE,
  INDEX `payment_method_id`(`payment_method_id`) USING BTREE,
  CONSTRAINT `transaction_table_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer_table` (`buyer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `transaction_table_ibfk_2` FOREIGN KEY (`order_item_id`) REFERENCES `ordered_item_table` (`ordered_item_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `transaction_table_ibfk_3` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method_table` (`payment_method_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction_table
-- ----------------------------
INSERT INTO `transaction_table` VALUES (1, 1, '2023-02-08 16:27:14', 3, 1, 15864);
INSERT INTO `transaction_table` VALUES (2, 4, '2023-01-02 16:27:20', 4, 2, 35142);
INSERT INTO `transaction_table` VALUES (3, 2, '2022-12-05 16:27:26', 1, 3, 29092);
INSERT INTO `transaction_table` VALUES (4, 3, '2023-01-19 16:27:30', 5, 1, 27539);
INSERT INTO `transaction_table` VALUES (5, 1, '2022-12-30 16:27:35', 2, 1, 11820);

SET FOREIGN_KEY_CHECKS = 1;
