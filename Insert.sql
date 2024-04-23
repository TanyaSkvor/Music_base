insert into Genre(genre_name)
values
('Поп-музыка'),
('Рэп'),
('Рок');

insert into Singer(singer_name)
values
('Анна Асти'),
('Pizza'),
('Хлеб'),
('Sqwoz Bab'),
('Король и Шут'),
('Rammstein');

insert into Singer(singer_id, singer_name)
values
(7, 'Мари Краймбрери');

insert into GenreSinger(genre_id, singer_id)
values
(1,1),
(1,2),
(2,3),
(2,4),
(3,5),
(3,6);

insert into Album(album_name, year_release)
values
('Царица', 2023),
('Кухня', 2012),
('Пушка',2017),
('FLOWJOB', 2021),
('Камнем по голове', 1996),
('Mutter', 2001);

insert into Album(album_name, year_release)
values
('My май', 2020);

insert into SingerAlbum(singer_id, album_id)
values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6);

insert into Song(song_name, duration, album_id_song)
values
('Ночью на кухне', 232, 1),
('Мон ами', 151, 2),
('Марина', 129, 3),
('FAVELA', 132, 4),
('Дурак и молния', 114, 5),
('Sonne', 272, 6);

insert into Song(song_name, duration, album_id_song)
values
('My май', 171, 7);

insert into Collection(collection_name, collection_year_release)
values
('Любимые песни', 2018),
('Для свадьбы', 2001),
('Лучшие рок-хиты', 2005),
('Золотая коллекция', 2020);

insert into SongCollection(song_id_c, collection_id)
values
(2,1),
(6,2),
(5,2),
(6,3),
(3,4);

insert into Song(song_name, duration, album_id_song)
values
('Дурак', 180, 1);

insert into genresinger(genre_id, singer_id)
values
(1,3);