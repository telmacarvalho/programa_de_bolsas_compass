# Exercício 13 Parte 2

# Implemente a função my_map(list, f) que recebe uma lista como primeiro
# argumento e uma função como segundo argumento. Esta função aplica a função
# recebida para cada valor da lista recebida e retorna o resultado em uma nova
# lista.

# Teste sua função com a lista de entrada [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] e
# com uma função que potência de 2 para cada valor.

lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


def my_map(list, f):
    nova_lista = []
    for valor in lista:
        resultado = f(valor)
        nova_lista.append(resultado)
    return nova_lista


def potencia(valor):
    calculo = valor ** 2
    return calculo


resultado_final = my_map(lista, potencia)
print(resultado_final)
