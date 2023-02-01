
# Extração e transformação

from actor import Actor
from extract_transform import ExtractTransform

conteudo = ExtractTransform.extract('actors.csv')

actors = []
for item in conteudo:
    data = Actor(item[0], item[1], item[2], item[3], item[4], item[5])
    actors.append(data)

# 5- A lista dos Autores ordenada por pagamento. Do mais bem pago para o menos
# bem pago

# Ordena a lista de atores pela ordem descrescente do atributo "Gross"
sorted_actors = sorted(actors, key=lambda a: a.gross, reverse=True)

# Armazena em uma variável uma lista contendo apenas o nome dos atores
actor_payment = []
for item in sorted_actors:
    name = item.name
    actor_payment.append(name)

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_5.txt', 'w') as arquivo:
    arquivo.write('Atores: mais bem pago para o menos bem pago\n')
    for item in actor_payment:
        arquivo.write(item + '\n')
