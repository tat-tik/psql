select alboms_name from alboms a 
left join singersalboms s on a.id = s.alboms_id
left join singers s2 on s.singers_id = s2.id 
left join singersgenres s3 on s3.singers_id = s3.genres_id
left join genres g on s3.genres_id = g.id
group by alboms_name 
having count(genres_name) >1;

select distinct tracks_name from tracks t 
left join collectionstracks c on c.tracks_id = t.id 
left join collections c2 on c.collections_id = c2.id
where c.tracks_id is null;

select singers_name from singers s 
left join singersalboms s2 on s2.singers_id = s.id 
left join alboms a on s2.alboms_id = a.id
left join tracks t on a.id = t.id 
where duration = (select max(duration) from tracks);


select distinct alboms_name from alboms as a
left join tracks as t on t.alboms_id = a.id
where t.alboms_id in 
	(select alboms_id from tracks 
	group by alboms_id 
	having 
		count(id) = 
		(select count(id) from tracks
		group by alboms_id
		order by count(id) 
		limit 1 ))
order by alboms_name;
