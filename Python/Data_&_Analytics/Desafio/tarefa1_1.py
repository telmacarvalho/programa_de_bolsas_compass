
# Extração

from ator import Ator
from extract_transform import ExtractTransform

conteudo = ExtractTransform.extract('actors.csv')

actors = []
for item in conteudo:
    ator = Ator(item[0], item[1], item[2], item[3], item[4], item[5])
    # print(ator)
    actors.append(ator)

# 1- O ator/atriz com maior número de sorted_actors e o respectivo número de
# filmes.

# Ordena a lista de atores pela ordem descrescente da coluna "Number of Movies"
sorted_actors = sorted(actors, key=lambda a: a.number_of_movies, reverse=True)

# Armazena em variáveis o nome e a quantidade de filmes do primeiro item da
# lista anterior
nome = sorted_actors[0].name
quantidade = sorted_actors[0].number_of_movies

# Armazena as informações acima em uma variável
dado = nome + ' é o(a) ator/atriz com maior número de filmes' +\
    ' com um total de ' + quantidade + ' filmes.'

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_1.txt', 'w') as arquivo:
    arquivo.write(dado)
