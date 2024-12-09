-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2024 at 01:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `name`, `unit`) VALUES
(1, 'Pork', 'grams'),
(2, 'Chicken', 'grams'),
(3, 'Tamarind Mix', 'packet'),
(4, 'Soy Sauce', 'tablespoons'),
(5, 'Vinegar', 'tablespoons'),
(6, 'Tomato Sauce', 'cups'),
(7, 'Potatoes', 'pieces'),
(8, 'Carrots', 'pieces'),
(9, 'Garlic', 'cloves'),
(10, 'Onion', 'pieces');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
    `recipe_id` INT AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(255) NOT NULL,
    `description` TEXT,
    `image` VARCHAR(255),
    `prep_time` INT,
    `cook_time` INT,
    `category` VARCHAR(50),
    `ingredients` TEXT,
    `instructions` TEXT,
    `is_public` BOOLEAN DEFAULT 1,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes`(`recipe_id`, `title`, `description`, `image`, `prep_time`, `cook_time`, `category`, `ingredients`, `instructions`, `is_public`, `created_at`, `updated_at`) 
VALUES 
     (1, 'Adobong Kangkong', 'A Filipino steamed rice cake made with rice flour and sugar.', 'adobongKangkong.jpg', 5, 6, 'vegan', '2 bundles of kangkong (water spinach), 2 tbsp soy sauce, 1 tbsp vinegar, 3 cloves garlic, minced, 1 tbsp cooking oil, 1/4 tsp black pepper', 'Heat oil in a pan and sauté garlic until fragrant. Add the kangkong and stir-fry briefly before pouring in soy sauce, vinegar, and a sprinkle of black pepper. Let the mixture simmer for 2-3 minutes until the flavors meld together.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (2, 'Ginataang Puso ng Saging', 'Creamy and flavorful banana blossom cooked in coconut milk.', 'ginataangPusoNgSaging.jpg', 10, 20, 'vegan', '1 banana blossom, cleaned and sliced, 1 cup coconut milk, 1 tbsp garlic, minced, 1 onion, sliced, 1 tbsp cooking oil, Salt and pepper to taste', 'Heat oil in a pan and sauté the garlic and onion until fragrant. Add the banana blossom and cook for about 5 minutes. Pour in the coconut milk, season to taste, and let it simmer until the banana blossom is tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (3, 'Ginisang Upo', 'A light and healthy stir-fry featuring bottle gourd.', 'ginisangUpo.jpg', 5, 15, 'vegan', '1 medium bottle gourd (upo), peeled and sliced, 1 tbsp cooking oil, 3 cloves garlic, minced, 1 onion, chopped, Salt to taste', 'Sauté garlic and onion in oil until fragrant. Add the sliced upo and cook until tender, seasoning with salt to taste.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (4, 'Sweet Potato Leaves Salad', 'A fresh and tangy salad using sweet potato leaves.', 'sweetPotatoLeavesSalad.jpg', 5, 5, 'vegan', '2 cups sweet potato leaves (camote tops), 1 tomato, chopped, 1 onion, chopped, 2 tbsp vinegar, Salt to taste', 'Blanch sweet potato leaves in boiling water for 1 minute, then drain. Combine the blanched leaves with tomato, onion, and vinegar, and season with salt to taste.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (5, 'Laing', 'A spicy Bicolano dish made with dried taro leaves in coconut milk.', 'laing.jpg', 10, 30, 'vegan', '2 cups dried taro leaves, 1 cup coconut milk, 1 tbsp garlic, minced, 1 onion, chopped, 1 red chili (optional), Salt to taste', 'Simmer coconut milk with garlic, onion, and chili until aromatic. Add the dried taro leaves and cook until tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (6, 'Bulanglang', 'A nutritious vegetable soup with simple flavors.', 'bulanglang.jpg', 10, 20, 'vegan', '1 cup squash, cubed, 1 cup string beans, cut into 2-inch pieces, 1 cup okra, sliced, 4 cups water, Salt to taste', 'Bring water to a boil and add the squash, cooking for about 5 minutes. Then, add the string beans and okra, and season with salt to taste.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (7, 'Laswa', 'A light vegetable soup from Iloilo, featuring assorted greens.', 'laswa.jpg', 10, 20, 'vegan', '1 cup squash, cubed, 1 cup malunggay leaves, 1 cup string beans, 4 cups water, Salt to taste', 'Boil water and add squash, cooking it until tender. Then, add string beans and malunggay, and season the dish with salt.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (8, 'Pinakbet', 'A medley of vegetables stewed in a flavorful sauce.', 'pinakbet.jpg', 10, 25, 'vegan', '1 cup squash, cubed, 1 cup eggplant, sliced, 1 cup bitter melon (ampalaya), sliced, 1 tbsp garlic, minced, 1 onion, chopped, 2 tbsp soy sauce', 'Sauté garlic and onion, then add vegetables and soy sauce. Cook until the vegetables are tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (9, 'Ginataang Langka', 'Creamy jackfruit cooked in coconut milk.', 'ginataangLangka.jpg', 10, 25, 'vegan', '2 cups young jackfruit, shredded, 1 cup coconut milk, 1 tbsp garlic, minced, 1 onion, sliced, Salt to taste', 'Sauté garlic and onion. Add jackfruit and cook for 5 minutes. Pour in coconut milk and simmer until tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (10, 'Kalabasa Curry', 'A rich curry dish with squash.', 'kalabasaCurry.jpg', 10, 20, 'vegan', '1 cup squash, cubed, 1 cup coconut milk, 1 tbsp curry powder, 1 onion, chopped, 1 tbsp cooking oil', 'Sauté onion and curry powder. Add squash and coconut milk. Simmer until tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (11, 'Tortang Talong', 'A simple vegan eggplant omelet using a plant-based egg substitute.', 'tortangTalong.jpg', 10, 15, 'vegan', '2 eggplants, grilled and peeled, 1/2 cup chickpea flour, 1/2 cup water, Salt to taste', 'Mix chickpea flour, water, and salt to create a batter. Dip grilled eggplant in batter and fry until golden.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (12, 'Ukoy na Toge', 'Crispy bean sprout fritters made vegan.', 'ukoyNaToge.jpg', 10, 15, 'vegan', '2 cups bean sprouts, 1/2 cup all-purpose flour, 1/2 cup water, Salt to taste', 'Mix all ingredients to form a batter. Fry spoonfuls of the batter until crispy.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (13, 'Dinengdeng', 'A vegetable stew with a savory broth.', 'dinengdeng.jpg', 10, 20, 'vegan', '1 cup squash flowers, 1 cup bitter melon leaves, 4 cups water, Salt to taste', 'Boil water and add vegetables. Simmer for 10 minutes and season with salt.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (14, 'Adobong Sitaw', 'A flavorful adobo dish using string beans.', 'adobongSitaw.jpg', 10, 15, 'vegan', '2 cups string beans, cut into 2-inch pieces, 2 tbsp soy sauce, 1 tbsp vinegar, 3 cloves garlic, minced', 'Sauté garlic. Add string beans, soy sauce, and vinegar. Simmer until tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (15, 'Ginisang Sayote', 'A quick and easy chayote stir-fry.', 'ginisangSayote.jpg', 5, 10, 'vegan', '2 chayotes, sliced, 1 onion, chopped, 1 tbsp cooking oil', 'Sauté onion in oil. Add chayote and cook until tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (16, 'Puso ng Saging Burger', 'Vegan burger patties made from banana blossoms.', 'pusoNgSagingBurger.jpg', 15, 20, 'vegan', '1 banana blossom, chopped, 1/2 cup flour, Salt and pepper to taste', 'Mix chopped banana blossom with flour and seasoning. Shape into patties and fry until golden.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (17, 'Saluyot Soup', 'A nutritious soup made from jute leaves.', 'saluyotSoup.jpg', 5, 10, 'vegan', '2 cups jute leaves, 4 cups water, Salt to taste', 'Boil water and add jute leaves. Simmer for 5 minutes and season with salt.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (18, 'Ampalaya Salad', 'A refreshing salad featuring bitter melon.', 'ampalayaSalad.jpg', 10, 5, 'vegan', '1 bitter melon, sliced thinly, 1 onion, chopped, 2 tbsp vinegar', 'Soak bitter melon in salt water for 10 minutes, then rinse. Combine with onion and vinegar.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (19, 'Vegetable Lumpiang Shanghai', 'Crispy spring rolls with vegetable filling.', 'vegetableLumpiangShanghai.jpg', 15, 20, 'vegan', '2 cups shredded cabbage, 1 cup grated carrots, Lumpia wrappers', 'Wrap vegetables in lumpia wrappers. Fry until golden.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (20, 'Pansit Gulay', 'Stir-fried noodles with assorted vegetables.', 'pansitGulay.jpg', 10, 15, 'vegan', '1 pack rice noodles, 2 cups mixed vegetables, 2 tbsp soy sauce', 'Soak rice noodles in water until soft. Stir-fry with vegetables and soy sauce.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (21, 'Tortang Talong', 'Grilled eggplant dipped in beaten eggs and pan-fried until golden.', 'tortangTalong.jpg', 10, 15, 'vegetarian', '2 eggplants, 2 eggs, beaten, 1 tbsp cooking oil, Salt to taste', 'Grill the eggplants until the skin is charred, then peel. Flatten the peeled eggplants with a fork. Dip in beaten eggs, season with salt, and fry until golden brown.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (22, 'Vegetarian Torta', 'A mix of vegetables bound with eggs and fried to perfection.', 'vegetarianTorta.jpg', 10, 15, 'vegetarian', '1 cup mixed vegetables (carrots, green beans, and potatoes, diced), 2 eggs, beaten, 1 tbsp flour, Salt and pepper to taste', 'Mix the vegetables with beaten eggs and flour. Season with salt and pepper. Spoon portions into a hot pan and fry until both sides are golden', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (23, 'Pansit Malunggay', 'Stir-fried noodles loaded with malunggay leaves.', 'pansitMalunggay.jpg', 10, 20, 'vegetarian', '1 pack rice noodles, 1 cup malunggay leaves, 1 egg, 2 tbsp soy sauce, 1 tbsp cooking oil', 'Soak noodles in water until soft. Sauté malunggay leaves, then add the noodles, soy sauce, and beaten egg. Stir-fry until cooked.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (24, 'Vegetable Lumpiang Shanghai', 'Crispy vegetable spring rolls with egg as a binder.', 'vegetableLumpiangShanghai.jpg', 15, 20, 'vegetarian', '2 cups shredded cabbage, 1 cup grated carrots, 1 egg, Lumpia wrappers', 'Mix vegetables with beaten egg. Wrap in lumpia wrappers and fry until golden.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (25, 'Vegetarian Embutido', 'A vegetable-based meatloaf enriched with eggs and cheese.', 'vegetarianEmbutido.jpg', 15, 30, 'vegetarian', '1 cup grated carrots, 1 cup breadcrumbs, 2 eggs, 1/2 cup grated cheese', 'Combine all ingredients and shape into a log. Steam for 30 minutes, then cool and slice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (26, 'Adobong Sitaw with Egg', 'String beans cooked adobo-style, served with hard-boiled eggs.', 'adobongSitawWithEgg.jpg', 10, 15, 'vegetarian', '2 cups string beans, cut into 2-inch pieces, 2 tbsp soy sauce, 1 tbsp vinegar, 2 boiled eggs, sliced', 'Sauté garlic, then add string beans, soy sauce, and vinegar. Simmer until tender and garnish with boiled eggs.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (27, 'Ginisang Talong', 'A simple dish of sautéed eggplant combined with scrambled eggs.', 'ginisangTalong.jpg', 10, 15, 'vegetarian', '2 eggplants, sliced, 2 eggs, 1 tbsp cooking oil', 'Sauté eggplants until soft. Add beaten eggs and stir-fry until cooked.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (28, 'Nilagang Gulay', 'A hearty vegetable dish garnished with boiled eggs.', 'nilagangGulay.jpg', 10, 20, 'vegetarian', '1 cup cabbage, chopped, 1 cup green beans, cut, 2 boiled eggs, halved', 'Boil vegetables in salted water until tender. Serve with boiled eggs on top.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (29, 'Vegetarian Caldereta', 'A meatless version of the classic tomato-based stew with vegetables.', 'vegetarianCaldereta.jpg', 15, 30, 'vegetarian', '1 cup potatoes, diced, 1 cup carrots, diced, 1/2 cup green peas, 1 cup tomato sauce, 1/2 cup grated cheese', 'Sauté vegetables, then add tomato sauce and water. Simmer until tender, then stir in grated cheese.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (30, 'Vegetarian Giniling', 'A sautéed mix of vegetables resembling ground meat.', 'vegetarianGiniling.jpg', 10, 20, 'vegetarian', '1 cup chopped carrots, 1 cup chopped potatoes, 1/2 cup green peas, 1/4 cup tomato paste', 'Sauté vegetables in oil. Add tomato paste and simmer until cooked.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (31, 'Ginisang Sayote with Egg', 'Stir-fried chayote with scrambled eggs.', 'ginisangSayoteWithEgg.jpg', 10, 15, 'vegetarian', '2 chayotes, peeled and sliced, 2 eggs, 1 tbsp cooking oil', 'Sauté chayote until tender. Add beaten eggs and stir-fry until cooked.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (32, 'Vegetarian Kare-Kare', 'A peanut-based stew with assorted vegetables.', 'vegetarianKareKare.jpg', 10, 20, 'vegetarian', '1 cup eggplant, sliced, 1 cup string beans, cut, 1/2 cup peanut butter, 1/2 cup coconut milk', 'Boil vegetables until tender. Add peanut butter and coconut milk, simmer until thick.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (33, 'Pansit Canton', 'Stir-fried egg noodles with mixed vegetables.', 'pansitCanton.jpg', 10, 15, 'vegetarian', '1 pack pancit canton noodles, 1 cup mixed vegetables, 2 tbsp soy sauce', 'Sauté vegetables, then add noodles and soy sauce. Stir-fry until well-mixed.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (34, 'Vegetable Pochero', 'A vegetable stew with plantains and chickpeas.', 'vegetablePochero.jpg', 10, 20, 'vegetarian', '1 cup cabbage, 1 cup potatoes, 1 plantain, sliced, 1/2 cup chickpeas', 'Sauté potatoes and plantains. Add cabbage and chickpeas, then simmer with water until tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (35, 'Patola Soup', 'A comforting soup with ridge gourd and egg.', 'patolaSoup.jpg', 5, 10, 'vegetarian', '1 ridge gourd, sliced, 2 eggs, 4 cups water', 'Boil water and add ridge gourd. Add beaten eggs and simmer until cooked.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (36, 'Ensaladang Talong', 'Grilled eggplant salad with boiled egg slices.', 'ensaladangTalong.jpg', 10, 5, 'vegetarian', '2 grilled eggplants, sliced, 2 boiled eggs, sliced, 2 tbsp vinegar', 'Combine grilled eggplants with vinegar. Garnish with boiled eggs.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (37, 'Kalabasa Curry with Egg', 'Creamy squash curry with boiled eggs.', 'kalabasaCurryWithEgg.jpg', 10, 15, 'vegetarian', '1 cup squash, cubed, 1 tbsp curry powder, 1 cup coconut milk, 2 boiled eggs', 'Cook squash in curry powder and coconut milk. Garnish with boiled eggs.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (38, 'Saluyot Soup with Eggs', 'Nutritious jute leaves soup with boiled eggs.', 'saluyotSoupWithEgg.jpg', 5, 10, 'vegetarian', '2 cups jute leaves, 2 boiled eggs, 4 cups water', 'Boil water, then add jute leaves. Add boiled eggs as garnish.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (39, 'Ampalaya Salad with Salted Egg', 'Bitter melon salad topped with salted egg slices.', 'ampalayaSaladWithSaltedEgg.jpg', 10, 5, 'vegetarian', '1 bitter melon, thinly sliced, 1 salted egg, diced, 2 tbsp vinegar', 'Soak bitter melon in salted water, then rinse. Combine with salted egg and vinegar.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (40, 'Bulanglang with Egg', 'A light soup with mixed vegetables and boiled eggs.', 'bulanglangWithEgg.jpg', 10, 20, 'vegetarian', '1 cup squash, cubed, 1 cup green beans, 2 boiled eggs', 'Boil vegetables in salted water until tender. Add boiled eggs as garnish.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (41, 'Sinigang na Hipon', 'A comforting, tangy Filipino soup made with shrimp and vegetables in a tamarind-based broth.', 'sinigangNaHipon.jpg', 15, 30, 'pescatarian', '500g shrimp, 1 liter water, 1 pack tamarind soup mix (or fresh tamarind), 2 tomatoes, quartered, 1 onion, sliced, 1 radish, sliced, 1 cup string beans, 1 cup eggplant, sliced, 1 cup kangkong (water spinach), 2 green chilies (optional), Salt and fish sauce to taste', 'Boil water and add tomatoes, onions, and tamarind mix. Simmer for 5 minutes. Add radish, string beans, and eggplant. Cook for 5 minutes. Add shrimp and green chilies. Simmer until shrimp turn pink. Season with fish sauce and salt. Add kangkong last. Cook for 1 minute.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (42, 'Pakbet Tagalog', 'A classic vegetable dish sautéed with fish sauce and shrimp paste.', 'pakbetTagalog.jpg', 15, 25, 'pescatarian', '500g shrimp, 2 cups mixed vegetables (eggplant, okra, squash, string beans, bitter melon), 2 tbsp bagoong isda (fermented fish sauce), 2 cloves garlic, minced, 1 onion, chopped, 2 tomatoes, diced', 'Sauté garlic, onion, and tomatoes in oil. Add bagoong isda and cook for 2 minutes. Add vegetables in order of cooking time: squash first, then eggplant, bitter melon, okra, and string beans. Add 1/4 cup water and simmer until vegetables are tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (43, 'Laswa with Shrimp', 'A healthy Ilonggo vegetable soup with shrimp.', 'laswaWithShrimp.jpg', 10, 20, 'pescatarian', '200g shrimp, 1 cup squash, cubed, 1 cup eggplant, sliced, 1 cup okra, sliced, 1 cup string beans, 1 cup malunggay leaves, 1 liter water, Salt to taste', 'Boil water and add squash and eggplant. Simmer for 5 minutes. Add okra, string beans, and shrimp. Cook until shrimp turn pink. Add malunggay leaves. Season with salt.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (44, 'Pinakbet with Shrimp or Dilis', 'A savory vegetable dish cooked with shrimp or anchovies.', 'pinakbetWithShrimpOrDilis.jpg', 15, 25, 'pescatarian', '2 cups mixed vegetables (squash, eggplant, okra, bitter melon, string beans), 200g shrimp or 1/2 cup dilis (dried anchovies), 2 tbsp bagoong alamang (shrimp paste), 2 cloves garlic, minced, 1 onion, chopped, 2 tomatoes, diced, 1 tbsp cooking oil', 'Sauté garlic, onion, and tomatoes in oil. Add shrimp paste and cook for 2 minutes. Add shrimp or dilis and cook for another 2 minutes. Add vegetables and 1/4 cup water. Cover and simmer until tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (45, 'Togue Guisado with Shrimp', 'A quick stir-fried bean sprout dish with shrimp.', 'togueGuisadoWithShrimp.jpg', 10, 15, 'pescatarian', '200g shrimp, 2 cups bean sprouts (togue), 1 carrot, julienned, 1/2 cup green beans, sliced, 2 cloves garlic, minced, 1 onion, chopped, 1 tbsp soy sauce, 1 tbsp cooking oil, Salt and pepper to taste', 'Sauté garlic, onion, and tomatoes in oil. Add shrimp paste and cook for 2 minutes. Add shrimp or dilis and cook for another 2 minutes. Add vegetables and 1/4 cup water. Cover and simmer until tender.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (46, 'Adobong Labong with Dilis', 'Bamboo shoots simmered in a tangy and savory adobo sauce with anchovies.', 'adobongLabongWithDilis.jpg', 10, 20, 'pescatarian', '2 cups bamboo shoots, sliced, 1/2 cup dilis (dried anchovies), 3 tbsp vinegar, 3 tbsp soy sauce, 2 cloves garlic, minced, 1 onion, chopped, 1 tbsp cooking oil, Salt and pepper to taste', 'Sauté garlic and onion in oil. Add dilis and cook for 2 minutes. Add bamboo shoots, soy sauce, and vinegar. Simmer for 5-7 minutes. Season with salt and pepper.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (47, 'Bulanglang na Gulay with Daing', 'A vegetable soup cooked with dried fish for a smoky flavor.', 'bulanglangNaGulayWithDaing.jpg', 10, 20, 'pescatarian', '2 cups mixed vegetables (eggplant, okra, squash, string beans), 100g daing (dried fish), 1 liter water, 1 onion, chopped, 2 tomatoes, diced, Salt to taste', 'Boil water with onions and tomatoes. Add daing and simmer for 5 minutes. Add vegetables and cook until tender. Season with salt.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (48, 'Ensaladang Talong with Bagoong Isda', 'Roasted eggplant salad with a tangy and savory fish sauce dressing.', 'ensaladangTalongWithBagoongIsda.jpg', 10, 5, 'pescatarian', '3 eggplants, grilled and peeled, 1 onion, chopped, 2 tomatoes, diced, 2 tbsp bagoong isda (fermented fish sauce), 1 tbsp calamansi juice', 'Mash the grilled eggplant. Mix with onions, tomatoes, bagoong isda, and calamansi juice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (49, 'Ginataang Gulay with Seafood', 'A rich and creamy dish made with mixed vegetables and seafood.', 'ginataangGulayWithSeafood.jpg', 10, 20, 'pescatarian', '1 cup squash, cubed, 1 cup string beans, 200g shrimp or fish fillet, 1 cup coconut milk, 1 onion, chopped, 2 cloves garlic, minced, 1 tbsp bagoong alamang (shrimp paste), 1 tbsp cooking oil', 'Sauté garlic and onion in oil. Add squash and string beans. Cook for 3 minutes. Pour in coconut milk and simmer until vegetables are tender. Add seafood and shrimp paste. Cook for another 3-5 minutes.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (50, 'Ginisang Monggo with Tinapa', 'A hearty mung bean stew cooked with smoked fish.', 'ginisangMonggoWithTinapa.jpg', 15, 40, 'pescatarian', '1 cup mung beans, soaked, 1 liter water, 100g tinapa (smoked fish), flaked, 1 onion, chopped, 2 cloves garlic, minced, 1 tomato, diced, 1 tbsp fish sauce', 'Boil mung beans in water until tender. Sauté garlic, onion, and tomatoes. Add tinapa and cook for 2 minutes. Mix sautéed ingredients with boiled mung beans. Season with fish sauce.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (51, 'Saluyot Soup with Dried Fish', 'A healthy and slimy soup made with saluyot leaves and dried fish.', 'saluyotSoupWithDriedFish.jpg', 10, 10, 'pescatarian', '2 cups saluyot (jute leaves), 100g dried fish (daing), cut into pieces, 1 liter water, 1 onion, chopped, 2 cloves garlic, minced, Salt to taste', 'Boil water and add garlic, onion, and dried fish. Simmer for 5 minutes. Add saluyot leaves and cook for another 2 minutes. Season with salt.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (52, 'Vegetable Pochero with Fish Fillet', 'A hearty stew made with vegetables and tender fish fillet in a tomato-based sauce.', 'vegetablePotcheroWithFishFillet.jpg', 15, 30, 'pescatarian', '200g fish fillet, cubed, 1 cup saba banana, sliced, 1 cup cabbage, chopped, 1/2 cup green beans, sliced, 2 tomatoes, diced, 1 onion, chopped, 2 cloves garlic, minced, 2 tbsp tomato paste, 1 tbsp cooking oil, Salt and pepper to taste', 'Sauté garlic, onion, and tomatoes in oil. Add tomato paste and cook for 2 minutes. Add saba banana, green beans, and cabbage. Stir and cook for 5 minutes. Add fish fillet and simmer until cooked. Season with salt and pepper.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (53, 'Ginisang Sayote with Shrimp', 'A simple sautéed chayote dish with shrimp.', 'ginisangSayoteWithShrimp.jpg', 10, 15, 'pescatarian', '200g shrimp, 2 chayote (sayote), peeled and sliced, 2 cloves garlic, minced, 1 onion, chopped, 1 tbsp fish sauce, 1 tbsp cooking oil', 'Sauté garlic and onion in oil. Add shrimp and cook until pink. Add chayote and stir-fry for 5 minutes. Season with fish sauce.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (54, 'Ginataang Langka with Shrimp', 'A creamy dish of tender young jackfruit cooked in coconut milk with shrimp.', 'ginataangLangkaWithShrimp.jpg', 15, 25, 'pescatarian', '2 cups young jackfruit, sliced, 200g shrimp, 1 cup coconut milk, 2 cloves garlic, minced, 1 onion, chopped, 1 tbsp bagoong alamang (shrimp paste), 1 tbsp cooking oil', 'Sauté garlic and onion in oil. Add jackfruit and cook for 5 minutes. Pour in coconut milk and simmer for 10 minutes. Add shrimp and cook until pink. Season with shrimp paste.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (55, 'Adobong Sitaw with Shrimp', 'A savory dish of string beans cooked in vinegar and soy sauce with shrimp.', 'adobong_sitaw_with_shrimp.jpg', 10, 15, 'pescatarian', '200g shrimp, 2 cups string beans, cut into 2-inch pieces, 3 tbsp vinegar, 3 tbsp soy sauce, 2 cloves garlic, minced, 1 onion, chopped, 1 tbsp cooking oil', 'Sauté garlic and onion in oil. Add shrimp and cook until pink. Add string beans, vinegar, and soy sauce. Stir and simmer for 5-7 minutes.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (56, 'Vegetable Kare-Kare with Shrimp Paste', 'A rich peanut-based stew with vegetables, served with shrimp paste.', 'vegetable_kare_kare_with_shrimp_paste.jpg', 15, 20, 'pescatarian', '1 cup eggplant, sliced, 1 cup string beans, 1 cup pechay (bok choy), 1/2 cup squash, cubed, 2 tbsp peanut butter, 1 tbsp annatto powder (achuete), 1 onion, chopped, 1 tbsp bagoong alamang (shrimp paste), 1 tbsp cooking oil, Salt and pepper to taste', 'Boil vegetables until tender, then set aside. Sauté onion in oil. Add annatto powder and peanut butter dissolved in water. Simmer for 5 minutes. Add boiled vegetables to the sauce. Serve with shrimp paste.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (57, 'Tortang Talong with Tuna', 'A smoky eggplant omelette filled with seasoned tuna.', 'tortang_talong_with_tuna.jpg', 15, 10, 'pescatarian', '3 eggplants, grilled and peeled, 1 can tuna, drained, 3 eggs, beaten, Salt and pepper to taste, Cooking oil', 'Flatten the grilled eggplants. Mix tuna with beaten eggs, salt, and pepper. Dip eggplant in the mixture and fry until golden brown.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (58, 'Kalabasa Curry with Shrimp', 'A spiced squash curry with shrimp.', 'kalabasa_curry_with_shrimp.jpg', 10, 20, 'pescatarian', '2 cups squash, cubed, 200g shrimp, 1 cup coconut milk, 1 tsp curry powder, 1 onion, chopped, 2 cloves garlic, minced, 1 tbsp cooking oil, Salt to taste', 'Sauté garlic and onion in oil. Add curry powder and stir for 1 minute. Add squash and coconut milk. Simmer until squash is tender. Add shrimp and cook until pink. Season with salt.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (59, 'Ukoy na Toge with Shrimp', 'Crispy fritters made with bean sprouts and shrimp.', 'ukoy_na_toge_with_shrimp.jpg', 10, 15, 'pescatarian', '2 cups bean sprouts (togue), 200g shrimp, 1 cup all-purpose flour, 1 egg, beaten, 1/2 cup water, Salt and pepper to taste, Cooking oil', 'Mix bean sprouts, shrimp, flour, egg, water, salt, and pepper. Heat oil and fry spoonfuls of the mixture until golden brown.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (60, 'Pansit Gulay with Shrimp', 'Stir-fried noodles with mixed vegetables and shrimp.', 'pansit_gulay_with_shrimp.jpg', 10, 20, 'pescatarian', '200g shrimp, 200g rice noodles (bihon), 2 cups mixed vegetables (carrots, cabbage, green beans), 2 cloves garlic, minced, 1 onion, chopped, 2 tbsp soy sauce, 1 tbsp cooking oil', 'Soak noodles in water until softened. Drain and set aside. Sauté garlic and onion in oil. Add shrimp and cook until pink. Add vegetables and stir-fry for 3 minutes. Add noodles and soy sauce. Mix well and cook for 5 minutes.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (61, 'Chicken Adobo', 'A classic Filipino dish marinated in vinegar, soy sauce, garlic, and bay leaves, then simmered to perfection.', 'chicken_adobo.jpg', 30, 45, 'regular_diet', '1 kg chicken, cut into serving pieces, 1/2 cup soy sauce, 1/2 cup vinegar, 4 cloves garlic, crushed, 2 bay leaves, 1 tsp black peppercorns, 1 tbsp cooking oil, 1 cup water, Salt and pepper to taste', 'Marinate chicken in soy sauce, garlic, and peppercorns for at least 30 minutes. Heat oil in a pan and brown the marinated chicken on all sides. Add the marinade, vinegar, bay leaves, and water. Bring to a boil. Lower the heat and simmer for 30 minutes or until the chicken is tender and the sauce has reduced. Season with salt and pepper to taste. Serve with steamed rice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (62, 'Sinigang na Hipon', 'A savory and tangy shrimp soup made with tamarind, tomatoes, and various vegetables.', 'sinigang_na_hipon.jpg', 10, 20, 'regular_diet', '500g shrimp, cleaned, 1 liter water, 1 medium onion, quartered, 2 medium tomatoes, quartered, 1 radish, sliced, 1 eggplant, sliced, 1 bunch kangkong (water spinach), 1 pack sinigang mix (tamarind soup base), Fish sauce or salt to taste', 'In a pot, boil water and add the onions and tomatoes. Add the radish and cook until tender. Add the shrimp and eggplant, and cook until shrimp turns pink. Add the sinigang mix and stir well. Adjust the taste with fish sauce or salt. Add the kangkong and simmer for another 2 minutes. Serve hot.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (63, 'Ginisang Munggo', 'A comforting stew made from mung beans and flavored with garlic, onions, and tomatoes.', 'ginisang_munggo.jpg', 10, 30, 'regular_diet', '1 cup mung beans, 6 cups water, 1/4 kg pork belly, sliced, 1 medium onion, chopped, 4 cloves garlic, minced, 2 medium tomatoes, chopped, 1 bunch spinach or ampalaya leaves, Fish sauce or salt to taste, Cooking oil', 'Boil mung beans in water until tender, then set aside. In a pan, heat oil and sauté garlic, onions, and tomatoes. Add pork belly and cook until browned. Pour in the cooked mung beans with their liquid. Bring to a boil. Lower the heat and simmer until the pork is tender. Season with fish sauce or salt to taste. Add spinach or ampalaya leaves and cook for another 2 minutes. Serve hot.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (64, 'Ensaladang Talong', 'A refreshing grilled eggplant salad mixed with tomatoes, onions, and a tangy dressing.', 'ensaladang_talong.jpg', 10, 15, 'regular_diet', '2 large eggplants, 2 medium tomatoes, diced, 1 medium onion, chopped, 1/4 cup vinegar, 1 tbsp fish sauce, Salt and pepper to taste', 'Grill the eggplants until the skin is charred and the flesh is soft. Peel off the skin and slice the eggplants. In a bowl, combine the sliced eggplants, tomatoes, and onions. Mix vinegar and fish sauce in a small bowl. Pour over the eggplant mixture. Season with salt and pepper to taste. Toss well and serve as a side dish.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (65, 'Pinakbet', 'A flavorful vegetable stew with shrimp paste, typically featuring squash, eggplant, bitter melon, and more.', 'pinakbet.jpg', 15, 30, 'regular_diet', '1/4 kg pork belly, sliced, 1 small squash, cubed, 2 medium eggplants, sliced, 1 medium bitter melon, sliced, 1 small bunch string beans, cut into 2-inch pieces, 2 medium tomatoes, chopped, 1 medium onion, chopped, 2 cloves garlic, minced, 1/4 cup shrimp paste (bagoong alamang), 1/2 cup water, Cooking oil', 'Heat oil in a pan and sauté garlic, onions, and tomatoes. Add the pork belly and cook until browned. Add the shrimp paste and stir well. Add the squash, eggplant, bitter melon, and string beans. Mix until coated with the shrimp paste. Pour in water and bring to a boil. Lower the heat and simmer until the vegetables are tender. Serve hot with steamed rice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (66, 'Laing', 'Taro leaves cooked in rich coconut milk, often with shrimp or pork for added flavor.', 'laing.jpg', 10, 25, 'regular_diet', '2 cups dried taro leaves (dahon ng gabi), 2 cans coconut milk, 1/4 kg pork belly, sliced, 4 cloves garlic, minced, 1 medium onion, chopped, 2 thumb-sized pieces of ginger, sliced, 3-4 pieces green chili (siling haba), 2 tbsp shrimp paste (bagoong alamang), Salt and pepper to taste', 'In a pot, sauté garlic, onions, and ginger. Add pork belly and cook until browned. Pour in coconut milk and bring to a boil. Lower the heat, add the taro leaves, and simmer until leaves are tender. Add shrimp paste, green chili, salt, and pepper. Simmer until the sauce thickens. Serve hot with steamed rice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (67, 'Tinumok', 'Shrimp or fish wrapped in taro leaves and cooked in coconut milk.', 'tinumok.jpg', 15, 30, 'regular_diet', '1/2 kg shrimp or fish fillet, diced, 2 cups dried taro leaves (dahon ng gabi), 2 cans coconut milk, 1 medium onion, chopped, 4 cloves garlic, minced, 1 thumb-sized piece of ginger, minced, 1 tbsp shrimp paste (bagoong alamang), Salt and pepper to taste, Cooking twine or strips of banana leaves to tie', 'Season shrimp or fish with salt, pepper, and ginger. Take a portion of the seasoned shrimp or fish and wrap it in taro leaves. Secure with cooking twine or banana leaf strips. In a pot, heat coconut milk with garlic, onions, and shrimp paste. Add the wrapped taro leaves and simmer until the taro leaves are tender and the coconut milk has thickened. Serve hot with steamed rice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (68, 'Paksiw na Isda', 'Fish cooked in vinegar, garlic, ginger, and spices, often with vegetables.', 'paksiw_na_isda.jpg', 10, 20, 'regular_diet', '1 kg fish (bangus or any white fish), cleaned and sliced, 1/2 cup vinegar, 1 cup water, 4 cloves garlic, crushed, 1 thumb-sized piece of ginger, sliced, 2 pieces long green chili (siling haba), 1 medium eggplant, sliced, Salt and pepper to taste', 'In a pot, arrange the fish slices and add garlic, ginger, and green chili. Pour in vinegar and water. Season with salt and pepper. Bring to a boil without stirring. Lower the heat and simmer for 10-15 minutes. Add eggplant slices and cook until tender. Serve hot with steamed rice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (69, 'Ginisang Ampalaya at Itlog', 'Stir-fried bitter melon with eggs, a simple and healthy dish.', 'ginisang_ampalaya_at_itlog.jpg', 10, 15, 'regular_diet', '2 pieces ampalaya (bitter melon), sliced and soaked in water with salt, 3 eggs, beaten, 1 medium onion, sliced, 2 cloves garlic, minced, 2 medium tomatoes, chopped, Salt and pepper to taste, Cooking oil', 'Drain and rinse the sliced ampalaya. In a pan, heat oil and sauté garlic, onions, and tomatoes. Add the ampalaya and cook until slightly tender. Pour in the beaten eggs and stir until fully cooked. Season with salt and pepper to taste. Serve hot.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (70, 'Tinolang Manok', 'A comforting chicken soup with green papaya and chili leaves, flavored with ginger.', 'tinolang_manok.jpg', 10, 40, 'regular_diet', '1 kg chicken, cut into serving pieces, 1 medium green papaya, peeled and sliced, 1 bunch chili leaves (dahon ng sili), 4 cloves garlic, minced, 1 medium onion, chopped, 1 thumb-sized piece of ginger, sliced, 4 cups water, Fish sauce or salt to taste', 'In a pot, sauté garlic, onions, and ginger. Add the chicken pieces and cook until slightly browned. Pour in water and bring to a boil. Lower the heat and simmer until the chicken is tender. Add the green papaya and cook until tender. Add the chili leaves and simmer for another 2 minutes. Season with fish sauce or salt to taste. Serve hot.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (71, 'Pinakbet Tagalog', 'A savory Filipino vegetable dish made from mixed vegetables, usually flavored with shrimp paste.', 'pinakbet_tagalog.jpg', 15, 30, 'regular_diet', '1/4 kg pork belly, sliced, 1 small squash, cubed, 2 medium eggplants, sliced, 1 medium bitter melon, sliced, 1 small bunch string beans, cut into 2-inch pieces, 2 medium tomatoes, chopped, 1 medium onion, chopped, 2 cloves garlic, minced, 1/4 cup shrimp paste (bagoong alamang), 1/2 cup water, Cooking oil', 'Heat oil in a pan and sauté garlic, onions, and tomatoes. Add the pork belly and cook until browned. Add the shrimp paste and stir well. Add the squash, eggplant, bitter melon, and string beans. Mix until coated with the shrimp paste. Pour in water and bring to a boil. Lower the heat and simmer until the vegetables are tender. Serve hot with steamed rice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (72, 'Sinigang na Baboy', 'A deliciously tangy pork soup made with tamarind, vegetables, and spices.', 'sinigang_na_baboy.jpg', 10, 30, 'regular_diet', '1 kg pork belly, cut into chunks, 1 liter water, 1 medium onion, quartered, 2 medium tomatoes, quartered, 1 radish, sliced, 1 eggplant, sliced, 1 bunch kangkong (water spinach), 1 pack sinigang mix (tamarind soup base), Fish sauce or salt to taste', 'In a pot, boil water and add the onions and tomatoes. Add the pork belly and cook until tender. Add the radish and eggplant and cook until tender. Add the sinigang mix and stir well. Adjust the taste with fish sauce or salt. Add the kangkong and simmer for another 2 minutes. Serve hot.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (73, 'Ginisang Kalabasa at Sitaw', 'A stir-fried dish featuring squash and string beans, seasoned with garlic, onions, and tomatoes.', 'ginisang_kalabasa_at_sitaw.jpg', 10, 15, 'regular_diet', '1 small squash, cubed, 1 small bunch string beans, cut into 2-inch pieces, 1 medium onion, chopped, 2 cloves garlic, minced, 2 medium tomatoes, chopped, Salt and pepper to taste, Cooking oil', 'Heat oil in a pan and sauté garlic, onions, and tomatoes. Add the squash and cook until slightly tender. Add the string beans and stir-fry until both vegetables are cooked through. Season with salt and pepper to taste.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (74, 'Ensaladang Kamatis at Ampalaya', 'A simple and refreshing salad made with tomatoes and bitter melon.', 'ensaladang_kamatis_at_ampalaya.jpg', 5, 10, 'regular_diet', '2 medium tomatoes, diced, 1 medium bitter melon, sliced and soaked in water with salt, 1 medium onion, chopped, 1/4 cup vinegar, 1 tbsp fish sauce, Salt and pepper to taste', 'Drain and rinse the sliced bitter melon. In a bowl, combine the tomatoes, bitter melon, and onions. Mix vinegar and fish sauce in a small bowl. Pour over the tomato mixture. Season with salt and pepper to taste. Toss well and serve as a side dish.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (75, 'Tinumok na Hipon', 'Shrimp wrapped in taro leaves and cooked in rich coconut milk.', 'tinumok_na_hipon.jpg', 15, 30, 'regular_diet', '1/2 kg shrimp, cleaned and deveined, 2 cups dried taro leaves (dahon ng gabi), 2 cans coconut milk, 1 medium onion, chopped, 4 cloves garlic, minced, 1 thumb-sized piece of ginger, minced, 1 tbsp shrimp paste (bagoong alamang), Salt and pepper to taste, Cooking twine or strips of banana leaves to tie', 'Season shrimp with salt, pepper, and ginger. Take a portion of the seasoned shrimp and wrap it in taro leaves. Secure with cooking twine or banana leaf strips. In a pot, heat coconut milk with garlic, onions, and shrimp paste. Add the wrapped taro leaves and simmer until the taro leaves are tender and the coconut milk has thickened. Serve hot with steamed rice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (76, 'Bicol Express', 'A spicy dish made with pork, shrimp, and coconut milk, commonly enjoyed in Bicol.', 'bicol_express.jpg', 10, 30, 'regular_diet', '1/2 kg pork belly, sliced, 1/4 kg shrimp, peeled, 2 cans coconut milk, 1 medium onion, chopped, 4 cloves garlic, minced, 3-4 pieces long green chili (siling haba), 3-4 pieces red chili, sliced, 2 tbsp shrimp paste (bagoong alamang), Salt and pepper to taste', 'In a pan, sauté garlic, onions, and shrimp paste. Add pork belly and cook until browned. Pour in coconut milk and bring to a boil. Lower the heat and simmer for 10 minutes. Add the shrimp and green chili, and cook for another 5-7 minutes. Season with salt and pepper to taste. Serve hot with steamed rice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (77, 'Laing na Baboy', 'A variant of laing made with pork, cooked in coconut milk with spicy flavor.', 'laing_na_baboy.jpg', 15, 25, 'regular_diet', '2 cups dried taro leaves (dahon ng gabi), 1/2 kg pork belly, sliced, 2 cans coconut milk, 4 cloves garlic, minced, 1 medium onion, chopped, 1 thumb-sized piece of ginger, minced, 3-4 pieces green chili (siling haba), 2 tbsp shrimp paste (bagoong alamang), Salt and pepper to taste', 'In a pan, sauté garlic, onions, and ginger. Add pork belly and cook until browned. Pour in coconut milk and bring to a boil. Lower the heat, add the taro leaves, and simmer until tender. Add shrimp paste, green chili, salt, and pepper. Simmer until the sauce thickens. Serve hot with steamed rice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (78, 'Pochero', 'A hearty stew made with beef shank, plantains, and vegetables in a tomato-based broth.', 'pochero.jpg', 15, 45, 'regular_diet', '1 kg beef shank, cut into chunks, 2 plantains, sliced, 1 medium potato, peeled and cubed, 1/2 cup saba banana, sliced, 1 bunch bok choy (chinese cabbage), 1 medium onion, quartered, 2 medium tomatoes, quartered, 2 cloves garlic, minced, 5 cups water, Fish sauce or salt to taste', 'In a pot, sauté garlic, onions, and tomatoes. Add the beef shank and cook until browned. Pour in water and bring to a boil. Lower the heat and simmer for 40 minutes. Add plantains, potatoes, and saba banana, cooking until tender. Add bok choy and simmer for another 2 minutes. Season with fish sauce or salt to taste. Serve hot with steamed rice.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (79, 'Pancit Malabon', 'A noodle dish from Malabon, known for its rich seafood sauce and thick rice noodles.', 'pancit_malabon.jpg', 10, 25, 'regular_diet', '500g rice noodles (bihon), 1/2 kg shrimp, peeled, 1/2 kg squid, sliced, 1/4 kg smoked fish, shredded, 1/4 cup shrimp paste (bagoong alamang), 1/2 cup peanut sauce, 4 cloves garlic, minced, 1 medium onion, chopped, 2-3 pieces boiled eggs, sliced, 1/4 cup chopped green onions, 1/4 cup fried garlic, 2 tbsp soy sauce, 2 tbsp cooking oil', 'Cook rice noodles according to package instructions and set aside. In a pan, sauté garlic and onions in oil. Add shrimp, squid, and smoked fish, cooking until the seafood is cooked. Add shrimp paste and peanut sauce, and mix until well-coated. Toss in the cooked noodles, soy sauce, and season with salt and pepper to taste. Serve topped with sliced boiled eggs, green onions, and fried garlic. Serve hot.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (80, 'Kare-Kare', 'A rich and savory Filipino stew made with oxtail, vegetables, and peanut sauce.', 'kare_kare.jpg', 20, 60, 'regular_diet', '1 kg oxtail, cut into pieces, 1/2 kg tripes, cleaned, 1/2 cup peanut butter, 2 medium eggplants, sliced, 1/4 kg string beans, cut into 2-inch pieces, 1 bunch bok choy, 1 banana flower, sliced, 2 tbsp shrimp paste (bagoong alamang), 5 cups water, Salt and pepper to taste', 'In a pot, cook oxtail and tripes in water until tender (about 1 hour). In a separate pan, sauté shrimp paste in oil. Add peanut butter and water, stirring until smooth. Add the cooked oxtail and tripes, then simmer until the sauce thickens. Add the vegetables and cook until tender. Season with salt and pepper. Serve with steamed rice and shrimp paste on the side.', 1, '2024-12-06 12:38:53', '2024-12-06 12:38:53'),
    (81, 'Arroz Caldo', 'A comforting rice porridge with chicken, ginger, and garlic.', 'arrozCaldo.jpg', 10, 30, 'regular_diet', '1 cup rice, 1/2 kg chicken, 1 thumb ginger, sliced, 4 cups chicken stock, Salt and pepper to taste', 'Sauté ginger and garlic, add chicken and cook until lightly browned. Add rice and chicken stock, simmer until thickened. Season to taste.', 1, NOW(), NOW()),
    (82, 'Balbacua', 'Slow-cooked oxtail stew with a rich peanut and tomato sauce.', 'balbacua.jpg', 20, 180, 'regular_diet', '1 kg oxtail, 1 cup peanuts, 1/2 cup tomato sauce, 1 tbsp soy sauce, Salt and pepper to taste', 'Boil oxtail until tender. Sauté garlic, add tomato sauce, peanuts, and soy sauce. Simmer until sauce thickens.', 1, NOW(), NOW()),
    (83, 'Batchoy', 'A noodle soup from Iloilo made with pork offal, egg noodles, and a savory broth.', 'batchoy.jpg', 15, 40, 'regular_diet', '1 pack egg noodles, 1/2 kg pork offal, 4 cups pork broth, Garlic, crushed, Chicharon bits for topping', 'Boil pork offal until tender. Cook noodles separately. Assemble in a bowl with broth, pork offal, and toppings.', 1, NOW(), NOW()),
    (84, 'Binagoongan', 'Pork stewed in shrimp paste with tomatoes and chilies.', 'binagoongan.jpg', 15, 30, 'regular_diet', '1/2 kg pork belly, 2 tbsp shrimp paste, 1 cup tomatoes, diced, 2 pcs chili, sliced', 'Sauté pork until browned. Add tomatoes and shrimp paste, simmer until pork is tender and sauce thickens.', 1, NOW(), NOW()),
    (85, 'Bopis', 'A spicy dish made with minced pork or beef lungs and heart.', 'bopis.jpg', 20, 40, 'regular_diet', '1/2 kg pork lungs and heart, minced, 1 cup vinegar, 2 pcs chili, minced, Salt and pepper to taste', 'Sauté garlic and onion, add pork lungs and heart. Stir in vinegar and chili, simmer until cooked.', 1, NOW(), NOW()),
    (86, 'Callos', 'A Spanish-influenced dish with ox tripe, chorizo, and garbanzo beans.', 'callos.jpg', 30, 90, 'regular_diet', '1/2 kg ox tripe, 1/2 cup chorizo, sliced, 1 cup garbanzo beans, 1 cup tomato sauce', 'Boil ox tripe until tender. Sauté garlic and onion, add tomato sauce, tripe, and garbanzo beans. Simmer until sauce thickens.', 1, NOW(), NOW()),
    (87, 'Camaron Rebosado', 'Deep-fried battered shrimp, often served with sweet and sour sauce.', 'camaronRebosado.jpg', 10, 15, 'pescatarian', '1/2 kg shrimp, peeled, 1 cup flour, 1 egg, beaten, Salt and pepper to taste', 'Coat shrimp in flour and egg, then fry until golden. Serve with sweet and sour sauce.', 1, NOW(), NOW()),
    (88, 'Chicken Inasal', 'A grilled chicken dish marinated in calamansi, vinegar, garlic, and annatto.', 'chickenInasal.jpg', 15, 30, 'regular_diet', '1/2 kg chicken, 1/4 cup calamansi juice, 1/4 cup vinegar, 1 tsp annatto oil', 'Marinate chicken for at least 1 hour. Grill until fully cooked, basting with annatto oil.', 1, NOW(), NOW()),
    (89, 'Dinakdakan', 'A tangy Ilocano dish made with grilled pork parts, onions, and mayonnaise.', 'dinakdakan.jpg', 20, 30, 'regular_diet', '1/2 kg pork, grilled and chopped, 1/4 cup vinegar, 1/4 cup mayonnaise, 1 onion, sliced', 'Mix grilled pork with vinegar, onion, and mayonnaise. Serve chilled.', 1, NOW(), NOW()),
    (90, 'Hamonado', 'Sweet pork or chicken stew flavored with pineapple juice.', 'hamonado.jpg', 20, 60, 'regular_diet', '1/2 kg pork or chicken, 1 cup pineapple juice, 1/4 cup soy sauce, 2 tbsp sugar', 'Marinate meat in pineapple juice and soy sauce. Sauté and simmer with marinade until tender.', 1, NOW(), NOW()),
    (91, 'Inihaw na Liempo', 'Grilled pork belly marinated in soy sauce, calamansi, and garlic.', 'inihawNaLiempo.jpg', 10, 30, 'regular_diet', '1/2 kg pork belly, 1/4 cup soy sauce, 1/4 cup calamansi juice, Garlic, minced', 'Marinate pork belly for 1 hour. Grill until cooked, basting with marinade.', 1, NOW(), NOW()),
    (92, 'Kansi', 'A Bacolod specialty soup similar to sinigang but with a sour and tangy taste from batuan fruit.', 'kansi.jpg', 20, 90, 'regular_diet', '1/2 kg beef shank, 4 cups water, 1 batuan fruit, sliced, Salt to taste', 'Boil beef shank until tender. Add batuan fruit and simmer until flavors meld.', 1, NOW(), NOW()),
    (93, 'Kinilaw', 'Fresh fish or seafood marinated in vinegar and spices.', 'kinilaw.jpg', 15, 0, 'pescatarian', '1/2 kg fresh fish, diced, 1/2 cup vinegar, 1 onion, sliced, Salt and pepper to taste', 'Mix fish with vinegar, onion, and seasoning. Serve chilled.', 1, NOW(), NOW()),
    (94, 'Kwek-Kwek', 'Quail eggs coated in orange batter and deep-fried.', 'kwekKwek.jpg', 10, 10, 'regular_diet', '12 quail eggs, boiled and peeled, 1 cup flour, 1/2 cup water, Orange food coloring', 'Coat quail eggs in orange batter and deep-fry until crispy. Serve with dipping sauce.', 1, NOW(), NOW()),
    (95, 'Lomi', 'A thick noodle soup with egg, meat, and vegetables.', 'lomi.jpg', 15, 20, 'regular_diet', '1 pack fresh egg noodles, 1 egg, beaten, 1/2 cup cooked meat, sliced, 1 cup vegetables, sliced', 'Cook noodles in broth, add meat and vegetables. Stir in beaten egg and simmer until thick.', 1, NOW(), NOW()),
    (96, 'Lumpiang Sariwa', 'Fresh vegetable spring rolls served with a sweet peanut sauce.', 'lumpiangSariwa.jpg', 30, 10, 'vegetarian', '1 cup vegetables, sliced, Lumpia wrapper, 1/2 cup peanut sauce', 'Wrap vegetables in lumpia wrapper. Serve with sweet peanut sauce.', 1, NOW(), NOW()),
    (97, 'Pata Tim', 'Braised pork hock in a sweet and savory soy-based sauce.', 'pataTim.jpg', 20, 120, 'regular_diet', '1 pork hock, 1/4 cup soy sauce, 1/4 cup sugar, 1 cup water', 'Sauté pork hock, add soy sauce, sugar, and water. Simmer until tender.', 1, NOW(), NOW()),
    (98, 'Pichi-Pichi', 'A sticky cassava dessert coated in grated coconut.', 'pichiPichi.jpg', 30, 20, 'regular_diet', '1 cup grated cassava, 1 cup sugar, 1 cup water, Grated coconut', 'Mix cassava, sugar, and water. Steam until firm. Roll in grated coconut.', 1, NOW(), NOW()),
    (99, 'Puto Bumbong', 'A traditional purple rice cake steamed in bamboo tubes, typically served during Christmas.', 'putoBumbong.jpg', 30, 20, 'regular_diet', '1 cup glutinous rice, 1/4 cup purple yam powder, Butter, Grated coconut', 'Steam rice mixture in bamboo tubes. Serve with butter and coconut.', 1, NOW(), NOW()),
    (100, 'Tortang Giniling', 'A Filipino-style omelet with ground pork or beef, potatoes, and carrots.', 'tortangGiniling.jpg', 15, 20, 'regular_diet', '1/2 kg ground pork or beef, 1 potato, diced, 1 carrot, diced, 2 eggs, beaten', 'Sauté ground meat and vegetables. Mix with beaten eggs and fry until golden.', 1, NOW(), NOW()),
    (101, 'Paksiw na Pata', 'Braised pork hock in a tangy soy and vinegar sauce.', 'paksiwNaPata.jpg', 15, 120, 'regular_diet', '1 kg pork hock, 1/2 cup vinegar, 1/2 cup soy sauce, 2 tbsp sugar, 1 head garlic, 1 tsp peppercorns, 1 banana blossom (optional)', 'Combine all ingredients in a pot, simmer until pork is tender, and serve.', 1, '2024-12-09 15:30:00', '2024-12-09 15:30:00'),
    (102, 'Tinolang Tahong', 'A comforting ginger-based soup with mussels.', 'tinolangTahong.jpg', 10, 20, 'pescatarian', '1 kg mussels, 2 thumb-sized ginger slices, 1 onion, sliced, 2 cups moringa leaves, 1 liter water, salt to taste', 'Boil water with ginger and onion. Add mussels, season with salt, and cook until they open. Add moringa leaves before serving.', 1, '2024-12-09 15:30:00', '2024-12-09 15:30:00'),
    (103, 'Pinaupong Manok', 'Whole chicken steamed on a bed of salt for a flavorful dish.', 'pinaupongManok.jpg', 15, 90, 'regular_diet', '1 whole chicken, 1/4 cup soy sauce, 1 tbsp calamansi juice, 3 cloves garlic, minced, 1 tsp pepper, 1 cup rock salt', 'Rub chicken with soy sauce, calamansi, garlic, and pepper. Place on a bed of rock salt in a pot, cover, and steam until cooked.', 1, '2024-12-09 15:30:00', '2024-12-09 15:30:00'),
    (104, 'Bagnet', 'Crispy deep-fried pork belly from Ilocos.', 'bagnet.jpg', 10, 120, 'regular_diet', '1 kg pork belly, 1 tbsp salt, 1 tsp pepper, water for boiling, cooking oil for frying', 'Boil pork belly with salt and pepper until tender. Dry completely and deep-fry until crispy.', 1, '2024-12-09 15:30:00', '2024-12-09 15:30:00'),
    (105, 'Taho', 'A sweet snack made with silken tofu, syrup, and sago pearls.', 'taho.jpg', 5, 10, 'vegan', '1 block silken tofu, 1/2 cup arnibal (brown sugar syrup), 1/4 cup sago pearls', 'Steam tofu until warm. Top with arnibal and sago pearls before serving.', 1, '2024-12-09 15:30:00', '2024-12-09 15:30:00'),
    (106, 'Tuna Kilawin', 'Fresh tuna marinated in vinegar, ginger, and chilies.', 'tunaKilawin.jpg', 10, 0, 'pescatarian', '500g fresh tuna, cubed, 1/2 cup vinegar, 1 thumb-sized ginger, minced, 1 chili, sliced, salt and pepper to taste', 'Marinate tuna in vinegar, ginger, chili, salt, and pepper for 10 minutes. Serve chilled.', 1, '2024-12-09 15:30:00', '2024-12-09 15:30:00'),
    (107, 'Tortang Dulong', 'An omelet made with small fish and eggs.', 'tortangDulong.jpg', 10, 15, 'pescatarian', '1 cup dulong (silverfish), 2 eggs, 1 tbsp flour, salt and pepper to taste, cooking oil', 'Mix dulong with beaten eggs, flour, salt, and pepper. Fry in a pan until golden brown.', 1, '2024-12-09 15:30:00', '2024-12-09 15:30:00'),
    (108, 'Paksiw na Bangus', 'Milkfish cooked in vinegar and spices.', 'paksiwNaBangus.jpg', 10, 25, 'pescatarian', '1 whole milkfish, sliced, 1/2 cup vinegar, 1 tbsp soy sauce, 1 thumb-sized ginger, sliced, 3 cloves garlic, crushed, 1 chili, sliced', 'Arrange ingredients in a pot, add water to cover fish halfway, and simmer until cooked.', 1, '2024-12-09 15:30:00', '2024-12-09 15:30:00'),
    (109, 'Sapin-Sapin', 'A layered sticky rice cake with vibrant colors and sweet coconut flavors.', 'sapinSapin.jpg', 30, 45, 'vegan', '2 cups glutinous rice flour, 1 cup sugar, 2 cups coconut milk, food coloring (purple, yellow, white)', 'Mix rice flour, sugar, and coconut milk. Divide into three portions, color each, and steam in layers.', 1, '2024-12-09 15:30:00', '2024-12-09 15:30:00'),
    (110, 'Cassava Cake', 'A creamy baked dessert made with grated cassava.', 'cassavaCake.jpg', 15, 60, 'vegetarian', '2 cups grated cassava, 1 cup coconut milk, 1/2 cup condensed milk, 1/4 cup sugar, 1/4 cup cheese (optional)', 'Mix ingredients and bake at 180°C for 60 minutes. Top with cheese if desired.', 1, '2024-12-09 15:30:00', '2024-12-09 15:30:00');





-- --------------------------------------------------------

--
-- Table structure for table `recipe_categories`
--

CREATE TABLE `recipe_categories` (
  `recipe_category_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_ingredients`
--

CREATE TABLE `recipe_ingredients` (
  `recipe_ingredient_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_ingredients`
--

INSERT INTO `recipe_ingredients` (`recipe_ingredient_id`, `recipe_id`, `ingredient_id`, `quantity`) VALUES
(1, 1, 1, 500),
(2, 1, 3, 1),
(3, 1, 9, 3),
(4, 1, 10, 1),
(5, 2, 1, 500),
(6, 2, 4, 3),
(7, 2, 5, 3),
(8, 2, 9, 3),
(9, 2, 10, 1),
(10, 3, 2, 500),
(11, 3, 6, 1),
(12, 3, 7, 2),
(13, 3, 8, 2),
(14, 3, 9, 3),
(15, 3, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_tags`
--

