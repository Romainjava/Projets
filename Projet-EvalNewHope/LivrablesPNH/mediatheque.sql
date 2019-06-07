-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 02 avr. 2019 à 16:37
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
-- Base de données :  `mediatheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adress`
--

CREATE TABLE `adress` (
  `id` int(11) NOT NULL,
  `adress` text NOT NULL,
  `city` varchar(150) NOT NULL,
  `CP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `pdf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dvd`
--

CREATE TABLE `dvd` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `author` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `img` text NOT NULL,
  `synopsis` text NOT NULL,
  `actor` varchar(150) NOT NULL,
  `stock` int(11) NOT NULL,
  `type` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Fantasy');

-- --------------------------------------------------------

--
-- Structure de la table `has_bill`
--

CREATE TABLE `has_bill` (
  `id` int(11) NOT NULL,
  `id_adress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `has_product`
--

CREATE TABLE `has_product` (
  `id` int(11) NOT NULL,
  `id_livres` int(11) NOT NULL,
  `id_dvd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `author` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `synopsis` text NOT NULL,
  `img` text NOT NULL,
  `date` date NOT NULL,
  `stock` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `name`, `author`, `price`, `synopsis`, `img`, `date`, `stock`, `id_genre`) VALUES
(9, 'Harry Potter à L\'école des Sorciers', 'J.K. Rowling', 10, 'Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l’emmener à Poudlard, une école de sorcellerie! Voler en balai, jeter des sorts, combattre les trolls : Harry Potter se révèle un sorcier doué. Mais un mystère entoure sa naissance et l’effroyable V..., le mage dont personne n’ose prononcer le nom. Amitié, surprises, dangers, scènes comiques, Harry découvre ses pouvoirs et la vie à Poudlard. Le premier tome des aventures du jeune héros vous ensorcelle aussitôt!', 'http://books.google.com/books/content?id=nvijsUyJYR4C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '2015-12-08', 5, 1),
(10, 'Harry Potter et la Chambre des Secret', 'J.K. Rowling', 12, 'Une rentrée fracassante en voiture volante, une étrange malédiction qui s’abat sur les élèves, cette deuxième année à l’école des sorciers ne s’annonce pas de tout repos! Entre les cours de potions magiques, les matches de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets? Le deuxiè me volume des aventures de Harry Potter : un livre magique pour sorciers confirmés.', 'http://books.google.com/books/content?id=GBl6MWssicEC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api\"', '2015-12-08', 12, 1),
(11, 'Harry Potter et la Coupe de Feu', 'J.K. Rowling', 9, 'Harry Potter a quatorze ans et entre en quatrième année au collège de Poudlard. Une grande nouvelle attend Harry, Ron et Hermione à leur arrivée : la tenue d’un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va se trouver plongé au coeur des événements les plus dramatiques qu’il ait jamais eu à affronter. Dans ce quatrième tome bouleversant, drôle, fascinant, qui révèle la richesse des enjeux en cours, Harry Potter doitfaire face et relever d’immenses défis.', 'http://books.google.com/books/content?id=ox9BiuVKM1cC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '2015-12-08', 5, 1),
(12, 'Harry Potter et l’Ordre du Phénix', 'J.K. Rowling', 9, 'À quinze ans, Harry entre en cinquième année à Poudlard, mais il n’a jamais été si anxieux. L’adolescence, la perspective des examens et ces étranges cauchemars... Car Celui-Dont-On-Ne-Doit-Pas-Prononcer- Le-Nom est de retour. Le ministère de la Magie semble ne pas prendre cette menace au sérieux, contrairement à Dumbledore. La résistance s’organise alors autour de Harry qui va devoir compter sur le courage et la fidélité de ses amis de toujours... D’une inventivité et d’une virtuosité rares, découvrez le cinquième tome de cette saga que son auteur a su hisser au rang de véritable phénomène littéraire.', 'http://books.google.com/books/content?id=d1Fm_U1LzY4C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api\"', '2015-12-08', 14, 1),
(13, 'La Boussole d\'or\"', 'Philip Wilkinson', 12, 'Cet album magnifiquement illustré de nombreuses photographies en couleur, est le guide indispensable pour explorer l\'univers extraordinaire de Lyra Belacqua. Il révèle quantité de détails passionnants sur les fabuleux sites de tournage, les stupéfiants personnages et les incroyables machines vus dans le film La Boussole d\'or. Daemons aux formes changeantes, sinistres mouches-espionnes, ours en armure, zeppelin magistériel au mécanisme complexe et terrifiante machine à intercision, ce guide offre une découverte approfondie des fascinants mystères du monde de Lyra.', 'https://img7.cdn.cinoche.com/images/6f776b6d8ca9f0e5871248f303baa7bf.jpg', '2007-11-29', 5, 1),
(14, 'Le Seigneur des anneaux (Tome 1) - La fraternité de l\'anneau', 'John Ronald Reuel Tolkien', 15, 'Depuis sa publication en 1954-1955, le récit des aventures de Frodo et de ses compagnons, traversant la Terre du Milieu au péril de leur vie pour détruire l’Anneau forgé par Sauron, a enchanté des dizaines de millions de lecteurs, de tous les âges. Chef-d’œuvre de la fantasy, découverte d’un monde imaginaire, de sa géographie, de son histoire et de ses langues, mais aussi réflexion sur le pouvoir et la mort, Le Seigneur des Anneaux est sans équivalent par sa puissance d’évocation, son souffle et son ampleur. Cette nouvelle traduction prend en compte la dernière version du texte anglais, les indications laissées par Tolkien à l’intention des traducteurs et les découvertes permises par les publications posthumes proposées par Christopher Tolkien. Ce volume contient 18 illustrations d’Alan Lee, entièrement re-numérisées, d’une qualité inégalée, ainsi que deux cartes (en couleur) de la Terre du Milieu et du Comté.', 'http://img.filmsactu.net/datas/films/l/e/le-seigneur-des-anneaux-la-communaute-de-l-anneau/xl/490f55677696b.jpg', '2014-10-02', 9, 1),
(15, 'Le Seigneur des anneaux (Tome 2) - Les Deux Tours', 'John Ronald Reuel Tolkien', 12, 'Les Deux Tours, deuxième partie du Seigneur des Anneaux, poursuit le récit des aventures de Frodo et de ses compagnons, lancés dans leur périple en Terre du Milieu. Avec Merry et Pippin, le lecteur plonge dans les batailles entre les Orques et les Cavaliers du Rohan, avant de rencontrer l’Ent Fangorn ; avec Aragorn, Gimli et Legolas, il assiste incrédule au retour de Gandalf ; avec Frodo et Sam, il suit Gollum le long des chemins périlleux qui mènent vers le royaume du Mordor, le seul lieu où l’Anneau pourrait être détruit. Cette nouvelle traduction prend en compte la dernière version du texte anglais, les indications laissées par J.R.R. Tolkien à l’intention des traducteurs et les découvertes permises par les publications posthumes proposées par Christopher Tolkien. Ce volume contient 16 illustrations d’Alan Lee, entièrement renumérisées, d’une qualité inégalée, ainsi qu’une carte en couleur de la Terre du Milieu.', 'http://books.google.com/books/content?id=eZ2VDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '2015-10-22', 4, 1),
(16, 'Le Seigneur des anneaux - nouvelle traduction (Tome 3) - Le Retour du Roi', 'JRR Tolkien', 14, 'La dernière partie du Seigneur des Anneaux voit la fin de la quête de Frodo en Terre du Milieu. Le Retour du Roi raconte la stratégie désespérée de Gandalf face au Seigneur des Anneaux, jusqu’à la catastrophe finale et au dénouement de la grande Guerre où s’illustrent Aragorn et ses compagnons, Gimli le Nain, Legolas l’Elfe, les Hobbits Merry et Pippin, tandis que Gollum est appelé à jouer un rôle inattendu aux côtés de Frodo et de Sam au Mordor, le seul lieu où l’Anneau de Sauron peut être détruit. Cette nouvelle traduction prend en compte la dernière version du texte anglais, les indications laissées par J. R. R. Tolkien à l’intention des traducteurs et les découvertes permises par les publications posthumes proposées par Christopher Tolkien. Ce volume contient 15 illustrations d’Alan Lee, entièrement renumérisées, d’une qualité inégalée, ainsi que des cartes (en couleur) de la Terre du Milieu.', 'http://books.google.com/books/content?id=tdkqDQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '2016-10-13', 3, 1),
(17, 'La Route d\'où l\'on ne revient pas', 'Andrzej Sapkowski', 8, 'Au cœur des monts Amell, dans la passe de Klamat, vit une monstruosité qui terrorise les villages alentours : le Kotchei. Visenna, druidesse du Cercle de Mayen et magicienne, est la seule à pouvoir vaincre cette effroyable créature. En chemin, elle porte secours à Korin, un guerrier intrépide qui finit par l’accompagner dans sa mission. Ensemble, ils s’aventurent sur une route périlleuse, une route d’où personne ne revient jamais. Dans cette nouvelle inédite, découvrez la rencontre entre Visenna, la mère de Geralt, et Korin, que certains estiment être le père du sorceleur. Andrzej Sapkowski est né en Pologne en 1948. Il a remporté un succès spectaculaire avec le cycle consacré au sorceleur. Dans son pays, ses ventes dépassent celles de Stephen King et Michael Crichton. Best-seller mondial, traduit en plus de trente-quatre langues, il a vendu près de cinq millions d’exemplaires.', 'http://books.google.com/books/content?id=A4JvDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '2018-10-17', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `speudo` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `droit` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dvd_genre_FK` (`id_genre`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `has_bill`
--
ALTER TABLE `has_bill`
  ADD PRIMARY KEY (`id`,`id_adress`),
  ADD KEY `has_bill_adress0_FK` (`id_adress`);

--
-- Index pour la table `has_product`
--
ALTER TABLE `has_product`
  ADD PRIMARY KEY (`id`,`id_livres`,`id_dvd`),
  ADD KEY `has_product_livres0_FK` (`id_livres`),
  ADD KEY `has_product_dvd1_FK` (`id_dvd`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livres_genre_FK` (`id_genre`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT pour la table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dvd`
--
ALTER TABLE `dvd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `dvd`
--
ALTER TABLE `dvd`
  ADD CONSTRAINT `dvd_genre_FK` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`);

--
-- Contraintes pour la table `has_bill`
--
ALTER TABLE `has_bill`
  ADD CONSTRAINT `has_bill_adress0_FK` FOREIGN KEY (`id_adress`) REFERENCES `adress` (`id`),
  ADD CONSTRAINT `has_bill_bill_FK` FOREIGN KEY (`id`) REFERENCES `bill` (`id`);

--
-- Contraintes pour la table `has_product`
--
ALTER TABLE `has_product`
  ADD CONSTRAINT `has_product_dvd1_FK` FOREIGN KEY (`id_dvd`) REFERENCES `dvd` (`id`),
  ADD CONSTRAINT `has_product_livres0_FK` FOREIGN KEY (`id_livres`) REFERENCES `livres` (`id`),
  ADD CONSTRAINT `has_product_user_FK` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_genre_FK` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
