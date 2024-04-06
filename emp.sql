-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: emp
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `additems`
--

DROP TABLE IF EXISTS `additems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additems` (
  `itemid` varchar(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `discription` longtext,
  `qty` varchar(20) DEFAULT NULL,
  `category` enum('electronics','grocery','fashion','home') DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additems`
--

LOCK TABLES `additems` WRITE;
/*!40000 ALTER TABLE `additems` DISABLE KEYS */;
INSERT INTO `additems` VALUES ('A0eF3nJ0o','shirts','Product details Material composition60% Cotton, 40% Polyester Fit typeRegular Fit Sleeve typeLong Sleeve Collar styleClassic LengthStandard Length Neck styleDom Country of OriginIndia','5','fashion','499'),('A1eR8dO0h','t shirt','Product details Material composition60% Cotton, 40% Polyester PatternSolid Fit typeRegular Fit Sleeve typeHalf Sleeve Collar styleBand Collar LengthStandard Length Country of OriginIndia','5','fashion','399'),('A3cH9oF5f','watchs for women','NIBOSI Women Watches Analogue Wrist Watches Watches for Women\'s & Girls&Miss&Ladies Rose Gold Dial Watch with Stylish Diamond Studded Watches','10','fashion','1999'),('A4hU3kS7x',' Women\'s Fit T-Shirt ','Amazon Brand - Symbol Women\'s Cotton Stretch Regular Fit T-Shirt (Pack of 2)','10','fashion','599'),('A4nU0vS1g','earrings','HighSpark Solitaire Stud Earrings 92.5 Sterling Silver in Gold Finish Round Brilliant Cubic Zirconia Tops for Men, Women, Boys and Girls','10','fashion','499'),('A9oX3tK5m','Brown Belt','HAMMONDS FLYCATCHER Genuine Leather Belt for Men - Adjustable Waistband up to 46 Inches Belt for Jeans & Dress Pants - 1.5\" Width - Zinc Casted Buckle - Formal & Casual Wear - Branded Mens Belt','10','fashion','199'),('B1qB0mZ3t','Yashika Women\'s Elegant Saree','Yashika Women\'s Elegant Chiffon Saree with Blouse Material - Embrace Trendy Style and Timeless Elegance in this Exquisite Attire','10','fashion','7999'),('B4aD4fI3l','Bata Black Shoes','Product details Material typeSynthetic Closure typeLace-Up Heel typeFlat Water resistance levelNot Water Resistant Sole materialPolyurethane StyleSneaker Country of OriginIndia','10','fashion','2999'),('B7dI6mF4k','Chia Seeds','Go Vegan Mix Seeds For Eating 250gm | 5 in 1 Super Seeds Mix of Sunflower, Pumpkin, Flax, Watermelon & Chia Seeds (jar pack)','20','grocery','199'),('C1aA3bG1u','wrist watch','NIBOSI Men\'s Watches Analog Business Chronograph Casual Watches Military Waterproof Stainless Steel Wrist Watches for Boy','6','fashion','999'),('C1aT5fE6r','watchs for women','NIBOSI Women Watches Analogue Wrist Watches Watches for Women\'s & Girls&Miss&Ladies Rose Gold Dial Watch with Stylish Diamond Studded Watches','20','fashion','2999'),('C3vX6sC2p','peri peri cashew','The Butternut Co. Cashew Nuts Peri Peri - 250gm, 100% Natural, High Protein & Fibre, Gluten Free, Vegan','10','grocery','199'),('C8oR2xJ8y','Men\'s Perfume','Skinn by Titan Tales Malaga Long Lasting Everyday Eau De Parfum for Women - 100 mL | Women\'s Fragrance | For Daily Use | Premium Fragrance | Women\'s Perfume | Gift for women','10','fashion','699'),('D2eA2yJ9i','Women\'s Perfume','Skinn by Titan Tales Malaga Long Lasting Everyday Eau De Parfum for Women - 100 mL | Women\'s Fragrance | For Daily Use | Premium Fragrance | Women\'s Perfume | Gift for women','10','fashion','599'),('D7pQ6aB5x','watchs for women','NIBOSI Women Watches Analogue Wrist Watches Watches for Women\'s & Girls&Miss&Ladies Rose Gold Dial Watch with Stylish Diamond Studded Watches','10','fashion','2999'),('D7vM1sX8z','watchs for women','Carlington Iconic 2034 Analog Ladies Watch with Premium Linked Strap, Scratch-Resistant Dial, and Water-Resistant Body - Elegant Watches for Women','10','fashion','799'),('D8hT5vB9f','Men\'s Perfume','Skinn by Titan Tales Malaga Long Lasting Everyday Eau De Parfum for Women - 100 mL | Women\'s Fragrance | For Daily Use | Premium Fragrance | Women\'s Perfume | Gift for women','10','fashion','599'),('E0kI2rT3y','cooking oil','Fortune Sunlite Refined Sunflower Oil, 5L Jar','10','grocery','199'),('E1iH3lG8t','Heel Sandals','Bella Toes Women\'s/Ladies/Female\'s/Girl Synthetic Leather Casual Stylish Fancy Lightweight Wedge Heel Sandals','10','fashion','699'),('E7nL2zW9d','Brown Belt','VOGARD Mens Braided Genuine Leather Original Branded Belt | Woven Leather Belt for Casual Pants with Brass Buckle| Micro Adjustable','10','fashion','199'),('E7tJ7tL3s','shirts','white in colour 3/4 th sleves Twills','100','fashion','499'),('E9mZ1wJ6k','Perfume ','EMBARK My Freedom for Her Women’s Premium Perfume - 30ml | Long Lasting, Floral, Fruity, Musk EDP | Online Exclusive','10','fashion','699'),('F1fE7bV5n','Hair Dryer ','Vega Vhdp-02 Professional Hair Dryer For Women & Men- (Pro Touch 1800-2000W) Cool Shot Button & 2 Detachable Nozzles|Black|2000 Watt','10','electronics','499'),('F4zE0dH4k','nail polish','DeBelle Gel Nail Polish (Non- UV) | Long Lasting | Seaweed Enriched |Chip Resistant | Toxic & cruelty Free | 6ml (Poise Nicole)','10','fashion','159'),('F5oI1nA1n','watchs for women','NIBOSI Women Watches Analogue Wrist Watches Watches for Women\'s & Girls&Miss&Ladies Rose Gold Dial Watch with Stylish Diamond Studded Watches','10','fashion','2999'),('F7jH5mR8n',' Women\'s Fit T-Shirt ','Amazon Brand - Symbol Women\'s Cotton Stretch Regular Fit T-Shirt (Pack of 2)','10','fashion','599'),('G5fW4uV8k','sports t shirts','JJ TEES Polyester Half Sleeve Jersey with Round Collar and Digital Print All Over for Men (Color: White, Orange and Green)','6','fashion','299'),('H0aZ8sY3z','Headscarves','TCP Women’s Turban Cap PremiumJersey Under Scarf,Bonette InnerCap,Headscarves,Hijab','10','fashion','699'),('H2eL0lB4k','sparx shoe','Product details Material typeSynthetic Closure typeLace-Up Heel typeNo Heel Water resistance levelNot Water Resistant Sole materialPolyvinyl Chloride StyleSD9039GOWBK Country of OriginIndia','5','fashion','599'),('I7vQ1cX6l','polo t shirts','Van Heusen Men\'s Regular Fit Polo Shirt','5','fashion','399'),('J1oM9wF2u','yellow T Shirt for Men','fanideaz Mens Half Sleeve Cotton Striped Branded Polo T-Shirt for Mens || Polo T Shirt for Men || Tshirt for Men Stylish','10','fashion','999'),('J2nQ3mO7p',' white T Shirt for Men','fanideaz Mens Half Sleeve Cotton Striped Branded Polo T-Shirt for Mens || Polo T Shirt for Men || Tshirt for Men Stylish','10','fashion','699'),('J3mG8vD3o','baby products','Little\'s Organix Nourishing Baby Lotion 400ml - Pump Pack | Dermatologically tested | With Organic Aloe Vera & Neem | pH balanced | All skin types | Prevents Dryness and soothes dry skin from 1st use','10','grocery','199'),('J4yO3dV5f','mango pickle','Soul Mango Pickle in Olive Oil 265 Grams - A Tangy Delight Infused with Premium Olive Oil','10','grocery','199'),('K0hY2yN6i','walet','BEARBOND Genuine Leather Wallet with RFID Protection | 3 Card Slots | 2 Currency & Secret Compartments | Zip Compartment | Coin Pocket | for Men and Boys (Black)','19','fashion','599'),('K0mL1gP7o','lipstick','MyGlamm POUT by Karan Johar - Poutitude (Fuschia Pink Shade) | Moisturising, Pigmented, Bullet Plumping Lipstick For Petal Glow Finish (3.5g)','10','fashion','699'),('K0mM9yF7e','socks','XJARVIS Ankle Length Cotton Bamboo Socks for Men & Women | Soft & Breathable | Sports Half Terry Cushion Towel | Ideal for Gym, Running & Casual Wear | Odor Free, Pack of 5','10','fashion','199'),('K5hT5sJ8h','round T Shirt for Men','fanideaz Mens Half Sleeve Cotton Striped Branded Polo T-Shirt for Mens || Polo T Shirt for Men || Tshirt for Men Stylish','10','fashion','599'),('K6lX4jL3p','sports  shoes','JQR - Signature Shoes for Men, Sports Shoes for Men, Running Shoes for Men, Men Shoes, Sports Shoes, Walking Shoes for Men, Sport Shoes for Men, Gym Shoes for Men','10','fashion','499'),('L3dR5pW3a','Leather Belt ','HORNBULL Clara Mens Leather Belt | Leather Belt For Men | Formal Mens Leather Belt','10','fashion','199'),('L3iP9kN9a','filter coffee','Continental Malgudi Filter Coffee 500gm Pouch | (80% Coffee - 20% Chicory) | Traditional South Indian Filter Coffee Powder | Freshly Roasted Ground Coffee','10','fashion','199'),('L3lJ8xI5a','Soap','Dettol Original Germ Protection Bathing Soap Bar (750gm) | Kills 99.99% germs, 150 - Pack of 5','10','grocery','199'),('L5uU2aR7v','sports  shoes','naatu V-MAX Rider Running Sports Shoe | Walking/Running Shoes for Men Running Shoes for Men Black','5','fashion','1999'),('L6uQ8kA2o','makeup kit','TYA Makeup eyeshadow Kit + 5 Pcs Makeup Brush + 2 Pc Blender Puff Combo - Multicolor','10','fashion','399'),('M1jR5iP8p','Polo T Shirt for Men','fanideaz Mens Half Sleeve Cotton Striped Branded Polo T-Shirt for Mens || Polo T Shirt for Men || Tshirt for Men Stylish','10','fashion','699'),('M1kL3gI3o','Formal Black Shoes','Product details Material typeSynthetic Closure typeLace-Up Heel typeFlat Water resistance levelNot Water Resistant Sole materialPolyurethane StyleSneaker Country of OriginIndia','10','fashion','2999'),('M6iL1rK3g','polo T Shirt for Men','fanideaz Mens Half Sleeve Cotton Striped Branded Polo T-Shirt for Mens || Polo T Shirt for Men || Tshirt for Men Stylish','10','fashion','599'),('N1wI2vA7k','Tata Salt','About this item TASTES NATURAL: Combines the goodness of iodine and crystal salt SOLAR-EVAPORATED: Sourced from the sea & is hygienically packed IODINE GUARANTEED: Right balance of Iodine in Tata Crystal Salt HELPS MENTAL DEVELOPMENT: Iodine is generally known to support the mental development of children AMAZING DISHES: It is best used in dishes like sambhar, chutney and pickles ALSO TRY: Try Tata Salt Lite, Tata Salt SuperLite, Tata Salt Black Salt and Tata Salt Rock Salt COMMONLY SEARCHED TOPICS: salt, tata salt, tata salt crystal, table salt, salt in pantry, salt tata, namak pantry 1kg, salt 1kgALSO TRY: Try Tata Salt Lite, Tata Salt SuperLite, Tata Salt Black Salt and Tata Salt Rock Salt','50','grocery','29'),('N2wB3zF4d','Kissan Mixed jam','  Kissan Mixed jam Fruit Jam, With Fruit Ingredients, 700 g','10','grocery','199'),('N3wK2tR2s','earrings','HighSpark Solitaire Stud Earrings 92.5 Sterling Silver in Gold Finish Round Brilliant Cubic Zirconia Tops for Men, Women, Boys and Girls','10','fashion','699'),('N4yL2uF2t',' Women\'s Fit T-Shirt ','Amazon Brand - Symbol Women\'s Cotton Stretch Regular Fit T-Shirt (Pack of 2)','10','fashion','799'),('N5sL0pH3t','maggi','MAGGI 2-minute Instant Noodles, Masala Noodles with Goodness of Iron, Made with Choicest Quality Spices, Favourite Masala Taste, 70 grams Pouch','10','grocery','15'),('N7jL2aU1v','round neck t shirt','Material composition100% Cotton PatternSolid Fit typeSlim Fit Sleeve typeShort Sleeve Collar styleCollarless LengthStandard Length Country of OriginIndia','5','fashion','299'),('N8hN8iG4e',' Earrings ','LaBling Chunky Gold Earrings for Women | Statement Teardrop Earrings | Lovely Gift for Women & Girls','10','fashion','499'),('O0nH3iB6o','wrist watch','NIBOSI Men\'s Watches Analog Business Chronograph Casual Watches Military Waterproof Stainless Steel Wrist Watches for Boy','5','fashion','399'),('O2eG3mA3x','Women\'s Elegant Saree','Yashika Women\'s Elegant Chiffon Saree with Blouse Material - Embrace Trendy Style and Timeless Elegance in this Exquisite Attire','10','fashion','6999'),('O4dD5jA5f','table fan','Crompton HighSpeed Torpedo 400 mm Pedestal Fan (Black)','10','electronics','1599'),('O4eC9cP2j','Natural Cork women','GLAMSTREET Stylish and Fashion Trendy, Extra Soft Sandals for Women with Natural Cork and EVA Sole Slippers','10','fashion','999'),('P4wF7iY8o','Blue Belt for Men','URBAN FOREST Leather Belt for Men','10','fashion','199'),('P9fC0lR8f','mida','About this item It is white in colour with a smooth texture Blend it with other flour or use individually to prepare dishes No artificial flavour','10','grocery','99'),('Q0oB7wI2l','shoes','Product details Material typeMesh Closure typeLace-Up Heel typePlatform Heel Water resistance levelWater Resistant Sole materialEthylene Vinyl Acetate StyleRunning Shoes Country of OriginIndia','5','fashion','999'),('Q4bD5wU9l','Plastic Easy boxes','MR Products Plastic Easy Flow Cereal Dispenser Storage Box Jar Food Rice Pasta Pulses Square Containers with Lid, Idle for Kitchen 1100 ml Push Up Container (Seagreen, 1100 ml) - Pack of 6','10','grocery','399'),('Q5dA1sD2n','Womens Oversized T-Shirt ','Wear Your Opinion Womens Awning Stripe Printed Oversized T-Shirt (Design: RedStripe)','10','fashion','599'),('Q6eT5xQ2x','walet brown','BEARBOND Genuine Leather Wallet with RFID Protection | 3 Card Slots | 2 Currency & Secret Compartments | Zip Compartment | Coin Pocket | for Men and Boys (Black)','10','fashion','699'),('Q7oM7sX6w','nail polish','DeBelle Gel Nail Polish (Non- UV) | Long Lasting | Seaweed Enriched |Chip Resistant | Toxic & cruelty Free | 6ml (Poise Nicole)','10','fashion','159'),('R5qQ5dQ3w','Oats','Yogabar 100% Rolled Oats 1kg (Buy 1 Get 1 FREE) | Premium Golden, Gluten Free Oats with High Fibre (1 Kg Each)','10','grocery','199'),('R7lF0cT2d','polo T Shirt for Men','fanideaz Mens Half Sleeve Cotton Striped Branded Polo T-Shirt for Mens || Polo T Shirt for Men || Tshirt for Men Stylish','10','fashion','599'),('S8iP1cV1a',' Tarp Clips','Xfopz 50pcs Shade Cloth Heavy Duty Lock Grip, New Shade Cloth Plastic Clips Greenhouse Shade Cloth Fix Clamp, Windproof Awning Clamp Grip Tarp Clips','10','fashion','299'),('T1jK2rI4f',' dimond Pendant','GIVA 925 Sterling Silver Rose Gold Pendant Set | Gifts for Women and Girls | With Certificate of Authenticity and 925 Stamp | 6 Months Warranty*','10','fashion','7999'),('T1nD0hE5h','shoes','OFF LIMITS Men\'s STUSSYY (Memory TECH) Running Shoes','10','fashion','599'),('T4aB6nZ4c',' white T Shirt for Men','fanideaz Mens Half Sleeve Cotton Striped Branded Polo T-Shirt for Mens || Polo T Shirt for Men || Tshirt for Men Stylish','10','fashion','699'),('T5dQ1mF4s','Headscarves','TCP Women’s Turban Cap PremiumJersey Under Scarf,Bonette InnerCap,Headscarves,Hijab','10','fashion','499'),('T7jW0sD2f','hoodie','JRCY Cotton Fleece Men\'s Fine Length Sweat Shirts Comfortable Fit, Extra Warmth, Stylish Design | Classic Comfort and Style Hoodie for Men','5','fashion','499'),('T7sX6mO6q','sports Shoes','Product details Material typeSynthetic Closure typeLace-Up Heel typeFlat Water resistance levelNot Water Resistant Sole materialPolyurethane StyleSneaker Country of OriginIndia','10','fashion','1999'),('T8qA3fH1t','nike pant','JOLGER Men’s Sports Mesh Running Track Pants | Sweat Pants for Men | Gym Joggers for Men | Men’s Sports Track Pants for Gym Wear','10','fashion','499'),('T8tT4gY3e','Scarf Hijab Cap ','PAROPKAR Modal Hijab Cap Adjustable Stretchy Turban Full Cover Shawl Cap Full Neck Coverage Under Scarf Hijab Cap Head Wraps Solid Color for Lady','10','fashion','499'),('U1vD9aC0s','walet','BEARBOND Genuine Leather Wallet with RFID Protection | 3 Card Slots | 2 Currency & Secret Compartments | Zip Compartment | Coin Pocket | for Men and Boys (Black)','10','fashion','599'),('U2aV5rR2n','Whole Raw Cashew (Kaju)','WONDERLAND FOODS (DEVICE) Whole Raw Cashew (Kaju) W400-Grade 1Kg (500G X 2 Jar)','10','grocery','199'),('U3gO3kP2n','lip flops for girls','ZaHu women flats slippers stylish model fashion flat casual daily use beige cream off white sandals t-strap flip flops for girls ladies slipper chappal','10','fashion','299'),('U4kL4cY9f','Fresh Lemon','Fresh Lemon, 6 Pcs','10','grocery','19'),('U7zW4dT8x','round T Shirt for Men','fanideaz Mens Half Sleeve Cotton Striped Branded Polo T-Shirt for Mens || Polo T Shirt for Men || Tshirt for Men Stylish','10','fashion','1999'),('V0fY2mL7q','saree','SATIKA RITI Women\'s Georgette Floral Digital Printed Ready To Wear one Minute Saree With Unstitched Blouse Piece','10','fashion','7999'),('V7cT1nT2j','saree','SATIKA RITI Women\'s Georgette Floral Digital Printed Ready To Wear one Minute Saree With Unstitched Blouse Piece','10','fashion','5999'),('V7lO6yZ3a','hand bag','BELLISSA Premium PU Leather Handbags For Women | Solid Top-Handle Satchel Bag | Stylish Designer Medium Size Bag For Ladies | Dual Compartment Easy To Carry Office Bag','10','fashion','1199'),('V7yP2kY4r','saree','SATIKA RITI Women\'s Georgette Floral Digital Printed Ready To Wear one Minute Saree With Unstitched Blouse Piece','10','fashion','599'),('V8zJ1yV4c','track pant','Product details Material composition60% Cotton, 40% Polyester Fit typeRegular Fit Sleeve typeLong Sleeve Collar styleClassic LengthStandard Length Neck styleDom Country of OriginIndia','5','fashion','599'),('W0bC9hQ3h','Hijab Cap','NAZNEEN Stretchable jersey Bun Instant Black Under Hijab Cap with Tie','10','fashion','299'),('W2xM4kM2o','chain girls','MEENAZ Pendant For Girls Women Ladies girlfriend Wife Heart Necklace locket 4 Heart Magnetic Rose Gold Necklace Heart Necklace Diamond Pendants chains Valentine gifts Birthday Gift propose lovers love','10','fashion','399'),('W3bB8iG2p','ring','GIVA 925 Sterling Silver Deeply in Love Ring, Adjustable | Gifts for Women and Girls | With Certificate of Authenticity and 925 Stamp | 6 Month Warranty*','20','fashion','1999'),('W5fJ1jS6s','Men\'s Perfume','Skinn by Titan Tales Malaga Long Lasting Everyday Eau De Parfum for Women - 100 mL | Women\'s Fragrance | For Daily Use | Premium Fragrance | Women\'s Perfume | Gift for women','10','fashion','599'),('X1eI0wP2q','Women Heel','Marc Loire Women\'s Pointed Toe Block Heel Pumps for Office, Party and Formal Occasions','10','fashion','599'),('X1mC3kG2a','chain girls','GIVA 925 Sterling Silver Silver Zircon Infinity Heart Pendant with Link Chain | Gifts for Girlfriend, Gifts for Women and Girls |With Certificate of Authenticity and 925 Stamp | 6 Month Warranty*','10','fashion','599'),('X1wL7tZ1f','cargo pant','MOUNTMILLER Tactical Pant - Ripstop Fabric, Multi Pocket, High Performance Cargo Pant with UV Protection','4','fashion','699'),('X4lC9fD6o','Women\'s Perfume','Skinn by Titan Tales Malaga Long Lasting Everyday Eau De Parfum for Women - 100 mL | Women\'s Fragrance | For Daily Use | Premium Fragrance | Women\'s Perfume | Gift for women','10','fashion','699'),('X6iL8oS9z',' dimond earrings','HighSpark Solitaire Stud Earrings 92.5 Sterling Silver in Gold Finish Round Brilliant Cubic Zirconia Tops for Men, Women, Boys and Girls','10','fashion','599'),('X6yX3xJ3f','smart watch','Fastrack Limitless Glide Advanced UltraVU HD Display|BT Calling|ATS Chipset|100+ Sports Modes & Watchfaces|Calculator|Voice Assistant|in-Built Games|24 * 7 HRM|IP68 Smartwatch','6','fashion','1299'),('X8yC3cB7t','Lakme Fairness Day Cream 5','Lakme Perfect Radiance Fairness Day Cream 50 g','10','fashion','359'),('X9zL7aJ4m','round T Shirt for Men','fanideaz Mens Half Sleeve Cotton Striped Branded Polo T-Shirt for Mens || Polo T Shirt for Men || Tshirt for Men Stylish','10','fashion','699'),('Y1dZ7xZ8f','Fabrics for Women & Girls','Huma Nasheed\'s Strap Cap, Instant Inner Hijab in Soft Stretchable Hosiery Fabrics for Women & Girls','10','fashion','699'),('Y4sI9yY2n','Bata Brown Shoes','Product details Material typeSynthetic Closure typeLace-Up Heel typeFlat Water resistance levelNot Water Resistant Sole materialPolyurethane StyleSneaker Country of OriginIndia','10','fashion','1999'),('Y9wR4wC5t','flip flops for girls','ZaHu women flats slippers stylish model fashion flat casual daily use beige cream off white sandals t-strap flip flops for girls ladies slipper chappal','10','fashion','499'),('Z7qY9sJ0u','watchs for women','NIBOSI Women Watches Analogue Wrist Watches Watches for Women\'s & Girls&Miss&Ladies Rose Gold Dial Watch with Stylish Diamond Studded Watches','10','fashion','1999');
/*!40000 ALTER TABLE `additems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminsignup`
--

DROP TABLE IF EXISTS `adminsignup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminsignup` (
  `name` varchar(30) DEFAULT NULL,
  `mobile` bigint NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`mobile`),
  UNIQUE KEY `email` (`email`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminsignup`
--

LOCK TABLES `adminsignup` WRITE;
/*!40000 ALTER TABLE `adminsignup` DISABLE KEYS */;
INSERT INTO `adminsignup` VALUES ('HEMANTHAKUMAR MANGALA',916301922694,'hemanthmangala88@gmail.com','200288mhk');
/*!40000 ALTER TABLE `adminsignup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `name` varchar(30) DEFAULT NULL,
  `emailid` varchar(40) DEFAULT NULL,
  `message` tinytext
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `Id` int unsigned DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Result` varchar(80) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `salary` int unsigned DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ordid` int NOT NULL AUTO_INCREMENT,
  `itemid` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  PRIMARY KEY (`ordid`),
  KEY `itemid` (`itemid`),
  KEY `username` (`username`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `additems` (`itemid`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `signup` (`username`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'G5fW4uV8k','HEMANTHAKUMAR MANGALA','sports t shirts','1',299),(2,'G5fW4uV8k','HEMANTHAKUMAR MANGALA','sports t shirts','1',299),(3,'O4dD5jA5f','HEMANTHAKUMAR MANGALA','table fan','1',1599),(4,'F1fE7bV5n','HEMANTHAKUMAR MANGALA','Hair Dryer ','1',499),(5,'C1aA3bG1u','HEMANTHAKUMAR MANGALA','wrist watch','1',999),(6,'F4zE0dH4k','HEMANTHAKUMAR MANGALA','nail polish','1',159),(7,'F4zE0dH4k','HEMANTHAKUMAR MANGALA','nail polish','1',159),(8,'C3vX6sC2p','HEMANTHAKUMAR MANGALA','peri peri cashew','1',199),(9,'C3vX6sC2p','HEMANTHAKUMAR MANGALA','peri peri cashew','1',199),(10,'C3vX6sC2p','HEMANTHAKUMAR MANGALA','peri peri cashew','1',199),(11,'V8zJ1yV4c','HEMANTHAKUMAR MANGALA','track pant','1',599),(12,'A0eF3nJ0o','HEMANTHAKUMAR MANGALA','shirts','1',499),(13,'A0eF3nJ0o','HEMANTHAKUMAR MANGALA','shirts','1',499),(14,'A0eF3nJ0o','HEMANTHAKUMAR MANGALA','shirts','1',499),(15,'A0eF3nJ0o','HEMANTHAKUMAR MANGALA','shirts','1',499),(16,'N5sL0pH3t','HEMANTHAKUMAR MANGALA','maggi','1',15),(17,'N5sL0pH3t','HEMANTHAKUMAR MANGALA','maggi','1',15),(18,'N5sL0pH3t','HEMANTHAKUMAR MANGALA','maggi','1',15),(19,'N5sL0pH3t','HEMANTHAKUMAR MANGALA','maggi','1',15),(20,'N5sL0pH3t','HEMANTHAKUMAR MANGALA','maggi','1',15),(21,'C3vX6sC2p','HEMANTHAKUMAR MANGALA','peri peri cashew','1',199),(22,'A0eF3nJ0o','HEMANTHAKUMAR MANGALA','shirts','1',499),(23,'B7dI6mF4k','HEMANTHAKUMAR MANGALA','Chia Seeds','1',199);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `username` varchar(30) NOT NULL,
  `itemid` varchar(30) NOT NULL,
  `title` tinytext,
  `review` text,
  `rating` int DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`itemid`),
  KEY `itemid` (`itemid`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`username`) REFERENCES `signup` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`itemid`) REFERENCES `additems` (`itemid`) ON DELETE CASCADE ON UPDATE CASCADE
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup` (
  `username` varchar(30) NOT NULL,
  `mobile` bigint DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES ('HEMANTHAKUMAR MANGALA',916301922694,'hemanthmangala88@gmail.com','1-20,KUMMETHA(V),PEDDA PAPPUR(M) ANANTAPUR(D)','200288mhk'),('meghana',9652088069,'siddabathinimeghana@gmail.com','guntur','9959577681');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `new` varchar(60) DEFAULT NULL,
  `age` int unsigned DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `dept` varchar(60) DEFAULT NULL,
  `placment` varchar(60) DEFAULT NULL,
  `id` int unsigned DEFAULT NULL,
  `education` varchar(60) DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('guntur',21,'hemanth','cse','no',2001,'b.tech'),('guntur',22,'naveen','csm','no',2001,'b.tech'),('kummetha',21,'lakshmi narayana','cmd','no',2091,'nursing');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04 10:33:02
