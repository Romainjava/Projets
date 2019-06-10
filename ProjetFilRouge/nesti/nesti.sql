-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 10 juin 2019 à 16:04
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nesti`
--

-- --------------------------------------------------------

--
-- Structure de la table `adress`
--

CREATE TABLE `adress` (
  `id` int(11) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `additional_adress` varchar(255) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `id_users` int(11) NOT NULL,
  `status_adress` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `id_ing` int(11) NOT NULL,
  `id_unite` int(11) NOT NULL,
  `qtx` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `id_ing`, `id_unite`, `qtx`, `prix`, `stock`, `image`) VALUES
(1, 3, 3, 500, 4, 10, 'https://www.maxi-mag.fr/sites/default/files/media/article_long/2011-03/des-de-lardons-fumes-bio-pack-herta_130011889267983300.jpg'),
(2, 1, 3, 300, 8, 10, 'https://www.happymeat.ch/wp-content/uploads/2014/04/Entrecote-de-boeuf.jpg'),
(3, 5, 5, 25, 6, 20, 'https://www.yoplait.fr/wp-content/uploads/2015/01/yoplait-cr%C3%A8me-fraiche.png');

-- --------------------------------------------------------

--
-- Structure de la table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paid` datetime NOT NULL,
  `id_adress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Poisson', 'Catégorie qui regroupe tout type de poissons'),
(2, 'Viande', 'Catégorie qui regroupe tout type de viandes'),
(3, 'Recette de Noël', 'Les recettes de noël seront ajouté à cette catégorie'),
(4, 'Fruits', 'Cette catégorie regroupe les fruits de toutes saison'),
(5, 'Légumes', 'Cette catégorie regroupe les légumes de toutes saison'),
(6, 'Condiment', 'Assaisonnement et épices multiples'),
(7, 'Epicerie', 'Cette catégorie regroupe les ingrédients de type: Farine, oeuf, sucre, etc...'),
(8, 'Glace', 'Cette catégorie regroupe les glaces de tout type'),
(9, 'Boisson', 'Cette catégorie regroupe les boissons, alcool, eaux, etc...'),
(10, 'Crémerie ', 'Cette catégorie regroupe les crêmes, laits, fromage, etc...'),
(11, 'Recette Française', 'Les recettes de types françaises seront ajouté à cette catégorie'),
(12, 'Recette Italienne', 'Les recettes de types italiennes seront ajouté à cette catégorie'),
(13, 'Recette Oriental', 'Les recettes de types orientals seront ajouté à cette catégorie'),
(14, 'Recette Espagnol', 'Les recettes de types espagnol seront ajouté à cette catégorie'),
(15, 'Recette Américaine', 'Les recettes de types américaine seront ajouté à cette catégorie'),
(16, 'Recette Asiatique', 'Les recettes de types asiatique seront ajouté à cette catégorie'),
(17, 'Recette de Pâques', 'Les recettes de pâque seront ajouté à cette catégorie'),
(18, 'Recette Végan', 'Les recettes de types végan seront ajouté à cette catégorie'),
(19, 'Recette Végétarien', 'Les recettes de types végétarien seront ajouté à cette catégorie'),
(20, 'Recette de l\'été', 'Recette Fraîcheur pour l’été'),
(21, 'Recette de Pâtisserie', 'Recette autour de la patisserie'),
(22, 'Recette Sans gluten', 'Recette sans gluten');

-- --------------------------------------------------------

--
-- Structure de la table `category_ing`
--

CREATE TABLE `category_ing` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category_ing`
--

INSERT INTO `category_ing` (`id`) VALUES
(1),
(2),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Structure de la table `category_recipe`
--

CREATE TABLE `category_recipe` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category_recipe`
--

INSERT INTO `category_recipe` (`id`) VALUES
(3),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22);

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

CREATE TABLE `command` (
  `id_ing` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `qt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `command_article`
--

