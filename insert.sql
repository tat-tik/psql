insert into genres (id,name)
values (1, 'Pop');

insert into genres (id,name)
values (2, 'Rock');

insert into genres (id,name)
values (3, 'Hip-hop');

insert into singers (id,name)
values (6, 'Basta')


insert into collections (id,name, year )
values (1, 'Good Girl Gone Bad', 2009);

insert into collections (id,name, year )
values (2, 'Anti', 2018);

insert into collections (id,name, year )
values (3, 'Oops!… I Did It Again', 2000);

insert into collections (id,name, year )
values (4, 'The Singles Collection', 2019);

insert into collections (id,name, year )
values (5, 'One More Light', 2017);

insert into collections (id,name, year )
values (6, 'The Hunting Party', 2019);

insert into collections (id,name, year )
values (7, 'Mother’s Milk', 1997);

insert into collections (id,name, year )
values (8, 'Californication', 2020);

insert into collections (id,name, year )
values (9, 'Дом, который построил Алик', 2020);

insert into collections (id,name, year )
values (10, 'О’пять', 2022);

insert into collections (id,name, year )
values (11, 'Gorilla Zippo', 2023);

insert into collections (id,name, year )
values (12, 'Папа на рэйве', 2019);


insert into singers (id,name)
values (1, 'Rihanna');

insert into singers (id,name)
values (2, 'Britney Spears');

insert into singers (id,name)
values (3, 'Linkin Park');

insert into singers (id,name)
values (4, 'Red Hot Chili Peppers');

insert into singers (id,name)
values (5, 'Guf');

insert into alboms (id,name, year )
values (1, 'Good Girl Gone Bad', 2009);


insert into alboms (id,name, year )
values (2, 'Anti', 2018);

insert into alboms (id,name, year )
values (3, 'Oops!… I Did It Again', 2000);

insert into alboms (id,name, year )
values (4, 'The Singles Collection', 2019);

insert into alboms (id,name, year )
values (5, 'One More Light', 2017);

insert into alboms (id,name, year )
values (6, 'The Hunting Party', 2019);

insert into alboms (id,name, year )
values (7, 'Mother’s Milk', 1997);

insert into alboms (id,name, year )
values (8, 'Californication', 2020);

insert into alboms (id,name, year )
values (9, 'Дом, который построил Алик', 2020);

insert into alboms (id,name, year )
values (10, 'О’пять', 2022);

insert into alboms (id,name, year )
values (11, 'Gorilla Zippo', 2023);

insert into alboms (id,name, year )
values (12, 'Папа на рэйве', 2019);

update collections 
set name = 'my life'
where id =1

update collections 
set name = 'call me'
where id =2

update collections 
set name = 'life' 
where id = 3

update collections 
set name = 'peace'
where id = 4

delete from collections
where id = 5 

delete from collections
where id = 6

delete from collections
where id =7

delete from collections
where id =8

delete from collections
where id =9

delete from collections
where id =10

delete from collections
where id =11

delete from collections
where id =12

delete from singers
where id = 6

insert into singers (id,name)
values (6, 'Basta')

insert into tracks (id,name, duration, alboms_id)
values (1, 'Kiss It Better', 247, 1)

insert into tracks (id,name, duration, alboms_id)
values (2, 'Love The Way You Lie', 286, 2)

insert into tracks (id,name, duration, alboms_id)
values (3, 'Umbrella', 240, 2)

insert into tracks (id,name, duration, alboms_id)
values (4, 'Chillin with My', 203, 4 )


insert into collections (id,name, year )
values (5, 'S&M Remix', 2022);

insert into tracks (id,name, duration, alboms_id)
values (5, 'By my Way', 245, 8)

insert into tracks (id,name, duration, alboms_id)
values (6, 'Until It is Gone', 200, 6)

insert into tracks (id,name, duration, alboms_id)
values (7, 'Интро', 81, 9)

insert into tracks (id,name, duration, alboms_id)
values (8, 'Улет', 186, 9)

insert into tracks (id,name, duration, alboms_id)
values (9, 'Сансара' , 235, 12)

insert into tracks (id,name, duration, alboms_id)
values (10, 'Папа на рейве', 473, 12)

insert into singersgenres  (genres_id, singers_id)
values (1, 1)

insert into singersgenres  (genres_id, singers_id)
values (1, 2)

insert into singersgenres  (genres_id, singers_id)
values (2, 3)

insert into singersgenres  (genres_id, singers_id)
values (2, 4)

insert into singersgenres  (genres_id, singers_id)
values (3, 5)

insert into singersgenres  (genres_id, singers_id)
values (3, 6)

insert into singersalboms  (alboms_id , singers_id)
values (1, 1)

insert into singersalboms  (alboms_id , singers_id)
values (2, 1)

insert into singersalboms  (alboms_id , singers_id)
values (3, 2)

insert into singersalboms  (alboms_id , singers_id)
values (4, 2)

insert into singersalboms  (alboms_id , singers_id)
values (5, 3)

insert into singersalboms  (alboms_id , singers_id)
values (6, 3)

insert into singersalboms  (alboms_id , singers_id)
values (7, 4)

insert into singersalboms  (alboms_id , singers_id)
values (8, 4)

insert into singersalboms  (alboms_id , singers_id)
values (9, 5)

insert into singersalboms  (alboms_id , singers_id)
values (10, 5)

insert into singersalboms  (alboms_id , singers_id)
values (11, 6)

insert into singersalboms  (alboms_id , singers_id)
values (12, 6)

insert into collectionstracks  (collections_id  , tracks_id)
values (1, 1)

insert into collectionstracks  (collections_id  , tracks_id)
values (2, 2)

insert into collectionstracks  (collections_id  , tracks_id)
values (5, 1)

insert into collectionstracks  (collections_id  , tracks_id)
values (5, 2)

insert into collectionstracks  (collections_id  , tracks_id)
values (3, 3)

insert into collectionstracks  (collections_id  , tracks_id)
values (5, 4)

insert into collectionstracks  (collections_id  , tracks_id)
values (4, 5)

insert into collectionstracks  (collections_id  , tracks_id)
values (4, 6)

insert into collectionstracks  (collections_id  , tracks_id)
values (3, 7)

insert into collectionstracks  (collections_id  , tracks_id)
values (3, 8)

insert into collectionstracks  (collections_id  , tracks_id)
values (4, 9)

insert into collectionstracks  (collections_id  , tracks_id)
values (4, 10)






