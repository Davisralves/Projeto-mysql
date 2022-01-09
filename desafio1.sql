DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE usuario(
  usuario_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  idade INT NOT NULL,
  PRIMARY KEY (usuario_id)
) engine = InnoDB;

CREATE TABLE artistas(
  artista_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (artista_id)
) engine = InnoDB;

CREATE TABLE plano(
  plano_id INT NOT NULL AUTO_INCREMENT,
  plano VARCHAR(45) NOT NULL,
  valor DOUBLE NOT NULL,
  PRIMARY KEY (plano_id)
) engine = InnoDB;

CREATE TABLE usuario_plano(
  usuario_id INT NOT NULL,
  plano_id INT NOT NULL AUTO_INCREMENT,
  data_assinatura DATE NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
  FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
) engine = InnoDB;


CREATE TABLE historico(
  historico_id INT NOT NULL AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  historico_de_reproducao VARCHAR(45) NOT NULL,
  data_reproducao DATETIME NOT NULL,
  PRIMARY KEY (historico_id),
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

CREATE TABLE album(
  album_id INT NOT NULL AUTO_INCREMENT,
  album VARCHAR(45) NOT NULL,
  artista_id INT NOT NULL,
  ano_de_lancamento INT NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE cancoes(
  cancao_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  album_id INT NOT NULL,
  duracao INT NOT NULL,
  PRIMARY KEY (cancao_id),
  FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE usuario_artista(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

INSERT INTO usuario(usuario_id, nome, idade)
  VALUES (NULL, "Thati", 23),
        (NULL, "Cintia", 35),
        (NULL, "Bill", 20),
        (NULL, "Roger", 45),
        (NULL, "Norman", 58),
        (NULL, "Patrick", 33),
        (NULL, "Vivian", 26),
        (NULL, "Carol", 19),
        (NULL, "Angelina", 42),
        (NULL, "Paul", 46);

INSERT INTO artistas(artista_id, nome)
  VALUES (1, "Walter Phoenix"),
        (2, "Peter Strong"),
        (3, "Lance Day"),
        (4, "Freedie Shannon"),
        (5, "Tyler Isle"),
        (6, "Fog");

  INSERT INTO usuario_artista(usuario_id, artista_id)
    VALUES (1, 1),
          (1, 4),
          (1, 3),
          (2, 1),
          (2, 3),
          (3, 2),
          (3, 1),
          (4, 4),
          (5, 5),
          (5, 6),
          (6, 6),
          (6, 3),
          (6, 1),
          (7, 2),
          (7, 5),
          (8, 1),
          (8, 5),
          (9, 6),
          (9, 4),
          (9, 3),
          (10, 2),
          (10, 6);

INSERT INTO plano(plano_id, plano, valor)
  VALUES (NULL, "gratuito", 0.00),
        (NULL, "familiar", 7.99),
        (NULL, "universitario", 5.99),
        (NULL, "pessoal", 6.99);

INSERT INTO usuario_plano(usuario_id, plano_id, data_assinatura)
  VALUES (1, 1, "2019-10-20"),
          (2, 2, "2017-12-30"),
          (3, 3, "2019-06-05"),
          (4, 4, "2020-05-13"),
          (5, 4, "2017-02-17"),
          (6, 2, "2017-01-06"),
          (7, 3, "2018-01-05"),
          (8, 3, "2018-02-14"),
          (9, 2, "2018-04-29"),
          (10, 2, "2017-01-17");

  INSERT INTO historico(historico_id, usuario_id, historico_de_reproducao, data_reproducao)
    VALUES (NULL, 1, "Honey", "2020-02-28 10:45:55" ),
          (NULL, 1, "Walking And Man", "2020-05-02 05:30:35"),
          (NULL, 1, "Young And Father", "2020-03-06 11:22:33"),
          (NULL, 1, "Diamond Power", "2020-08-05 08:05:17"),
          (NULL, 1, "Let's Be Silly","2020-09-14 16:32:22" ),
          (NULL, 2, "I Heard I Want To Bo Alone", "2020-01-02 07:40:33" ),
          (NULL, 2, "Finding My Traditions", "2020-05-16 06:16:22" ),
          (NULL, 2, "Without My Love", "2020-10-09 12:27:48" ),
          (NULL, 2, "Baby", "2020-09-21 13:14:46" ),
          (NULL, 3, "Magic Circus", "2020-11-13 16:55:13" ),
          (NULL, 3, "Dance With Her Own", "2020-12-05 18:38:30" ),
          (NULL, 3, "Hard And Time", "2020-07-30 10:00:00" ),
          (NULL, 4, "Reflections Of Magic", "2021-08-15 17:10:10" ),
          (NULL, 4, "I Ride Alone", "2021-07-10 15:20:30" ),
          (NULL, 4, "Honey, I'm A Lone Wolf", "2021-01-09 01:44:33" ),
          (NULL, 5, "Honey, So Do I",  "2020-07-03 19:33:28" ),
          (NULL, 5, "Rock His Everything", "2017-02-24 21:14:22" ),
          (NULL, 5, "Diamond Power", "2020-08-06 15:23:43" ),
          (NULL, 5, "Soul For Us", "2020-11-10 13:52:27" ),
          (NULL, 6, "Wouldn't It Be Nice", "2019-02-07 20:33:48" ),
          (NULL, 6, "He Heard You're Bad For Me", "2017-01-24 00:31:17" ),
          (NULL, 6, "He Hopes We Can't Stay", "2017-10-12 12:35:20" ),
          (NULL, 6, "Walking And Game", "2018-05-29 14:56:41" ),
          (NULL, 7, "Time Fireworks", "2018-05-09 22:30:49"),
          (NULL, 7, "Troubles Of My Inner Fire", "2020-07-27 12:52:58"),
          (NULL, 7, "Celebration Of More", "2018-01-16 18:40:43"),
          (NULL, 8, "Baby", "2018-03-21 16:56:40"),
          (NULL, 8, "You Make Me Feel So..", "2020-10-18 13:38:05"),
          (NULL, 8, "He's Walking Away", "2019-05-25 08:14:03"),
          (NULL, 8, "He's Trouble", "2021-08-15 21:37:09"),
          (NULL, 9, "Thang Of Thunder", "2021-05-24 17:23:45"),
          (NULL, 9, "Words Of Her Life", "2018-12-07 22:48:52"),
          (NULL, 9, "Sweetie, Let's Go Wild", "2021-03-14 06:14:26"),
          (NULL, 9,  "She Knows", "2020-04-01 03:36:00"),
          (NULL, 10, "History Of My Roses", "2017-02-06 08:21:34"),
          (NULL, 10, "Without My Love", "2017-12-04 05:33:43"),
          (NULL, 10, "Rock His Everything", "2017-07-27 05:24:49"),
          (NULL, 10, "Home Forever", "2017-12-25 01:03:57");
        
 INSERT INTO album(album_id, album, artista_id, ano_de_lancamento)
  VALUES (NULL, "Envious", 1, 1990),
        (NULL, "Exuberant", 1, 1993),
        (NULL, "Hallowed Steam", 2, 1995),
        (NULL, "Incandescent", 3, 1998),
        (NULL, "Temporary Culture", 4, 2001),
        (NULL, "Library of liberty", 4, 2003),
        (NULL, "Chained Down", 5, 2007),
        (NULL, "Cabinet of fools", 5, 2012),
        (NULL,"No guarantees",5, 2015),
        (NULL, "Apparatus", 6, 2015);

  INSERT INTO cancoes(cancao_id, nome, album_id, duracao)
    VALUES (NULL, "Soul For Us", 1, 200),
            (NULL, "Reflections Of Magic", 1, 163),
            (NULL, "Dance With Her Own", 1, 116),
            (NULL, "Troubles Of My Inner Fire", 2, 203),
            (NULL, "Time Fireworks", 2, 152),
            (NULL, "Magic Circus", 3, 105),
            (NULL, "Honey, So Do I", 3, 207),
            (NULL, "Sweetie, Let's Go Wild", 3, 139),
            (NULL, "She Knows", 3, 244),
            (NULL, "Fantasy For Me", 4, 100),
            (NULL, "Celebration Of More", 4, 146),
            (NULL, "Rock His Everything", 4, 223),
            (NULL, "Home Forever", 4, 231),
            (NULL, "Diamond Power", 4, 241),
            (NULL, "Let's Be Silly", 4, 132),
            (NULL, "Thang Of Thunder", 5, 240),
            (NULL, "Words Of Her Life", 5, 185),
            (NULL, "Without My Streets", 5, 176),
            (NULL, "Need Of The Evening", 6, 190),
            (NULL, "History Of My Roses", 6, 222),
            (NULL, "Without My Love", 6, 111),
            (NULL, "Walking And Game", 6, 123),
            (NULL, "Young And Father", 6, 197),
            (NULL, "Finding My Traditions", 7, 179),
            (NULL, "Walking And Man", 7, 229),
            (NULL, "Hard And Time", 7, 135),
            (NULL, "Honey, I'm A Lone Wolf", 7, 150),
            (NULL, "She Thinks I Won't Stay Tonight", 8, 166),
            (NULL, "He Heard You're Bad For Me", 8, 154),
            (NULL, "He Hopes We Can't Stay", 8, 210),
            (NULL, "I Know I Know", 8, 117),
            (NULL, "He's Walking Away", 9, 159),
            (NULL, "He's Trouble", 9, 138),
            (NULL, "I Heard I Want To Bo Alone", 9, 120),
            (NULL, "I Ride Alone", 9, 151),
            (NULL, "Honey", 10, 79),
            (NULL, "You Cheated On Me", 10, 95),
            (NULL, "Wouldn't It Be Nice", 10, 213),
            (NULL, "Baby", 10, 136),
            (NULL, "You Make Me Feel So..", 10, 83);
