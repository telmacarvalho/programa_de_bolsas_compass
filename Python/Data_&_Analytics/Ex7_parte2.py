# Exercícios 7 Parte 2

# Dada a seguinte lista:

# a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

# Faça um programa que gere uma nova lista contendo apenas números ímpares.

a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
lista = []

for i in range(len(a)):
    if ((a[i]) % 2) != 0:
        lista.append(a[i])
print(lista)
