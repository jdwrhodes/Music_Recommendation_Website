SELECT * from year_data;

CREATE TABLE "artist" (
    "artist_id" varchar   NOT NULL,
    "followers" int,
    "genres" varchar,
    "name" varchar,
    "popularity" int,
    CONSTRAINT "pk_artist" PRIMARY KEY (
        "artist_id"
     )
);

CREATE TABLE "artist_data" (
    "genres" varchar,
    "artists" varchar,
    "acousticness" float8,
    "danceability" float8,
    "duration_ms" float8,
    "energy" float8,
    "instrumentalness" float8,
    "liveness" float8,
    "loudness" float8,
    "speechiness" float8,
    "tempo" float8,
    "valence" float8,
    "popularity" float8,
    "key" int,
    "mode" int,
    "count" int
);

CREATE TABLE "genre_data" (
    "mode" int,
    "genre" varchar NOT NULL,
    "acousticness" float8,
    "danceability" float8,
    "duration_ms" float8,
    "energy" float8,
    "instrumentalness" float8,
    "liveness" float8,
    "loudness" float8,
    "speechiness" float8,
    "tempo" float8,
    "valence" float8,
    "popularity" float8,
    "key" int,
    CONSTRAINT "pk_genre_data" PRIMARY KEY (
        "genre"
     )
);

CREATE TABLE "year_data" (
    "mode" int,
    "year" int   NOT NULL,
    "acousticness" float8,
    "danceability" float8,
    "duration_ms" float8,
    "energy" float8,
    "instrumentalness" float8,
    "liveness" float8,
    "loudness" float8,
    "speechiness" float8,
    "tempo" float8,
    "valence" float8,
    "popularity" float8,
    "key" int,
    CONSTRAINT "pk_year_data" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "track_data" (
    "id" varchar   NOT NULL,
    "name" varchar,
    "popularity" int,
    "duration_ms" int,
    "explicit" boolean,
    "artists" varchar,
    "artist_ids" varchar,
    "release_date" varchar,
    "danceability" float8,
	"energy" float8,
    "key" int,
    "loudness" float8,
    "mode" int,
    "speechiness" float8,
    "acousticness" float8,
    "instrumentalness" float8,
    "liveness" float8,
    "valence" float8,
    "tempo" float8,
    "time_signature" int,
    CONSTRAINT "pk_track_data" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "overall_data" (
	"valence" float8,
    "year" int,
    "acousticness" float8,
    "artists" varchar,
    "danceability" float8,
    "duration_ms" int,
    "energy" float8,
    "explicit" boolean,
    "id" varchar   NOT NULL,
    "instrumentalness" float8,
    "key" int,
    "liveness" float8,
    "loudness" float8,
    "mode" int,
    "name" varchar,
    "popularity" int,
    "release_date" varchar,
    "speechiness" float8,
    "tempo" float8,
    CONSTRAINT "pk_overall_data" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "track_data" ADD CONSTRAINT "fk_track_data_artist_ids" FOREIGN KEY("artist_ids")
REFERENCES "artist" ("artist_id");

ALTER TABLE "overall_data" ADD CONSTRAINT "fk_overall_data_year" FOREIGN KEY("year")
REFERENCES "year_data" ("year");

ALTER TABLE "overall_data" ADD CONSTRAINT "fk_overall_data_id" FOREIGN KEY("id")
REFERENCES "track_data" ("id");