
# Extração e transformação

from actor import Actor
from extract_transform import ExtractTransform

conteudo = ExtractTransform.extract('actors.csv')

actors = []
for item in conteudo:
    data = Actor(item[0], item[1], item[2], item[3], item[4], item[5])
    actors.append(data)

# 2- A média do número de filmes por autor.

# Armazena a soma dos valores de todos os atributos "Number of Movies"
movies = 0
for item in actors:
    movies += item.number_of_movies

# Divide o resultado anterior pela quantidade de atores
media_movies = movies/len(actors)
print(media_movies)

# Armazena as informações acima em uma variável
data = f'A média do número de filmes por autor é {media_movies}.'

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_2.txt', 'w') as arquivo:
    arquivo.write(data)