CREATE TABLE `command_article` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `qtx_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `id_category_ing` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `qtx_price` int(11) NOT NULL,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `price`, `id_category_ing`, `id_unit`, `qtx_price`, `image`) VALUES
(1, 'entrecôte', 18, 2, 3, 1000, 'https://www.happymeat.ch/wp-content/uploads/2014/04/Entrecote-de-boeuf.jpg'),
(2, 'Pâtes', 1.2, 6, 3, 1000, 'https://fr.rc-cdn.community.thermomix.com/recipeimage/x7inzulu-6bad4-892410-cfcd2-z50zewwi/a6c5d9bd-5f17-44a5-bd36-3428c222d363/main/pates-fraiches.jpg'),
(3, 'Lardons', 12, 2, 3, 1000, 'https://www.distram.com/8449-large_default/lardons-fumes-2-kg-surgele.jpg'),
(5, 'Crême', 7, 10, 5, 1000, 'https://www.yoplait.fr/wp-content/uploads/2015/01/yoplait-cr%C3%A8me-fraiche.png'),
(6, 'Oeuf', 0.2, 7, 2, 1, 'https://i.f1g.fr/media/madame/1900x1900_crop/sites/default/files/img/2019/01/loeuf-le-plus-like-dinstagram.jpg'),
(7, '3 poivres', 20, 6, 3, 1000, 'https://cdlb.mkcsites.com/-/media/ducrosfr-2016/products/pack-front/600/34_moulin_3_poivres_front_600.ashx?vd=20180616T222236Z&hash=7B6BA1B073786F2D344F90658DE50D4772AC8582'),
(8, 'Cognac', 80, 9, 5, 1000, 'https://media1.auchan.fr/images/h42/hdc/13826588770334.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id_recipe` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `recipe`
--

CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `time` int(11) NOT NULL,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `recipe`
--

