# Exercício 14 Parte 2

# Escreva uma função que recebe um número variável de parâmetros não nomeados
# e um número variado de parâmetros nomeados e imprime o valor de cada
# parâmetro recebido.


# Teste sua função com os seguintes parâmetros:


# (1, 3, 4, 'hello', parametro_nomeado='alguma coisa', x=20)


def exibe_valores(*args, **kwargs):
    for valores_nomeados in args:
        print(valores_nomeados)
    for valores_nao_nomeados in kwargs.items():
        print(valores_nao_nomeados[1])


exibe_valores(1, 3, 4, 'hello', parametro_nomeado='alguma coisa', x=20)
