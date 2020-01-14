DELETE FROM participation;
DELETE FROM artiste;
DELETE FROM livre_genre;
DELETE FROM emprunt;
DELETE FROM livre;
DELETE FROM genre;
DELETE FROM usager;

INSERT INTO genre (id, nom) VALUES
(1, 'Roman'),
(2, 'Bande dessinée'),
(3, 'Comics'),
(4, 'Manga'),
(5, 'Nouvelles'),
(6, 'Science-Fiction'),
(7, 'Fantastique'),
(8, 'Fantasy'),
(9, 'Aventure'),
(10, 'Policier'),
(11, 'Théâtre'),
(12, 'Humour'),
(13, 'Philosophie'),
(14, 'Super-Héros'),
(15, 'Horreur'),
(16, 'Historique');

INSERT INTO artiste (id, nom, prenom, nationalite) VALUES
  (1, 'Asimov', 'Isaac', 'US'),
  (2, 'Bradbury', 'Ray', 'US'),
  (3, 'Damasio', 'Alain', 'FR'),
  (4, 'Christie', 'Agatha', 'UK'),
  (5, 'Clarke', 'Arthur C.', 'UK'),
  (6, 'Doyle', 'Arthur Conan', 'UK'),
  (7, 'Dumas', 'Alexandre', 'FR'),
  (8, 'Gaiman', 'Neil', 'UK'),
  (9, 'Herbert', 'Frank', 'US'),
  (10, 'Hobb', 'Robin', 'US'),
  (11, 'Hugo', 'Victor', 'FR'),
  (12, 'Ionesco', 'Eugène', 'FR'),
  (13, 'Kafka', 'Franz', 'DE'),
  (14, 'Larsson', 'Stieg', 'SW'),
  (15, 'Leblanc', 'Maurice', 'FR'),
  (16, 'Leroux', 'Gaston', 'FR'),
  (17, 'Martin', 'George R. R.', 'US'),
  (18, 'Maupassant (De)', 'Guy', 'FR'),
  (19, 'Poe', 'Edgar Allan', 'FR'),
  (20, 'Pratchett', 'Terry', 'UK'),
  (21, 'Robinson', 'Kim Stanley', 'US'),
  (22, 'Card', 'Orson Scott', 'US'),
  (23, 'Shelley', 'Mary W.', 'UK'),
  (24, 'Simmons', 'Dan', 'US'),
  (25, 'Tolkien', 'John Ronald Reuel', 'UK'),
  (26, 'Vance', 'Jack', 'US'),
  (27, 'Verne', 'Jules', 'FR'),
  (28, 'Vian', 'Boris', 'FR'),
  (29, 'Vogt (Van)', 'Alfred Elton', 'CA'),
  (30, 'Voltaire', 'François-Marie', 'FR'),
  (31, 'Kirkman', 'Robert', 'US'),
  (32, 'Adlard', 'Charlie', 'UK'),
  (33, 'Miller', 'Frank', 'US'),
  (34, 'Varley', 'Lynn', 'US'),
  (35, 'Moore', 'Alan', 'UK'),
  (36, 'Bolland', 'Brian', 'UK'),
  (37, 'O\'Neill', 'Kevin', 'UK'),
  (38, 'Millar', 'Mark', 'UK'),
  (39, 'Romita', 'John Jr', 'US'),
  (40, 'Johnson', 'Dave', 'US'),
  (41, 'Plunkett', 'Kilian', 'IR'),
  (42, 'McNiven', 'Steve', 'CA'),
  (43, 'Rowling', 'Joanne K.', 'UK'),
  (44, 'Ferris', 'Emil', 'US'),
  (45, 'Spiegelman', 'Art', 'US'),
  (46, 'Gibbons', 'Dave', 'UK'),
  (47, 'Otomo', 'Katsuhiro', 'JP'),
  (48, 'Boulet', null, 'FR'),
  (49, 'Rosa', 'Don', 'UK'),
  (50, 'Charlier', 'Jean-Michel', 'BE'),
  (51, 'Hamme (Van)', 'Jean', 'BE'),
  (52, 'Rosiński', 'Grzegorz', 'PL'),
  (53, 'Franquin', 'André', 'BE'),
  (54, 'Leo', null, 'BR'),
  (55, 'Lloyd', 'David', 'UK'),
  (56, 'Vaughan', 'Brian K.', 'US'),
  (57, 'Staples', 'Fiona', 'CA'),
  (58, 'Watterson', 'Bill', 'CA'),
  (59, 'Loisel', 'Régis', 'FR'),
  (60, 'Jodorowski', 'Alejandro', 'FR'),
  (61, 'Gimenez', 'Juan', 'AR'),
  (62, 'Pullman', 'Philip', 'UK'),
  (63, 'Lee', 'Alan', 'UK'),
  (64, 'Giraud', 'Jean', 'FR'),
  (65, 'Mœbius ', null, 'FR');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
  (1, 'Prélude à Trantor', 'Omnibus', 'Moyen', 0, 'Science-Fiction', 'Le cycle des robots', 1),
  (2, 'La gloire de Trantor', 'Omnibus', 'Moyen', 0, 'Science-Fiction', 'Le cycle des robots', 2),
  (3, 'La déclin de Trantor', 'Omnibus', 'Moyen', 0, 'Science-Fiction', 'Le cycle Fondation', 1),
  (4, 'Vers un nouvel empire', 'Omnibus', 'Moyen', 0, 'Science-Fiction', 'Le cycle Fondation', 2);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
  (1, 1), (1, 6), (2, 1), (2, 6), (3, 1), (3, 6), (4, 1), (4, 6);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
  (1, 1, 'Auteur'),(1, 2, 'Auteur'),(1, 3, 'Auteur'),(1, 4, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
  (5, 'Chroniques martiennes', 'Folio', 'Bon', 0, 'Science-Fiction', null, null),
  (6, 'Fahrenheit 451', 'Folio', 'Bon', 0, 'Science-Fiction', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
  (5, 5), (5, 6), (6, 1), (6, 6);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
  (2, 5, 'Auteur'), (2, 6, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
  (7, 'La horde du contrevent', 'Folio', 'Bon', 0, 'Fantasy', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
  (7, 1), (5, 8);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
  (3, 7, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(8, 'Dix petits nègres', 'Le livre de poche', 'Mauvais', 0, 'Policier', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(8, 1), (8, 10);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(4, 8, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(9, '2001, l\'odyssée de l\'espace', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', null, null),
(10, 'Childhood\'s end', 'Pan', 'Moyen', 0, 'Science-Fiction', null, null),
(11, 'Rendez-vous avec Rama', 'Robert Laffont', 'Bon', 0, 'Science-Fiction', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(9, 1), (9, 6), (10, 1), (10, 6),(11, 1), (11, 6);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(5, 9, 'Auteur'), (5, 10, 'Auteur'), (5, 11, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(12, 'Une étude en rouge', 'Librio', 'Bon', 0, 'Policier', 'Sherlock Holmes', null),
(13, 'Le chien des Baskerville', 'Librio', 'Bon', 0, 'Policier', 'Sherlock Holmes', null),
(14, 'Le signe des quatre', 'Librio', 'Bon', 0, 'Policier', 'Sherlock Holmes', null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(12, 1), (12, 10),(13, 1), (13, 10),(14, 1), (14, 10);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(6, 12, 'Auteur'), (6, 13, 'Auteur'), (6, 14, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(15, 'Le comte de Monte-Cristo I', 'Folio', 'Bon', 0, 'Littérature Française', 'Comte de Monte-Cristo', 1),
(16, 'Le comte de Monte-Cristo II', 'Folio', 'Bon', 0, 'Littérature Française', 'Comte de Monte-Cristo', 2),
(17, 'La reine Margot', 'Flammarion', 'Bon', 0, 'Littérature Française', null, null),
(18, 'Les trois mousquetaires', 'Le livre de poche', 'Moyen', 0, 'Littérature Française', 'Les trois mousquetaires', 1),
(45, 'Vingt ans après', 'Folio', 'Moyen', 0, 'Littérature Française', 'Les trois mousquetaires', 2);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(15, 1), (15, 9), (15, 16),(16, 1), (16, 9), (16, 16),(17, 1), (17, 9), (17, 16),(18, 1), (18, 9), (18, 16),(45, 1), (45, 9), (45, 16);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(7, 15, 'Auteur'), (7, 16, 'Auteur'), (7, 17, 'Auteur'), (7, 18, 'Auteur'), (7, 45, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(19, 'Miroirs et fumée', 'J\'ai lu', 'Bon', 0, 'Fantasy', null, null),
(20, 'L\'océan au bout du chemin', 'J\'ai lu', 'Bon', 0, 'Fantasy', null, null),
(21, 'American gods', 'J\'ai lu', 'Moyen', 0, 'Fantasy', null, null),
(22, 'Neverwhere', 'J\'ai lu', 'Bon', 0, 'Fantasy', null, null),
(23, 'La mythologie Viking', 'Au diable vauvert', 'Bon', 0, 'Littérature étrangère', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(19, 5), (19, 7),(20, 1), (20, 7),(21, 1), (21, 7),(22, 1), (22, 7),(23, 16);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(8, 19, 'Auteur'), (8, 20, 'Auteur'), (8, 21, 'Auteur'), (8, 22, 'Auteur'), (8, 23, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(24, 'Dune', 'Pocket', 'Moyen', 0, 'Science-fiction', 'Cycle de Dune', 1),
(25, 'Le Messie de Dune', 'Pocket', 'Moyen', 0, 'Science-fiction', 'Cycle de Dune', 2),
(26, 'Et l\'homme créa un dieu', 'Pocket', 'Bon', 0, 'Science-fiction', 'Cycle de Dune', 3),
(27, 'Les Enfants de Dune', 'Pocket', 'Bon', 0, 'Science-fiction', 'Cycle de Dune', 4),
(28, 'L\'Empereur-Dieu de Dune', 'Pocket', 'Bon', 0, 'Science-fiction', 'Cycle de Dune', 5),
(29, 'Les Hérétiques de Dune', 'Pocket', 'Bon', 0, 'Science-fiction', 'Cycle de Dune', 6),
(30, 'La Maison des mères', 'Pocket', 'Bon', 0, 'Science-fiction', 'Cycle de Dune', 7);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(24, 1), (24, 6),(25, 1), (25, 6),(26, 1), (26, 6),(27, 1), (27, 6),(28, 1), (28, 6),(29, 1), (29, 6),(30, 1), (30, 6);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(9, 24, 'Auteur'),(9, 25, 'Auteur'),(9, 26, 'Auteur'),(9, 27, 'Auteur'),(9, 28, 'Auteur'),(9, 29, 'Auteur'),(9, 30, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(31, 'L\'apprenti assassin', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'L\'assassin royal', 1),
(32, 'L\'assassin du roi', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'L\'assassin royal', 2),
(33, 'La nef du crépuscule', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'L\'assassin royal', 3),
(34, 'Le poison de la vengeance', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'L\'assassin royal', 4),
(35, 'La voie magique', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'L\'assassin royal', 5),
(36, 'La reine solitaire', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'L\'assassin royal', 6),
(37, 'La déchirure', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le soldat Chamane', 1);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(31, 1), (31, 8),(32, 1), (32, 8),(33, 1), (33, 8),(34, 1), (34, 8),(35, 1), (35, 8),(36, 1), (36, 8),(37, 1), (37, 8);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(10, 31, 'Auteur'),(10, 32, 'Auteur'),(10, 33, 'Auteur'),(10, 34, 'Auteur'),(10, 35, 'Auteur'),(10, 36, 'Auteur'),(10, 37, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(38, 'Notre-Dame de Paris', 'Folio', 'Moyen', 0, 'Littérature Française', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(38, 1), (38, 16);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(11, 38, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(39, 'La cantatrice Chauve', 'Folio', 'Bon', 0, 'Littérature Française', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(39, 11), (39, 12);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(12, 39, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(40, 'La métamorphose', 'Pocket', 'Bon', 0, 'Littérature Étrangère', null, null),
(41, 'Le procès', 'Pocket', 'Bon', 0, 'Littérature Étrangère', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(40, 1), (41, 1);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(13, 40, 'Auteur'), (13, 41, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(42, 'Les hommes qui n\'aimaient pas les femmes', 'Actes Sud', 'Bon', 0, 'Policier', 'Millénium', 1),
(43, 'La fille qui rêvait d\'un bidon d\'essence et d\'une allumette', 'Actes Sud', 'Bon', 0, 'Policier', 'Millénium', 2),
(44, 'La reine dans le palais des courants d\'air', 'Actes Sud', 'Bon', 0, 'Policier', 'Millénium', 3);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(42, 1), (42, 10),(43, 1), (43, 10),(44, 1), (44, 10);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(14, 42, 'Auteur'),(14, 43, 'Auteur'),(14, 44, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(46, 'L\'aiguille creuse', 'Le livre de poche', 'Bon', 0, 'Littérature Française', 'Arsène Lupin', null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(46, 1), (46, 10);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(15, 46, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(47, 'Le Mystère de la chambre jaune', 'Le livre de poche', 'Moyen', 0, 'Littérature Française', 'Rouletabille', null),
(48, 'Le Parfum de la dame en noir', 'Le livre de poche', 'Mauvais', 0, 'Littérature Française', 'Rouletabille', null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(47, 1), (47, 10), (48, 1), (48, 10);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(16, 47, 'Auteur'), (16, 48, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(49, 'Des astres et des ombres', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', null, null),
(50, 'Le chevalier errant', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', null),
(51, 'Le Trône de fer', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 1),
(52, 'Le Donjon rouge', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 2),
(53, 'La Bataille des rois', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 3),
(54, 'L’Ombre maléfique', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 4),
(55, 'L’Invincible Forteresse', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 5),
(56, 'Intrigues à Port-Réal', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 6),
(57, 'L’Épée de feu', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 7),
(58, 'Les Noces pourpres', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 8),
(59, 'La Loi du régicide', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 9),
(60, 'Le Chaos', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 10),
(61, 'Les Sables de Dorne', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 11),
(62, 'Un festin pour les corbeaux', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 12),
(63, 'Le Bûcher d\'un roi', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 13),
(64, 'Les Dragons de Meereen', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 14),
(65, 'Une danse avec les dragons', 'J\'ai lu', 'Bon', 0, 'Fantasy', 'Le trône de fer', 15),
(66, 'Riverdream', 'J\'ai lu', 'Bon', 0, 'Fantasy', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(49, 5), (49, 6), (50, 5), (50, 8), (51, 1), (51, 8), (52, 1), (52, 8), (53, 1), (53, 8), (54, 1), (54, 8), (55, 1), (55, 8),
(56, 1), (56, 8),(57, 1), (57, 8),(58, 1), (58, 8),(59, 1), (59, 8),(60, 1), (60, 8),(61, 1), (61, 8),(62, 1), (62, 8),
(63, 1), (63, 8),(64, 1), (64, 8),(65, 1), (65, 8),(66, 1), (66, 7);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(17, 49, 'Auteur'),(17, 50, 'Auteur'),(17, 51, 'Auteur'),(17, 52, 'Auteur'),(17, 53, 'Auteur'),(17, 54, 'Auteur'),(17, 55, 'Auteur'),
(17, 56, 'Auteur'),(17, 57, 'Auteur'),(17, 58, 'Auteur'),(17, 59, 'Auteur'),(17, 60, 'Auteur'),(17, 61, 'Auteur'),(17, 62, 'Auteur'),
(17, 63, 'Auteur'),(17, 64, 'Auteur'),(17, 65, 'Auteur'),(17, 66, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(67, 'Contes de la bécasse', 'Le livre de poche', 'Bon', 0, 'Littérature Française', null, null),
(68, 'Le horla', 'Le livre de poche', 'Bon', 0, 'Littérature Française', null, null),
(69, 'La maison Tellier', 'Folio', 'Bon', 0, 'Littérature Française', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(67, 5), (67, 16), (68, 5), (68, 15), (68, 16), (69, 5), (69, 16);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(18, 67, 'Auteur'), (18, 68, 'Auteur'), (18, 69, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(70, 'Histoires extraordinaires', 'Le livre de poche', 'Moyen', 0, 'Littérature Étrangère', null, null),
(71, 'Nouvelles histoires extraordinaires', 'Presses pocket', 'Bon', 0, 'Littérature Étrangère', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(70, 5), (70, 7),(71, 5), (71, 7);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(19, 70, 'Auteur'), (19, 71, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(72, 'De bons présages', 'J\'ai lu', 'Bon', 0, 'Fantasy', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(72, 1), (72, 7), (72, 12);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(8, 72, 'Auteur'), (20, 72, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(73, 'Mars la rouge', 'Presses de la cité', 'Bon', 0, 'Science-Fiction', 'Trilogie martienne', 1),
(74, 'Mars la bleue', 'Presses de la cité', 'Bon', 0, 'Science-Fiction', 'Trilogie martienne', 2),
(75, 'Mars la verte', 'Presses de la cité', 'Bon', 0, 'Science-Fiction', 'Trilogie martienne', 3);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(73, 1), (73, 6), (74, 1), (74, 6), (75, 1), (75, 6) ;
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(21, 73, 'Auteur'),(21, 74, 'Auteur'),(21, 75, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(76, 'La stratégie Ender', 'J\'ai lu', 'Bon', 0, 'Science-Fiction', 'Cycle d\'Ender', 1),
(77, 'La voix des morts', 'J\'ai lu', 'Bon', 0, 'Science-Fiction', 'Cycle d\'Ender', 2),
(78, 'Xénocide', 'J\'ai lu', 'Bon', 0, 'Science-Fiction', 'Cycle d\'Ender', 3),
(79, 'Les enfants de l\'esprit', 'J\'ai lu', 'Bon', 0, 'Science-Fiction', 'Cycle d\'Ender', 4);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(76, 1), (76, 6), (77, 1), (77, 6), (78, 1), (78, 6), (79, 1), (79, 6) ;
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(22, 76, 'Auteur'),(22, 77, 'Auteur'),(22, 78, 'Auteur'),(22, 79, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(80, 'Frankenstein ou le Prométhée moderne', 'J\'ai lu', 'Bon', 0, 'Science-Fiction', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(80, 1), (80, 6);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(23, 80, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(81, 'Hypérion', 'Robert Laffont', 'Bon', 0, 'Science-Fiction', 'Les cantos d\'Hypérion', 1),
(82, 'La chute d\'Hypérion', 'Robert Laffont', 'Bon', 0, 'Science-Fiction', 'Les cantos d\'Hypérion', 2),
(83, 'Endymion', 'Robert Laffont', 'Bon', 0, 'Science-Fiction', 'Les cantos d\'Hypérion', 3),
(84, 'L\'éveil d\'Endymion', 'Robert Laffont', 'Bon', 0, 'Science-Fiction', 'Les cantos d\'Hypérion', 4);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(81, 1), (81, 6), (82, 1), (82, 6), (83, 1), (83, 6), (84, 1), (84, 6) ;
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(24, 81, 'Auteur'),(24, 82, 'Auteur'),(24, 83, 'Auteur'),(24, 84, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(85, 'The hobbit', 'Harper Collins', 'Bon', 1, 'Fantasy', null, null),
(86, 'La communauté de l\'anneau', 'Folio', 'Bon', 0, 'Fantasy', 'Le seigneur des anneaux', 1),
(87, 'Les deux tours', 'Folio', 'Bon', 0, 'Fantasy', 'Le seigneur des anneaux', 2),
(88, 'Le retour du roi', 'Folio', 'Bon', 0, 'Fantasy', 'Le seigneur des anneaux', 3),
(89, 'Le silmarillion', 'Bourgois', 'Bon', 0, 'Fantasy', null, null),
(90, 'Le seigneur des anneaux', 'Bourgois', 'Bon', 0, 'Fantasy', 'Le seigneur des anneaux', null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(85, 1), (85, 8),(86, 1), (86, 8),(87, 1), (87, 8),(88, 1), (88, 8),(89, 1), (89, 8),(90, 1), (90, 8) ;
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(25, 85, 'Auteur'),(25, 86, 'Auteur'),(25, 87, 'Auteur'),(25, 88, 'Auteur'),(25, 89, 'Auteur'),(25, 90, 'Auteur'),(63, 90, 'Illustrateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(91, 'Cugel l\'astucieux', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', 'La terre mourante', 2),
(92, 'Le Chasch', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', 'Le cycle de Tschaï', 1),
(93, 'Le Wankh', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', 'Le cycle de Tschaï', 2),
(94, 'Le Dirdir', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', 'Le cycle de Tschaï', 3),
(95, 'Le Pnume', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', 'Le cycle de Tschaï', 4);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(91, 1), (91, 6), (92, 1), (92, 6), (93, 1), (93, 6), (94, 1), (94, 6), (95, 1), (95, 6) ;
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(26, 91, 'Auteur'),(26, 92, 'Auteur'),(26, 93, 'Auteur'),(26, 95, 'Auteur'),(26, 94, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(96, 'De la terre à la lune', 'Le livre de poche', 'Bon', 0, 'Littérature Française', null, null),
(97, 'Michel Strogoff', 'Le livre de poche', 'Bon', 0, 'Littérature Française', null, null),
(98, 'Vingt mille lieux sous les mers', 'Le livre de poche', 'Moyen', 0, 'Littérature Française', null, null),
(99, 'Voyage au centre de la Terre', 'Le livre de poche', 'Moyen', 0, 'Littérature Française', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(96, 1), (96, 6), (96, 16), (97, 1), (97, 16), (97, 9), (98, 1), (98, 6), (99, 1), (99, 9) ;
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(27, 96, 'Auteur'),(27, 97, 'Auteur'),(27, 98, 'Auteur'),(27, 99, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(100, 'L\'automne à Pékin', '10 18', 'Moyen', 0, 'Littérature Française', null, null),
(101, 'L\'herbe rouge', 'Le livre de poche', 'Bon', 0, 'Littérature Française', null, null),
(102, 'J\'irai cracher sur vos tombes', 'Le livre de poche', 'Bon', 0, 'Littérature Française', null, null),
(103, 'L\'écume des jours', 'Le livre de poche', 'Bon', 0, 'Littérature Française', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(100, 1), (100, 7), (100, 12), (101, 1), (101, 7), (101, 12), (102, 1), (102, 10), (103, 1), (103, 7), (103, 12) ;
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(28, 100, 'Auteur'),(28, 101, 'Auteur'),(28, 102, 'Auteur'),(28, 103, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(104, 'À la poursuite des Slans', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', null, null),
(105, 'La faune de l\'espace', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', null, null),
(106, 'Le Monde des Ā', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', 'Cycle du Ā', 1),
(107, 'Les Joueurs du Ā', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', 'Cycle du Ā', 2),
(108, 'La Fin du Ā', 'J\'ai lu', 'Moyen', 0, 'Science-Fiction', 'Cycle du Ā', 3);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(104, 1), (104, 6), (105, 1), (105, 6), (106, 1), (106, 6), (107, 1), (107, 6), (108, 1), (108, 6) ;
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(29, 104, 'Auteur'),(29, 105, 'Auteur'),(29, 106, 'Auteur'),(29, 108, 'Auteur'),(29, 107, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(109, 'Candide ou l\'Optimisme', 'Flammarion', 'Bon', 0, 'Littérature Française', null, null),
(110, 'Zadig ou la Destinée', 'Flammarion', 'Bon', 0, 'Littérature Française', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(109, 1), (109, 13),(110, 1), (110, 13) ;
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(30, 109, 'Auteur'),(30, 110, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(111, 'Passé décomposé', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 1),
(112, 'Cette vie derrière nous…', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 2),
(113, 'Sains et saufs ?', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 3),
(114, 'Amour et Mort', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 4),
(115, 'Monstrueux', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 5),
(116, 'Vengeance', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 6),
(117, 'Dans l’œil du cyclone', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 7),
(118, 'Une vie de souffrance', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 8),
(119, 'Ceux qui restent', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 9),
(120, 'Vers quel avenir ?', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 10),
(121, 'Les Chasseurs', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 11),
(122, 'Un monde parfait', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 12),
(123, 'Point de non-retour', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 13),
(124, 'Piégés !', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 14),
(125, 'Deuil et Espoir', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 15),
(126, 'Un vaste monde', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 16),
(127, 'Terrifiant', 'Delcourt', 'Bon', 0, 'Comics', 'Walking Dead', 17);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(111, 3), (111, 15),(112, 3), (112, 15),(113, 3), (113, 15),(114, 3), (114, 15),(115, 3), (115, 15),(116, 3), (116, 15),
(117, 3), (117, 15),(118, 3), (118, 15),(119, 3), (119, 15),(120, 3), (120, 15),(121, 3), (121, 15),(122, 3), (122, 15),
(123, 3), (123, 15),(124, 3), (124, 15),(125, 3), (125, 15),(126, 3), (126, 15),(127, 3), (127, 15);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(31, 111, 'Scénariste'),(31, 112, 'Scénariste'),(31, 113, 'Scénariste'),(31, 114, 'Scénariste'),(31, 115, 'Scénariste'),
(31, 116, 'Scénariste'),(31, 117, 'Scénariste'),(31, 118, 'Scénariste'),(31, 119, 'Scénariste'),(31, 120, 'Scénariste'),
(31, 121, 'Scénariste'),(31, 122, 'Scénariste'),(31, 123, 'Scénariste'),(31, 124, 'Scénariste'),(31, 125, 'Scénariste'),
(31, 126, 'Scénariste'),(31, 127, 'Scénariste'),
(32, 111, 'Dessinateur'),(32, 112, 'Dessinateur'),(32, 113, 'Dessinateur'),(32, 114, 'Dessinateur'),(32, 115, 'Dessinateur'),
(32, 116, 'Dessinateur'),(32, 117, 'Dessinateur'),(32, 118, 'Dessinateur'),(32, 119, 'Dessinateur'),(32, 120, 'Dessinateur'),
(32, 121, 'Dessinateur'),(32, 122, 'Dessinateur'),(32, 123, 'Dessinateur'),(32, 124, 'Dessinateur'),(32, 125, 'Dessinateur'),
(32, 126, 'Dessinateur'),(32, 127, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(128, 'Batman : The dark knight returns', 'DC Comics', 'Bon', 0, 'Comics', 'Batman : Dark Knight', 1),
(129, 'Batman : The dark knight strikes again', 'Titan Books', 'Bon', 0, 'Comics', 'Batman : Dark Knight', 2);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(128, 3), (128, 14),(129, 3), (129, 14);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(33, 128, 'Scénariste'),(33, 129, 'Scénariste'),
(33, 128, 'Dessinateur'),(33, 129, 'Dessinateur'),
(34, 128, 'Coloriste'),(34, 129, 'Coloriste');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(130, 'The killing joke', 'Titan Books', 'Bon', 0, 'Comics', null, null),
(131, 'The league of extraordinary gentlemen - Volume 1', 'America\'s Best Comics', 'Bon', 0, 'Comics', 'The league of extraordinary gentlemen', 1),
(132, 'The league of extraordinary gentlemen - Volume 2', 'America\'s Best Comics', 'Bon', 0, 'Comics', 'The league of extraordinary gentlemen', 2),
(133, 'Century: 1910', 'America\'s Best Comics', 'Bon', 0, 'Comics', 'The league of extraordinary gentlemen', 3),
(134, 'Black dossier', 'America\'s Best Comics', 'Bon', 0, 'Comics', 'The league of extraordinary gentlemen', 4),
(135, 'Century: 1969', 'America\'s Best Comics', 'Bon', 0, 'Comics', 'The league of extraordinary gentlemen', 5),
(136, 'Watchmen', 'DC Comics', 'Bon', 0, 'Comics', null, null),
(137, 'V pour Vendetta', 'Urban Comics', 'Bon', 0, 'Comics', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(130, 3), (130, 14),(131, 3), (131, 6),(132, 3), (132, 6),(133, 3), (133, 6),(134, 3), (134, 6),(135, 3), (135, 6),
(136, 3), (136, 14),(137, 3), (137, 10);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(35, 130, 'Scénariste'),(35, 131, 'Scénariste'),(35, 132, 'Scénariste'),(35, 133, 'Scénariste'),(35, 134, 'Scénariste'),
(35, 135, 'Scénariste'),(35, 136, 'Scénariste'),(35, 137, 'Scénariste'),
(36, 130, 'Dessinateur'),(37, 131, 'Dessinateur'),(37, 132, 'Dessinateur'),(37, 133, 'Dessinateur'),(37, 134, 'Dessinateur'),
(37, 135, 'Dessinateur'),(46, 136, 'Dessinateur'),(55, 137, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(138, 'Kick-Ass', 'Panini Comics', 'Bon', 0, 'Comics', 'Kick-Ass', null),
(139, 'Kick-Ass 2', 'Panini Comics', 'Bon', 0, 'Comics', 'Kick-Ass', null),
(140, 'Hit-Girl', 'Panini Comics', 'Bon', 0, 'Comics', 'Kick-Ass', null),
(141, 'Wolverine: old man Logan', 'Marvel', 'Bon', 0, 'Comics', null, null),
(142, 'Superman Red Son', 'DC Comics', 'Bon', 0, 'Comics', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(138, 3), (138, 14),(139, 3), (139, 14),(140, 3), (140, 14),(141, 3), (141, 14),(142, 3), (142, 14);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(38, 138, 'Scénariste'),(38, 139, 'Scénariste'),(38, 140, 'Scénariste'),(38, 141, 'Scénariste'),(38, 142, 'Scénariste'),
(39, 138, 'Dessinateur'),(39, 139, 'Dessinateur'),(39, 140, 'Dessinateur'),(42, 141, 'Dessinateur'),(41, 142, 'Dessinateur'),
(40, 142, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(143, 'Harry Potter à l\'école des sorciers', 'Folio', 'Bon', 1, 'Fantasy', 'Harry Potter', 1),
(144, 'Harry Potter et la Chambre des secrets', 'Folio', 'Bon', 1, 'Fantasy', 'Harry Potter', 2),
(145, 'Harry Potter et le Prisonnier d\'Azkaban', 'Folio', 'Bon', 1, 'Fantasy', 'Harry Potter', 3),
(146, 'Harry Potter et la Coupe de feu', 'Folio', 'Bon', 1, 'Fantasy', 'Harry Potter', 4),
(147, 'Harry Potter et l\'Ordre du phénix', 'Folio', 'Bon', 1, 'Fantasy', 'Harry Potter', 5),
(148, 'Harry Potter et le Prince de sang-mêlé', 'Folio', 'Bon', 1, 'Fantasy', 'Harry Potter', 6),
(149, 'Harry Potter et les Reliques de la Mort', 'Folio', 'Bon', 1, 'Fantasy', 'Harry Potter', 7);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(143, 1), (143, 7), (144, 1), (144, 7), (145, 1), (145, 7), (146, 1), (146, 7), (147, 1), (147, 7), (148, 1), (148, 7), (149, 1), (149, 7) ;
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(43, 143, 'Auteur'),(43, 144, 'Auteur'),(43, 145, 'Auteur'),(43, 147, 'Auteur'),(43, 146, 'Auteur'),(43, 148, 'Auteur'),(43, 149, 'Auteur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(150, 'Moi, ce que j\'aime, c\'est les monstres', 'Monsieur Toussaint Louverture', 'Bon', 0, 'Comics', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(150, 3);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(44, 150, 'Scénariste'), (44, 150, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(151, 'Maus', 'Flammarion', 'Bon', 0, 'Comics', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(151, 3), (151, 16);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(45, 151, 'Scénariste'), (45, 151, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(152, 'Akira - Tome 1', 'Glénat', 'Bon', 0, 'Manga', 'Akira', 1),
(153, 'Akira - Tome 2', 'Glénat', 'Bon', 0, 'Manga', 'Akira', 2),
(154, 'Akira - Tome 3', 'Glénat', 'Bon', 0, 'Manga', 'Akira', 3),
(155, 'Akira - Tome 4', 'Glénat', 'Bon', 0, 'Manga', 'Akira', 4),
(156, 'Akira - Tome 5', 'Glénat', 'Bon', 0, 'Manga', 'Akira', 5),
(157, 'Akira - Tome 6', 'Glénat', 'Bon', 0, 'Manga', 'Akira', 6);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(152, 4), (152, 6),(153, 4), (153, 6),(154, 4), (154, 6),(155, 4), (155, 6),(156, 4), (156, 6),(157, 4), (157, 6);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(47, 152, 'Scénariste'),(47, 153, 'Scénariste'),(47, 154, 'Scénariste'),(47, 155, 'Scénariste'),(47, 156, 'Scénariste'),
(47, 157, 'Scénariste'),
(47, 152, 'Dessinateur'),(47, 153, 'Dessinateur'),(47, 154, 'Dessinateur'),(47, 155, 'Dessinateur'),(47, 156, 'Dessinateur'),
(47, 157, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(158, 'Born to be a larve', 'Delcourt', 'Bon', 1, 'Bande dessinée', 'Notes', 1),
(159, 'Le Petit Théâtre de la rue', 'Delcourt', 'Bon', 1, 'Bande dessinée', 'Notes', 2),
(160, 'La Viande, c\'est la force', 'Delcourt', 'Bon', 1, 'Bande dessinée', 'Notes', 3),
(161, 'Songe est Mensonge', 'Delcourt', 'Bon', 1, 'Bande dessinée', 'Notes', 4),
(162, 'Quelques minutes avant la fin du monde', 'Delcourt', 'Bon', 1, 'Bande dessinée', 'Notes', 5),
(163, 'Debout mes globules', 'Delcourt', 'Bon', 1, 'Bande dessinée', 'Notes', 6);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(158, 2), (158, 12),(159, 2), (159, 12),(160, 2), (160, 12),(161, 2), (161, 12),(162, 2), (162, 12),(163, 2), (163, 12);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(48, 158, 'Scénariste'),(48, 159, 'Scénariste'),(48, 160, 'Scénariste'),(48, 161, 'Scénariste'),(48, 162, 'Scénariste'),
(48, 163, 'Scénariste'),
(48, 158, 'Dessinateur'),(48, 159, 'Dessinateur'),(48, 160, 'Dessinateur'),(48, 161, 'Dessinateur'),(48, 162, 'Dessinateur'),
(48, 163, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(164, 'La jeunesse de Picsou 1/2', 'Glénat', 'Bon', 1, 'Comics', 'Picsou - Intégrale Don Rosa', 1),
(165, 'La jeunesse de Picsou 2/2', 'Glénat', 'Bon', 1, 'Comics', 'Picsou - Intégrale Don Rosa', 2),
(166, 'Le fils du soleil', 'Glénat', 'Bon', 1, 'Comics', 'Picsou - Intégrale Don Rosa', 3),
(167, 'Trésor sous cloche', 'Glénat', 'Bon', 1, 'Comics', 'Picsou - Intégrale Don Rosa', 4);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(164, 2), (164, 12),(165, 2), (165, 12),(166, 2), (166, 12),(167, 2), (167, 12);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(49, 164, 'Scénariste'),(49, 165, 'Scénariste'),(49, 166, 'Scénariste'),(49, 167, 'Scénariste'),
(49, 164, 'Dessinateur'),(49, 165, 'Dessinateur'),(49, 166, 'Dessinateur'),(49, 167, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(168, 'Fort Navajo', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 1),
(169, 'Tonnerre à l\'ouest', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 2),
(170, 'L’Aigle solitaire', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 3),
(171, 'Le Cavalier perdu', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 4),
(172, 'La Piste des Navajos', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 5),
(173, 'L\'Homme à l\'étoile d\'argent', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 6),
(174, 'Le Cheval de fer', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 7),
(175, 'L\'Homme au poing d\'acier', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 8),
(176, 'La Piste des Sioux', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 9),
(177, 'Général “Tête Jaune”', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 10),
(178, 'La Mine de l\'Allemand perdu', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 11),
(179, 'Le Spectre aux balles d''or', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 12),
(180, 'Chihuahua Pearl', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 13),
(181, 'L\'Homme qui valait 500 000 $', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 14),
(182, 'Ballade pour un cercueil', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 15),
(183, 'Le Hors-la-loi', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 16),
(184, 'Angel Face', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 17),
(185, 'Nez Cassé', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 18),
(186, 'La Longue Marche', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 19),
(187, 'La Tribu fantôme', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 20),
(188, 'La Dernière Carte', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 21),
(189, 'Le Bout de la piste', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 22),
(190, 'Arizona Love', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Blueberry', 23),
(191, 'Mister Blueberry', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Mister Blueberry', 24),
(192, 'Ombres sur Tombstone', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Mister Blueberry', 25),
(193, 'Geronimo l''Apache', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Mister Blueberry', 26),
(194, 'OK Corral', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Mister Blueberry', 27),
(195, 'Dust', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Mister Blueberry', 28);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(168, 2), (168, 9),(169, 2), (169, 9),(170, 2), (170, 9),(171, 2), (171, 9),(172, 2), (172, 9),(173, 2), (173, 9),(174, 2), (174, 9),
(175, 2), (175, 9),(176, 2), (176, 9),(177, 2), (177, 9),(178, 2), (178, 9),(179, 2), (179, 9),(180, 2), (180, 9),(181, 2), (181, 9),
(182, 2), (182, 9),(183, 2), (183, 9),(184, 2), (184, 9),(185, 2), (185, 9),(186, 2), (186, 9),(187, 2), (187, 9),(188, 2), (188, 9),
(189, 2), (189, 9),(190, 2), (190, 9),(191, 2), (191, 9),(192, 2), (192, 9),(193, 2), (193, 9),(194, 2), (194, 9),(195, 2), (195, 9);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(64, 168, 'Dessinateur'), (50, 168, 'Scénariste'), (64, 169, 'Dessinateur'), (50, 169, 'Scénariste'),
(64, 170, 'Dessinateur'), (50, 170, 'Scénariste'), (64, 171, 'Dessinateur'), (50, 171, 'Scénariste'),
(64, 172, 'Dessinateur'), (50, 172, 'Scénariste'), (64, 173, 'Dessinateur'), (50, 173, 'Scénariste'),
(64, 174, 'Dessinateur'), (50, 174, 'Scénariste'), (64, 175, 'Dessinateur'), (50, 175, 'Scénariste'),
(64, 176, 'Dessinateur'), (50, 176, 'Scénariste'), (64, 177, 'Dessinateur'), (50, 177, 'Scénariste'),
(64, 178, 'Dessinateur'), (50, 178, 'Scénariste'), (64, 179, 'Dessinateur'), (50, 179, 'Scénariste'),
(64, 180, 'Dessinateur'), (50, 180, 'Scénariste'), (64, 181, 'Dessinateur'), (50, 181, 'Scénariste'),
(64, 182, 'Dessinateur'), (50, 182, 'Scénariste'), (64, 183, 'Dessinateur'), (50, 183, 'Scénariste'),
(64, 184, 'Dessinateur'), (50, 184, 'Scénariste'), (64, 185, 'Dessinateur'), (50, 185, 'Scénariste'),
(64, 186, 'Dessinateur'), (50, 186, 'Scénariste'), (64, 187, 'Dessinateur'), (50, 187, 'Scénariste'),
(64, 188, 'Dessinateur'), (50, 188, 'Scénariste'), (64, 189, 'Dessinateur'), (50, 189, 'Scénariste'),
(64, 190, 'Dessinateur'), (50, 190, 'Scénariste'), (64, 191, 'Dessinateur'), (64, 191, 'Scénariste'),
(64, 192, 'Dessinateur'), (64, 192, 'Scénariste'), (64, 193, 'Dessinateur'), (64, 193, 'Scénariste'),
(64, 194, 'Dessinateur'), (64, 194, 'Scénariste'), (64, 195, 'Dessinateur'), (64, 195, 'Scénariste');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(196, 'La Magicienne trahie', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 1),
(197, 'L\'Île des mers gelées', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 2),
(198, 'Les Trois Vieillards du pays d\'Aran', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 3),
(199, 'La Galère noire', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 4),
(200, 'Au-delà des ombres', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 5),
(201, 'La Chute de Brek Zarith', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 6),
(202, 'L\'Enfant des étoiles', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 7),
(203, 'Alinoë', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 8),
(204, 'Les Archers', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 9),
(205, 'Le Pays Qâ', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 10),
(206, 'Les Yeux de Tanatloc', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 11),
(207, 'La Cité du dieu perdu', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 12),
(208, 'Entre terre et lumière', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 13),
(209, 'Aaricia', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 14),
(210, 'Le Maître des montagnes', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 15),
(211, 'Louve', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 16),
(212, 'La Gardienne des clés', 'Le Lombard', 'Bon', 0, 'Bande dessinée', 'Thorgal', 17);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(196, 2), (196,8), (196, 9),(197, 2), (197,8), (197, 9),(198, 2), (198,8), (198, 9),(199, 2), (199,8), (199, 9),(200, 2), (200,8),
(200, 9),(201, 2), (201,8), (201, 9),(202, 2), (202,8), (202, 9),(203, 2), (203,8), (203, 9),(204, 2), (204,8), (204, 9),(205, 2),
(205,8), (205, 9),(206, 2), (206,8), (206, 9),(207, 2), (207,8), (207, 9),(208, 2), (208,8), (208, 9),(209, 2), (209,8), (209, 9),
(210, 2), (210,8), (210, 9),(211, 2), (211,8), (211, 9),(212, 2), (212,8), (212, 9);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(51, 196, 'Scénariste'), (52, 196, 'Dessinateur'),(51, 197, 'Scénariste'), (52, 197, 'Dessinateur'),(51, 198, 'Scénariste'),
(52, 198, 'Dessinateur'),(51, 199, 'Scénariste'), (52, 199, 'Dessinateur'),(51, 200, 'Scénariste'), (52, 200, 'Dessinateur'),
(51, 201, 'Scénariste'), (52, 201, 'Dessinateur'),(51, 202, 'Scénariste'), (52, 202, 'Dessinateur'),(51, 203, 'Scénariste'),
(52, 203, 'Dessinateur'),(51, 204, 'Scénariste'), (52, 204, 'Dessinateur'),(51, 205, 'Scénariste'), (52, 205, 'Dessinateur'),
(51, 206, 'Scénariste'), (52, 206, 'Dessinateur'),(51, 207, 'Scénariste'), (52, 207, 'Dessinateur'),(51, 208, 'Scénariste'),
(52, 208, 'Dessinateur'),(51, 209, 'Scénariste'), (52, 209, 'Dessinateur'),(51, 210, 'Scénariste'), (52, 210, 'Dessinateur'),
(51, 211, 'Scénariste'), (52, 211, 'Dessinateur'),(51, 212, 'Scénariste'), (52, 212, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(213, 'Gaffes et gadgets', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 0),
(214, 'Gala de gaffes à gogo', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 1),
(215, 'Le Bureau des gaffes en gros', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 2),
(216, 'Gare aux gaffes du gars gonflé', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 3),
(217, 'En direct de la gaffe', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 4),
(218, 'Des gaffes et des dégâts', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 6),
(219, 'Un gaffeur sachant gaffer', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 7),
(220, 'Lagaffe nous gâte', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 8),
(221, 'Le Cas Lagaffe', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 9),
(222, 'Le Géant de la gaffe', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 10),
(223, 'Gaffes, bévues et boulettes', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 11),
(224, 'Le Gang des gaffeurs', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 12),
(225, 'Lagaffe mérite des baffes', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 13),
(226, 'La Saga des gaffes', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Gaston', 14),
(227, 'Gaffe à Lagaffe !', 'Marsu Productions', 'Bon', 1, 'Bande dessinée', 'Gaston', 15),
(228, 'Idées noires, l\'intégrale', 'Fluide Glacial', 'Bon', 0, 'Bande dessinée', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(213, 2), (213, 12),(214, 2), (214, 12),(215, 2), (215, 12),(216, 2), (216, 12),(217, 2), (217, 12),(218, 2), (218, 12),(219, 2),
(219, 12),(220, 2), (220, 12),(221, 2), (221, 12),(222, 2), (222, 12),(223, 2), (223, 12),(224, 2), (224, 12),(225, 2), (225, 12),
(226, 2), (226, 12),(227, 2), (227, 12),(228, 2), (228, 12);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(53, 213, 'Scénariste'), (51, 213, 'Dessinateur'),(53, 214, 'Scénariste'), (51, 214, 'Dessinateur'),(53, 215, 'Scénariste'),
(53, 215, 'Dessinateur'),(53, 216, 'Scénariste'), (53, 216, 'Dessinateur'),(53, 217, 'Scénariste'), (53, 217, 'Dessinateur'),
(53, 218, 'Scénariste'), (53, 218, 'Dessinateur'),(53, 219, 'Scénariste'), (53, 219, 'Dessinateur'),(53, 220, 'Scénariste'),
(53, 220, 'Dessinateur'),(53, 221, 'Scénariste'), (53, 221, 'Dessinateur'),(53, 222, 'Scénariste'), (53, 222, 'Dessinateur'),
(53, 223, 'Scénariste'), (53, 223, 'Dessinateur'),(53, 224, 'Scénariste'), (53, 224, 'Dessinateur'),(53, 225, 'Scénariste'),
(53, 225, 'Dessinateur'),(53, 226, 'Scénariste'), (53, 226, 'Dessinateur'),(53, 227, 'Scénariste'), (53, 227, 'Dessinateur'),
(53, 228, 'Scénariste'), (53, 228, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(229, 'Les débuts d\'un dessinateur', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Intégrale - Spirou et Fantasio', 1),
(230, 'De Champignac au Marsupilami', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Intégrale - Spirou et Fantasio', 2),
(231, 'Voyages autour du monde', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Intégrale - Spirou et Fantasio', 3),
(232, 'Aventures modernes', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Intégrale - Spirou et Fantasio', 4),
(233, 'Mystérieuses créatures', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Intégrale - Spirou et Fantasio', 5),
(234, 'Inventions maléfiques', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Intégrale - Spirou et Fantasio', 6),
(235, 'Le mythe Zorglub', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Intégrale - Spirou et Fantasio', 7),
(236, 'Aventures humoristiques', 'Dupuis', 'Bon', 1, 'Bande dessinée', 'Intégrale - Spirou et Fantasio', 8);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(229, 2), (229, 12), (229, 9), (230, 2), (230, 12), (230, 9), (231, 2), (231, 12), (231, 9), (232, 2), (232, 12), (232, 9),
(233, 2), (233, 12), (233, 9), (234, 2), (234, 12), (234, 9), (235, 2), (235, 12), (235, 9), (236, 2), (236, 12), (236, 9);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(53, 229, 'Scénariste'), (53, 229, 'Dessinateur'), (53, 230, 'Scénariste'), (53, 230, 'Dessinateur'), (53, 231, 'Scénariste'),
(53, 231, 'Dessinateur'), (53, 232, 'Scénariste'), (53, 232, 'Dessinateur'), (53, 233, 'Scénariste'), (53, 233, 'Dessinateur'),
(53, 234, 'Scénariste'), (53, 234, 'Dessinateur'), (53, 235, 'Scénariste'), (53, 235, 'Dessinateur'), (53, 236, 'Scénariste'),
(53, 236, 'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(237, 'La catastrophe', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Aldébaran', 1),
(238, 'La blonde', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Aldébaran', 2),
(239, 'La photo', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Aldébaran', 3),
(240, 'Le groupe', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Aldébaran', 4),
(241, 'La créature', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Aldébaran', 5),
(242, 'La planète', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Bételgeuse', 1),
(243, 'Les survivants', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Bételgeuse', 2),
(244, 'L\'expédition', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Bételgeuse', 3),
(245, 'Les cavernes', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Bételgeuse', 4),
(246, 'L\'autre', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Bételgeuse', 5),
(247, 'Episode 1', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Antarès', 1),
(248, 'Episode 2', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Antarès', 2),
(249, 'Episode 3', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Antarès', 3),
(250, 'Episode 4', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Antarès', 4),
(251, 'Episode 5', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Antarès', 5),
(252, 'Episode 6', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'Antarès', 6);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(237, 2), (237, 6),(238, 2), (238, 6),(239, 2), (239, 6),(240, 2), (240, 6),(241, 2), (241, 6),(242, 2), (242, 6),(243, 2), (243, 6),
(244, 2), (244, 6),(245, 2), (245, 6),(246, 2), (246, 6),(247, 2), (247, 6),(248, 2), (248, 6),(249, 2), (249, 6),(250, 2), (250, 6),
(251, 2), (251, 6),(252, 2), (252, 6);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(54, 237, 'Scénariste'),(54,237,'Dessinateur'),(54, 238, 'Scénariste'),(54,238,'Dessinateur'),(54, 239, 'Scénariste'),
(54,239,'Dessinateur'),(54, 240, 'Scénariste'),(54,240,'Dessinateur'),(54, 241, 'Scénariste'),(54,241,'Dessinateur'),
(54, 242, 'Scénariste'),(54,242,'Dessinateur'),(54, 243, 'Scénariste'),(54,243,'Dessinateur'),(54, 244, 'Scénariste'),
(54,244,'Dessinateur'),(54, 245, 'Scénariste'),(54,245,'Dessinateur'),(54, 246, 'Scénariste'),(54,246,'Dessinateur'),
(54, 247, 'Scénariste'),(54,247,'Dessinateur'),(54, 248, 'Scénariste'),(54,248,'Dessinateur'),(54, 249, 'Scénariste'),
(54,249,'Dessinateur'),(54, 250, 'Scénariste'),(54,250,'Dessinateur'),(54, 251, 'Scénariste'),(54,251,'Dessinateur'),
(54, 252, 'Scénariste'),(54,252,'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(253, 'Saga - Tome 1', 'Urban Comics', 'Bon', 0, 'Comics', 'Saga', 1),
(254, 'Saga - Tome 2', 'Urban Comics', 'Bon', 0, 'Comics', 'Saga', 2),
(255, 'Saga - Tome 3', 'Urban Comics', 'Bon', 0, 'Comics', 'Saga', 3),
(256, 'Saga - Tome 4', 'Urban Comics', 'Bon', 0, 'Comics', 'Saga', 4),
(257, 'Saga - Tome 5', 'Urban Comics', 'Bon', 0, 'Comics', 'Saga', 5),
(258, 'Saga - Tome 6', 'Urban Comics', 'Bon', 0, 'Comics', 'Saga', 6),
(259, 'Saga - Tome 7', 'Urban Comics', 'Bon', 0, 'Comics', 'Saga', 7);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(253, 3),(253,6),(254, 3),(254,6),(255, 3),(255,6),(256, 3),(256,6),(257, 3),(257,6),(258, 3),(258,6),(259, 3),(259,6);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(56,253,'Scénariste'),(57,253,'Dessinateur'),(56,254,'Scénariste'),(57,254,'Dessinateur'),(56,255,'Scénariste'),
(57,255,'Dessinateur'),(56,256,'Scénariste'),(57,256,'Dessinateur'),(56,257,'Scénariste'),(57,257,'Dessinateur'),
(56,258,'Scénariste'),(57,258,'Dessinateur'),(56,259,'Scénariste'),(57,259,'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(260, 'Book 1', 'Andrews McMeel Publishing', 'Bon', 1, 'Comics', 'The Complete Calvin and Hobbes', 1),
(261, 'Book 2', 'Andrews McMeel Publishing', 'Bon', 1, 'Comics', 'The Complete Calvin and Hobbes', 2),
(262, 'Book 3', 'Andrews McMeel Publishing', 'Bon', 1, 'Comics', 'The Complete Calvin and Hobbes', 3),
(263, 'Book 4', 'Andrews McMeel Publishing', 'Bon', 1, 'Comics', 'The Complete Calvin and Hobbes', 4);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(260, 3),(260,12),(261, 3),(261,12),(262, 3),(262,12),(263, 3),(263,12);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(58,260,'Scénariste'),(58,260,'Dessinateur'),(58,261,'Scénariste'),(58,261,'Dessinateur'),(58,262,'Scénariste'),
(58,262,'Dessinateur'),(58,263,'Scénariste'),(58,263,'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(264, 'Londres', 'Vent d\'Ouest', 'Bon', 0, 'Bande dessinée', 'Peter Pan', 1),
(265, 'Opikanoba', 'Vent d\'Ouest', 'Bon', 0, 'Bande dessinée', 'Peter Pan', 2),
(266, 'Tempête', 'Vent d\'Ouest', 'Bon', 0, 'Bande dessinée', 'Peter Pan', 3),
(267, 'Mains rouges', 'Vent d\'Ouest', 'Bon', 0, 'Bande dessinée', 'Peter Pan', 4),
(268, 'Crochet', 'Vent d\'Ouest', 'Bon', 0, 'Bande dessinée', 'Peter Pan', 5),
(269, 'Destins', 'Vent d\'Ouest', 'Bon', 0, 'Bande dessinée', 'Peter Pan', 6),
(270, 'La conque de Ramor', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'La Quête de l\'oiseau du temps', 1),
(271, 'Le temple de l\'oubli', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'La Quête de l\'oiseau du temps', 2),
(272, 'Le Rige', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'La Quête de l\'oiseau du temps', 3),
(273, 'L\'oeuf des ténèbres', 'Dargaud', 'Bon', 0, 'Bande dessinée', 'La Quête de l\'oiseau du temps', 4);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(264,2),(264,8),(264,9),(265,2),(265,8),(265,9),(266,2),(266,8),(266,9),(267,2),(267,8),(267,9),(268,2),(268,8),(268,9),
(269,2),(269,8),(269,9),(270,2),(270,8),(270,9),(271,2),(271,8),(271,9),(272,2),(272,8),(272,9),(273,2),(273,8),(273,9);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(59,264,'Scénariste'),(59,264,'Dessinateur'),(59,265,'Scénariste'),(59,265,'Dessinateur'),(59,266,'Scénariste'),
(59,266,'Dessinateur'),(59,267,'Scénariste'),(59,267,'Dessinateur'),(59,268,'Scénariste'),(59,268,'Dessinateur'),
(59,269,'Scénariste'),(59,269,'Dessinateur'),(59,270,'Scénariste'),(59,270,'Dessinateur'),(59,271,'Scénariste'),
(59,271,'Dessinateur'),(59,272,'Scénariste'),(59,272,'Dessinateur'),(59,273,'Scénariste'),(59,273,'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(274, 'Othon le trisaïeul', 'Les Humanoïdes associés', 'Bon', 0, 'Bande dessinée', 'La Caste des Méta-Barons', 1),
(275, 'Honorata la trisaïeule', 'Les Humanoïdes associés', 'Bon', 0, 'Bande dessinée', 'La Caste des Méta-Barons', 2),
(276, 'Aghnar le bisaïeul', 'Les Humanoïdes associés', 'Bon', 0, 'Bande dessinée', 'La Caste des Méta-Barons', 3),
(277, 'Oda la bisaïeule', 'Les Humanoïdes associés', 'Bon', 0, 'Bande dessinée', 'La Caste des Méta-Barons', 4),
(278, 'Tête d''Acier l''Aïeul', 'Les Humanoïdes associés', 'Bon', 0, 'Bande dessinée', 'La Caste des Méta-Barons', 5),
(279, 'Doña Vicenta Gabriela de Rhoka l''aïeule', 'Les Humanoïdes associés', 'Bon', 0, 'Bande dessinée', 'La Caste des Méta-Barons', 6),
(280, 'Aghora le père-mère', 'Les Humanoïdes associés', 'Bon', 0, 'Bande dessinée', 'La Caste des Méta-Barons', 7),
(281, 'Sans-Nom le dernier Méta-Baron', 'Les Humanoïdes associés', 'Bon', 0, 'Bande dessinée', 'La Caste des Méta-Barons', 8),
(282, 'L\'Incal - Intégrale', 'Les Humanoïdes associés', 'Bon', 0, 'Bande dessinée', null, null);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(274, 2),(274,6),(275, 2),(275,6),(276, 2),(276,6),(277, 2),(277,6),(278, 2),(278,6),(279, 2),(279,6),(280, 2),(280,6),
(281, 2),(281,6),(282, 2),(282,6);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(60,274,'Scénariste'),(61,274,'Dessinateur'),
(60,275,'Scénariste'),(61,275,'Dessinateur'),
(60,276,'Scénariste'),(61,276,'Dessinateur'),
(60,277,'Scénariste'),(61,277,'Dessinateur'),
(60,278,'Scénariste'),(61,278,'Dessinateur'),
(60,279,'Scénariste'),(61,279,'Dessinateur'),
(60,280,'Scénariste'),(61,280,'Dessinateur'),
(60,281,'Scénariste'),(61,281,'Dessinateur'),
(60,282,'Scénariste'),(65,282,'Dessinateur');

INSERT INTO livre (id, titre, editeur, etat, enfant, rayonnage, serie, num_serie) VALUES
(283, 'Les Royaumes du nord', 'Folio', 'Moyen', 1, 'Fantasy', 'À la croisée des mondes', 1),
(284, 'La Tour des anges', 'Folio', 'Moyen', 1, 'Fantasy', 'À la croisée des mondes', 2),
(285, 'Le Miroir d\'ambre', 'Folio', 'Moyen', 1, 'Fantasy', 'À la croisée des mondes', 3);
INSERT INTO livre_genre(id_livre, id_genre) VALUES
(283,1),(283,7),(284,1),(284,7),(285,1),(285,7);
INSERT INTO participation (id_artiste, id_livre, role) VALUES
(62,283,'Auteur'),(62,284,'Auteur'),(62,285,'Auteur');

INSERT INTO usager (id, prenom, nom, date_abonnement) VALUES
(1,'Garland','Croteau','2018-11-16'),
(2,'Monique','Angélil','2018-2-9'),
(3,'Porter','Bourque','2018-9-23'),
(4,'Ferrau','Paré','2018-11-7'),
(5,'Roger','Crête','2018-7-5'),
(6,'Élisabeth','Lajoie','2018-7-22'),
(7,'Mercer','Boivin','2018-6-12'),
(8,'Xavier','Tanguay','2018-9-18'),
(9,'Virginie','Lesage','2018-6-8'),
(10,'Nicholas','Artois','2018-5-2'),
(11,'Alexandrin','Corbeil','2018-5-19'),
(12,'Zacharie','Patry','2018-7-18'),
(13,'Albertine','Avare','2018-11-23'),
(14,'Geneviève','Reault','2018-1-26'),
(15,'Yvette','Étoile','2018-7-2'),
(16,'Christelle','Léveillé','2018-3-28'),
(17,'Matthieu','Savard','2019-8-2'),
(18,'Heloise','Harquin','2019-10-14'),
(19,'Victorine','Bélair','2019-10-15'),
(20,'Coralie','Bourgouin','2019-2-27'),
(21,'Jesper','Ménard','2019-3-1'),
(22,'Philippe','Bertrand','2019-4-17'),
(23,'Clarimunda','Chassé','2019-2-16'),
(24,'Vincent','Chastain','2019-1-7'),
(25,'Langley','Gaillou','2019-9-12'),
(26,'Thomas','Bazinet','2019-9-8'),
(27,'Émilie','Garcia','2019-6-25'),
(28,'Charles','Gougeon','2019-6-2'),
(29,'Ranger','Joly','2019-11-14'),
(30,'Brier','Louis','2019-5-8'),
(31,'Adrienne','Ricard','2019-5-14'),
(32,'Manville','Berthelette','2019-12-24'),
(33,'Brice','Binet','2019-1-27'),
(34,'Gemma','Paquin','2019-5-28'),
(35,'Joanna','Gauvin','2019-9-4'),
(36,'Harriette','Lagacé','2019-6-15'),
(37,'Jacques','Hétu','2019-12-19'),
(38,'Aubrey','Clavette','2019-10-20'),
(39,'Adorlee','Auclair','2019-7-16'),
(40,'Constance','Laberge','2019-7-6'),
(41,'Philippine','Roy','2019-4-29'),
(42,'Madelene','Gougeon','2019-3-26'),
(43,'Andrée','Meilleur','2019-6-21'),
(44,'Byron','Angélil','2019-1-19'),
(45,'Fantina','Gaillard','2019-11-30'),
(46,'Cinderella','Chalut','2019-12-22'),
(47,'Minette','Course','2019-9-19'),
(48,'Tempeste','Desnoyers','2019-7-17'),
(49,'Xavierre','Paquette','2019-11-18'),
(50,'Anastasie','Leduc','2019-7-21'),
(51,'Delit','Tougas','2019-3-31'),
(52,'Bernard','Pinneau','2019-6-7'),
(53,'Mercer','Tisserand','2019-5-30'),
(54,'Arnaude','Saurel','2019-4-14'),
(55,'Parfait','"de Chateaub"','2019-10-2'),
(56,'Tearlach','Lesage','2019-11-11'),
(57,'Joanna','Narcisse','2019-5-4'),
(58,'Sargent','David','2019-9-16'),
(59,'Millicent','Jodion','2019-1-2'),
(60,'Montague','Goguen','2019-8-14'),
(61,'Onfroi','Laramée','2019-6-27'),
(62,'Arber','Caouette','2019-3-22'),
(63,'Hilaire','D\'Aubigné','2019-3-16'),
(64,'Bruce','Grondin','2019-2-11'),
(65,'Saville','Parmentier','2019-8-9'),
(66,'Porter','Devoe','2019-5-17'),
(67,'Isaac','Guérette','2019-9-13'),
(68,'Orane','Lagueux','2019-8-6'),
(69,'Hardouin','Audibert','2019-1-3'),
(70,'Quincy','Rodrigue','2019-10-28'),
(71,'Belisarda','Leroux','2019-9-6'),
(72,'Belle','Sciverit','2019-9-17'),
(73,'Ferragus','Mothé','2019-8-30'),
(74,'Romaine','Boulé','2019-12-8'),
(75,'Andrée','Cadieux','2019-10-31'),
(76,'Esperanza','Bureau','2019-12-10'),
(77,'Christophe','Huard','2019-9-12'),
(78,'Azura','Crête','2019-8-16'),
(79,'Virginie','Compagnon','2019-6-30'),
(80,'Nicole','Guimond','2019-6-13'),
(81,'Armand','Turgeon','2019-7-5'),
(82,'Nicolas','Franchet','2019-10-6'),
(83,'Mallory','Lesage','2019-9-11'),
(84,'Dielle','Marceau','2019-3-13'),
(85,'Coralie','Clément','2019-2-27'),
(86,'Édouard','Devost','2019-2-5'),
(87,'Kerman','Paimboeuf','2019-5-27'),
(88,'Jeanne','Bourgeau','2019-3-16'),
(89,'Gilles','Phaneuf','2019-1-21'),
(90,'Tempeste','Laforest','2019-9-10'),
(91,'Dexter','Ruel','2019-1-22'),
(92,'Brice','Lesage','2019-8-16'),
(93,'Jewel','Séguin','2019-7-31'),
(94,'Bartlett','Gagné','2019-5-22'),
(95,'Gallia','Beaulac','2019-8-22'),
(96,'Byron','Gosselin','2019-6-10'),
(97,'Aubrette','Poirier','2019-11-29'),
(98,'Maurice','Goudreau','2019-3-23'),
(99,'Javier','Querry','2019-5-28'),
(100,'Damiane','Chauvet','2019-11-10');

INSERT INTO emprunt(id_usager, id_livre, date_emprunt, date_rendu_attendu, date_rendu_reel) VALUES
(4, 62, '2018-05-23', '2018-06-06', '2018-06-09'),
(11, 39, '2019-08-12', '2019-08-26', '2019-09-05'),
(20, 216, '2018-02-11', '2018-02-25', '2018-03-04'),
(95, 216, '2018-02-22', '2018-03-08', '2018-03-27'),
(28, 92, '2018-10-13', '2018-10-27', '2018-11-07'),
(90, 20, '2018-07-09', '2018-07-23', '2018-07-18'),
(61, 78, '2019-08-22', '2019-09-05', '2019-09-04'),
(6, 65, '2019-05-09', '2019-05-23', '2019-05-14'),
(33, 110, '2018-01-23', '2018-02-06', '2018-02-05'),
(42, 33, '2019-07-07', '2019-07-21', '2019-07-16'),
(72, 219, '2018-02-10', '2018-02-24', '2018-02-27'),
(20, 32, '2019-08-28', '2019-09-11', '2019-09-06'),
(27, 266, '2018-06-25', '2018-07-09', '2018-07-28'),
(58, 61, '2018-03-26', '2018-04-09', '2018-04-08'),
(96, 279, '2018-09-23', '2018-10-07', '2018-10-03'),
(34, 167, '2019-01-13', '2019-01-27', '2019-02-11'),
(17, 23, '2018-06-05', '2018-06-19', '2018-07-08'),
(100, 236, '2018-04-14', '2018-04-28', '2018-05-14'),
(5, 200, '2018-05-09', '2018-05-23', '2018-05-31'),
(43, 167, '2018-01-12', '2018-01-26', '2018-01-27'),
(37, 76, '2019-08-03', '2019-08-17', '2019-08-07'),
(6, 66, '2019-06-03', '2019-06-17', '2019-07-03'),
(19, 52, '2018-08-09', '2018-08-23', '2018-09-09'),
(4, 227, '2019-08-20', '2019-09-03', '2019-09-06'),
(76, 124, '2018-12-04', '2018-12-18', '2019-01-03'),
(17, 98, '2019-09-02', '2019-09-16', '2019-09-09'),
(58, 51, '2019-01-20', '2019-02-03', '2019-02-20'),
(32, 131, '2018-04-03', '2018-04-17', '2018-04-08'),
(55, 18, '2018-08-18', '2018-09-01', '2018-08-24'),
(62, 173, '2018-08-22', '2018-09-05', '2018-08-30'),
(58, 40, '2018-08-13', '2018-08-27', '2018-09-01'),
(86, 124, '2019-04-14', '2019-04-28', '2019-04-24'),
(7, 189, '2019-03-05', '2019-03-19', '2019-04-05'),
(57, 108, '2019-06-21', '2019-07-05', '2019-06-26'),
(22, 30, '2019-03-08', '2019-03-22', '2019-04-10'),
(96, 19, '2018-07-06', '2018-07-20', '2018-07-14'),
(4, 47, '2018-06-02', '2018-06-16', '2018-06-19'),
(65, 113, '2018-04-19', '2018-05-03', '2018-05-20'),
(44, 199, '2018-09-29', '2018-10-13', '2018-10-09'),
(73, 94, '2018-11-30', '2018-12-14', '2018-12-11'),
(89, 197, '2019-05-14', '2019-05-28', '2019-05-20'),
(75, 206, '2019-08-17', '2019-08-31', '2019-09-03'),
(52, 239, '2018-08-24', '2018-09-07', '2018-09-04'),
(59, 215, '2019-04-02', '2019-04-16', '2019-04-16'),
(53, 82, '2018-06-06', '2018-06-20', '2018-07-06'),
(35, 222, '2018-10-19', '2018-11-02', '2018-10-28'),
(38, 168, '2018-08-20', '2018-09-03', '2018-09-01'),
(64, 186, '2019-08-03', '2019-08-17', '2019-09-04'),
(17, 5, '2019-05-16', '2019-05-30', '2019-06-15'),
(5, 251, '2018-11-09', '2018-11-23', '2018-12-03'),
(4, 185, '2019-03-25', '2019-04-08', '2019-04-03'),
(46, 32, '2019-01-19', '2019-02-02', '2019-02-09'),
(63, 285, '2019-03-30', '2019-04-13', '2019-04-18'),
(71, 235, '2019-08-18', '2019-09-01', '2019-09-02'),
(86, 9, '2018-09-16', '2018-09-30', '2018-10-03'),
(68, 79, '2018-08-06', '2018-08-20', '2018-08-22'),
(63, 240, '2018-04-15', '2018-04-29', '2018-05-02'),
(70, 285, '2019-01-22', '2019-02-05', '2019-02-16'),
(6, 111, '2019-02-10', '2019-02-24', '2019-03-07'),
(6, 124, '2019-06-03', '2019-06-17', '2019-06-28'),
(60, 282, '2018-11-17', '2018-12-01', '2018-12-11'),
(82, 152, '2019-02-20', '2019-03-06', '2019-03-10'),
(95, 144, '2018-04-29', '2018-05-13', '2018-05-19'),
(34, 101, '2019-07-27', '2019-08-10', '2019-08-16'),
(55, 132, '2019-06-27', '2019-07-11', '2019-07-17'),
(25, 285, '2018-07-07', '2018-07-21', '2018-07-31'),
(44, 126, '2018-01-17', '2018-01-31', '2018-02-18'),
(54, 128, '2018-02-08', '2018-02-22', '2018-03-01'),
(32, 157, '2018-01-30', '2018-02-13', '2018-02-13'),
(29, 33, '2018-03-17', '2018-03-31', '2018-04-09'),
(32, 239, '2019-06-22', '2019-07-06', '2019-07-01'),
(9, 50, '2019-03-12', '2019-03-26', '2019-04-12'),
(93, 247, '2019-02-07', '2019-02-21', '2019-03-09'),
(9, 2, '2019-02-21', '2019-03-07', '2019-03-11'),
(77, 256, '2019-07-29', '2019-08-12', '2019-08-04'),
(39, 79, '2018-03-01', '2018-03-15', '2018-03-09'),
(44, 100, '2019-03-21', '2019-04-04', '2019-04-09'),
(6, 147, '2019-02-28', '2019-03-14', '2019-03-04'),
(59, 145, '2018-12-11', '2018-12-25', '2019-01-12'),
(17, 72, '2018-03-10', '2018-03-24', '2018-03-22'),
(75, 184, '2018-10-05', '2018-10-19', '2018-10-09'),
(41, 285, '2018-11-06', '2018-11-20', '2018-12-02'),
(78, 6, '2018-04-17', '2018-05-01', '2018-05-12'),
(34, 188, '2018-09-14', '2018-09-28', '2018-09-20'),
(93, 120, '2018-10-18', '2018-11-01', '2018-10-26'),
(33, 61, '2018-05-11', '2018-05-25', '2018-06-05'),
(78, 61, '2019-09-15', '2019-09-29', null),
(62, 192, '2019-02-04', '2019-02-18', '2019-02-13'),
(60, 24, '2018-04-19', '2018-05-03', '2018-05-22'),
(26, 201, '2019-08-20', '2019-09-03', null),
(100, 256, '2018-04-03', '2018-04-17', '2018-04-10'),
(60, 123, '2019-09-14', '2019-09-28', null),
(73, 115, '2019-02-13', '2019-02-27', '2019-03-17'),
(83, 69, '2019-08-13', '2019-08-27', '2019-08-22'),
(12, 195, '2018-10-26', '2018-11-09', '2018-11-06'),
(65, 196, '2019-05-08', '2019-05-22', '2019-06-03'),
(52, 160, '2019-02-16', '2019-03-02', '2019-03-08'),
(94, 222, '2019-02-02', '2019-02-16', '2019-03-06'),
(63, 117, '2019-05-25', '2019-06-08', '2019-06-01'),
(25, 63, '2018-09-16', '2018-09-30', '2018-10-16'),
(73, 20, '2018-04-03', '2018-04-17', '2018-05-02'),
(35, 133, '2019-02-04', '2019-02-18', '2019-03-03'),
(9, 212, '2019-08-25', '2019-09-08', null),
(14, 159, '2018-06-17', '2018-07-01', '2018-07-15'),
(6, 48, '2019-07-11', '2019-07-25', '2019-08-02'),
(62, 54, '2019-05-09', '2019-05-23', '2019-05-26'),
(71, 117, '2018-01-17', '2018-01-31', '2018-01-21'),
(92, 128, '2018-03-19', '2018-04-02', '2018-03-29'),
(98, 15, '2019-02-23', '2019-03-09', '2019-03-10'),
(42, 38, '2019-08-03', '2019-08-17', '2019-08-21'),
(64, 178, '2018-12-11', '2018-12-25', '2019-01-09'),
(45, 187, '2018-09-26', '2018-10-10', '2018-10-09'),
(63, 166, '2018-11-05', '2018-11-19', '2018-12-05'),
(20, 256, '2019-06-18', '2019-07-02', '2019-06-27'),
(52, 43, '2018-01-17', '2018-01-31', '2018-02-09'),
(73, 149, '2018-02-07', '2018-02-21', '2018-03-06'),
(16, 243, '2018-09-22', '2018-10-06', '2018-10-12'),
(33, 181, '2019-09-07', '2019-09-21', null),
(78, 152, '2018-03-12', '2018-03-26', '2018-03-25'),
(52, 228, '2019-09-10', '2019-09-24', null),
(10, 56, '2018-10-05', '2018-10-19', '2018-10-27'),
(44, 212, '2018-05-08', '2018-05-22', '2018-06-08'),
(22, 282, '2018-06-26', '2018-07-10', '2018-07-01'),
(49, 90, '2018-10-06', '2018-10-20', '2018-10-27'),
(28, 28, '2019-07-25', '2019-08-08', '2019-08-21'),
(39, 158, '2018-09-01', '2018-09-15', '2018-10-02'),
(31, 131, '2018-05-13', '2018-05-27', '2018-05-23'),
(12, 244, '2019-08-19', '2019-09-02', '2019-09-13'),
(63, 141, '2018-02-11', '2018-02-25', '2018-03-14'),
(32, 175, '2018-04-09', '2018-04-23', '2018-05-09'),
(75, 89, '2018-11-15', '2018-11-29', '2018-11-19'),
(9, 255, '2019-06-27', '2019-07-11', '2019-07-15'),
(65, 10, '2018-02-20', '2018-03-06', '2018-03-01'),
(40, 267, '2018-06-15', '2018-06-29', '2018-07-05'),
(84, 67, '2018-06-23', '2018-07-07', '2018-06-27'),
(44, 164, '2019-05-28', '2019-06-11', '2019-06-21'),
(74, 193, '2018-05-31', '2018-06-14', '2018-06-06'),
(64, 243, '2018-05-30', '2018-06-13', '2018-06-18'),
(100, 211, '2019-08-19', '2019-09-02', '2019-08-25'),
(21, 136, '2019-01-14', '2019-01-28', '2019-01-30'),
(10, 80, '2019-01-26', '2019-02-09', '2019-02-01'),
(39, 238, '2019-02-19', '2019-03-05', '2019-03-10'),
(13, 247, '2018-01-11', '2018-01-25', '2018-02-04'),
(88, 198, '2018-01-21', '2018-02-04', '2018-02-12'),
(65, 152, '2019-07-15', '2019-07-29', '2019-07-24'),
(93, 259, '2019-03-07', '2019-03-21', '2019-03-20'),
(17, 155, '2019-08-13', '2019-08-27', '2019-09-09'),
(24, 188, '2018-04-25', '2018-05-09', '2018-05-24'),
(41, 238, '2019-02-01', '2019-02-15', '2019-03-02'),
(66, 21, '2018-05-11', '2018-05-25', '2018-06-06'),
(50, 23, '2018-02-14', '2018-02-28', '2018-02-21'),
(12, 82, '2019-02-12', '2019-02-26', '2019-02-18'),
(90, 163, '2019-04-09', '2019-04-23', '2019-04-15'),
(53, 72, '2018-05-23', '2018-06-06', '2018-05-29'),
(46, 101, '2019-02-23', '2019-03-09', '2019-02-27'),
(48, 251, '2018-05-06', '2018-05-20', '2018-05-27'),
(6, 89, '2018-09-22', '2018-10-06', '2018-10-19'),
(95, 86, '2019-08-19', '2019-09-02', null),
(74, 39, '2019-08-09', '2019-08-23', '2019-09-02'),
(41, 98, '2018-08-04', '2018-08-18', '2018-08-09'),
(15, 113, '2018-05-19', '2018-06-02', '2018-06-03'),
(97, 150, '2018-01-30', '2018-02-13', '2018-02-12'),
(95, 26, '2018-05-26', '2018-06-09', '2018-06-24'),
(52, 42, '2018-09-18', '2018-10-02', '2018-10-11'),
(17, 130, '2019-01-27', '2019-02-10', '2019-02-15'),
(99, 74, '2018-12-12', '2018-12-26', '2018-12-18'),
(100, 259, '2018-04-03', '2018-04-17', '2018-04-09'),
(15, 177, '2018-12-02', '2018-12-16', '2018-12-11'),
(29, 94, '2019-04-17', '2019-05-01', '2019-04-22'),
(62, 271, '2018-02-21', '2018-03-07', '2018-03-21'),
(73, 42, '2019-07-30', '2019-08-13', '2019-08-14'),
(99, 284, '2018-02-03', '2018-02-17', '2018-02-23'),
(73, 254, '2018-12-28', '2019-01-11', '2019-01-13'),
(21, 90, '2019-01-15', '2019-01-29', '2019-01-20'),
(19, 51, '2019-02-09', '2019-02-23', '2019-02-25'),
(65, 214, '2019-07-09', '2019-07-23', '2019-07-14'),
(75, 83, '2018-05-25', '2018-06-08', '2018-06-24'),
(49, 282, '2018-11-21', '2018-12-05', '2018-12-16'),
(34, 238, '2019-05-02', '2019-05-16', '2019-05-07'),
(44, 207, '2018-08-21', '2018-09-04', '2018-09-20'),
(2, 33, '2019-07-08', '2019-07-22', '2019-07-25'),
(77, 72, '2018-07-22', '2018-08-05', '2018-08-24'),
(39, 59, '2018-11-09', '2018-11-23', '2018-11-28'),
(23, 159, '2019-08-31', '2019-09-14', null),
(11, 264, '2019-03-14', '2019-03-28', '2019-04-01'),
(41, 72, '2018-12-14', '2018-12-28', '2019-01-03'),
(40, 22, '2018-08-16', '2018-08-30', '2018-09-17'),
(53, 244, '2018-11-10', '2018-11-24', '2018-12-09'),
(38, 215, '2018-07-11', '2018-07-25', '2018-07-18'),
(76, 84, '2018-08-31', '2018-09-14', '2018-09-12'),
(71, 158, '2019-05-01', '2019-05-15', '2019-05-19'),
(52, 195, '2018-05-29', '2018-06-12', '2018-06-03'),
(95, 276, '2018-08-31', '2018-09-14', '2018-09-13'),
(37, 185, '2018-09-10', '2018-09-24', '2018-10-09'),
(51, 95, '2019-05-14', '2019-05-28', '2019-06-06'),
(47, 241, '2018-11-10', '2018-11-24', '2018-11-27'),
(14, 20, '2019-05-30', '2019-06-13', '2019-06-26'),
(72, 113, '2018-03-06', '2018-03-20', '2018-03-19'),
(28, 38, '2019-04-04', '2019-04-18', '2019-04-24'),
(100, 117, '2018-04-26', '2018-05-10', '2018-05-29'),
(90, 252, '2019-07-12', '2019-07-26', '2019-07-24'),
(15, 230, '2018-12-10', '2018-12-24', '2018-12-30'),
(39, 226, '2018-02-16', '2018-03-02', '2018-02-22'),
(71, 21, '2019-03-04', '2019-03-18', '2019-03-26'),
(80, 198, '2018-01-23', '2018-02-06', '2018-01-31'),
(38, 217, '2019-04-24', '2019-05-08', '2019-05-05'),
(52, 150, '2018-05-20', '2018-06-03', '2018-05-28'),
(79, 217, '2019-06-02', '2019-06-16', '2019-06-23'),
(98, 211, '2019-03-06', '2019-03-20', '2019-03-13'),
(17, 202, '2018-06-18', '2018-07-02', '2018-06-27'),
(29, 235, '2018-12-21', '2019-01-04', '2019-01-18'),
(85, 15, '2018-05-02', '2018-05-16', '2018-05-26'),
(58, 186, '2019-03-21', '2019-04-04', '2019-03-26'),
(64, 182, '2018-07-20', '2018-08-03', '2018-08-21'),
(67, 157, '2018-08-07', '2018-08-21', '2018-08-21'),
(75, 243, '2018-09-05', '2018-09-19', '2018-09-24'),
(24, 91, '2019-06-04', '2019-06-18', '2019-06-22'),
(64, 177, '2018-08-23', '2018-09-06', '2018-09-22'),
(63, 185, '2019-06-15', '2019-06-29', '2019-07-02'),
(81, 254, '2019-05-23', '2019-06-06', '2019-06-01'),
(4, 170, '2019-03-09', '2019-03-23', '2019-03-27'),
(83, 100, '2018-05-11', '2018-05-25', '2018-05-27'),
(57, 19, '2018-09-11', '2018-09-25', '2018-09-20'),
(77, 135, '2018-06-08', '2018-06-22', '2018-07-02'),
(52, 147, '2019-08-18', '2019-09-01', null),
(87, 69, '2018-05-29', '2018-06-12', '2018-06-26'),
(93, 82, '2019-03-26', '2019-04-09', '2019-04-07'),
(31, 9, '2018-02-03', '2018-02-17', '2018-03-02'),
(20, 162, '2018-11-30', '2018-12-14', '2018-12-10'),
(68, 15, '2018-01-13', '2018-01-27', '2018-02-08'),
(30, 271, '2018-03-20', '2018-04-03', '2018-04-10'),
(61, 270, '2018-10-25', '2018-11-08', '2018-11-14'),
(98, 31, '2018-01-24', '2018-02-07', '2018-02-25'),
(92, 212, '2018-11-03', '2018-11-17', '2018-11-17'),
(50, 58, '2018-10-11', '2018-10-25', '2018-10-31'),
(23, 134, '2019-09-13', '2019-09-27', null),
(65, 244, '2018-09-29', '2018-10-13', '2018-10-14'),
(35, 259, '2018-12-24', '2019-01-07', '2019-01-01'),
(17, 65, '2018-11-22', '2018-12-06', '2018-12-10'),
(52, 239, '2018-03-05', '2018-03-19', '2018-03-18'),
(66, 72, '2018-06-20', '2018-07-04', '2018-07-20'),
(95, 129, '2018-11-28', '2018-12-12', '2018-12-22'),
(93, 183, '2018-04-22', '2018-05-06', '2018-05-09'),
(90, 178, '2018-09-06', '2018-09-20', '2018-10-05'),
(75, 127, '2019-03-21', '2019-04-04', '2019-04-06'),
(37, 4, '2019-06-29', '2019-07-13', '2019-07-26'),
(66, 59, '2018-10-11', '2018-10-25', '2018-10-19'),
(12, 41, '2018-11-24', '2018-12-08', '2018-12-02'),
(39, 31, '2018-11-23', '2018-12-07', '2018-11-30'),
(66, 272, '2018-02-09', '2018-02-23', '2018-03-01'),
(68, 165, '2019-05-23', '2019-06-06', '2019-05-27'),
(32, 135, '2019-03-22', '2019-04-05', '2019-04-04'),
(93, 75, '2019-03-28', '2019-04-11', '2019-04-18'),
(69, 159, '2018-02-10', '2018-02-24', '2018-02-14'),
(81, 103, '2018-08-13', '2018-08-27', '2018-09-05'),
(96, 261, '2018-09-26', '2018-10-10', '2018-10-02'),
(73, 192, '2018-10-11', '2018-10-25', '2018-10-24'),
(86, 241, '2018-04-30', '2018-05-14', '2018-05-13'),
(86, 267, '2018-10-12', '2018-10-26', '2018-10-26'),
(39, 98, '2018-12-18', '2019-01-01', '2018-12-28'),
(5, 66, '2018-11-15', '2018-11-29', '2018-12-03'),
(51, 168, '2019-05-04', '2019-05-18', '2019-05-09'),
(94, 161, '2018-07-18', '2018-08-01', '2018-08-07'),
(33, 271, '2019-03-15', '2019-03-29', '2019-04-04'),
(98, 261, '2018-02-21', '2018-03-07', '2018-03-01'),
(67, 273, '2018-05-04', '2018-05-18', '2018-05-20'),
(21, 89, '2018-01-16', '2018-01-30', '2018-02-03'),
(90, 272, '2019-08-28', '2019-09-11', null),
(7, 221, '2018-04-24', '2018-05-08', '2018-05-22'),
(49, 97, '2019-01-07', '2019-01-21', '2019-02-03'),
(47, 56, '2018-10-27', '2018-11-10', '2018-11-02'),
(64, 184, '2019-07-23', '2019-08-06', '2019-07-28'),
(3, 122, '2018-06-18', '2018-07-02', '2018-06-26'),
(95, 231, '2018-02-24', '2018-03-10', '2018-03-15'),
(12, 55, '2019-06-01', '2019-06-15', '2019-06-25'),
(2, 118, '2019-09-02', '2019-09-16', '2019-09-15'),
(10, 178, '2018-12-11', '2018-12-25', '2018-12-27'),
(33, 222, '2019-02-04', '2019-02-18', '2019-02-21'),
(2, 134, '2019-05-01', '2019-05-15', '2019-05-05'),
(98, 37, '2018-01-27', '2018-02-10', '2018-02-04'),
(50, 94, '2018-11-08', '2018-11-22', '2018-12-07'),
(93, 79, '2018-08-16', '2018-08-30', '2018-09-14'),
(73, 123, '2018-09-11', '2018-09-25', '2018-09-24'),
(97, 135, '2018-11-10', '2018-11-24', '2018-11-29'),
(60, 239, '2018-01-17', '2018-01-31', '2018-02-09'),
(52, 122, '2018-12-12', '2018-12-26', '2019-01-11'),
(63, 14, '2019-06-25', '2019-07-09', '2019-07-08'),
(96, 185, '2018-10-13', '2018-10-27', '2018-10-29'),
(9, 124, '2019-07-01', '2019-07-15', '2019-07-11'),
(11, 156, '2018-02-26', '2018-03-12', '2018-03-07'),
(40, 274, '2018-12-28', '2019-01-11', '2019-01-22'),
(2, 6, '2018-09-24', '2018-10-08', '2018-10-16'),
(90, 24, '2019-03-24', '2019-04-07', '2019-04-21'),
(37, 123, '2019-01-31', '2019-02-14', '2019-02-21'),
(39, 250, '2018-07-18', '2018-08-01', '2018-07-30'),
(82, 50, '2018-04-06', '2018-04-20', '2018-04-10'),
(18, 187, '2018-08-31', '2018-09-14', '2018-09-16'),
(41, 85, '2018-04-08', '2018-04-22', '2018-04-28'),
(39, 216, '2019-04-30', '2019-05-14', '2019-05-20'),
(70, 241, '2019-08-23', '2019-09-06', null),
(93, 52, '2019-06-22', '2019-07-06', '2019-06-28'),
(25, 247, '2018-06-10', '2018-06-24', '2018-07-05'),
(23, 79, '2018-02-09', '2018-02-23', '2018-02-14'),
(72, 86, '2018-05-09', '2018-05-23', '2018-05-20'),
(74, 188, '2018-09-12', '2018-09-26', '2018-10-03'),
(57, 40, '2019-06-03', '2019-06-17', '2019-06-21'),
(80, 21, '2019-01-19', '2019-02-02', '2019-01-29'),
(22, 175, '2018-06-02', '2018-06-16', '2018-06-12'),
(22, 249, '2018-09-19', '2018-10-03', '2018-10-05'),
(18, 86, '2018-12-01', '2018-12-15', '2018-12-16'),
(94, 84, '2018-03-05', '2018-03-19', '2018-04-07'),
(37, 100, '2018-11-21', '2018-12-05', '2018-12-08'),
(44, 220, '2018-10-15', '2018-10-29', '2018-10-23'),
(80, 87, '2018-12-17', '2018-12-31', '2019-01-07'),
(71, 257, '2019-03-19', '2019-04-02', '2019-04-11'),
(24, 44, '2018-04-27', '2018-05-11', '2018-05-22'),
(14, 244, '2019-09-02', '2019-09-16', '2019-09-06'),
(55, 174, '2018-06-04', '2018-06-18', '2018-06-16'),
(52, 85, '2018-09-28', '2018-10-12', '2018-10-24'),
(86, 219, '2019-05-14', '2019-05-28', '2019-05-24'),
(98, 39, '2018-05-24', '2018-06-07', '2018-05-31'),
(69, 167, '2019-09-10', '2019-09-24', null),
(66, 198, '2019-04-14', '2019-04-28', '2019-04-23'),
(79, 265, '2019-01-02', '2019-01-16', '2019-01-15'),
(41, 22, '2019-07-04', '2019-07-18', '2019-07-29'),
(16, 103, '2019-09-05', '2019-09-19', null),
(71, 232, '2018-06-20', '2018-07-04', '2018-07-02'),
(71, 207, '2019-04-28', '2019-05-12', '2019-05-19'),
(74, 36, '2019-05-24', '2019-06-07', '2019-06-24'),
(34, 148, '2018-06-14', '2018-06-28', '2018-06-18'),
(29, 94, '2019-05-29', '2019-06-12', '2019-06-30'),
(49, 230, '2018-10-27', '2018-11-10', '2018-11-20'),
(79, 70, '2019-01-18', '2019-02-01', '2019-02-16'),
(52, 159, '2018-12-26', '2019-01-09', '2019-01-18'),
(78, 180, '2018-10-22', '2018-11-05', '2018-10-30'),
(27, 8, '2019-02-28', '2019-03-14', '2019-03-31'),
(65, 283, '2018-06-01', '2018-06-15', '2018-06-06'),
(76, 237, '2018-12-18', '2019-01-01', '2018-12-24'),
(31, 96, '2019-09-04', '2019-09-18', '2019-09-13'),
(4, 11, '2019-04-01', '2019-04-15', '2019-04-28'),
(14, 181, '2018-09-25', '2018-10-09', '2018-10-08'),
(33, 89, '2019-04-17', '2019-05-01', '2019-04-21'),
(66, 39, '2018-05-27', '2018-06-10', '2018-06-08'),
(24, 59, '2019-09-02', '2019-09-16', null),
(31, 225, '2018-05-17', '2018-05-31', '2018-06-08'),
(55, 34, '2019-07-15', '2019-07-29', '2019-07-30'),
(62, 105, '2018-02-11', '2018-02-25', '2018-02-20'),
(87, 153, '2019-07-15', '2019-07-29', '2019-07-20'),
(64, 31, '2018-05-31', '2018-06-14', '2018-06-29'),
(29, 161, '2018-02-17', '2018-03-03', '2018-03-06'),
(14, 262, '2018-02-07', '2018-02-21', '2018-03-05'),
(57, 262, '2018-08-06', '2018-08-20', '2018-08-26'),
(33, 143, '2018-04-03', '2018-04-17', '2018-04-20'),
(77, 228, '2018-04-07', '2018-04-21', '2018-04-13'),
(84, 258, '2019-04-28', '2019-05-12', '2019-05-31'),
(20, 102, '2018-07-29', '2018-08-12', '2018-08-19'),
(24, 111, '2019-04-17', '2019-05-01', '2019-05-09'),
(9, 196, '2018-02-09', '2018-02-23', '2018-03-10'),
(51, 174, '2019-07-31', '2019-08-14', '2019-08-27'),
(49, 160, '2019-07-16', '2019-07-30', '2019-08-16'),
(97, 138, '2018-08-27', '2018-09-10', '2018-09-26'),
(7, 81, '2018-08-14', '2018-08-28', '2018-08-24'),
(87, 71, '2019-09-08', '2019-09-22', null),
(13, 131, '2018-11-29', '2018-12-13', '2018-12-23'),
(49, 175, '2019-06-17', '2019-07-01', '2019-07-18'),
(74, 142, '2019-02-07', '2019-02-21', '2019-02-25'),
(32, 278, '2019-04-17', '2019-05-01', '2019-05-02'),
(88, 42, '2019-02-18', '2019-03-04', '2019-03-05'),
(1, 26, '2019-04-04', '2019-04-18', '2019-04-29'),
(16, 103, '2018-06-10', '2018-06-24', '2018-06-16'),
(92, 205, '2018-07-31', '2018-08-14', '2018-08-06'),
(21, 200, '2019-04-02', '2019-04-16', '2019-04-21'),
(43, 27, '2018-05-20', '2018-06-03', '2018-06-02'),
(2, 232, '2019-05-22', '2019-06-05', '2019-06-03'),
(45, 74, '2018-03-05', '2018-03-19', '2018-03-27'),
(87, 127, '2018-07-11', '2018-07-25', '2018-08-08'),
(87, 172, '2018-06-02', '2018-06-16', '2018-06-17'),
(39, 60, '2018-02-09', '2018-02-23', '2018-03-01'),
(65, 39, '2018-01-22', '2018-02-05', '2018-02-11'),
(8, 27, '2019-04-30', '2019-05-14', '2019-05-13'),
(92, 104, '2018-06-03', '2018-06-17', '2018-07-03'),
(33, 75, '2018-11-29', '2018-12-13', '2018-12-10'),
(44, 225, '2018-02-24', '2018-03-10', '2018-03-22'),
(63, 96, '2018-03-16', '2018-03-30', '2018-03-28'),
(96, 108, '2018-04-17', '2018-05-01', '2018-04-30'),
(68, 194, '2018-11-26', '2018-12-10', '2018-12-25'),
(57, 154, '2019-07-27', '2019-08-10', '2019-08-03'),
(49, 86, '2018-05-12', '2018-05-26', '2018-05-31'),
(10, 130, '2018-03-21', '2018-04-04', '2018-04-19'),
(66, 103, '2019-07-23', '2019-08-06', '2019-08-12'),
(100, 232, '2019-01-19', '2019-02-02', '2019-01-28'),
(49, 130, '2018-05-27', '2018-06-10', '2018-06-20'),
(31, 74, '2018-06-11', '2018-06-25', '2018-07-02'),
(66, 43, '2018-05-22', '2018-06-05', '2018-06-09'),
(79, 46, '2019-05-23', '2019-06-06', '2019-05-27'),
(45, 112, '2019-01-27', '2019-02-10', '2019-02-07'),
(12, 124, '2018-06-28', '2018-07-12', '2018-07-08'),
(88, 232, '2019-01-19', '2019-02-02', '2019-02-03'),
(83, 167, '2019-05-19', '2019-06-02', '2019-06-19'),
(29, 16, '2018-03-14', '2018-03-28', '2018-03-24'),
(46, 64, '2018-06-11', '2018-06-25', '2018-07-14'),
(8, 175, '2018-02-20', '2018-03-06', '2018-03-10'),
(90, 179, '2018-02-13', '2018-02-27', '2018-03-07'),
(73, 240, '2018-06-30', '2018-07-14', '2018-07-13'),
(15, 49, '2019-09-05', '2019-09-19', '2019-09-09'),
(27, 24, '2018-11-27', '2018-12-11', '2018-12-12'),
(70, 209, '2019-03-17', '2019-03-31', '2019-03-24'),
(91, 40, '2018-06-21', '2018-07-05', '2018-07-04'),
(51, 87, '2019-02-19', '2019-03-05', '2019-02-24'),
(46, 129, '2018-04-15', '2018-04-29', '2018-05-12'),
(17, 128, '2018-09-03', '2018-09-17', '2018-09-09'),
(57, 221, '2019-08-18', '2019-09-01', null),
(61, 112, '2018-05-12', '2018-05-26', '2018-05-30'),
(30, 60, '2019-02-28', '2019-03-14', '2019-03-11'),
(74, 238, '2018-05-10', '2018-05-24', '2018-06-10'),
(19, 240, '2018-06-09', '2018-06-23', '2018-07-09'),
(58, 209, '2019-04-09', '2019-04-23', '2019-04-30'),
(96, 105, '2019-04-13', '2019-04-27', '2019-05-16'),
(95, 209, '2019-08-02', '2019-08-16', '2019-08-16'),
(65, 137, '2018-01-04', '2018-01-18', '2018-02-06'),
(69, 271, '2019-05-23', '2019-06-06', '2019-06-12'),
(65, 244, '2018-08-31', '2018-09-14', '2018-09-18'),
(97, 75, '2018-06-20', '2018-07-04', '2018-07-14'),
(94, 11, '2019-06-18', '2019-07-02', '2019-07-05'),
(37, 102, '2019-05-01', '2019-05-15', '2019-05-11'),
(57, 164, '2018-12-23', '2019-01-06', '2019-01-04'),
(42, 43, '2018-12-20', '2019-01-03', '2019-01-07'),
(27, 44, '2019-05-01', '2019-05-15', '2019-06-03'),
(6, 99, '2019-07-11', '2019-07-25', '2019-08-08'),
(46, 182, '2019-03-14', '2019-03-28', '2019-04-02'),
(16, 83, '2018-08-18', '2018-09-01', '2018-08-27'),
(31, 69, '2019-01-18', '2019-02-01', '2019-01-26'),
(2, 86, '2018-12-31', '2019-01-14', '2019-01-17'),
(49, 67, '2018-09-01', '2018-09-15', '2018-09-25'),
(44, 45, '2018-11-20', '2018-12-04', '2018-12-22'),
(82, 256, '2018-04-29', '2018-05-13', '2018-05-14'),
(88, 155, '2018-09-20', '2018-10-04', '2018-10-08'),
(89, 194, '2018-01-29', '2018-02-12', '2018-02-03'),
(85, 124, '2018-04-09', '2018-04-23', '2018-04-24'),
(38, 203, '2018-11-23', '2018-12-07', '2018-12-04'),
(27, 243, '2018-06-16', '2018-06-30', '2018-07-12'),
(79, 39, '2019-04-29', '2019-05-13', '2019-05-16'),
(78, 135, '2018-04-01', '2018-04-15', '2018-04-22'),
(54, 279, '2018-12-19', '2019-01-02', '2019-01-12'),
(6, 274, '2018-03-26', '2018-04-09', '2018-04-17'),
(88, 125, '2018-03-27', '2018-04-10', '2018-04-18'),
(64, 10, '2018-10-13', '2018-10-27', '2018-10-21'),
(1, 239, '2018-01-17', '2018-01-31', '2018-02-07'),
(80, 183, '2018-05-23', '2018-06-06', '2018-06-25'),
(27, 186, '2018-04-02', '2018-04-16', '2018-05-01'),
(54, 224, '2018-01-09', '2018-01-23', '2018-01-24'),
(40, 90, '2019-04-18', '2019-05-02', '2019-05-15'),
(71, 224, '2019-02-22', '2019-03-08', '2019-03-22'),
(16, 212, '2018-04-12', '2018-04-26', '2018-04-27'),
(79, 33, '2018-09-24', '2018-10-08', '2018-10-12'),
(88, 219, '2018-05-19', '2018-06-02', '2018-06-17'),
(86, 13, '2018-09-26', '2018-10-10', '2018-10-02'),
(68, 262, '2018-02-03', '2018-02-17', '2018-02-07'),
(82, 206, '2018-05-25', '2018-06-08', '2018-06-24'),
(40, 71, '2018-11-05', '2018-11-19', '2018-11-24'),
(92, 140, '2019-08-09', '2019-08-23', '2019-09-09'),
(56, 40, '2018-04-26', '2018-05-10', '2018-05-09'),
(99, 137, '2018-01-10', '2018-01-24', '2018-02-05'),
(88, 80, '2018-08-16', '2018-08-30', '2018-08-24'),
(12, 236, '2019-07-15', '2019-07-29', '2019-07-21'),
(4, 78, '2019-04-02', '2019-04-16', '2019-04-13'),
(68, 26, '2018-01-10', '2018-01-24', '2018-01-29'),
(95, 151, '2019-09-03', '2019-09-17', null),
(74, 177, '2019-04-28', '2019-05-12', '2019-05-03'),
(50, 123, '2019-05-18', '2019-06-01', '2019-06-02'),
(43, 11, '2019-02-12', '2019-02-26', '2019-03-02'),
(65, 259, '2018-12-24', '2019-01-07', '2019-01-26'),
(82, 20, '2018-11-01', '2018-11-15', '2018-11-07'),
(36, 267, '2019-07-07', '2019-07-21', '2019-07-23'),
(28, 90, '2018-11-12', '2018-11-26', '2018-12-01'),
(64, 162, '2019-04-11', '2019-04-25', '2019-04-25'),
(42, 234, '2019-05-14', '2019-05-28', '2019-06-16'),
(78, 141, '2018-02-26', '2018-03-12', '2018-03-09'),
(11, 122, '2018-05-16', '2018-05-30', '2018-06-18'),
(46, 91, '2019-05-29', '2019-06-12', '2019-06-14'),
(10, 88, '2019-07-04', '2019-07-18', '2019-08-02'),
(50, 276, '2019-03-30', '2019-04-13', '2019-04-21'),
(33, 55, '2019-06-14', '2019-06-28', '2019-07-08'),
(19, 270, '2019-04-23', '2019-05-07', '2019-05-15'),
(92, 36, '2018-12-25', '2019-01-08', '2019-01-16'),
(59, 103, '2019-03-22', '2019-04-05', '2019-03-26'),
(39, 237, '2018-05-05', '2018-05-19', '2018-05-29'),
(26, 268, '2018-04-14', '2018-04-28', '2018-04-30'),
(66, 272, '2019-06-18', '2019-07-02', '2019-07-04'),
(31, 125, '2018-06-14', '2018-06-28', '2018-06-25'),
(78, 236, '2018-11-14', '2018-11-28', '2018-12-11'),
(63, 44, '2019-05-06', '2019-05-20', '2019-05-28'),
(62, 140, '2019-08-31', '2019-09-14', null),
(81, 145, '2018-09-10', '2018-09-24', '2018-09-25'),
(79, 25, '2018-04-20', '2018-05-04', '2018-05-05'),
(5, 238, '2018-05-06', '2018-05-20', '2018-05-23'),
(58, 269, '2019-05-10', '2019-05-24', '2019-05-14'),
(6, 249, '2019-06-08', '2019-06-22', '2019-06-16'),
(74, 250, '2019-06-09', '2019-06-23', '2019-06-14'),
(80, 172, '2019-08-16', '2019-08-30', '2019-08-23'),
(35, 160, '2019-05-27', '2019-06-10', '2019-06-15'),
(52, 123, '2018-12-30', '2019-01-13', '2019-01-31'),
(5, 11, '2018-11-02', '2018-11-16', '2018-12-01'),
(44, 235, '2019-05-27', '2019-06-10', '2019-06-14'),
(48, 187, '2018-09-26', '2018-10-10', '2018-10-06'),
(8, 269, '2019-08-07', '2019-08-21', '2019-08-12'),
(67, 2, '2019-07-26', '2019-08-09', '2019-08-23'),
(6, 250, '2019-02-03', '2019-02-17', '2019-02-08'),
(61, 206, '2019-04-26', '2019-05-10', '2019-05-24'),
(77, 131, '2018-06-29', '2018-07-13', '2018-07-23'),
(44, 31, '2018-05-10', '2018-05-24', '2018-06-02'),
(51, 247, '2018-04-19', '2018-05-03', '2018-04-24'),
(88, 14, '2019-06-30', '2019-07-14', '2019-07-16'),
(66, 116, '2018-05-05', '2018-05-19', '2018-05-15'),
(78, 178, '2019-01-05', '2019-01-19', '2019-01-23'),
(20, 63, '2018-12-24', '2019-01-07', '2019-01-24'),
(6, 107, '2018-10-08', '2018-10-22', '2018-11-03'),
(61, 235, '2018-08-03', '2018-08-17', '2018-09-04'),
(31, 48, '2018-07-10', '2018-07-24', '2018-07-26'),
(86, 197, '2019-07-11', '2019-07-25', '2019-08-04'),
(78, 25, '2019-06-23', '2019-07-07', '2019-07-11'),
(18, 82, '2019-04-01', '2019-04-15', '2019-04-20'),
(76, 237, '2019-06-01', '2019-06-15', '2019-06-30'),
(74, 85, '2018-04-18', '2018-05-02', '2018-04-26'),
(31, 132, '2019-06-01', '2019-06-15', '2019-06-06'),
(37, 272, '2019-04-25', '2019-05-09', '2019-05-13'),
(90, 175, '2018-03-18', '2018-04-01', '2018-03-24'),
(99, 186, '2018-12-30', '2019-01-13', '2019-01-18'),
(60, 114, '2018-06-16', '2018-06-30', '2018-07-09'),
(54, 90, '2019-01-30', '2019-02-13', '2019-02-21'),
(68, 186, '2018-06-15', '2018-06-29', '2018-07-08'),
(32, 58, '2018-04-05', '2018-04-19', '2018-04-09'),
(83, 74, '2019-06-26', '2019-07-10', '2019-06-30'),
(16, 103, '2018-10-08', '2018-10-22', '2018-10-30'),
(39, 205, '2018-02-03', '2018-02-17', '2018-02-19'),
(86, 252, '2018-12-01', '2018-12-15', '2018-12-09'),
(21, 48, '2019-06-14', '2019-06-28', '2019-07-10'),
(77, 180, '2019-05-14', '2019-05-28', '2019-05-26'),
(15, 145, '2018-01-25', '2018-02-08', '2018-01-30'),
(42, 197, '2018-08-25', '2018-09-08', '2018-09-15'),
(28, 115, '2018-09-04', '2018-09-18', '2018-09-08'),
(68, 267, '2018-01-29', '2018-02-12', '2018-02-05'),
(23, 65, '2018-11-08', '2018-11-22', '2018-11-15'),
(75, 185, '2019-03-24', '2019-04-07', '2019-04-25'),
(40, 85, '2018-06-29', '2018-07-13', '2018-07-20'),
(98, 200, '2019-08-16', '2019-08-30', '2019-08-30'),
(81, 266, '2019-06-20', '2019-07-04', '2019-07-21'),
(37, 199, '2019-08-30', '2019-09-13', '2019-09-03'),
(92, 49, '2018-05-30', '2018-06-13', '2018-07-02'),
(23, 6, '2018-04-08', '2018-04-22', '2018-05-03'),
(64, 57, '2018-02-06', '2018-02-20', '2018-03-03'),
(32, 281, '2019-09-10', '2019-09-24', null),
(38, 235, '2018-09-13', '2018-09-27', '2018-10-03'),
(47, 148, '2019-07-31', '2019-08-14', '2019-08-15'),
(96, 153, '2018-07-25', '2018-08-08', '2018-08-22'),
(50, 22, '2019-02-16', '2019-03-02', '2019-02-20'),
(43, 6, '2019-01-18', '2019-02-01', '2019-01-26'),
(96, 206, '2019-04-11', '2019-04-25', '2019-04-28'),
(47, 31, '2019-08-29', '2019-09-12', null),
(95, 162, '2019-01-06', '2019-01-20', '2019-02-08'),
(77, 162, '2019-03-27', '2019-04-10', '2019-04-22'),
(14, 13, '2018-05-20', '2018-06-03', '2018-05-26'),
(50, 67, '2018-11-14', '2018-11-28', '2018-12-07'),
(66, 175, '2018-08-22', '2018-09-05', '2018-09-14'),
(86, 104, '2019-04-16', '2019-04-30', '2019-04-22'),
(43, 277, '2019-05-13', '2019-05-27', '2019-06-10'),
(23, 51, '2019-06-01', '2019-06-15', '2019-06-23'),
(36, 242, '2019-06-24', '2019-07-08', '2019-07-24'),
(62, 12, '2018-04-12', '2018-04-26', '2018-05-13'),
(16, 252, '2019-05-08', '2019-05-22', '2019-05-31'),
(14, 204, '2019-04-10', '2019-04-24', '2019-04-25'),
(87, 74, '2018-03-08', '2018-03-22', '2018-03-22'),
(88, 172, '2019-05-14', '2019-05-28', '2019-05-23'),
(37, 13, '2018-05-27', '2018-06-10', '2018-06-12'),
(43, 281, '2018-11-12', '2018-11-26', '2018-11-17'),
(39, 119, '2018-05-26', '2018-06-09', '2018-06-05'),
(83, 174, '2018-03-05', '2018-03-19', '2018-03-10'),
(82, 69, '2018-02-09', '2018-02-23', '2018-03-02'),
(79, 43, '2019-04-08', '2019-04-22', '2019-05-08'),
(34, 186, '2018-01-10', '2018-01-24', '2018-01-19'),
(27, 118, '2019-07-30', '2019-08-13', '2019-08-29'),
(71, 174, '2018-02-19', '2018-03-05', '2018-03-17'),
(6, 86, '2018-08-14', '2018-08-28', '2018-09-02'),
(16, 103, '2018-09-19', '2018-10-03', '2018-10-06'),
(77, 255, '2019-01-17', '2019-01-31', '2019-02-18'),
(74, 27, '2018-06-10', '2018-06-24', '2018-06-27'),
(25, 52, '2019-07-01', '2019-07-15', '2019-07-17'),
(65, 242, '2019-04-25', '2019-05-09', '2019-05-10'),
(67, 79, '2019-03-28', '2019-04-11', '2019-04-26'),
(84, 20, '2019-06-27', '2019-07-11', '2019-07-13'),
(47, 52, '2019-03-04', '2019-03-18', '2019-03-22'),
(33, 145, '2019-08-12', '2019-08-26', '2019-09-08'),
(10, 123, '2019-08-30', '2019-09-13', '2019-09-09'),
(22, 183, '2019-07-20', '2019-08-03', '2019-08-03'),
(19, 36, '2019-04-30', '2019-05-14', '2019-05-28'),
(22, 98, '2018-04-14', '2018-04-28', '2018-04-19'),
(59, 74, '2019-06-15', '2019-06-29', '2019-07-09'),
(14, 25, '2018-07-30', '2018-08-13', '2018-08-11'),
(41, 93, '2018-09-05', '2018-09-19', '2018-09-16'),
(74, 235, '2019-06-06', '2019-06-20', '2019-06-10'),
(95, 164, '2018-09-28', '2018-10-12', '2018-10-12'),
(92, 280, '2019-02-15', '2019-03-01', '2019-02-22'),
(25, 128, '2018-03-29', '2018-04-12', '2018-04-15'),
(2, 85, '2019-08-22', '2019-09-05', '2019-09-04'),
(61, 13, '2019-07-12', '2019-07-26', '2019-07-28'),
(76, 125, '2018-07-07', '2018-07-21', '2018-07-13'),
(31, 185, '2019-09-08', '2019-09-22', null),
(24, 146, '2019-01-18', '2019-02-01', '2019-02-14'),
(25, 188, '2018-05-09', '2018-05-23', '2018-05-21'),
(75, 18, '2018-07-08', '2018-07-22', '2018-07-17'),
(52, 140, '2019-05-13', '2019-05-27', '2019-05-23'),
(52, 20, '2019-09-10', '2019-09-24', null),
(91, 65, '2018-11-19', '2018-12-03', '2018-12-22'),
(66, 11, '2019-06-11', '2019-06-25', '2019-06-27'),
(83, 44, '2019-03-25', '2019-04-08', '2019-04-20'),
(74, 80, '2018-11-18', '2018-12-02', '2018-12-19'),
(36, 118, '2019-04-09', '2019-04-23', '2019-05-11'),
(100, 247, '2018-02-14', '2018-02-28', '2018-03-03'),
(24, 122, '2018-02-04', '2018-02-18', '2018-02-24'),
(93, 266, '2018-11-18', '2018-12-02', '2018-12-01'),
(100, 235, '2019-06-06', '2019-06-20', '2019-06-12'),
(83, 82, '2019-04-04', '2019-04-18', '2019-04-26'),
(73, 285, '2018-02-13', '2018-02-27', '2018-02-21'),
(61, 137, '2019-08-29', '2019-09-12', '2019-09-02'),
(95, 171, '2018-06-01', '2018-06-15', '2018-06-11'),
(78, 240, '2018-04-20', '2018-05-04', '2018-05-10'),
(66, 142, '2018-05-29', '2018-06-12', '2018-06-06'),
(65, 30, '2019-05-29', '2019-06-12', '2019-06-18'),
(72, 20, '2018-02-09', '2018-02-23', '2018-02-15'),
(89, 174, '2018-02-20', '2018-03-06', '2018-03-01'),
(86, 246, '2018-09-25', '2018-10-09', '2018-10-15'),
(19, 70, '2018-08-04', '2018-08-18', '2018-08-20'),
(7, 266, '2018-09-04', '2018-09-18', '2018-09-14'),
(65, 171, '2019-01-08', '2019-01-22', '2019-01-20'),
(29, 133, '2018-11-30', '2018-12-14', '2018-12-22'),
(97, 280, '2018-02-24', '2018-03-10', '2018-03-01'),
(46, 130, '2018-08-22', '2018-09-05', '2018-09-12'),
(81, 82, '2018-05-31', '2018-06-14', '2018-06-15'),
(47, 151, '2018-01-30', '2018-02-13', '2018-02-11'),
(71, 247, '2019-07-08', '2019-07-22', '2019-07-20'),
(59, 68, '2018-09-09', '2018-09-23', '2018-09-26'),
(48, 242, '2018-03-20', '2018-04-03', '2018-04-01'),
(30, 99, '2018-02-06', '2018-02-20', '2018-02-21'),
(3, 184, '2018-10-10', '2018-10-24', '2018-10-31'),
(68, 283, '2018-02-10', '2018-02-24', '2018-03-04'),
(93, 145, '2018-01-06', '2018-01-20', '2018-02-08'),
(80, 211, '2018-05-22', '2018-06-05', '2018-06-04'),
(30, 115, '2019-09-09', '2019-09-23', '2019-09-14'),
(76, 244, '2018-05-30', '2018-06-13', '2018-06-27'),
(68, 167, '2019-02-10', '2019-02-24', '2019-02-14'),
(20, 106, '2018-04-13', '2018-04-27', '2018-04-20'),
(6, 174, '2018-09-17', '2018-10-01', '2018-09-26'),
(66, 216, '2019-07-22', '2019-08-05', '2019-08-18'),
(29, 195, '2018-01-04', '2018-01-18', '2018-01-20'),
(89, 78, '2019-04-27', '2019-05-11', '2019-05-22'),
(39, 165, '2019-02-04', '2019-02-18', '2019-02-09'),
(10, 85, '2018-04-07', '2018-04-21', '2018-04-19'),
(52, 152, '2019-03-13', '2019-03-27', '2019-04-15'),
(78, 61, '2018-01-19', '2018-02-02', '2018-01-23'),
(82, 237, '2018-09-07', '2018-09-21', '2018-10-06'),
(44, 193, '2019-05-28', '2019-06-11', '2019-06-01'),
(10, 3, '2018-08-14', '2018-08-28', '2018-08-22'),
(57, 88, '2019-03-08', '2019-03-22', '2019-03-20'),
(24, 253, '2018-04-15', '2018-04-29', '2018-04-29'),
(53, 44, '2018-09-26', '2018-10-10', '2018-10-05'),
(84, 234, '2018-05-26', '2018-06-09', '2018-06-04'),
(29, 128, '2018-10-22', '2018-11-05', '2018-11-13'),
(30, 270, '2019-01-24', '2019-02-07', '2019-02-21'),
(15, 155, '2019-03-21', '2019-04-04', '2019-03-27'),
(52, 85, '2019-01-26', '2019-02-09', '2019-02-02'),
(84, 1, '2018-03-22', '2018-04-05', '2018-04-06'),
(83, 282, '2018-05-09', '2018-05-23', '2018-06-11'),
(70, 72, '2018-09-05', '2018-09-19', '2018-09-25'),
(92, 267, '2019-02-27', '2019-03-13', '2019-03-25'),
(84, 83, '2018-01-12', '2018-01-26', '2018-02-10'),
(73, 225, '2018-05-06', '2018-05-20', '2018-05-25'),
(40, 93, '2019-02-04', '2019-02-18', '2019-02-10'),
(73, 3, '2019-08-02', '2019-08-16', '2019-08-24'),
(39, 102, '2018-12-23', '2019-01-06', '2019-01-25'),
(92, 92, '2019-08-03', '2019-08-17', '2019-08-15'),
(67, 19, '2019-03-04', '2019-03-18', '2019-04-04'),
(62, 259, '2018-05-18', '2018-06-01', '2018-06-18'),
(15, 153, '2018-05-22', '2018-06-05', '2018-05-31'),
(74, 35, '2018-10-31', '2018-11-14', '2018-11-12'),
(12, 189, '2018-04-29', '2018-05-13', '2018-05-06'),
(13, 170, '2018-09-06', '2018-09-20', '2018-09-23'),
(40, 81, '2018-07-02', '2018-07-16', '2018-07-10'),
(38, 281, '2018-11-30', '2018-12-14', '2018-12-17'),
(72, 105, '2019-04-09', '2019-04-23', '2019-04-16'),
(79, 213, '2018-08-05', '2018-08-19', '2018-08-20'),
(40, 231, '2018-06-12', '2018-06-26', '2018-06-19'),
(82, 187, '2019-03-07', '2019-03-21', '2019-03-11'),
(49, 196, '2018-03-06', '2018-03-20', '2018-03-25'),
(95, 12, '2019-05-30', '2019-06-13', '2019-06-09'),
(63, 279, '2018-02-02', '2018-02-16', '2018-02-23'),
(78, 245, '2019-08-17', '2019-08-31', '2019-09-10'),
(48, 40, '2018-12-30', '2019-01-13', '2019-01-17'),
(95, 34, '2019-02-01', '2019-02-15', '2019-02-20'),
(47, 6, '2019-03-17', '2019-03-31', '2019-04-18'),
(10, 83, '2019-03-24', '2019-04-07', '2019-04-08'),
(20, 6, '2018-04-17', '2018-05-01', '2018-04-22'),
(96, 197, '2018-12-31', '2019-01-14', '2019-01-28'),
(68, 141, '2018-01-20', '2018-02-03', '2018-02-06'),
(25, 281, '2019-06-09', '2019-06-23', '2019-06-14'),
(32, 208, '2019-05-14', '2019-05-28', '2019-05-27'),
(14, 88, '2019-05-09', '2019-05-23', '2019-05-20'),
(34, 23, '2019-02-09', '2019-02-23', '2019-03-09'),
(24, 176, '2018-06-26', '2018-07-10', '2018-07-23'),
(94, 25, '2018-08-11', '2018-08-25', '2018-08-28'),
(51, 88, '2019-05-05', '2019-05-19', '2019-05-21'),
(58, 171, '2018-01-27', '2018-02-10', '2018-02-16'),
(55, 56, '2019-05-17', '2019-05-31', '2019-06-19'),
(97, 73, '2019-06-02', '2019-06-16', '2019-06-23'),
(9, 111, '2019-08-09', '2019-08-23', '2019-09-10'),
(78, 251, '2019-09-07', '2019-09-21', null),
(65, 192, '2018-06-06', '2018-06-20', '2018-06-13'),
(18, 177, '2018-05-01', '2018-05-15', '2018-05-14'),
(81, 110, '2019-03-15', '2019-03-29', '2019-03-30'),
(58, 246, '2019-08-26', '2019-09-09', null),
(40, 279, '2019-06-28', '2019-07-12', '2019-07-03'),
(35, 77, '2018-10-09', '2018-10-23', '2018-11-02'),
(63, 191, '2018-04-16', '2018-04-30', '2018-05-09'),
(29, 145, '2018-01-07', '2018-01-21', '2018-01-23'),
(1, 266, '2018-06-04', '2018-06-18', '2018-06-22'),
(9, 132, '2018-09-07', '2018-09-21', '2018-09-12'),
(46, 205, '2018-09-28', '2018-10-12', '2018-10-24'),
(21, 1, '2018-10-15', '2018-10-29', '2018-10-21'),
(7, 175, '2018-05-26', '2018-06-09', '2018-06-18'),
(73, 189, '2018-12-11', '2018-12-25', '2019-01-07'),
(32, 107, '2018-07-13', '2018-07-27', '2018-07-30'),
(26, 205, '2018-05-16', '2018-05-30', '2018-06-06'),
(92, 164, '2018-11-17', '2018-12-01', '2018-11-24'),
(87, 167, '2019-05-03', '2019-05-17', '2019-05-10'),
(23, 60, '2019-05-20', '2019-06-03', '2019-06-13'),
(58, 140, '2019-07-06', '2019-07-20', '2019-07-29'),
(22, 155, '2018-05-06', '2018-05-20', '2018-05-15'),
(7, 231, '2018-03-27', '2018-04-10', '2018-04-06'),
(38, 171, '2019-09-08', '2019-09-22', null),
(42, 185, '2018-08-31', '2018-09-14', '2018-09-12'),
(87, 276, '2019-09-15', '2019-09-29', null),
(16, 110, '2018-08-09', '2018-08-23', '2018-09-06'),
(5, 265, '2018-12-22', '2019-01-05', '2019-01-07'),
(96, 106, '2018-11-18', '2018-12-02', '2018-12-13'),
(1, 3, '2018-10-08', '2018-10-22', '2018-10-30'),
(66, 2, '2018-12-25', '2019-01-08', '2018-12-31'),
(79, 136, '2019-07-23', '2019-08-06', '2019-08-24'),
(50, 225, '2019-07-19', '2019-08-02', '2019-07-23'),
(49, 123, '2019-03-27', '2019-04-10', '2019-04-07'),
(84, 58, '2019-03-30', '2019-04-13', '2019-04-28'),
(32, 125, '2019-04-27', '2019-05-11', '2019-05-05'),
(54, 112, '2019-09-05', '2019-09-19', null),
(38, 258, '2018-11-05', '2018-11-19', '2018-12-05'),
(95, 24, '2018-03-22', '2018-04-05', '2018-04-01'),
(74, 180, '2018-09-10', '2018-09-24', '2018-09-15'),
(20, 61, '2018-07-23', '2018-08-06', '2018-08-03'),
(97, 65, '2018-08-21', '2018-09-04', '2018-09-22'),
(1, 30, '2019-04-12', '2019-04-26', '2019-04-29'),
(42, 99, '2018-10-12', '2018-10-26', '2018-11-04'),
(54, 89, '2019-09-01', '2019-09-15', null),
(71, 265, '2018-09-12', '2018-09-26', '2018-10-15'),
(74, 103, '2019-03-11', '2019-03-25', '2019-03-24'),
(24, 247, '2018-05-05', '2018-05-19', '2018-05-29'),
(30, 8, '2018-05-05', '2018-05-19', '2018-05-09'),
(80, 235, '2018-04-08', '2018-04-22', '2018-04-14'),
(21, 266, '2018-08-21', '2018-09-04', '2018-09-15'),
(49, 38, '2018-12-16', '2018-12-30', '2019-01-07'),
(46, 150, '2018-04-22', '2018-05-06', '2018-05-19'),
(60, 268, '2019-05-20', '2019-06-03', '2019-06-22'),
(47, 219, '2019-05-31', '2019-06-14', '2019-06-19'),
(6, 26, '2018-10-27', '2018-11-10', '2018-11-04'),
(18, 33, '2018-04-01', '2018-04-15', '2018-04-08'),
(71, 110, '2019-07-18', '2019-08-01', '2019-08-19'),
(95, 162, '2019-05-17', '2019-05-31', '2019-05-23'),
(43, 54, '2018-02-24', '2018-03-10', '2018-03-15'),
(68, 252, '2018-10-19', '2018-11-02', '2018-10-26'),
(95, 170, '2018-02-22', '2018-03-08', '2018-03-12'),
(88, 76, '2019-09-03', '2019-09-17', null),
(84, 149, '2018-04-20', '2018-05-04', '2018-05-16'),
(43, 24, '2018-04-14', '2018-04-28', '2018-04-23'),
(90, 150, '2018-09-25', '2018-10-09', '2018-10-11'),
(42, 134, '2019-07-06', '2019-07-20', '2019-07-16'),
(23, 46, '2018-11-19', '2018-12-03', '2018-12-17'),
(25, 232, '2018-08-19', '2018-09-02', '2018-08-31'),
(38, 62, '2019-06-23', '2019-07-07', '2019-07-03'),
(86, 145, '2018-01-20', '2018-02-03', '2018-01-30'),
(50, 34, '2018-10-30', '2018-11-13', '2018-11-05'),
(81, 143, '2018-05-22', '2018-06-05', '2018-06-02'),
(50, 89, '2018-03-16', '2018-03-30', '2018-04-05'),
(50, 131, '2019-03-21', '2019-04-04', '2019-04-23'),
(43, 141, '2018-10-26', '2018-11-09', '2018-11-04'),
(94, 183, '2019-04-08', '2019-04-22', '2019-04-20'),
(70, 266, '2019-04-18', '2019-05-02', '2019-05-20'),
(61, 213, '2018-01-19', '2018-02-02', '2018-02-16'),
(91, 76, '2019-03-05', '2019-03-19', '2019-03-24'),
(43, 101, '2018-02-14', '2018-02-28', '2018-03-03'),
(26, 148, '2019-05-08', '2019-05-22', '2019-06-06'),
(2, 214, '2018-12-07', '2018-12-21', '2019-01-02'),
(93, 72, '2019-02-12', '2019-02-26', '2019-02-18'),
(56, 56, '2019-04-03', '2019-04-17', '2019-04-18'),
(85, 10, '2018-07-21', '2018-08-04', '2018-08-14'),
(93, 278, '2018-05-14', '2018-05-28', '2018-05-22'),
(77, 205, '2018-04-14', '2018-04-28', '2018-05-12'),
(17, 221, '2018-07-04', '2018-07-18', '2018-07-08'),
(55, 34, '2019-05-14', '2019-05-28', '2019-05-29'),
(21, 65, '2019-07-26', '2019-08-09', '2019-07-30'),
(2, 49, '2019-08-16', '2019-08-30', '2019-09-06'),
(48, 186, '2019-08-26', '2019-09-09', '2019-09-09'),
(93, 176, '2018-07-06', '2018-07-20', '2018-08-07'),
(92, 101, '2018-06-15', '2018-06-29', '2018-06-21'),
(77, 223, '2019-03-15', '2019-03-29', '2019-03-26'),
(37, 3, '2019-02-20', '2019-03-06', '2019-03-12'),
(54, 12, '2018-08-31', '2018-09-14', '2018-09-13'),
(47, 282, '2018-01-21', '2018-02-04', '2018-01-27'),
(63, 283, '2019-07-25', '2019-08-08', '2019-08-16'),
(49, 180, '2019-09-14', '2019-09-28', null),
(53, 127, '2018-02-18', '2018-03-04', '2018-03-08'),
(81, 245, '2019-05-25', '2019-06-08', '2019-06-11'),
(96, 218, '2018-01-19', '2018-02-02', '2018-02-09'),
(78, 181, '2019-03-12', '2019-03-26', '2019-03-27'),
(66, 50, '2018-06-29', '2018-07-13', '2018-07-25'),
(37, 33, '2018-09-02', '2018-09-16', '2018-09-12'),
(87, 3, '2018-09-08', '2018-09-22', '2018-10-11'),
(82, 153, '2018-01-03', '2018-01-17', '2018-01-19'),
(36, 24, '2018-10-01', '2018-10-15', '2018-10-11'),
(5, 55, '2018-05-17', '2018-05-31', '2018-06-03'),
(46, 186, '2019-01-07', '2019-01-21', '2019-01-31'),
(68, 10, '2018-10-19', '2018-11-02', '2018-11-08'),
(34, 174, '2018-12-19', '2019-01-02', '2019-01-10'),
(88, 204, '2019-03-06', '2019-03-20', '2019-04-04'),
(81, 253, '2018-10-25', '2018-11-08', '2018-11-05'),
(45, 43, '2019-03-29', '2019-04-12', '2019-04-21'),
(7, 80, '2018-11-22', '2018-12-06', '2018-12-02'),
(75, 266, '2018-11-28', '2018-12-12', '2018-12-31'),
(28, 17, '2019-01-28', '2019-02-11', '2019-02-06'),
(38, 30, '2019-03-05', '2019-03-19', '2019-03-23'),
(95, 41, '2019-04-07', '2019-04-21', '2019-04-13'),
(86, 56, '2019-08-02', '2019-08-16', '2019-08-14'),
(48, 208, '2019-01-06', '2019-01-20', '2019-01-21'),
(67, 141, '2019-02-28', '2019-03-14', '2019-03-04'),
(31, 165, '2018-02-08', '2018-02-22', '2018-02-21'),
(23, 272, '2019-05-16', '2019-05-30', '2019-05-28'),
(55, 114, '2018-09-17', '2018-10-01', '2018-10-03'),
(85, 70, '2018-01-21', '2018-02-04', '2018-02-07'),
(3, 11, '2018-03-21', '2018-04-04', '2018-04-21'),
(83, 229, '2019-05-27', '2019-06-10', '2019-06-07'),
(17, 109, '2018-01-07', '2018-01-21', '2018-02-07'),
(88, 254, '2019-01-04', '2019-01-18', '2019-01-31'),
(10, 57, '2019-06-14', '2019-06-28', '2019-07-02'),
(91, 19, '2018-12-19', '2019-01-02', '2019-01-20'),
(85, 99, '2019-06-09', '2019-06-23', '2019-07-02'),
(70, 160, '2019-03-12', '2019-03-26', '2019-04-13'),
(72, 4, '2018-09-29', '2018-10-13', '2018-10-14'),
(91, 114, '2018-09-15', '2018-09-29', '2018-09-23'),
(95, 2, '2018-09-30', '2018-10-14', '2018-10-09'),
(66, 97, '2018-02-27', '2018-03-13', '2018-03-22'),
(40, 50, '2018-10-26', '2018-11-09', '2018-11-28'),
(46, 269, '2019-01-08', '2019-01-22', '2019-01-12'),
(93, 143, '2018-04-26', '2018-05-10', '2018-05-16'),
(30, 97, '2018-06-02', '2018-06-16', '2018-06-23'),
(51, 143, '2019-01-28', '2019-02-11', '2019-02-08'),
(12, 143, '2019-08-27', '2019-09-10', '2019-09-08'),
(42, 254, '2019-08-30', '2019-09-13', '2019-09-04'),
(5, 29, '2019-02-21', '2019-03-07', '2019-03-12'),
(95, 203, '2018-07-16', '2018-07-30', '2018-07-31'),
(12, 75, '2019-08-06', '2019-08-20', '2019-08-23'),
(52, 99, '2018-04-04', '2018-04-18', '2018-05-03'),
(26, 219, '2019-02-03', '2019-02-17', '2019-03-02'),
(18, 39, '2018-01-21', '2018-02-04', '2018-02-21'),
(85, 157, '2018-03-10', '2018-03-24', '2018-03-27'),
(78, 143, '2018-06-13', '2018-06-27', '2018-07-04'),
(15, 153, '2019-06-22', '2019-07-06', '2019-07-11'),
(36, 233, '2019-03-23', '2019-04-06', '2019-04-22'),
(35, 34, '2018-03-22', '2018-04-05', '2018-04-17'),
(56, 123, '2018-04-14', '2018-04-28', '2018-04-24'),
(9, 258, '2019-01-09', '2019-01-23', '2019-01-22'),
(99, 151, '2019-02-19', '2019-03-05', '2019-02-27'),
(59, 132, '2018-04-28', '2018-05-12', '2018-05-21'),
(5, 234, '2019-07-15', '2019-07-29', '2019-07-27'),
(86, 58, '2019-03-19', '2019-04-02', '2019-04-09'),
(46, 56, '2018-11-25', '2018-12-09', '2018-12-02'),
(68, 195, '2019-04-12', '2019-04-26', '2019-05-14'),
(57, 227, '2019-07-27', '2019-08-10', '2019-08-21'),
(14, 257, '2018-04-09', '2018-04-23', '2018-04-29'),
(22, 69, '2019-06-24', '2019-07-08', '2019-07-16'),
(94, 111, '2019-08-07', '2019-08-21', '2019-08-16'),
(64, 253, '2018-03-11', '2018-03-25', '2018-03-23'),
(100, 60, '2018-10-03', '2018-10-17', '2018-10-31'),
(86, 98, '2019-05-07', '2019-05-21', '2019-06-07'),
(85, 32, '2018-04-05', '2018-04-19', '2018-05-01'),
(29, 195, '2018-04-05', '2018-04-19', '2018-04-10'),
(75, 134, '2018-10-26', '2018-11-09', '2018-11-11'),
(78, 18, '2018-03-25', '2018-04-08', '2018-04-01'),
(85, 221, '2018-07-30', '2018-08-13', '2018-08-31'),
(11, 178, '2019-02-15', '2019-03-01', '2019-03-19'),
(59, 229, '2018-09-23', '2018-10-07', '2018-10-14'),
(78, 271, '2019-03-31', '2019-04-14', '2019-04-19'),
(13, 198, '2018-10-26', '2018-11-09', '2018-11-24'),
(59, 132, '2019-03-05', '2019-03-19', '2019-03-15'),
(73, 170, '2019-08-07', '2019-08-21', '2019-08-14'),
(24, 140, '2018-05-23', '2018-06-06', '2018-06-15'),
(12, 175, '2019-04-19', '2019-05-03', '2019-04-23'),
(18, 255, '2018-01-09', '2018-01-23', '2018-02-05'),
(38, 60, '2018-08-19', '2018-09-02', '2018-09-03'),
(20, 146, '2019-09-07', '2019-09-21', null),
(2, 78, '2019-08-02', '2019-08-16', '2019-09-01'),
(61, 234, '2019-04-08', '2019-04-22', '2019-05-03'),
(2, 149, '2018-09-27', '2018-10-11', '2018-10-20'),
(3, 138, '2018-11-27', '2018-12-11', '2018-12-04'),
(11, 1, '2018-08-07', '2018-08-21', '2018-08-22'),
(1, 232, '2019-04-17', '2019-05-01', '2019-05-05'),
(70, 209, '2019-04-22', '2019-05-06', '2019-05-09'),
(11, 62, '2018-02-20', '2018-03-06', '2018-03-13'),
(3, 252, '2018-06-07', '2018-06-21', '2018-06-11'),
(18, 56, '2018-10-04', '2018-10-18', '2018-10-22'),
(59, 273, '2019-08-26', '2019-09-09', '2019-09-02'),
(90, 138, '2019-02-03', '2019-02-17', '2019-03-08'),
(80, 258, '2019-02-15', '2019-03-01', '2019-02-20'),
(75, 91, '2018-06-14', '2018-06-28', '2018-06-22'),
(49, 31, '2018-12-26', '2019-01-09', '2019-01-05'),
(16, 103, '2018-04-05', '2018-04-19', '2018-04-13'),
(87, 194, '2018-11-20', '2018-12-04', '2018-12-04'),
(45, 136, '2019-01-29', '2019-02-12', '2019-02-17'),
(67, 158, '2018-10-17', '2018-10-31', '2018-11-02'),
(60, 181, '2018-05-22', '2018-06-05', '2018-06-02'),
(94, 57, '2018-11-25', '2018-12-09', '2018-12-07'),
(27, 282, '2019-01-13', '2019-01-27', '2019-01-20'),
(62, 22, '2018-05-06', '2018-05-20', '2018-05-13'),
(49, 59, '2019-08-02', '2019-08-16', '2019-08-31'),
(76, 26, '2018-03-20', '2018-04-03', '2018-03-31'),
(78, 268, '2019-07-15', '2019-07-29', '2019-08-04'),
(15, 175, '2019-06-06', '2019-06-20', '2019-06-22'),
(89, 88, '2018-03-28', '2018-04-11', '2018-04-25'),
(64, 272, '2018-05-17', '2018-05-31', '2018-05-27'),
(24, 24, '2019-03-22', '2019-04-05', '2019-04-08'),
(42, 73, '2019-02-09', '2019-02-23', '2019-03-13'),
(78, 193, '2019-08-24', '2019-09-07', null),
(8, 58, '2018-02-02', '2018-02-16', '2018-02-07'),
(94, 120, '2019-07-03', '2019-07-17', '2019-08-03'),
(27, 21, '2018-07-13', '2018-07-27', '2018-07-18'),
(73, 242, '2019-04-11', '2019-04-25', '2019-04-16'),
(4, 272, '2019-05-17', '2019-05-31', '2019-06-08'),
(34, 253, '2019-05-20', '2019-06-03', '2019-06-03'),
(51, 58, '2018-01-05', '2018-01-19', '2018-02-05'),
(62, 41, '2018-03-08', '2018-03-22', '2018-03-19'),
(26, 128, '2018-08-19', '2018-09-02', '2018-09-20'),
(43, 221, '2019-05-06', '2019-05-20', '2019-06-04'),
(54, 205, '2019-09-14', '2019-09-28', null),
(75, 162, '2018-12-15', '2018-12-29', '2018-12-28'),
(34, 143, '2019-05-16', '2019-05-30', '2019-06-16'),
(84, 70, '2018-02-01', '2018-02-15', '2018-02-11'),
(85, 227, '2018-03-16', '2018-03-30', '2018-04-04'),
(9, 33, '2018-05-20', '2018-06-03', '2018-06-01'),
(83, 142, '2018-01-05', '2018-01-19', '2018-01-13'),
(21, 158, '2018-05-08', '2018-05-22', '2018-06-09'),
(93, 187, '2019-03-24', '2019-04-07', '2019-04-15'),
(93, 285, '2018-02-07', '2018-02-21', '2018-02-18'),
(3, 120, '2018-02-03', '2018-02-17', '2018-02-21'),
(34, 114, '2018-10-08', '2018-10-22', '2018-10-24'),
(4, 227, '2018-12-05', '2018-12-19', '2018-12-14'),
(59, 81, '2018-05-03', '2018-05-17', '2018-05-15'),
(86, 118, '2019-04-11', '2019-04-25', '2019-04-28'),
(55, 271, '2018-03-20', '2018-04-03', '2018-04-16'),
(33, 5, '2018-02-11', '2018-02-25', '2018-03-01'),
(61, 116, '2019-05-25', '2019-06-08', '2019-06-24'),
(40, 105, '2019-06-14', '2019-06-28', '2019-06-28'),
(82, 10, '2018-02-06', '2018-02-20', '2018-02-11'),
(90, 203, '2019-04-09', '2019-04-23', '2019-04-29'),
(94, 45, '2018-03-20', '2018-04-03', '2018-04-07'),
(54, 20, '2018-11-08', '2018-11-22', '2018-12-01'),
(19, 278, '2018-06-05', '2018-06-19', '2018-07-07'),
(17, 273, '2019-04-02', '2019-04-16', '2019-04-11'),
(67, 148, '2019-06-10', '2019-06-24', '2019-06-19'),
(26, 98, '2018-07-29', '2018-08-12', '2018-08-23'),
(88, 172, '2018-08-11', '2018-08-25', '2018-09-12'),
(21, 253, '2018-11-30', '2018-12-14', '2018-12-25'),
(70, 270, '2019-05-29', '2019-06-12', '2019-06-25'),
(4, 225, '2019-05-13', '2019-05-27', '2019-06-08'),
(73, 259, '2018-11-14', '2018-11-28', '2018-11-23'),
(38, 242, '2018-02-23', '2018-03-09', '2018-03-09'),
(100, 156, '2018-04-27', '2018-05-11', '2018-05-27'),
(93, 138, '2018-03-24', '2018-04-07', '2018-04-05'),
(31, 252, '2019-08-04', '2019-08-18', '2019-08-12'),
(86, 241, '2019-05-04', '2019-05-18', '2019-06-05'),
(78, 192, '2018-12-04', '2018-12-18', '2018-12-21'),
(67, 80, '2018-12-20', '2019-01-03', '2019-01-19'),
(33, 281, '2019-07-02', '2019-07-16', '2019-07-31'),
(59, 218, '2019-08-30', '2019-09-13', null),
(22, 121, '2019-05-05', '2019-05-19', '2019-05-20'),
(53, 26, '2018-05-13', '2018-05-27', '2018-05-27'),
(82, 228, '2018-09-04', '2018-09-18', '2018-09-19'),
(8, 253, '2018-08-08', '2018-08-22', '2018-08-25'),
(23, 159, '2019-08-08', '2019-08-22', '2019-08-22'),
(21, 217, '2018-03-18', '2018-04-01', '2018-04-19'),
(52, 93, '2018-09-03', '2018-09-17', '2018-09-30'),
(55, 55, '2019-05-26', '2019-06-09', '2019-06-26'),
(62, 89, '2018-12-26', '2019-01-09', '2019-01-01'),
(41, 261, '2018-02-04', '2018-02-18', '2018-02-21'),
(8, 134, '2018-12-01', '2018-12-15', '2018-12-31'),
(2, 266, '2018-07-01', '2018-07-15', '2018-07-19');





