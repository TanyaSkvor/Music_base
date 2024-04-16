create table if not exists Genre (
	genre_id SERIAL primary key,
	genre_name VARCHAR(100) not null	
);

create table if not exists Singer (
	singer_id SERIAL primary key,
	singer_name VARCHAR(128) not null 
);

create table if not exists GenreSinger (
	genre_id INTEGER references Genre(genre_id) not null,
	singer_id INTEGER references Singer(singer_id) not null,
	constraint gs primary key (genre_id, singer_id)
);

create table if not exists Album (
	album_id SERIAL primary key,
	album_name VARCHAR(60) not null,
	year_release INTEGER not null
);

create table if not exists SingerAlbum (
	singer_id INTEGER references Singer(singer_id) not null,
	album_id INTEGER references Album(album_id) not null,
	constraint sa primary key (singer_id, album_id)
);

create table if not exists Song (
	song_id SERIAL primary key,
	song_name VARCHAR(100) not null,
	duration TIME not null,
	album_id_song INTEGER references Album(album_id) not null
);

create table if not exists Collection (
	collection_id SERIAL primary key,
	collection_name VARCHAR(100) not null,
	collection_year_release INTEGER not null
);

create table if not exists SongCollection (
	song_id_c INTEGER references Song(song_id) not null,
	collection_id INTEGER references Collection(collection_id) not null,
	constraint sc primary key (song_id_c, collection_id)
);

