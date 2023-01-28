# Exercício 11 Parte 2

# Escreva um programa que lê o conteúdo do arquivo texto arquivo_texto.txt e
# imprime o seu conteúdo.

# Dica: leia a documentação da função
# <https://docs.python.org/3/library/functions.html#open>

with open('arquivo_texto.txt', 'r') as arquivo:
    texto = arquivo.read()
    print(texto)
