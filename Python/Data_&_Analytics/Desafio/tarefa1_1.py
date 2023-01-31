# 1- O ator/atriz com maior número de filmes e o respectivo número de filmes.

# Extração

import re

with open('actors.csv', 'r') as arquivo:
    conteudo = arquivo.readlines()
    # conteudo = conteudo.split('\n')
    atores = []
    cabecalho = True
    for linha in conteudo:
        if cabecalho:
            # pula primeira linha
            cabecalho = False
        else:
            split_regex = re.findall(r'(\".*?\"|[^\",]+)', linha)
            atores.append(split_regex)
