# Exercício 16 Parte 2

# Escreva uma função que recebe uma string de números separados por vírgula e
# retorne a soma de todos eles. Depois imprima a soma dos valores.


# A string deve ter valor  "1,3,4,6,10,76"

def soma(valores):
    dados = valores.split(',')
    resultado = 0
    for elemento in dados:
        resultado += int(elemento)
    return resultado


valores = "1,3,4,6,10,76"


print(soma(valores))
