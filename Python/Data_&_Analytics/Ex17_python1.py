# Exercício 17 Parte 2

# Escreva uma função que recebe como parâmetro uma lista e retorna 3 listas:
# a lista recebida dividida em 3 partes iguais. Teste sua implementação com
# a lista abaixo

# lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

def separacao(lista):
    lista1 = []
    lista2 = []
    lista3 = []
    calculo = int(len(lista)/3)

    for valores in lista:
        if valores <= calculo:
            lista1.append(valores)
        elif valores > calculo and valores <= (calculo*2):
            lista2.append(valores)
        else:
            lista3.append(valores)

    print(lista1, lista2, lista3)


lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

separacao(lista)
