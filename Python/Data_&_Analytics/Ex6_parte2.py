# Exercícios 6 Parte 2

# Dada duas listas como as no exemplo abaixo:

# a = [1, 1, 2, 3, 5, 8, 14, 21, 34, 55, 89]
# b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

# Escreva um programa que retorne o que ambas as listas têm em comum
# (sem repetições).
# O seu programa deve funcionar para listas de qualquer tamanho.

a = [1, 1, 2, 3, 5, 8, 14, 21, 34, 55, 89]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
lista = []

for numero_a in range(len(a)):
    for numero_b in range(len(b)):
        if b[numero_b] == a[numero_a]:
            if b[numero_b] not in lista:
                lista.append(a[numero_a])

print(lista)
