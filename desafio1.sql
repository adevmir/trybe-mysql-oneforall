DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plans(
    planName VARCHAR(255),
    price DECIMAL(4,2),
    planCode INT AUTO_INCREMENT PRIMARY KEY
) engine = InnoDB;

CREATE TABLE SpotifyClone.artist(
    artistName VARCHAR(255) NOT NULL,
    artistID int AUTO_INCREMENT PRIMARY KEY
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    artistID INT,
    albumName VARCHAR(30),
    albumID INT AUTO_INCREMENT PRIMARY KEY,
    dateAlbum DATE,
    FOREIGN KEY (artistID) REFERENCES artist (artistID)
) engine = InnoDB;

CREATE TABLE SpotifyClone.music(
    musicName VARCHAR(30),
    musicID INT AUTO_INCREMENT PRIMARY KEY,
    artistID INT,
    dateMusic DATE,
    albumID INT,
    FOREIGN KEY (artistID) REFERENCES artist (artistID),
    FOREIGN KEY (albumID) REFERENCES album (albumID)
) engine = InnoDB;

CREATE TABLE SpotifyClone.users(
    userName VARCHAR(25),
    userID INT AUTO_INCREMENT PRIMARY KEY,
    dateSignature DATE,
    idade INT,
    planCode INT,
    FOREIGN KEY (planCode) REFERENCES plans (planCode)
) engine = InnoDB;

CREATE TABLE SpotifyClone.historic(
    musicID INT,
    userID INT,
    dataReproduction DATE,
    CONSTRAINT PRIMARY KEY (musicID, userID),
    FOREIGN KEY (musicID) REFERENCES music (musicID),
    FOREIGN KEY (userID) REFERENCES users (userID)
) engine = InnoDB;

CREATE TABLE SpotifyClone.follows(
    artistID INT,
    userID INT,
    dateFollow DATE,
    CONSTRAINT PRIMARY KEY (artistID, userID),
    FOREIGN KEY (artistID) REFERENCES artist (artistID),
    FOREIGN KEY (userID) REFERENCES users (userID)
) engine = InnoDB;

INSERT INTO SpotifyClone.plans (planName, price)
VALUES
  ('free', 0.00),
  ('student', 4.99),
  ('basic', 11.99),
  ('plus', 29.99);

INSERT INTO SpotifyClone.artist (artistName, artistID)
VALUES
  ('Froid', '1'),
  ('MajorRD', '2'),
  ('Santzu', '3'),
  ('Duzz', '4'),
  ('Xamã', '5'),
  ('CynthiaLuz', '6');

INSERT INTO SpotifyClone.album (artistID, albumName, albumID, dateAlbum)
VALUES
  ('1', 'O Homem Não Para Nunca', '1', '2019-05-10'),
  ('2', 'Rock Danger', '2', '2022-03-14'),
  ('3', 'Pícaro Sonhador', '3', '2020-12-01'),
  ('4', 'Entre o Céu e o Esgoto', '4', '2018-12-10'),
  ('6', 'Sol', '5', '2019-07-26'),
  (NULL, NULL, '6', NULL),
  (NULL, NULL, '7', NULL),
  (NULL, NULL,'8', NULL),
  (NULL, NULL, '9', NULL),
  (NULL, NULL, '10', NULL);

INSERT INTO SpotifyClone.music (musicName, musicID, artistID, dateMusic, albumID)
VALUES
  ('Ninguém Morre Me Devendo', '1', '1', '2019-05-10', '1'),
  ('Vem Tranquilo', '2', '1', '2019-05-10', '1'),
  ('Cannavaro', '3', '1', '2019-05-10', '1'),
  ('Lamborguini', '4', '1', '2019-05-10', '1'),
  ('Tô Cansado', '5', '1', '2019-05-10', '1'),
  ('Liderança', '6', '2', '2022-03-14', '2'),
  ('Dia de Baile', '7', '2', '2022-03-14', '2'),
  ('I Like', '8', '2', '2022-03-14', '2'),
  ('Labirinto', '9', '2', '2022-03-14', '2'),
  ('Belt da Ck', '10', '2', '2022-03-14', '2'),
  ('Só Rock 2', '11', '2', '2022-03-14', '2'),
  ('Planetas em Colisão', '12', '3', '2020-12-01', '3'),
  ('Pícaro Sonhador', '13', '3', '2020-12-01', '3'),
  ('Exótica', '14', '3', '2020-12-01', '3'),
  ('Expecto Patronum', '15', '3', '2020-12-01', '3'),
  ('Halls', '16', '3', '2020-12-01', '3'),
  ('Vivo no Álcool', '17', '3', '2020-12-01', '3'),
  ('Rock Danger', '18', '3', '2020-12-01', '3'),
  ('Piqué', '19', '3', '2020-12-01', '3'),
  ('Bealtiful Gilr', '20', '3', '2020-12-01', '3'),
  ('Dri-FIT', '21', '3', '2020-12-01', '3'),
  ('No Love', '22', '3', '2020-12-01', '3'),
  ('Deus Abutre', '23', '4', '2018-12-10', '4'),
  ('Canibais', '24', '4', '2018-12-10', '4'),
  ('Vícios', '25', '4', '2018-12-10', '4'),
  ('Monkey Rain', '26', '4', '2018-12-10', '4'),
  ('Celular', '27', '4', '2018-12-10', '4'),
  ('Floricultura', '28', '4', '2018-12-10', '4'),
  ('Jordan', '29', '4', '2018-12-10', '4'),
  ('Ghini', '30', '4', '2018-12-10', '4'),
  ('UCLÃ', '31', '4', '2018-12-10', '4'),
  ('Sundown', '32', '4', '2018-12-10', '4'),
  ('Lambada', '33', '5', '2019-07-26', '1'),
  ('Sol', '34', '5', '2019-07-26', '1'),
  ('Mãos Sujas', '35', '5', '2019-07-26', '1'),
  ('EU PENSO!', '36', '5', '2019-07-26', '1'),
  ('Ragai', '37', '5', '2019-07-26', '1'),
  ('Homem', '38', '5', '2019-07-26', '1'),
  ('A ilha', '39', '5', '2019-07-26', '1'),
  ('Peita de dar Rolê', '40', NULL, '2019-07-07', '1');

