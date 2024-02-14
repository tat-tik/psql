select duration ,tracks_name from tracks
where duration = (SELECT max (duration) from tracks);

select tracks_name from tracks
where duration >= 210;

select collections_name from collections
where collections_year >= 2018 and collections_year <= 2020;

select singers_name from singers
where singers_name not like '% %';

select tracks_name from tracks
where tracks_name like '%my%' or tracks_name like '%мой%';


select genres_name, count(singers_name) from genres g
left join singersgenres s on g.id = s.genres_id 
left join singers s2 on s.singers_id = s2.id 
group by genres_name 
order by count(singers_name) desc;


select count(tracks_name) from tracks t
left join alboms a on t.alboms_id = a.id
where alboms_year > 2018 and alboms_year < 2021;

select a.alboms_name, avg(duration) from tracks t 
left join alboms a on t.alboms_id = a.id
group by alboms_name 
order by avg(duration);

select distinct singers_name from singers s 
left join singersalboms s2 on s.id = s2.singers_id
left join alboms a on s2.alboms_id = a.id
where singers_name not in (select singers_name from singersalboms where alboms_year >= 2020 and alboms_year <2021);


select distinct collections_name from collections c 
left join collectionstracks t on t.collections_id = c.id 
left join tracks t2 on t.tracks_id = t2.id 
left join alboms a on t2.alboms_id = a.id 
left join singersalboms a2 on a.id = a2.alboms_id 
left join singers s on a2.singers_id = s.id 
where singers_name like 'Guf';
