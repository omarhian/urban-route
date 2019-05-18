-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 24, 2019 at 05:09 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urban_route_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `dish_id` int(11) NOT NULL,
  `img_badge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_dish` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `restaurant`, `description`, `images_dish`, `master_id`, `created_at`, `updated_at`) VALUES
(1, 'Siux Burger', 'Burger Burger', 'The new creation of the masters of charcoal for the Burger Master is our Hot And Sexy Wagyu beef in brioche bread with smoked bacon, blue cheese, grilled onions, tomato, lettuce buds and chipotle honey', 'siux_burger.jpg', 1, '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(2, 'Buffalo Burger', 'The Bungalow', 'Chargrilled and topped with Oka cheese and grilled pineapple. Served on a sesame Kaiser.', 'buffalo_burger.jpg', 1, '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(3, 'Taste of heaven', 'The Works', 'Kobe Style Wagyu beef patty, maple bacon, carm onions, arugula, W Sauce, on a black and white sesame bun.', 'taste_heaven_burger.jpg', 1, '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(4, 'The Fat Albert', 'Prince Albert’s Dinner', 'This one\'s for the serious burger lover, double patty, bacon, cheddar, mozzarella, and sauteed mushrooms.', 'fat_albert_burger.jpg', 1, '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(5, 'Beef Brisket', 'Shmokey’s BBQ', 'Shmokey’s takes the “Low and Slow” philosophy seriously. After a rub with a special blend of spices, all the meat is smoked for 20 hours to ensure it’s as tender and juicy as possible. ', 'beef_brisket_burger.jpg', 1, '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(6, 'Paradise burger', 'Paradise Cream', 'Shmokey’s takes the “Low and Slow” philosophy seriously. After a rub with a special blend of spices, all the meat is smoked for 20 hours to ensure it’s as tender and juicy as possible. ', 'burger_paradise.jpg', 1, '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(7, 'Bernie Mac', 'Bernies Bar & Grill', 'A half pound burger topped with sautéed onions, pulled pork, BBQ sauce and mixed cheese.', 'bernie_mac.jpg', 1, '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(8, 'Holy Smoke Bbq Burger', 'Jack Astor’s Bar & Grill', 'Smoked bacon, American cheese, smoky BBQ sauce, crispyfried onions, pickled banana peppers, hickory mayo', 'smoke_burger.jpg', 1, '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(9, 'London Burger', 'London Burgers', 'The new  burger creation is the brioche bread with smoked bacon, grilled onions, tomato, lettuce buds and chipotle honey.', 'london_burger.jpg', 1, '2019-04-20 06:34:20', '2019-04-20 06:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `gmaps_geocache`
--

CREATE TABLE `gmaps_geocache` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_car` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_hero` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_mob` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`id`, `name`, `description`, `date`, `price`, `city`, `img_car`, `img_hero`, `img_mob`, `created_at`, `updated_at`) VALUES
(1, 'Master Burger', 'From April 29 to May 5, London, Ontario restaurants will fight to the death to prove who has the best Burger in town', 'April 29 to May 5', '25 CAD', 'London,ON', 'burger_master.jpg', 'burger_master_hero.jpg', 'burger_master_mob.jpg', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(2, 'Master Sushi', 'Restaurants in London, Ontario will fight to the death for a week to prove who has the best sushi. Are you ready to participate?', 'Coming Soon', 'Coming Soon', 'London,ON', 'sushi_master.jpg', 'sushi_master_hero.jpg', 'sushi_master_mob.jpg', '2019-04-20 06:34:20', '2019-04-20 06:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(309, '2014_10_12_000000_create_users_table', 1),
(310, '2014_10_12_100000_create_password_resets_table', 1),
(311, '2019_02_26_000930_create_masters_table', 1),
(312, '2019_02_26_001623_create_badges_table', 1),
(313, '2019_02_26_002929_create_restaurants_table', 1),
(314, '2019_02_26_003923_create_dishes_table', 1),
(315, '2019_02_26_004359_create_reviews_table', 1),
(316, '2019_04_16_204620_create_gmaps_geocache_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double(10,6) NOT NULL,
  `lng` double(10,6) NOT NULL,
  `province` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_rest` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `address`, `lat`, `lng`, `province`, `city`, `description`, `image_rest`, `created_at`, `updated_at`) VALUES
(1, 'Burger Burger', '633 Richmond st', 42.991571, -81.251406, 'Ontario', 'London', 'Our hand-crafted burgers are made fresh in-house everyday with the perfect combination of sirloin, chuck and brisket. Our signature burgers are always sure to please, but we also love creating your custom projects.', 'logo_burger-burger', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(2, 'The Bungalow', '910 Waterloo St', 43.002955, -81.250958, 'Ontario', 'London', 'The Bungalow is nestled in the heart of London’s Old North. The restaurants style and cuisine, are designed for casual and convivial enjoyment. During the nicer weather spend some time enjoying a cold beverage outdoors on the relaxed, shaded patio.', 'logo_the_bungalow', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(3, 'The Works', '145 King St', 42.982210, -81.249769, 'Ontario', 'London', 'At The WORKS, we’re all about the Gourmet Burger. We eat it, sleep it and dream it. And we dream big. Real BIG. Because in our world SIZE MATTERS. ', 'logo_works', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(4, 'Prince Albert’s Dinner', '565 Richmond St', 42.989314, -81.250916, 'Ontario', 'London', 'Serving classic diner dishes at a great price, Prince Alberts Diner offers all your favourite classics. From burgers, to fries, to sandwiches, come stop by for a bite to eat with some friends! Order for the big game!', 'logo_prince_albert', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(5, 'Shmokey’s BBQ', '1186 Frances St', 42.991311, -81.207674, 'Ontario', 'London', 'Come for the food, stay for the entertaining staff, and then come back again for the food because you’ll be addicted.', 'logo_shmokey', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(6, 'Paradise Cream', '421 Richmond St', 42.984120, -81.250042, 'Ontario', 'London', 'Come for the food, stay for the entertaining staff, and then come back again for the food because you’ll be addicted.', 'logo_paradise_cream', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(7, 'Bernies Bar & Grill', '1225 Wonderland Rd N', 43.005906, -81.305374, 'Ontario', 'London', 'Come for the food, stay for the entertaining staff, and then come back again for the food because you’ll be addicted.', 'logo_bernies', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(8, 'Jack Astor’s Bar & Grill', '88 Fanshawe Park Rd E', 43.027910, -81.279793, 'Ontario', 'London', 'We’re a restaurant. One that specializes in delicious food and great times. Our goal is to make you laugh. And depending on your hot sauce tolerance, cry.', 'logo_jacks', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(9, 'London Burgers', '417 Dundas St', 42.987151, -81.236997, 'Ontario', 'London', 'We’re a restaurant. One that specializes in delicious food and great times. Our goal is to make you laugh. And depending on your hot sauce tolerance, cry.', 'logo_london_burgers', '2019-04-20 06:34:20', '2019-04-20 06:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `review_comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `dish_id`, `review_comment`, `created_at`, `updated_at`) VALUES
(1, 3, 5, 'OMG, is very juicy. The meat is on its point and is really taste it. I really recomend this burger.', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(2, 2, 2, 'Yumm-o! Everything was simply decadent. Everything I tried was bursting with flavor.', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(3, 2, 3, 'you’ll find amazingly tasty burgers, a cracking atmosphere and superb customer service. they are the best burgers around. [And] as brilliant as the burgers : the service.', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(4, 2, 4, 'I am never coming back here! The steak was a little dry. There were a lot of interesting decorations on the walls. Meh.', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(5, 4, 2, 'I had high hopes for this place, The steak was undercooked', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(6, 3, 2, 'the burgers are more expensive than McDonald`s but oh my are they ever worth it! my friend and i LOVE this place', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(7, 3, 4, 'Great burgers.Really can taste the burger. Fresh toppings. Love the grilled cheese top and bottom bun. Definitely recommend to friends.', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(8, 2, 4, 'Pro: Good burger with good choice of toppings. Con: Burger has a tendency to fall apart which results in flavor loss.', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(9, 1, 2, 'Best burger I`ve ever had. If you like food, you will like this place', '2019-04-20 06:34:20', '2019-04-20 06:34:20'),
(10, 1, 2, 'Amazing burger!!!!', '2019-04-22 18:58:13', '2019-04-22 18:58:13'),
(11, 2, 1, 'The smoked bacon is the secret of this burger. Love the buns  and the tender meat. Amazing burger.', '2019-04-22 20:34:48', '2019-04-22 20:34:48'),
(12, 2, 3, 'OMG!!!! I loved eating this burger. The meat was really juicy, there was alot of cheese and being able to choose poppy seed bread was nice touch. Definitely worth it!', '2019-04-23 06:20:38', '2019-04-23 06:20:38'),
(13, 3, 9, 'The chipotle honey makes the difference in all the burgers. it\'s give a taste that i can\'t describe.', '2019-04-23 19:27:13', '2019-04-23 19:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmaps_geocache`
--
ALTER TABLE `gmaps_geocache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gmaps_geocache`
--
ALTER TABLE `gmaps_geocache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
