# Exercício 12 Parte 2

# Leia o arquivo person.json, faça o parsing e imprima seu conteúdo.

# Dica: leia a documentação do pacote
# <https://docs.python.org/3/library/json.html>

import json

with open('person.json') as arquivo:
    conteudo = json.load(arquivo)
    print(conteudo)
