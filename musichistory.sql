Select Count(*) as 'Labels',
a.ArtistName
from Album
left Join Artist a on Album.ArtistId = a.id
Group By ArtistName
Having Count(distinct Label) > 1 ;

Select *,
a.ArtistName
from Album
left join Artist a on Album.ArtistId = a.id;

Select *
from Artist
Order by ArtistName;

Select 
SongLength,
title

from Song
where 
	SongLength = (
	select
		Max(SongLength)
		from
			Song
			);
select AlbumLength,
	title
	from Album
	where AlbumLength = (
		select MAX(AlbumLength)
		from Album
	)



	

	