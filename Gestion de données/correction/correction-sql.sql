-- Artistes

SELECT * FROM artiste ORDER BY nom, prenom LIMIT 1;
SELECT * FROM artiste WHERE nationalite = 'FR' ORDER BY nom DESC, prenom DESC LIMIT 1;
SELECT prenom, nom FROM artiste WHERE prenom LIKE 'Jean%';
SELECT nom FROM artiste WHERE prenom IS NULL;
SELECT nationalite, count(*) FROM artiste GROUP BY nationalite HAVING count(*) > 1;

-- Usagers
SELECT count(*) FROM usager WHERE DAYOFWEEK(date_abonnement)=1;
SELECT nom, count(*) FROM usager group by nom order by count(*) desc;
SELECT * FROM usager WHERE DATE_ADD(date_abonnement, INTERVAL 1 YEAR) < NOW();
SELECT prenom, nom, DATE_ADD(date_abonnement, INTERVAL 1 YEAR) AS date_renouvellement
  FROM usager
  WHERE DATE_ADD(date_abonnement, INTERVAL 1 YEAR) BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 1 WEEK)
  ORDER BY date_abonnement;

-- Livres
SELECT DISTINCT(editeur) FROM livre WHERE rayonnage='Science-Fiction' ORDER BY editeur;
select count(*) from livre WHERE serie in('Blueberry', 'Mister Blueberry');
SELECT titre, serie FROM livre WHERE serie IS NOT NULL and num_serie=1 AND rayonnage in ('Comics', 'Bande dessinée', 'Manga');

-- emprunt
SELECT count(*) FROM emprunt WHERE date_rendu_reel  IS NULL;
SELECT YEAR(date_rendu_attendu), count(*) FROM emprunt
  WHERE date_rendu_reel > date_rendu_attendu
     OR date_rendu_reel IS NULL AND date_rendu_attendu < NOW()
  GROUP BY YEAR(date_rendu_attendu);
select id_usager, count(*) from emprunt GROUP BY id_usager, id_livre ORDER BY count(*) DESC LIMIT 1;

-- mises à jour
INSERT INTO artiste(nom, prenom, nationalite) VALUES ('Le Tendre', 'Serge', 'FR');
UPDATE participation
  SET id_artiste = (SELECT id FROM artiste WHERE nom='Le Tendre')
  WHERE id_livre IN (SELECT id from livre WHERE serie = 'La Quête de l\'oiseau du temps')
    AND role = 'Scénariste';

ALTER TABLE `artiste` ADD COLUMN `pseudonyme` VARCHAR(100) NULL AFTER `nationalite`;
UPDATE artiste SET pseudonyme = 'J.K. Rowling' WHERE nom='Rowling';
UPDATE artiste SET pseudonyme = 'Boulet', nom = 'Roussel', prenom='Gilles' WHERE nom = 'Boulet';
UPDATE artiste SET pseudonyme = 'Léo', nom = 'Oliveira (de)', prenom='Luiz Eduardo' WHERE nom = 'Leo';
UPDATE artiste SET pseudonyme = 'Moebius' WHERE nom = 'Giraud';

UPDATE participation SET id_artiste = (SELECT id FROM artiste WHERE pseudonyme='Mœbius')
  WHERE id_artiste = (SELECT id FROM artiste WHERE nom='Mœbius');
DELETE FROM artiste WHERE nom='Mœbius';

-- complexe
SELECT id_livre, titre, count(*) FROM emprunt
  JOIN livre ON emprunt.id_livre = livre.id
  GROUP BY id_livre
  ORDER BY count(*) desc LIMIT 10;

SELECT titre, serie FROM livre
  LEFT JOIN emprunt ON livre.id = emprunt.id_livre
  WHERE emprunt.id_livre IS NULL;

SELECT avg(nombre_emprunt) FROM (
    SELECT nom, count(*) as nombre_emprunt FROM emprunt
      JOIN usager ON emprunt.id_usager = usager.id
      GROUP BY nom
) emprunt_famille;

SELECT nom FROM livre_genre
    JOIN livre ON livre_genre.id_livre = livre.id
    JOIN genre ON livre_genre.id_genre = genre.id
    WHERE livre.titre = 'Le comte de Monte-Cristo I';

SELECT DISTINCT(genre.nom) FROM livre_genre
    JOIN livre ON livre_genre.id_livre = livre.id
    JOIN genre ON livre_genre.id_genre = genre.id
    JOIN participation ON livre.id = participation.id_livre
    JOIN artiste ON participation.id_artiste = artiste.id
    WHERE artiste.nom='Gaiman';

SELECT DISTINCT(id_artiste), artiste.prenom, artiste.nom FROM participation
  JOIN artiste ON participation.id_artiste = artiste.id
  WHERE artiste.nom != 'Millar'
    AND participation.id_livre IN
      (
          SELECT DISTINCT(livre.id) FROM livre
                                             JOIN participation ON livre.id = participation.id_livre
                                             JOIN artiste ON participation.id_artiste = artiste.id
          WHERE artiste.nom = 'Millar' AND artiste.prenom='Mark'
      );

SELECT prenom, nom, count(*) FROM (
	SELECT artiste.id, artiste.prenom, artiste.nom FROM emprunt
	JOIN participation ON emprunt.id_livre = participation.id_livre
	JOIN artiste ON participation.id_artiste = artiste.id
	GROUP BY emprunt.id_usager, emprunt.id_livre, date_emprunt, id_artiste
) auteur
GROUP BY id
ORDER BY count(*) DESC
LIMIT 10;
