-- Cria a tabela do fato de movies_superheros
 CREATE TABLE fact_superhero_movies (
  id INTEGER PRIMARY KEY,
  release_date INTEGER,
  popularity DECIMAL,
  budget INTEGER,
  revenue INTEGER,
  vote_average DECIMAL,
  vote_count INTEGER,
  FOREIGN KEY (id) REFERENCES dim_movies(id_movie),
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
  original_languages VARCHAR,
  overview VARCHAR,
  runtime INTEGER
);

-- Cria a dimensão movie_genres
 CREATE TABLE dim_movies_genres (
  id_movie INTEGER,
  id_genre INTEGER,
  PRIMARY KEY (id_genre, id_movie),
  FOREIGN KEY (id_movie) REFERENCES fact_superhero_movies(id),
  FOREIGN KEY (id_genre) REFERENCES dim_genres(id_genre)
);

-- Cria a dimensão genres
 CREATE TABLE dim_genres (
  id_genre INTEGER PRIMARY KEY,
  name VARCHAR  
);

-- Cria a dimensão movies_production_companies
 CREATE TABLE dim_movies_production_companies (
  id_movie INTEGER,
  id_production_company INTEGER,
  PRIMARY KEY (id_movie, id_production_company),
  FOREIGN KEY (id_movie) REFERENCES fact_superhero_movies(id),
  FOREIGN KEY (id_production_company) REFERENCES dim_production_companies(id_production_company)
);

-- Cria a dimensão production_companies
 CREATE TABLE dim_production_companies (
  id_production_company INTEGER PRIMARY KEY,
  name VARCHAR,
  origin_country VARCHAR
);

-- Cria a dimensão release_dates
 CREATE TABLE dim_release_dates (
  release_date INTEGER PRIMARY KEY,
  year INTEGER,
  month INTEGER,
  day INTEGER  
);