INSERT INTO `recipe` (`id`, `name`, `description`, `time`, `image`) VALUES
(1, 'Pâtes à la carbonara', 'Cuire les pâtes al dente, 7 mins à partir de la reprise de l\'ébulition de l\'eau, rincer les pâtes après cuisson.\r\n\r\nFaire saisir les lardons dans une poêle pouvant contenir la crême par la suite, les lardons doivent bien saisir et non bouillir !\r\n\r\nRetiré le surplus de graisse puis crêmer sur un feu assez vif pour colorer la crême, faire réduire de 1/4 puis ajouter les pâtes en amont cuite, faire bouillir le tout avec les pâtes puis arrêtez le feu\r\n\r\nY ajouter le/les jaunes d\'oeufs, ainsi que le parmesan, remuez et servir aussi tôt !', 0, 'https://www.soscuisine.com/media/images/recettes/very_large/8.jpg'),
(2, 'Entrecôte aux 3 poivres', 'Sortir la viande 1h30 avant la cuisson pour éviter un choc température\r\n\r\nfaire chauffer de l\'huile neutre dans une poêle assez grande pour accueillir la viande sans qu\'elle boue, sâler de chaque coté et y ajouter la viande quand l\'huile est fûmante.\r\n\r\nSaisir de chaque coté jusqu\'à obtenir une couleur caramel sur la viande, reservé la viande au four un peu avant la cuisson voulu.\r\n\r\nMettre le feu au maximum si ce n\'est déjà fait, pincer les sucs de la viande, puis déglacer au cognac ou autre alcool fort, flambée puis y ajouter les poivres pdt 30 sec sur feu vif.\r\n\r\nCrêmé, faire réduire de 1/4 et arrêter le feu quand c\'est bien coloré.\r\n\r\n', 0, 'https://les-beauxquartiers.com/media/wysiwyg/Entrec_te_au_poivre_vert.jpg'),
(3, 'Bœuf bourguignon', 'Colorer la viande l\'assaisonner jusqu\'à obtenir une couleur caramel.\r\nDécanter la viande y ajouter la garniture aromatique , lardon, laisser suer le tout et déglacer au vin blanc.\r\nRajouter la viande singer avec de la farine torréfié, mouillé à hauteur avec le vin rouge ajouter un bouquet garnis et laisser réduire 3h a feux doux', 180, 'https://img-3.journaldesfemmes.fr/-7vMWJsFliDbMuV-mJj7oBhCUsw=/800x600/smart/image-icu/10002051_1603680841.jpg'),
(4, 'Blanquette de veau', 'lorem', 20, 'https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2FCAC.2F2018.2F09.2F25.2Ff6054b28-c9ec-4691-bfea-e8274bc72e78.2Ejpeg/750x562/quality/80/crop-from/center/blanquette-de-veau-a-l-ancienne.jpeg'),
(5, 'Cassoulet', 'lorem', 0, 'https://assets.afcdn.com/recipe/20130823/61472_w1024h768c1cx2808cy1872.jpg'),
(6, 'Noix de joue braisé', 'lorem ok', 20, 'http://www.renaud-viandes.fr/wp-content/uploads/2013/12/joue-de-porc-braisee-au-cidre.jpg'),
(7, 'lapin gibelotte', 'lorem encore', 200, 'https://static.cuisineaz.com/400x320/i71451-saute-de-lapin.jpg'),
(8, 'tratiflette', 'hum c\'est bon', 25, 'https://assets.afcdn.com/recipe/20160401/38946_w1024h768c1cx2690cy1793.jpg'),
(9, 'raclette', 'oulalal la c\'est bon bon bon', 15, 'https://www.papillesetpupilles.fr/wp-content/uploads/2016/12/Raclette-%C2%A9beats1-shutterstock.jpg'),
(10, 'Gratin daufinois', 'trop envie d\'en manger', 35, 'https://static.750g.com/images/600-600/9d60de351259ccab2a167d4c1d83247b/gratin-dauphinois.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `rec_has_category`
--

CREATE TABLE `rec_has_category` (
  `id_recipe` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rec_has_category`
--

INSERT INTO `rec_has_category` (`id_recipe`, `id_category`) VALUES
(1, 12),
(2, 11),
(3, 11),
(4, 11),
(5, 11),
(6, 11),
(7, 11),
(8, 11),
(9, 11),
(10, 11);

-- --------------------------------------------------------

--
-- Structure de la table `rec_has_ing`
--

CREATE TABLE `rec_has_ing` (
  `id_ingredient` int(11) NOT NULL,
  `id_recipe` int(11) NOT NULL,
  `qtx` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rec_has_ing`
--

INSERT INTO `rec_has_ing` (`id_ingredient`, `id_recipe`, `qtx`) VALUES
(1, 2, 250),
(2, 1, 500),
(3, 1, 200),
(5, 1, 50),
(5, 2, 35),
(6, 1, 1),
(7, 2, 15);

-- --------------------------------------------------------

--
-- Structure de la table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unite` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `unit`
--

INSERT INTO `unit` (`id`, `unite`) VALUES
(1, 'kg'),
(2, 'pièce'),
(3, 'gr'),
(4, 'litres'),
(5, 'ml');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `birthdate` varchar(12) NOT NULL,
  `sexe` char(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `first_name`, `birthdate`, `sexe`, `status`) VALUES
(1, 'vdamme@gmail.com', 'aaa', 'vdamme', 'romain', '1989-07-11', 'male', 1);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue_liste_ing`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue_liste_ing` (
`name` varchar(255)
,`liste_ingredients` text
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue_liste_prix`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue_liste_prix` (
`id` int(11)
,`name` varchar(100)
,`prix` text
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue_liste_recette`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue_liste_recette` (
`ID` int(11)
,`rec` varchar(255)
,`ing` varchar(100)
,`qtx` int(11)
,`unite` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure de la vue `vue_liste_ing`
--
DROP TABLE IF EXISTS `vue_liste_ing`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue_liste_ing`  AS  select `recipe`.`name` AS `name`,group_concat(`ingredients`.`name`,' ',`rec_has_ing`.`qtx`,' ',`unit`.`unite` separator ',') AS `liste_ingredients` from (((`rec_has_ing` join `recipe` on((`recipe`.`id` = `rec_has_ing`.`id_recipe`))) join `ingredients` on((`ingredients`.`id` = `rec_has_ing`.`id_ingredient`))) join `unit` on((`unit`.`id` = `ingredients`.`id_unit`))) group by `recipe`.`id` ;

-- --------------------------------------------------------

--
-- Structure de la vue `vue_liste_prix`
--
DROP TABLE IF EXISTS `vue_liste_prix`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue_liste_prix`  AS  select `ingredients`.`id` AS `id`,`ingredients`.`name` AS `name`,group_concat(`ingredients`.`price`,' euros pour ',`ingredients`.`qtx_price`,' ',`unit`.`unite` separator ',') AS `prix` from (`ingredients` join `unit` on((`unit`.`id` = `ingredients`.`id_unit`))) group by `ingredients`.`id` ;

-- --------------------------------------------------------

--
-- Structure de la vue `vue_liste_recette`
--
DROP TABLE IF EXISTS `vue_liste_recette`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue_liste_recette`  AS  select `recipe`.`id` AS `ID`,`recipe`.`name` AS `rec`,`ingredients`.`name` AS `ing`,`rec_has_ing`.`qtx` AS `qtx`,`unit`.`unite` AS `unite` from (((`rec_has_ing` join `ingredients` on((`rec_has_ing`.`id_ingredient` = `ingredients`.`id`))) join `recipe` on((`rec_has_ing`.`id_recipe` = `recipe`.`id`))) join `unit` on((`ingredients`.`id_unit` = `unit`.`id`))) order by `recipe`.`id` ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adress_users_FK` (`id_users`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ing` (`id_ing`),
  ADD KEY `id_unite` (`id_unite`);

--
-- Index pour la table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_adress_FK` (`id_adress`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_ing`
--
ALTER TABLE `category_ing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_recipe`
--
ALTER TABLE `category_recipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`id_ing`,`id_bill`),
  ADD KEY `command_bill0_FK` (`id_bill`);

--
-- Index pour la table `command_article`
--
ALTER TABLE `command_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_unit0_FK` (`id_unit`),
  ADD KEY `ingredients_category_ing_FK` (`id_category_ing`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id_recipe`,`id_users`),
  ADD KEY `note_users0_FK` (`id_users`);

--
-- Index pour la table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rec_has_category`
--
ALTER TABLE `rec_has_category`
  ADD PRIMARY KEY (`id_recipe`,`id_category`),
  ADD KEY `rec_has_category_category_recipe0_FK` (`id_category`);

--
-- Index pour la table `rec_has_ing`
--
ALTER TABLE `rec_has_ing`
  ADD PRIMARY KEY (`id_ingredient`,`id_recipe`),
  ADD KEY `id_recipe` (`id_recipe`);

--
-- Index pour la table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adress`
--
ALTER TABLE `adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `command_article`
--
ALTER TABLE `command_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adress`
--
ALTER TABLE `adress`
  ADD CONSTRAINT `adress_users_FK` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id_ing`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`id_unite`) REFERENCES `unit` (`id`);

