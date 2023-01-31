
# Extração e transformação

from actor import Actor
from extract_transform import ExtractTransform

conteudo = ExtractTransform.extract('actors.csv')

actors = []
for item in conteudo:
    data = Actor(item[0], item[1], item[2], item[3], item[4], item[5])
    actors.append(data)

# 3- O ator/atriz com a maior média por filme.

# Ordena a lista de atores pela ordem descrescente do atributo "Average per
# Movies"
sorted_actors = sorted(
    actors, key=lambda a: a.average_per_movie, reverse=True)

# Armazena em variáveis o nome do ator do primeiro item da lista anterior
name = sorted_actors[0].name

# Armazena as informações acima em uma variável
data = f'{name} é o(a) ator/atriz com a maior média por filme.'

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_3.txt', 'w') as arquivo:
    arquivo.write(data)