CREATE TABLE `recipe_tags` (
  `recipe_tag_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` tinyint(4) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

CREATE TABLE `steps` (
  `step_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `step_number` int(11) NOT NULL,
  `instruction` text NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` (`step_id`, `recipe_id`, `step_number`, `instruction`, `image`) VALUES
(1, 1, 1, 'Boil water in a pot.', NULL),
(2, 1, 2, 'Add pork and cook until tender.', NULL),
(3, 1, 3, 'Add tamarind mix, garlic, and onion. Simmer for 10 minutes.', NULL),
(4, 2, 1, 'Saute garlic and onion in a pan.', NULL),
(5, 2, 2, 'Add pork and cook until lightly browned.', NULL),
(6, 2, 3, 'Add soy sauce and vinegar. Simmer until tender.', NULL),
(7, 3, 1, 'Saute garlic and onion in a pan.', NULL),
(8, 3, 2, 'Add chicken and cook until lightly browned.', NULL),
(9, 3, 3, 'Add tomato sauce, potatoes, and carrots. Simmer until tender.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `profile_picture`, `date_joined`, `role`) VALUES
(1, 'chef1', 'chef1@example.com', 'hashedpassword1', NULL, '2024-12-06 10:46:28', 'user'),
(2, 'chef2', 'chef2@example.com', 'hashedpassword2', NULL, '2024-12-06 10:46:28', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ingredient_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recipe_categories`
--
ALTER TABLE `recipe_categories`
  ADD PRIMARY KEY (`recipe_category_id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD PRIMARY KEY (`recipe_ingredient_id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Indexes for table `recipe_tags`
--
ALTER TABLE `recipe_tags`
  ADD PRIMARY KEY (`recipe_tag_id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`step_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `recipe_categories`
--
ALTER TABLE `recipe_categories`
  MODIFY `recipe_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  MODIFY `recipe_ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `recipe_tags`
--
ALTER TABLE `recipe_tags`
  MODIFY `recipe_tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `steps`
--
ALTER TABLE `steps`
  MODIFY `step_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`);

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `recipe_categories`
--
ALTER TABLE `recipe_categories`
  ADD CONSTRAINT `recipe_categories_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`),
  ADD CONSTRAINT `recipe_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD CONSTRAINT `recipe_ingredients_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`),
  ADD CONSTRAINT `recipe_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`ingredient_id`);

--
-- Constraints for table `recipe_tags`
--
ALTER TABLE `recipe_tags`
  ADD CONSTRAINT `recipe_tags_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`),
  ADD CONSTRAINT `recipe_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `steps`
--
ALTER TABLE `steps`
  ADD CONSTRAINT `steps_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

