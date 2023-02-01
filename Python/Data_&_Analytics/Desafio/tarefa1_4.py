
# Extração e transformação

from actor import Actor
from extract_transform import ExtractTransform

conteudo = ExtractTransform.extract('actors.csv')

actors = []
for item in conteudo:
    data = Actor(item[0], item[1], item[2], item[3], item[4], item[5])
    actors.append(data)

# 4- O nome do(s) filme(s) mais frequente(s) e sua respectiva frequência.

# Percorre a matriz verificadno se os valores da coluna "#1 Movie" já existem
# no dicionário criado previamente, caso não exista, acrescenta o nome do filme
# como chave e o valor 1, caso já exista, atualiza o valor da chave já
# existente
frequencia_filme = {}
for linha in actors:
    nome_filme = linha.movie
    if nome_filme not in frequencia_filme:
        frequencia_filme[nome_filme] = 1
    else:
        frequencia_filme[nome_filme] = frequencia_filme[nome_filme] + 1

# Ordena o dicionário pelo valor e armazena em variáveis o nome do filme e
# sua respectiva frenquência, convertendo este último de inteiro para string.
# Em seguida, armazena as informações em forma de texto com concatenação
frequencia = sorted(frequencia_filme.items(),
                    reverse=True, key=lambda filme: filme[1])
filme = frequencia[0][0]
quantidade = str(frequencia[0][1])
dado = filme + ' é o nome do(s) filme(s) mais frequente(s) com uma frequência'\
    + ' total de ' + quantidade + ' repetições.'