--
-- Contraintes pour la table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_adress_FK` FOREIGN KEY (`id_adress`) REFERENCES `adress` (`id`);

--
-- Contraintes pour la table `category_ing`
--
ALTER TABLE `category_ing`
  ADD CONSTRAINT `category_ing_category_FK` FOREIGN KEY (`id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `category_recipe`
--
ALTER TABLE `category_recipe`
  ADD CONSTRAINT `category_recipe_category_FK` FOREIGN KEY (`id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `command`
--
ALTER TABLE `command`
  ADD CONSTRAINT `command_bill0_FK` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id`),
  ADD CONSTRAINT `command_ingredients_FK` FOREIGN KEY (`id_ing`) REFERENCES `ingredients` (`id`);

--
-- Contraintes pour la table `command_article`
--
ALTER TABLE `command_article`
  ADD CONSTRAINT `command_article_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `command_article_ibfk_2` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id`);

--
-- Contraintes pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_category_ing_FK` FOREIGN KEY (`id_category_ing`) REFERENCES `category_ing` (`id`),
  ADD CONSTRAINT `ingredients_unit0_FK` FOREIGN KEY (`id_unit`) REFERENCES `unit` (`id`);

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_recipe_FK` FOREIGN KEY (`id_recipe`) REFERENCES `recipe` (`id`),
  ADD CONSTRAINT `note_users0_FK` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `rec_has_category`
--
ALTER TABLE `rec_has_category`
  ADD CONSTRAINT `rec_has_category_category_recipe0_FK` FOREIGN KEY (`id_category`) REFERENCES `category_recipe` (`id`),
  ADD CONSTRAINT `rec_has_category_recipe_FK` FOREIGN KEY (`id_recipe`) REFERENCES `recipe` (`id`);

--
-- Contraintes pour la table `rec_has_ing`
--
ALTER TABLE `rec_has_ing`
  ADD CONSTRAINT `rec_has_ing_ibfk_1` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `rec_has_ing_ibfk_2` FOREIGN KEY (`id_recipe`) REFERENCES `recipe` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
