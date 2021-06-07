CREATE TABLE track_artist_combined AS
	(SELECT 
		 t.name AS track_name, t.release_date, t.danceability, t.energy, t.acousticness, t.instrumentalness, t.liveness, t.valence, t.tempo,
		 a.name AS artist_name, a.genres, a.popularity
	FROM track_data t, artist a
	WHERE t.artist_ids = a.artist_id);