
# Extração e transformação

from actor import Actor
from extract_transform import ExtractTransform

conteudo = ExtractTransform.extract('actors.csv')

actors = []
for item in conteudo:
    data = Actor(item[0], item[1], item[2], item[3], item[4], item[5])
    actors.append(data)

# 4- O nome do(s) filme(s) mais frequente(s) e sua respectiva frequência.

# Percorre a lista verificadno se os valores do atributo "Movie" já existem
# no dicionário criado previamente. Caso não exista, acrescenta o nome do filme
# como chave e o valor 1 e, caso já exista, atualiza o valor da chave já
# existente
frequency_movies = {}
for linha in actors:
    if linha.movie not in frequency_movies:
        frequency_movies[linha.movie] = 1
    else:
        frequency_movies[linha.movie] = frequency_movies[linha.movie] + 1

# Ordena o dicionário pela ordem descrescente do valor da chave
frequency = sorted(frequency_movies.items(),
                   reverse=True, key=lambda a: a[1])

# Armazena em variáveis o nome do filme e frenquência do primeiro item da
# lista anterior
movie = frequency[0][0]
quantity = frequency[0][1]

# Armazena as informações acima em uma variável
data = f'{movie} é o nome do(s) filme(s) mais frequente(s) e sua respectiva'\
    f' frequência é {quantity}.'

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_4.txt', 'w') as arquivo:
    arquivo.write(data)