INSERT INTO SpotifyClone.users (userName, userID, dateSignature, idade, planCode)
VALUES
  ('Caprio', '1', '2005-05-25', '23', '1'),
  ('Devmir', '2', '2005-02-23', '28', '4'),
  ('Laxus', '3', '2005-04-18', '18', '2'),
  ('Tanny', '4', '2005-08-18', '21', '4'),
  ('Valonqar', '5', '2005-07-29', '26', '3'),
  ('Yoda', '6', '2005-03-16', '59', '4'),
  ('Oirpac', '7', '2005-11-03', '21', '2'),
  ('Vader', '8', '2005-09-08', '38', '3'),
  ('Chewe', '9', '2005-01-17', '64', '1'),
  ('Kylo', '10', '2005-12-26', '27', '2');

INSERT INTO SpotifyClone.historic (musicID, userID, dataReproduction)
VALUES
  ('1', '1', '2022-06-25'),
  ('5', '3', '2022-07-02'),
  ('9', '3', '2022-07-07'),
  ('17', '2', '2022-07-15'),
  ('19', '1', '2022-07-19'),
  ('22', '5', '2022-07-23'),
  ('7', '3', '2022-07-18'),
  ('9', '7', '2022-07-15'),
  ('17', '6', '2022-07-12'),
  ('15', '9', '2022-07-11'),
  ('5', '2', '2022-07-09'),
  ('10', '2', '2022-07-07'),
  ('14', '10', '2022-07-25'),
  ('19', '4', '2022-07-08'),
  ('21', '1', '2022-07-12'),
  ('8', '7', '2022-07-11'),
  ('9', '8', '2022-07-26'),
  ('13', '10', '2022-07-11'),
  ('16', '9', '2022-07-16'),
  ('13', '5', '2022-07-28'),
  ('14', '6', '2022-07-05'),
  ('2', '8', '2022-07-02'),
  ('8', '3', '2022-07-26'),
  ('2', '1', '2022-07-14'),
  ('4', '4', '2022-07-13'),
  ('12', '1', '2022-07-08'),
  ('8', '5', '2022-07-29'),
  ('15', '4', '2022-07-30'),
  ('4', '7', '2022-07-24'),
  ('11', '3', '2022-07-18'),
  ('7', '6', '2022-07-12'),
  ('21', '9', '2022-07-05'),
  ('4', '2', '2022-07-15'),
  ('20', '10', '2022-07-14'),
  ('5', '8', '2022-07-16'),
  ('3', '3', '2022-07-08'),
  ('21', '5', '2022-07-24'),
  ('8', '10', '2022-07-22');


INSERT INTO SpotifyClone.follows (artistID, userID, dateFollow)
VALUES
  ('1', '1', '2022-06-25'),
  ('1', '8', '2022-07-02'),
  ('2', '7', '2022-07-07'),
  ('4', '2', '2022-07-15'),
  ('3', '1', '2022-07-19'),
  ('1', '7', '2022-07-24'),
  ('2', '3', '2022-07-18'),
  ('5', '6', '2022-07-12'),
  ('4', '9', '2022-07-05'),
  ('5', '2', '2022-07-15'),
  ('1', '10', '2022-07-14'),
  ('2', '8', '2022-07-16'),
  ('1', '3', '2022-07-08'),
  ('3', '5', '2022-07-24'),
  ('6', '10', '2022-07-22'),
  ('3', '2', '2022-07-02'),
  ('6', '8', '2022-07-03'),
  ('4', '7', '2022-07-04'),
  ('2', '9', '2022-07-21'),
  ('1', '6', '2022-07-04'),
  ('5', '4', '2022-07-28'),
  ('1', '2', '2022-07-28');
