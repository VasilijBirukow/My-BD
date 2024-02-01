CREATE TABLE CollectionTrack (
	collection_id INT FOREIGN KEY REFERENCES dbo.Collections(collection_id),
	track_id int FOREIGN KEY REFERENCES dbo.Tracks(track_id),
	PRIMARY KEY(collection_id, track_id)
);

CREATE TABLE Collections (
	collection_id INT PRIMARY KEY,
	name VARCHAR NOT NULL, 
	year_release INT NOT NULL
);

CREATE TABLE Tracks (
	track_id INT PRIMARY KEY,
	name VARCHAR NOT NULL, 
	duration INT NOT NULL, 
	album_id INT FOREIGN KEY REFERENCES dbo.Albums(album_id)
);

CREATE TABLE Genres (
	genre_id INT PRIMARY KEY,
	name VARCHAR NOT NULL 
);

CREATE TABLE Albums (
	album_id INT PRIMARY KEY,
	name VARCHAR NOT NULL , 
	year_release INT NOT NULL 
);

CREATE TABLE Musician (
	musician_id INT RIMARY KEY,
	name VARCHAR NOT NULL 
);

CREATE TABLE GenreMusician (
	genre_id INT FOREIGN KEY REFERENCES dbo.Genres(genre_id),
	musician_id int FOREIGN KEY REFERENCES dbo.Musician(musician_id),
	PRIMARY KEY(genre_id, musician_id)
);

CREATE TABLE MusicianAlbums (
	musician_id INT FOREIGN KEY REFERENCES dbo.Musician(musician_id),
	album_id int FOREIGN KEY REFERENCES dbo.Albums(album_id),
	PRIMARY KEY(musician_id, album_id)
);

INSERT INTO Musician (musician_id, name)
VALUES (1, "Imagine Dragons");

INSERT INTO Musician (musician_id, name)
VALUES (2, "Джерело");

INSERT INTO Musician (musician_id, name)
VALUES (3, "Цветень");

INSERT INTO Musician (musician_id, name)
VALUES (4, "Нервы");

INSERT INTO Genres (genre_id, name)
VALUES (1, "Рок");

INSERT INTO Genres (genre_id, name)
VALUES (2, "Поп-музыка");

INSERT INTO Genres (genre_id, name)
VALUES (3, "Народные песни");

INSERT INTO Albums (album_id, name, year_release)
VALUES (1, "Десятилетие", 2011);

INSERT INTO Albums (album_id, name, year_release)
VALUES (2, "Imagine Dragons", 2015);

INSERT INTO Albums (album_id, name, year_release)
VALUES (3, "Альбом народных песен", 2022);

INSERT INTO Tracks (track_id, name, duration, album_id)
VALUES (1, "Гармонист", 4, 3);

INSERT INTO Tracks (track_id, name, duration, album_id)
VALUES (2, "roots", 5, 2);

INSERT INTO Tracks (track_id, name, duration, album_id)
VALUES (3, "the bast", 3, 1);

INSERT INTO Tracks (track_id, name, duration, album_id)
VALUES (4, "Коляда", 6, 3);

INSERT INTO Tracks (track_id, name, duration, album_id)
VALUES (5, "I'm so sorry", 5, 2);

INSERT INTO Tracks (track_id, name, duration, album_id)
VALUES (6, "Ишла дiвча", 3, 3);

INSERT INTO Collections (collection_id, name, year_release)
VALUES (1, "Мои любимые песни", 2023);

INSERT INTO Collections (collection_id, name, year_release)
VALUES (2, "Собрник 1", 2005);

INSERT INTO Collections (collection_id, name, year_release)
VALUES (3, "Собрник 2", 2010);

INSERT INTO Collections (collection_id, name, year_release)
VALUES (4, "Собрник 3", 2015);

INSERT INTO CollectionTrack (collection_id, tracks_id)
VALUES (1, 1);

INSERT INTO CollectionTrack (collection_id, tracks_id)
VALUES (2, 3);

INSERT INTO CollectionTrack (collection_id, tracks_id)
VALUES (3, 5);

INSERT INTO CollectionTrack (collection_id, tracks_id)
VALUES (4, 6);

INSERT INTO GenreMusician (genre_id, musician_id)
VALUES (1, 1);

INSERT INTO GenreMusician (genre_id, musician_id)
VALUES (1, 4);

INSERT INTO GenreMusician (genre_id, musician_id)
VALUES (2, 4);

INSERT INTO GenreMusician (genre_id, musician_id)
VALUES (3, 2);

INSERT INTO GenreMusician (genre_id, musician_id)
VALUES (3, 3);

INSERT INTO MusicianAlbums (musician_id, album_id)
VALUES (1, 4);

INSERT INTO MusicianAlbums (musician_id, album_id)
VALUES (2, 1);

INSERT INTO MusicianAlbums (musician_id, album_id)
VALUES (3, 2);

INSERT INTO MusicianAlbums (musician_id, album_id)
VALUES (3, 4);


