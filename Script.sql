CREATE TABLE CollectionTrack (
	collection_id int FOREIGN KEY REFERENCES dbo.Collections(collection_id),
	track_id int FOREIGN KEY REFERENCES dbo.Tracks(track_id),
	PRIMARY KEY(collection_id, track_id)
);

CREATE TABLE Collections (
	collection_id PRIMARY KEY,
	name VARCHAR NOT NULL, 
	year_release INT NOT NULL
);

CREATE TABLE Tracks (
	track_id PRIMARY KEY,
	name VARCHAR NOT NULL UNIQUE, 
	duration INT NOT NULL UNIQUE, 
	album_id INT FOREIGN KEY REFERENCES dbo.Albums(album_id)
);

CREATE TABLE Genres (
	genre_id PRIMARY KEY,
	name VARCHAR NOT NULL UNIQUE
);

CREATE TABLE Albums (
	album_id PRIMARY KEY,
	name VARCHAR NOT NULL UNIQUE, 
	year_release INT NOT NULL UNIQUE
);

CREATE TABLE Musician (
	musician_id PRIMARY KEY,
	name VARCHAR NOT NULL UNIQUE
);

CREATE TABLE GenreMusician (
	genre_id int FOREIGN KEY REFERENCES dbo.Genres(genre_id),
	musician_id int FOREIGN KEY REFERENCES dbo.Musician(musician_id),
	PRIMARY KEY(genre_id, musician_id)
);

CREATE TABLE MusicianAlbums (
	musician_id int FOREIGN KEY REFERENCES dbo.Musician(musician_id),
	album_id int FOREIGN KEY REFERENCES dbo.Albums(album_id),
	PRIMARY KEY(musician_id, album_id)
);