# Exercício 2 Parte 1

# Escreva um código Python que verifica se os números 0, 7851
# e 9 elevado na potência 3  são pares ou ímpares.
# Para cada número, imprima o Par: ou Ímpar: e o número correspondente.

# Exemplo de formato de saída:

# Par: 2

# Ímpar: 3

numeros = [0, 7851, 9 ** 3]

for i in numeros:
    if (i % 2) == 0:
        print(f'Par: {i}')
    else:
        print(f'Ímpar: {i}')
