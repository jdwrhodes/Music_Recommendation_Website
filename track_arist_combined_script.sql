CREATE TABLE track_artist_combined AS
	(SELECT 
		 t.name AS track_name, t.release_date, t.danceability, t.energy, 
		 a.name AS artist_name, a.genres
	FROM track_data t, artist a
	WHERE t.artist_ids = a.artist_id);