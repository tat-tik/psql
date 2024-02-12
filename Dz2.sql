CREATE table IF NOT EXISTS Genres (id SERIAL PRIMARY KEY, name VARCHAR (60) UNIQUE NOT NULL);
CREATE table IF NOT EXISTS Singers (id SERIAL PRIMARY KEY, name  VARCHAR (60) unique NOT NULL);
CREATE TABLE IF NOT EXISTS SingersGenres (
	genres_id INTEGER REFERENCES Genres(id),
	singers_id INTEGER REFERENCES Singers(id),
	CONSTRAINT pk PRIMARY KEY (genres_id, singers_id)
	);
	
CREATE table IF NOT EXISTS Alboms (
	id SERIAL PRIMARY KEY, 
	name VARCHAR (60) UNIQUE NOT null,
	year numeric check (year <= 2024) not NULL);

CREATE TABLE IF NOT EXISTS SingersAlboms (
	alboms_id INTEGER REFERENCES Alboms(id),
	singers_id INTEGER REFERENCES Singers(id),
	CONSTRAINT bk PRIMARY KEY (alboms_id, singers_id)
	);


CREATE TABLE IF NOT exists Tracks (
	id SERIAL PRIMARY key, 
	name VARCHAR (60) UNIQUE NOT null,
	duration INTEGER check (duration > 0) not null,
	alboms_id INTEGER REFERENCES Alboms(id));

create table if not exists Collections (
	id SERIAL PRIMARY key,
	name VARCHAR (60) UNIQUE NOT null,
	year numeric check (year <= 2024) not NULL);

create table if not exists CollectionsTracks (
	collections_id INTEGER REFERENCES Collections(id),
	tracks_id INTEGER REFERENCES  Tracks(id),
	CONSTRAINT dk PRIMARY KEY (collections_id, tracks_id)
	);
