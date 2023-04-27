-- Cria a tabela do fato de movies_superheros
 CREATE TABLE fato_superhero_movies (
  id_movie INTEGER PRIMARY KEY,
  id_genre INTEGER,
  id_production_companie INTEGER,
  release_date INTEGER,
  popularity DECIMAL,
  budget INTEGER,
  revenue INTEGER,
  vote_average DECIMAL,
  vote_count INTEGER,
  FOREIGN KEY (id_movie) REFERENCES dim_movies(id_movie),
  FOREIGN KEY (id_genre) REFERENCES dim_genres(id_genre),
  FOREIGN KEY (id_production_companie) REFERENCES dim_production_companies(id_production_companie),
  FOREIGN KEY (release_date) REFERENCES dim_release_dates(release_date)
);

-- Exibe os tipos de dados das colunas da tabela criada anteriormente
PRAGMA TABLE_INFO(fato_superhero_movies);

-- Exibe a tabela fato_superhero_movies
SELECT *
FROM fato_superhero_movies; 


-- Cria a dimensão movies
 CREATE TABLE dim_movies (
  id_movie INTEGER PRIMARY KEY,
  title VARCHAR,
  tagline VARCHAR,
  original_language VARCHAR,
  spoken_language VARCHAR,
  overview VARCHAR,
  runtime INTEGER
);


-- Cria a dimensão genres
 CREATE TABLE dim_genres (
  id_genre INTEGER PRIMARY KEY,
  genre_name VARCHAR  
);


-- Cria a dimensão production_companies
 CREATE TABLE dim_production_companies (
  id_production_companie INTEGER PRIMARY KEY,
  production_companie_name VARCHAR,
  origin_country VARCHAR
);

-- Cria a dimensão release_dates
 CREATE TABLE dim_release_dates (
  release_date INTEGER PRIMARY KEY,
  release_date_year INTEGER,
  release_date_month INTEGER,
  release_date_day INTEGER  
);

