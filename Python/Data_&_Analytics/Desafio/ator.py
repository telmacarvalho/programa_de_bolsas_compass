class Ator:

    def __init__(self, name, total_gross, number_of_movies, average_per_movie,
                 movie, gross):
        self.name = name.strip('"')
        self.total_gross = total_gross
        self.number_of_movies = number_of_movies
        self.average_per_movie = average_per_movie
        self.movie = movie
        self.gross = gross

    def __str__(self):
        return f"{self.name}, {self.total_gross}, {self.number_of_movies}" +\
            f" {self.average_per_movie}, {self.movie} {self.gross}"
