select song_name, duration from song 
where duration in (select max(duration) from song);

select song_name from song
where duration >= 210;

select collection_name from collection
where collection_year_release between 2018 and 2020;

select singer_name from singer
where singer_name not like '% %';

select song_name from song
where song_name like '%My%' or song_name like '%Мой%';

select g.genre_name, count(gs.genre_id) from genresinger gs
left join genre g on gs.genre_id = g.genre_id
group by genre_name;

select album_name, count(album_id_song) from song s
left join album a on a.album_id = s.album_id_song
where a.year_release between 2019 and 2020
group by album_name;

select album_name, AVG(s.duration) from album a
join song s on a.album_id = s.album_id_song
group by album_name 
order by AVG(s.duration) desc;

select singer_name from singer s 
left join singeralbum sa on sa.singer_id = s.singer_id 
left join album a on a.album_id = sa.album_id 
where a.year_release != 2020

select collection_name from collection c
join songcollection s on s.collection_id = c.collection_id 
join song so on so.song_id = s.song_id_c 
join album a on a.album_id = so.album_id_song 
join singeralbum sa on sa.album_id = a.album_id
join singer si on sa.singer_id = si.singer_id 
where si.singer_name = 'Rammstein';

select album_name from album a 
join singeralbum sa on sa.album_id = a.album_id 
join singer s on s.singer_id = sa.singer_id 
join genresinger g on s.singer_id = g.singer_id 
group by album_name 
having  count(g.genre_id) > 1;

select singer_name from singer s
join singeralbum sa on s.singer_id = sa.singer_id
join song so on so.album_id_song = sa.album_id 
where duration in (select min(duration) from song);
