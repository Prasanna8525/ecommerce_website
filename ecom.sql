-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ecom
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
  `category` enum('','electronics','grocery','fashion','home') DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additems`
--

LOCK TABLES `additems` WRITE;
/*!40000 ALTER TABLE `additems` DISABLE KEYS */;
INSERT INTO `additems` VALUES ('A4uD6oP6l','NIBOSI Men\'s Watches ','FUNCTIONS: All sub-dials and watch hands are good working; Full Functional Chronograph; 30M waterproof and Date Display. CUSTOMER SERVICE: Please do not worry any quality problem; All watch in our store will enjoy 24 Month warranty. 30 Day money back guarantee for any reason. MATERIAL: High quality black stainless steel band with double push button clasp; Precise Japan quartz movement. WATERPROOF: water resistant to 30 meters(99 feet); in general; withstands splashes or brief immersion in water; but not suitable for swimming or bathing','150','electronics','5500'),('A8zK1jU4j','Fossil Women watch','Dial Color: Mother of Pearl, Case Shape: Round Band Color: Rose Gold, Band Material: Leather Watch Movement Type: Quartz, Watch Display Type: Analog Case Material: Stainless Steel, Circumference: 185 +/- 5mm Warranty type: Manufacturer; 2 Years International Warranty Remove plastic at crown to start the watch Ideal for birthday, anniversary and wedding gift','95','electronics','6500'),('B0dY3yF8l','Women Slim Fit Top','70% Polyster,30%Cotten Package contains: 1 top Hand wash Cotton Slim Fit','25','fashion','425'),('B0pT3zV2n','iQOO Z6 Lite 5G','World\'s First Snapdragon 4 Gen 1 Processor, that allows you to level up your performance with confidence through its efficient 6nm Process. Best In-Segment 120Hz Screen Refresh Rate: Which comes with lagfree & nimble scrolling. The FHD+ display lets you enjoy to the fullest with every game you play and every content you watch with its crisp detailing of colours. 5000mAh Battery: Keeps iQOO Z6 Lite 5G to a longer usage, for a more enjoyable gaming and video experience, which offers Music Playback Time of 127 Hours, Social Media of 21.6 hours, OTT Streaming of 14.5 hours and Gaming of 8.3 hours.','98','electronics','28961'),('B6aM5jX7v','Fastrack New Limitless','Large 1.91” UltraVU HD Display: Fastrack Limitless Classic comes with the highest pixel resolution 1.91\" UltraVU HD Display with brand new amazing colours and premium metal casing and Functional Crown','50','electronics','1500'),('B8dG4mS6v','Redmi Watch 2 Lite ','1.55\" HD, LCD, 100+ Pro Workout Modes, Multi-system GPS, Cont HR and SpO2, Women\'s Health, Custom Watchfaces, 6 axis sensors, 5 ATM, Upto 10 Days Battery Life','150','electronics','1500'),('C0dN8gF4s',' Dress with Waist Tie-Up','Package contains: 1 dress Machine wash Georgette','45','fashion','588'),('C2yR7pX1o','Women Regular  Track Pants','Package contains: 1 track pants Machine wash 100% polyester','465','fashion','399'),('C3dQ8iG6z',' V-Neck T-Shirt RED','Regular Fit Package contains: 1 t-shirt Machine wash Cotton','99','fashion','199'),('C4sN7wB2x','Panasonic AC','7 in 1 Convertible Modes with True AI Mode (converti7): True AI mode smartly detects the room\'s temperature, forecast the cooling capacity and change the fan speed to provide optimal cooling through inbuilt sensors and artificial intelligence. Save energy with adjustment of cooling performance by selecting modes ranging from 40% to 90%, Full capacity and High capacity.','25','electronics','65000'),('C5fO7tA3b','Heavily Washed Jeans FOR MEN','5-pocket styling Package contains: 1 jeans Machine wash Mid Rise 100% Cotton','554','fashion','899'),('C6jF0wG5p','Lloyd AC','Lloyd Split AC with Inverter Compressor: AC with variable speed compressor which automatically adjusts power depending on room temperature & heat load. Convertible / adjustable with 5 cooling modes through remote control to operate in different tonnages for different cooling needs (40% to 100% capacity);Capacity: 1.5 ton suitable for medium size rooms up to 160 square feet','50','electronics','30500'),('C8wV9eZ4r','Women Running Track Pants','Zipper hemlime Package contains: 1 track pants Machine wash 100% polyester','30','fashion','560'),('D1iT4gT1v','Blue Star AC','mart AC with Voice Command Technology: Operate your AC with Voice Command using Amazon Alexa or Google Assistant. Switch On, set the temperature and enjoy comfort cooling through Voice Command Assistants.','35','electronics','25000'),('E9kF2vI4y','mi Smart Watch',' Equipped with 1.33 inches TFT-LCD full touch screen, make a great breakthrough in button touch fitness watch and advanced health smartwatch that helps you tune in to your body with tools for sleep tracking, sport record, menstrual health tracking, relax guidance, alarm, timer and so on.','95','electronics','4000'),('F0xN2xC4a','Voltas ac','Split AC with inverter compressor: Variable speed compressor which adjusts power depending on heat load. Convertible / adjustable with 4 cooling modes through remote control to operate in different tonnages for different cooling needs (20% to 120% capacity)','25','electronics','28500'),('F0yU2gW1w','V2a Watches for Men\'s and Boys','COMFORT with FASHION: Silicon Rubber watch band with the large dual dial design make it comfortable to wear and lead you to edge sport fashion. Perfect for both indoor and outdoor activities. MULTI-FUNCTIONAL: Dual Timezone, Calendar Day and Date, Alarm, Water Resistant, LED Display, Back Light, Shock Resistant, Stop Watch. Waterproof: 164FT/50M waterproof, swim, wash hands and shower without taking it off NOTE: Don\'t press any button in the water Dimensions: Case Diameter- 56mm, Case Thickness- 20mm, Band Width- 22mm, Max Perimeter- 240mm, Min Perimeter- 165mm','32','electronics','2350'),('F2eU2xO2c','NoiseFit Halo ','1.43 inches(3.63cms) AMOLED display, 466x466px - The smartwatch features the biggest screen size in a round dial. Enjoy bright and sharp visuals upon every glance.','56','electronics','3500'),('F9cI3hO7q','Redmi Watch 3','The Bluetooth calling smartwatch comes with the latest Bluetooth v5.3(BLE) for better connectivity and enhanced calling experience. SOS feature: Press thrice the side button to call your emergency contact number(set your emergency contact number from the Mi Fitness app)','85','electronics','3600'),('H0nQ7vQ9m',' 3 Women Striped Palazzos ','We recommend you buy a size larger Relaxed Fit Package contains: 3 palazzos Machine wash Mid Rise Polyester 90%, Lycra 10%','47','fashion','519'),('H3iL9pR0o',' Leather for men ','Wipe with a clean, dry cloth when needed Slip-on Styling Genuine leather upper TPR sole','58','fashion','548'),('H5aG0qB7w','Flared Kurta for women','Package contains: 1 kurta Machine wash 100% rayon No Darts','25','fashion','1599'),('H5tN7uX5j','Novelty Print Cotton Dupatta','Length: 2 m Width: 104 cm Hand wash separately Cotton','65','fashion','505'),('H6iM4bQ0r','Blue Star AC','mart AC with Voice Command Technology: Operate your AC with Voice Command using Amazon Alexa or Google Assistant. Switch On, set the temperature and enjoy comfort cooling through Voice Command Assistants.','35','electronics','25000'),('H7fC7nD6o','V2 Shoes for men','wipe with a clean, dry cloth when needed Fabric insole Lace Fastening Fabric upper Package contains: 1 pair of shoes Lightweight Rubber sole','89','fashion','2533'),('H8oK9zK7u','VW 80 cm Linux Series','Resolution: HD Ready (1366X768) | Refresh Rate: 60 Hertz | Viewing Angle: 178 Degrees Connectivity: Wi-Fi | 2 HDMI ports to connect latest gaming consoles, set top box, Blu-ray Players | 2 USB ports to connect hard drives and other USB devices | eARC | Ethernet Sound: 20 Watts Output Smart TV Features : Miracast, Supported Apps: Prime Video, Youtube, Zee5, SONY liv, plex, YUPPTV, Eros now, ALJAZEERA, Live News | Quad core processor | Linux OS Display: IPE Techonology, Eco Vision, Cinema Mode, Cinema Zoom, Supports 16.7 Million Colours Warranty Information : 18 Months warranty provided by the manufacturer from date of purchase','47','electronics','7999'),('H9fI7eF3x','DILLINGER Cotton Shirt FOR MEN','Regular Fit Package contains: 1 shirt Machine wash 100% cotton','65','fashion','699'),('I2lO6jR5r','Fossil Grant men watch','Dial Color: Black, Case Shape: Round Band Color: Black, Band Material: Leather Watch Movement Type: Quartz, Watch Display Type: Chronograph Case Material: Stainless Steel, Case Diameter: 45 millimeters Water Resistance Depth: 50 meters, Buckle Clasp Warranty type:Manufacturer; 2 Years International Warranty Ideal for birthday, anniversary and wedding gift','85','electronics','3500'),('I4gO6yX2y','Samsung AC','Split AC with inverter compressor: Variable speed compressor which adjusts power depending on heat load. Powered with 23000 microholes, you can enjoy powerful and gentle cooling. With Convertible 5in1 modes, you can change according to your mood and requirement','55','electronics','35500'),('I4uL7tW8c','  Regular  T-Shirts','Do not bleach & avoid drying T-shirt in Direct Sunlight. We recommend you buy a size larger Regular Fit Package contains: 2 t-shirts Machine wash cold Cotton blend','87','fashion','897'),('J0uV7cQ0q','PUMA Men Running Shoes','Wipe with a clean, dry cloth when needed Fabric insole Lace Fastening Fabric upper Package contains: 1 pair of shoes Lightweight Rubber sole','213','fashion','8999'),('J3eX5lQ1k','Fire-Boltt','AMOLED Display - Experience the brilliance of our 1.43\" AMOLED display with an impressive 466*466 pixel resolution. Enjoy vivid colors and sharp visuals, even under bright sunlight, thanks to its 700 NITS brightness.','25','electronics','2500'),('J5mQ1vD6v','LG AC','Split Ac with Inverter Compressor: Variable speed compressor which adjusts power depending on heat load | With AI Convertible 6-in-1 user gets a flexibility to increase or decrease cooling capacity as per requirements','65','electronics','55000'),('K4oA9mE3j','WESOFY AC','[3 Speed Wind Speed Mode]: This mobile air conditioner has three levels of wind speed (high, medium, low), you can choose the leisure time, sleep time or working time that suits you best. The built-in colorful and soft led lights can not only create a romantic atmosphere, but also help you improve your sleep.','13','electronics','15000'),('K4pQ2fP7c','Spread Collar Shirt MEN','Regular Fit Package contains: 1 shirt Hand wash 100% polly cotton','25','fashion','499'),('L2fU8oB6h','STYLUM  Print A-line Kurta','Floral Printed Rayon A-Line Kurta with Wooden Button Detailing We recommend you buy a size larger Package contains : 1 kurta Machine wash cold 100% rayon','65','fashion','2599'),('L3jI7vY1h','Sonata Green  watch For Women','Warranty type: manufacturer; 1 year Manufacturer Warranty Wireless, it\'s as easy as corded Wireless without hassles Remove plastic at crown to start the watch Recommended for customers looking for a small dial sized watches Ideal for birthday, anniversary and wedding gift','45','electronics','2250'),('L5eG4aF1c','Redmi 12 5G','Snapdragon 4 Gen 2 Mobile Platform : Power efficient 4nm architecture | 12GB of RAM including 6GB Virtual Display: Large 17.24cm FHD+ 90Hz AdaptiveSync display with Corning Gorilla Glass 3 Protection Camera: 50MP f/1.8 AI Dual camera with classic film filters, Film Frame, Portrait, Night Mode, 50MP mode, Time-lapse, Google lens | 8MP Selfie camera 5000mAh(typ) battery with 22.5W charger in-box MIUI Dialer | MIUI 14 with Android 13 | Side fingerprint | IR blaster | 3.5mm Audio jack | IP53 rating','85','electronics','26500'),('L7rM5dU1y','Osaka  Fit Jeans FOR MEN','5-pocket styling Package contains: 1 jeans Machine wash cold Mid Rise 100% organic cotton','98','fashion','1599'),('L7uZ2eQ4j',' Cat-Eye Sunglasses','Wipe with clean, dry cloth Full-rim frame Clean the lenses with a cotton cloth Full-rim Frame Lens length: 48.5 mm Package contains: 1 sunglasses Lens width: 54 mm','47','fashion','5520'),('L8jG9qS4e','Slim Fit V-Neck T-Shirt ','Slim Fit Package contains: 1 t-shirt Machine wash 100% cotton','879','fashion','249'),('L9tM5aZ6b','Women Quilted Tote Bag','Height: 31 cm Width:14 cm Wipe with clean, dry cloth Polyurethane (PU) Package contains: 1 tote bag','47','fashion','4150'),('M1sW2rP3g','Redmi 80 cm (32 inches)','Resolution: HD Ready (1366x768) | Refresh Rate: 60 hertz | 178 wide viewing angle;Connectivity: Dual Band Wi-Fi (2.4 GHz/ 5 GHz) | 2 HDMI ports to connect set top box, gaming consoles, DVD or Blu-ray Players | 2 USB ports to connect hard drives and other USB devices | ARC | Bluetooth 5.0 | Ethernet | 3.5mm earphone Jack Sound: 20 Watts Output | Dolby Audio | DTS Virtual: X | DTS-HD;Smart TV Features : Fire TV Built-In | Supported Apps: Prime Video | Netflix | Disney+ Hotstar | YouTube | 12000+ apps from App Store | Voice Remote with Alexa | DTH Set-Top Box Integration to switch between DTH TV Channels and OTT apps from home screen | Display Mirroring - Airplay & Miracast | Quad core ARM Cortex-A35 CPU @ 2.0GHz | 1GB RAM + 8GB Internal Storage Display: Metal bezel-less Screen | Vivid Picture Engine; Recommendation: We recommend using 1.5V Alkaline AAA Batteries in your Alexa Voice Remote for a steady performance. Warranty Information: 1 year comprehensive warranty on product and 1 year additional on Panel provided by the brand from the date of delivery Connector Type: Hdmi headphone; Memory Storage Capacity: 8.0GB','70','electronics','11999'),('M8pS4qG3z','Shoulder Bag with  Logo','Height: 12.5 cm Wipe with clean, dry cloth Faux leather Faux Leather Package contains: 1 bag 1 compartment','40','fashion','1299'),('M9dP8aV8n','iQOO Z7 Pro 5G ','Dimensity 7200 5g processor based on the latest 4nm energy-efficient process 3D Curved Super-vision Display with 17.22 cm (6.78 inches) screen size, 93.3% Screen-to-body ratio, 120 Hz AMOLED FHD+, 1.07 Billion Colors, 1300 nits Peak Local Brightness Slimmest phone with 0.736 cm (7.36mm) thickness, Premium AG Matte Glass finish 64 MP AURA Light OIS Camera, 4K video recording, Hybrid Image Stabilization, Super Night Mode, Aura Light Portrait, Camera Panning Portrait 66W FlashCharge with 4600mAh large battery | 8GB RAM + 8GB Extended RAM','67','electronics','27850'),('M9pW0eI0b','Floral Print V-Neck Top','Package contains: 1 top Machine wash Rayon Relaxed Fit','69','fashion','258'),('N0yJ6eJ8h','Redmi A2','Processor: High performance MediaTek Helio G36,upto 2.2GHz; | Upto 4GB RAM including 2GB Virtual RAM | 64GB Storage Display: Large 16.5 cm HD+ display with Scratch resistant glass | 400nits peak brightness | 120Hz Touch sampling Rate Camera: 8MP Dual camera with Portrait mode | 5MP Front camera 5000mAh(typ) battery with 10W charger in-box Expandable Storage to upto 1TB with Dedicated MicroSD card Slot | Dual SIM (nano+nano) dual standby (4G+4G)','98','electronics','7800'),('N4pC7eC6p','Lightly Fit Jeans FOR MEN','Machine washable, line dry Package contains: 1 jeans Mid Rise Cotton Stretch','95','fashion','758'),('N4yC6jO9n','Apple iPhone 13 (128GB) ','15 cm (6.1-inch) Super Retina XDR display Cinematic mode adds shallow depth of field and shifts focus automatically in your videos Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording 12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording A15 Bionic chip for lightning-fast performance','47','electronics','75000'),('N9kY5dB3h',' Fit Polo T-Shirt','Slim Fit Package contains: 1 t-shirt Machine wash Cotton','465','fashion','299'),('O1bG8sM5t','Women Tote Bag','Height: 26 cm Width: 12 cm Wipe with clean, dry cloth Synthetic Package contains: 1 handbag','64','fashion','2500'),('O3gM5eU9v','SVARAA Women  Kurta','Package contains: 1 kurta Machine wash Cotton No Darts','12','fashion','4599'),('O6uO7eS2n','Print Dupatta with Tassels','Dupatta length: 2.25 m Dupatta width: 0.95 m Package contains: 1 dupatta Machine wash Polyester Blend','55','fashion','199'),('O8cK2jZ0k','KERI PERRY Fit & Flare Dress','We recommend you buy a size larger Package contains: 1 dress Hand wash Georgette','84','fashion','658'),('P0zK0pG3w','Redmi 12 5G','Snapdragon 4 Gen 2 Mobile Platform : Power efficient 4nm architecture | 16GB of RAM including 8GB Virtual Display: Large 17.24cm FHD+ 90Hz AdaptiveSync display with Corning Gorilla Glass 3 Protection Camera: 50MP f/1.8 AI Dual camera with classic film filters, Film Frame, Portrait, Night Mode, 50MP mode, Time-lapse, Google lens | 8MP Selfie camera 5000mAh(typ) battery with 22.5W charger in-box MIUI Dialer | MIUI 14 with Android 13 | Side fingerprint | IR blaster | 3.5mm Audio jack | IP53 rating','78','electronics','12500'),('P2cM3nK1x',' UV-Protected -Eye Sunglasses','Wipe with clean, dry cloth Full-rim frame Clean the lenses with a cotton cloth Lens length: 48.5 mm Package contains: 1 sunglasses Lens width: 54 mm Model number: 204920','44','fashion','2252'),('P3hT2pR4n','Oversized Fit V-Neck T-Shirt','Oversized Fit Package contains: 1 t-shirt Machine wash 100% cotton','54','fashion','478'),('P4hG6xG8f','AVAASA  Dupatta with Tassels','Dupatta length: 2.25 m Dupatta width: 0.95 m Package contains: 1 dupatta Machine wash Polyester Blend','78','fashion','499'),('P5zR4tN1s','Cotton Shirt FOR MEN','Regular Fit Package contains: 1 shirt Machine wash 100% cotton','35','fashion','65'),('Q0aC1bF4q','Sonata Analog watch For Women','Dial Color: Silver, Case Shape: Tonneau Band Color: Gold, Band Material: Stainless Steel Watch Movement Type: Quartz, Watch Display Type: Analog Case Material: Brass, Case Diameter: 19.8 millimeters 12 Months Manufacturer Warranty on manufacturing defects Ideal for birthday, anniversary and wedding gift','65','electronics','6000'),('Q1oJ3yP1x','Fastrack Limitless ','UltraVU HD Display with Bright Pixel Resolution and is available in brand new amazing colour','35','electronics','3000'),('Q1pJ6vL9u','Hisense 126 cm','Resolution : 4K Ultra HD (3840x2160) | Refresh Rate : 60 Hert | ALLM VRR 48-60 Hz Supported Connectivity: 3 HDMI ports to connect set-top box, Blu Ray players, gaming console (HDMI 1 eARC supported) | 2 USB 2.0 port to connect hard drives and other USB devices | Dual-band Wi-Fi | Bluetooth Sound : Powerful 24 Watts Output speakers | Dolby Atmos for remarkable sound quality Smart TV features: Auto Low Latency Mode for VRR | Quad-core processor |Supported Apps: Netflix, Youtube, JioCinema, Prime Video etc. Display : 90% DCI-P3 Wide Colour Gamut| Bezel-less Floating Display Design| VRR& ALLM | Dolby Vision, HDR10, HLG | 1 Billion Colours | MEMC','24','electronics','69330'),('Q2jN9xY9d','Redmi 108 cm  4K Ultra HD','Resolution : 4K Ultra HD (3840 x 2160) | Refresh Rate : 60 Hertz;Connectivity: Dual Band Wi-Fi | 3 HDMI ports to connect latest gaming consoles, set top box, Blu-ray Players | 2 USB ports to connect hard drives and other USB devices | Bluetooth 5.0 | Optical | Ethernet | Earphone | AV','45','electronics','25600'),('Q3hY4cR2b','boAt Wave Call 2 ','Screen: 1.83-inch HD display with a square dial offers a full capacitive touch experience, allowing you to easily take control. Peak Brightness: 550 Nits, AMOLED Display: NO;boAt Coins- Get vouchers/coupons that can be redeemed on our boAt Crest App basis your workouts! DIY Watch Face Studio- Customize watch faces as per your own needs. Choose, backgrounds, themes & widgets!;Live Cricket Score- Turn up your cricket fever with this smartwatch. Get notified of all the happenings on the pitch with live cricket scores. 700+ Active Modes- From running to binge-watching, from weight training to dog walking, and from skateboarding to snuggling, Ultima Call makes every moment count!;Bluetooth- Advanced Bluetooth calling offers a quicker, stronger, and better connection so you can dial seamlessly. Microphone: Yes;Music Storage: No;Volume Control: Yes Watch Face Studio: With so many options, you\'ll be inundated. Choose or DIY from a variety of watch faces on the cloud that suit your style.;HR & SpO2- Use vital bodily indicators like Heart rate and SpO2 Monitoring to always keep an eye on your body\'s health. Note: HR and SpO2 readings are not for medical usage; Charging Specs: Connect the charging USB cable to an Adapter of 3.7V to 5V, Charging Time: 1-2 Hours;Inclusions: Wave Call 2, Charging Cable, Warranty Card, User Manual','20','electronics','1499'),('R3gI7bD5u','Women  Pants  Insert Pockets','Package contains: 1 track pants Machine wash Cotton','132','fashion','478'),('R9wH8lA6u','Floral Flared Palazzos women','Package contains: 1 palazzo Hand wash Cotton','5','fashion','1000'),('S2sW8pU5r','Noise watch for men','Sharp and bright display: The 1.69’’ TFT display with 240*280px and 500 nits brightness ensures visual treat every time you look at the watch. Tru Sync: Experience fast and stable connectivity with low power consumption. BT calling: Stay in touch with your friends - right from your wrist. Utility features: Use the utility features at your disposal and become more productive - get hand wash reminders, idle alert and drink water reminder, weather forecast, set alarms and more. Noise Health Suite: Lead a better life with the battery of wellness features available in Noise Health Suite. 150+ cloud-based & customised watch faces: Style your watch the way you like to – choose from 150 cloud-based & customised watch faces. 100 sports modes with auto sports detection: Stay active and track all that you are doing with auto sports detection mode.','1200','electronics','1799'),('S3wG7lU5n','MI 80 cm (32 inches)','Resolution : HD Ready (1366 x 768) Resolution | Refresh Rate : 60 Hertz | Viewing angle : 178 degrees;Connectivity: Dual Band Wi-Fi | 2 HDMI ports to connect set top box, Blu-ray speakers, or gaming console | 2 USB ports to connect hard drives and other USB devices | Bluetooth 5.0 | 3.5 mm jack | AV port| Ethernet Sound: 20 Watts Output | Dolby Audio | DTS-HD; Smart TV Features: Google TV, Built-In WiFi, Chromecast built-in, 1.5GB RAM, 8GB ROM, Supported Apps: Netflix, Prime Video, YouTube, Zee5, etc.,ARC (Dolby Atmos Pass-through), ALLM (Auto Low Latency Mode), and Google Assistant Operation Display: HD Ready | HDR 10 | Vivid Picture Engine Warranty Information: 1 year comprehensive warranty on product and 1 year additional on Panel provided by the brand from the date of purchase Response Time: 6.5ms; Memory Storage Capacity: 8.0GB; Connector Type: Headphone Jackethernet; Water Resistance Level: Not Water Resistant; Warranty Type: Onsite Warranty On Product And No Delivery Damages Covered','47','electronics','37500'),('S4lD7mX3k','AC','hi guys ','10','electronics','799'),('S4vL0aS1v','Polka-dot Print Round-Neck Top','Package contains: 1 top Machine wash Crepe Relaxed Fit','15','fashion','458'),('S6gJ1qX4n','Apple iPhone 15 (256 GB) ','DYNAMIC ISLAND COMES TO IPHONE 15 — Dynamic Island bubbles up alerts and Live Activities — so you don’t miss them while you’re doing something else. You can see who’s calling, track your next ride, check your flight status, and so much more. INNOVATIVE DESIGN — iPhone 15 features a durable color-infused glass and aluminum design. It’s splash, water, and dust resistant. The Ceramic Shield front is tougher than any smartphone glass. And the 6.1\" Super Retina XDR display is up to 2x brighter in the sun compared to iPhone 14. 48MP MAIN CAMERA WITH 2X TELEPHOTO — The 48MP Main camera shoots in super-high resolution. So it’s easier than ever to take standout photos with amazing detail. The 2x optical-quality Telephoto lets you frame the perfect close-up. NEXT-GENERATION PORTRAITS — Capture portraits with dramatically more detail and color. Just tap to shift the focus between subjects — even after you take the shot. POWERHOUSE A16 BIONIC CHIP — The superfast chip powers advanced features like computational photography, fluid Dynamic Island transitions, and Voice Isolation for phone calls. And A16 Bionic is incredibly efficient to help deliver great all-day battery life.  ','150','electronics','89000'),('S7eM2pR7h','Acer 80 cm (32 inches)','Resolution : HD Ready (1366x768) | Refresh Rate : 60 Hertz | 178 Degree wide viewing angle Connectivity: Dual band Wifi | 2 way Bluetooth | HDMI ports 2.0 x 2 (HDMI 1 supports ARC) to connect personal computer, laptop, set top box, Blu-ray speakers or a gaming console | USB ports 2.0 x 2 to connect hard drives or other USB device Sound: 24 Watts Output | High Fidelity Speakers with Dolby Audio | 5 Sound Modes - Movie, Music, Standard, News, Sports Smart Tv Features: Google certified Android TV 11 | Google Assistant | Chromecast built-in | Voice controlled Smart Remote | Hotkeys for Quick Access - Netflix, Prime Video, YouTube, Disney+Hotstar | 5 Picture Mode | 1.5GB RAM | 8GB Storage | 64bit Quad Core Processor Display : 16.7 Million Colours | Wide Colour Gamut | Intelligent Frame Stabilization Engine | HDR10+ | Super Brightness | Micro Dimming | Blue Light Reduction Warranty Information: 1 year comprehensive warranty provided by the manufacturer from date of purchase Installation: Installation/Wall mounting/demo will be arranged by AHS Team. For any other information, please contact Amazon customer support | Wall Mount is not included in the box and will be charged at the time of installation Easy Returns: This product is eligible for replacement within 10 days of delivery in case of any product defects, damage or features not matching the description','85','electronics','75300'),('S8yE1qX7k','Sony Bravia 139 cm','Resolution: 4K Ultra HD (3840 x 2160) | Refresh Rate: 60 Hertz | 178 Degree wide viewing angle Connectivity: 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devices Sound : 20 Watts Output | Open Baffle Speaker| Dolby Audio | Clear Phase | eARC Input Smart TV Features: Google TV, Watchlist, Voice Search, Google Play, Chromecast, Netflix, Amazon Prime Video, Additional Features: Apple Airplay, Apple Homekit, Alexa | Supported Apps: Netflix, Amazon Prime Video, Disney+ Hotstar, Sony Liv, Zee5, Voot, Jio Cinema & many More Display: X1 4K Processor | 4K HDR | Live Colour| 4K X Reality Pro | Motion Flow XR100','47','electronics','57990'),('S9gH4vN6d','Blaupunkt 101 cm (40 inches)','Resolution : Full HD (1920 x 1080)| Refresh Rate : 60 Hertz Connectivity: Dual Band Wi-Fi | 3 HDMI ports to connect latest gaming consoles, set top box, Blu-ray Players | 2 USB ports to connect hard drives and other USB devices | eARC | Ethernet Sound: 48 Watts Output | Dolby Digital Plus Smart TV Features: Google TV OS | In-Built WiFi | Screen Mirroring | Supported Apps: Netflix, Prime Video, YouTube, etc.| Hand free Voice Control and Google Assistant Operation Warranty Information: 1 year warranty on Product and 6 months on Accessories','90','electronics','36000'),('T1rJ6eE2m','Casio Vintage mens watch','Dial Color: Grey, Case Shape: Rectangular, Dial Glass material: Mineral Band Color: Silver, Band Material: Stainless Steel Watch Movement Type: Quartz, Watch Display Type: Digital and Stainless Steel Bezel Case Material: Stainless Steel, Case Diameter: 32 millimeters , Size of case : 36.8×33.2×8.2mm Fold Over Clasp Warranty type: Manufacturer; 2 Years Domestic','35','electronics','700'),('T4jB0iQ5m','Regular Fit T-Shirt FOR MEN','Short button placket Drawstring hooded neck Regular Fit Package contains: 1 t-shirt Machine wash 100% Cotton','36','fashion','859'),('T7yT9lX0w','Embellished Palazzos women','Package contains: 1 palazzo Hand wash Rayon','78','fashion','987'),('U3nP1iF2n','realme narzo N53','Enjoy smooth multitasking and effortless app switching with the powerful 8GB dynamic RAM. Store all your favorite apps, photos, and files with the generous 128 GB ROM Experience lightning-fast charging with the 33W SUPERVOOC technology, getting your device ready in no time. Say goodbye to long charging times and stay powered up for longer durations. The slim and sleek 7.49mm design adds a touch of elegance to your device, making it comfortable to hold and carry. The feather gold design enhances the visual appeal, giving your phone a premium and luxurious look. Capture stunning, detailed photos with the high-resolution 50MP AI camera, bringing your memories to life.The AI-powered camera technology ensures intelligent scene recognition and enhances your photography skills. Stay connected and productive for extended periods with the massive 5000mAh battery, eliminating the need for frequent recharging. Enjoy long hours of entertainment, gaming, and browsing without worrying about running out of battery power.','48','electronics','8999'),('U4mW5sN4h','Voltas AC','Rated current 6.8 (Avg/Ph) Amps; Compressor type: Scroll; Indoor air flow (Hi/Mi/Lo): CMH 1900; Indoor packing dimension (W X H X D): 770 mm X 2040 mm X 445 mm; Indoor net weight: 60 Kg','85','electronics','45000'),('U4oH7aY9j','KERI PERRY  Flare Dress','We recommend you buy a size larger Package contains: 1 dress Hand wash Georgette','7','fashion','799'),('U4vO7lL9m','Fastrack FS1 ','1.96\" Super AMOLED Arched Display with Always On Display and is ready to style your wrist with bright pixel resolution for a sharper experience and brand new amazing colours','65','electronics','2000'),('U4vX5rZ0f','air conditiner','whirlpool','25','electronics','25000'),('V1cG8hD0x','LEE COOPER  Denim Shorts','AIR FREE COMFORT','69','fashion','499'),('V3nL7fW3t','SWISSTONE women watch','Dial Color: Blue; Dial Material: Brass Strap Color: Silver; Strap Material: Silver Plated Watch Movement Type: Quartz Model number: Jewels077-Bluslv Warranty Type: Manufacturer','75','electronics','5500'),('V9rA3eM9q','Nokia 2660 Flip 4G','Big buttons, big sound, and a big 2.8” primary display Zoom UI for easy use Battery-life that lasts for weeks Flip-functionality for answering or ending a call with a simple flip Emergency button for contacting up to 5 people','89','electronics','4965'),('X2wG1hJ5k','Embellished  Kurta for women','1 Kurta Hand wash separately Rayon No Darts','48','fashion','3599'),('X3bD2aI9r','Samsung 108 cm (43 inches) ',' Screen Size	43 Inches Brand	Samsung Supported Internet Services	Netflix, Prime Video, Zee5, SonyLiv, Youtube, Hotstar Display Technology	LED Product Dimensions	6D x 96.4W x 55.9H Centimeters','35','electronics','30000'),('X5yF2nU7f','Fastrack women watch','Sleek and modern design High-quality stainless steel or durable material construction Quartz movement for accurate timekeeping Variety of color options Lightweight for easy wear','60','electronics','1750'),('Y0qZ1lC9j','Floral Print Fit & Flare Dress','package contains: 1 dress Hand wash Cotton','75','fashion','850'),('Y6hD1iE4s','Men Regular SHIRT FOR MEN','Regular Fit Package contains: 1 shirt Hand wash 100% polly cotton','30','fashion','599'),('Y7jS9yI0f','pansoinc ac ','super fresh','3','electronics','85000'),('Z1oO7uF1q','OnePlus 108 cm (43 inches) ','Resolution : 4K Ultra HD (3840x2160) | Refresh Rate : 60 Hertz;Connectivity: 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devices | Dual-band Wi-Fi; Sound : 24 Watts Output | Dolby Audio | Dolby Atmos Decoding Smart TV features: Android TV | OnePlus Connect Ecosystem| Google Assistant | Chromecast, Miracast, DLNA | Auto Low Latency Mode | Supported Apps : Netflix, Youtube, Prime Video, Hotstar, SonyLiv, Hungama, JioCinema, Zee5, Eros Now, Oxygen Play Display : Bezel-less Design | Decoding of HDR10+ HDR10, HLG | 1 billion colors | Gamma Engine with MEMC','52','electronics','55000'),('Z5zA5kV8p',' LEE COOPER  Cotton Shirt','Rounded cuff Curved hemline Regular Fit Package contains: 1 shirt Machine wash 100% Cotton','69','fashion','799'),('Z6tT4sQ4u','Dupatta with Tassels','Dupatta length: 2.25 m; width: 0.95 m Chanderi Package contains: 1 dupatta Machine wash','25','fashion','299'),('Z7rA1qF5t','Striped V-Neck Top','Package contains: 1 top Machine wash Crepe Relaxed Fit','64','fashion','477');
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
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`mobile`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminsignup`
--

LOCK TABLES `adminsignup` WRITE;
/*!40000 ALTER TABLE `adminsignup` DISABLE KEYS */;
INSERT INTO `adminsignup` VALUES ('prasanna',7659030715,'pittalaprasanna33@gmail.com','2525'),('prasanna',9440391741,'prasannapittala44@gmail.com','8525');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ordid` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`ordid`),
  KEY `itemid` (`itemid`),
  KEY `username` (`username`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `additems` (`itemid`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `signup` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3,'S4lD7mX3k','prasanna','AC','1',799),(4,'U4vX5rZ0f','prasanna','air conditiner','1',25000),(5,'C4sN7wB2x','prasanna','Panasonic AC','1',65000),(6,'C3dQ8iG6z','prasanna',' V-Neck T-Shirt RED','1',199);
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
  `rating` int(11) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`itemid`),
  KEY `itemid` (`itemid`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`username`) REFERENCES `signup` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`itemid`) REFERENCES `additems` (`itemid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `mobile` bigint(20) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES ('hemanth',6301922694,'siddabathinimeghana@gmail.com','GUNTUR','12345'),('prasanna ',7659030715,'pittalaprasanna33@gmail.com','chilkaluripeta','8525');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 14:31:57
