
# Extração e transformação

from actor import Actor
from extract_transform import ExtractTransform

conteudo = ExtractTransform.extract('actors.csv')

actors = []
for item in conteudo:
    data = Actor(item[0], item[1], item[2], item[3], item[4], item[5])
    actors.append(data)

# 1- O ator/atriz com maior número de sorted_actors e o respectivo número de
# filmes.

# Ordena a lista de atores pela ordem descrescente do atributo "Number of
# Movies"
sorted_actors = sorted(actors, key=lambda a: a.number_of_movies, reverse=True)

# Armazena em variáveis o nome e a quantidade de filmes do primeiro item da
# lista anterior
name = sorted_actors[0].name
quantity = sorted_actors[0].number_of_movies

# Armazena as informações acima em uma variável
data = f'{name} é o(a) ator/atriz com maior número de filmes'\
    f' com um total de {quantity} filmes.'

# Carregamento

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_1.txt', 'w') as arquivo:
    arquivo.write(data)
