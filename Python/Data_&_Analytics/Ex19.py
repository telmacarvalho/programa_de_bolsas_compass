# Exercício 19 Parte 2

# Calcule o valor mínimo, valor máximo, valor médio e a mediana da lista
# gerada na célula abaixo:

# Obs.: Lembrem-se, para calcular a mediana a lista deve estar ordenada!

# import random
# # amostra aleatoriamente 50 números do intervalo 0...500
# random_list = random.sample(range(500),50)

# Use as variáveis abaixo para representar cada operação matemática

# mediana
# media
# valor_minimo
# valor_maximo

import random
# amostra aleatoriamente 50 números do intervalo 0...500
random_list = random.sample(range(500), 50)

random_list.sort()

if (len(random_list) % 2) != 0:
    meio = int(len(random_list)/2)
    mediana = random_list[meio]
else:
    meio = int(len(random_list)/2)
    mediana = (random_list[meio - 1] + random_list[meio])/2

media = sum(random_list)/(len(random_list))

valor_minimo = random_list[0]

valor_maximo = random_list[-1]

print(
    f'Media: {media}, Mediada: {mediana}, Mínimo: {valor_minimo},' +
    f' Máximo {valor_maximo}')
