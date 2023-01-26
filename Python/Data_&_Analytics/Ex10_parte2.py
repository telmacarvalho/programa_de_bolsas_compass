# Exercício 10 Parte 2

# Escreva uma função que recebe uma lista e retorna uma nova lista sem
# elementos duplicados. Utilize a lista a seguir para testar sua função.

# ['abc', 'abc', 'abc', '123', 'abc', '123', '123']

lista = ['abc', 'abc', 'abc', '123', 'abc', '123', '123']


def nao_duplicados(lista):
    nova_lista = []
    for elemento in lista:
        if elemento not in nova_lista:
            nova_lista.append(elemento)
    print(nova_lista)


nao_duplicados(lista)
