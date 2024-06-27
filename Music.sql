CREATE DATABASE music;
USE music;

CREATE TABLE artist (
id INT AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(50) NOT NULL,
birth_year YEAR NULL,
country VARCHAR(150) NULL
);

CREATE TABLE genre (
id INT AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(20)
);

CREATE TABLE albums (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
release_year YEAR NOT NULL,
total_tracks INT NOT NULL,
artist_id INT,
genre_id INT,
FOREIGN KEY (artist_id) REFERENCES artist(id),
FOREIGN KEY (genre_id) REFERENCES genre(id)
);

ALTER TABLE albums
ADD duration INT;

INSERT INTO artist (artist_name, birth_year, country)
VALUES ('Charlie Parker', '1955', 'USA'),
('Fats Domino', '1928', 'USA'),
('Miles Davis', '1926', 'USA');

INSERT INTO genre (genre_name)
VALUES ('Jazz'),
('Rock n Roll'), 
('Bebop');

INSERT INTO albums (title, release_year, total_tracks, artist_id, genre_id, duration)
VALUES ('April in paris', '1957', 12, 1, 1, 39),
('Fats Domino Swings', '1959', 12, 2, 2, 28),
('Birth of the cool', '1957', 11, 3, 3, 33);


SELECT * FROM artist;
SELECT * FROM genre;
SELECT * FROM albums;

