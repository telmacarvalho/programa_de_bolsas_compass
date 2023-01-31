# Extrai e armazena os dados em forma de matriz (sem coletar o cabeçalho),
# utilizando '\n' e ',' como separador

with open('actors.csv', 'r') as arquivo:
    conteudo = arquivo.read()
    conteudo = conteudo.split('\n')
    atores = []
    contador = 0
    for linha in conteudo:
        contador += 1
        if contador != 1 and contador != 6:
            atores.append(linha.split(','))
    # print(atores)
# -----------------------------------------------------------------------------
# 1- O ator/atriz com maior número de filmes e o respectivo número de filmes.

# Ordena a matriz pela ordem descrescente da coluna "Number of Movies"
filmes = sorted(atores, key=lambda filmes: filmes[2], reverse=True)

# Armazena em variáveis o nome e quantidade de filmes da primeira linha,
# convertendo o valor do filme de inteiro para string. Em seguida, armazena
# as informações em forma de texto com concatenação
nome = filmes[0][0]
quantidade = str(filmes[0][2])
dado = nome + ' é o(a) ator/atriz com maior número de filmes' +\
    ' com um total de ' + quantidade + ' filmes.'

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_1.txt', 'w') as arquivo:
    arquivo.write(dado)


# -----------------------------------------------------------------------------
# 2- A média do número de filmes por autor.

# Armazena apenas a coluna com a quantidade de filmes e converte os
# valores de string pra inteiro
total_filmes = []
for linha in atores:
    total_filmes.append(int(linha[2]))

# Soma os valores da coluna acima e divide pela quantidade de atores,
# arredondando para 2 casas decimais
media_filmes = round(sum(total_filmes)/len(atores), 2)

# Armazena em uma variável um texto informando o nome e quantidade de filmes
# da primeira linha, convertendo os valores para string e as concatenando
dado = 'A média do número de filmes por autor é ' + str(media_filmes) + '.'

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_2.txt', 'w') as arquivo:
    arquivo.write(dado)

# -----------------------------------------------------------------------------
# 3- O ator/atriz com a maior média por filme.

# Ordena a matriz pela ordem descrescente da coluna "Average per Movie"
media = sorted(atores, key=lambda filmes: filmes[3], reverse=True)

# Armazena em uma variável o nome do ator da primeira linha do resultado
# anterior. Em seguida, armazena as informações em forma de texto com
# concatenação
dado = nome + ' é o (a) ator/atriz com a maior média por filme.'

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_3.txt', 'w') as arquivo:
    arquivo.write(dado)

# -----------------------------------------------------------------------------
# 4- O nome do(s) filme(s) mais frequente(s) e sua respectiva frequência.


# Percorre a matriz verificadno se os valores da coluna "#1 Movie" já existem
# no dicionário criado previamente, caso não exista, acrescenta o nome do filme
# como chave e o valor 1, caso já exista, atualiza o valor da chave já
# existente
frequencia_filme = {}
for linha in atores:
    nome_filme = linha[4]
    if nome_filme not in frequencia_filme:
        frequencia_filme[nome_filme] = 1
    else:
        frequencia_filme[nome_filme] = frequencia_filme[nome_filme] + 1

# Ordena o dicionário pelo valor e armazena em variáveis o nome do filme e
# sua respectiva frenquência, convertendo este último de inteiro para string.
# Em seguida, armazena as informações em forma de texto com concatenação
frequencia = sorted(frequencia_filme.items(),
                    reverse=True, key=lambda filme: filme[1])
filme = frequencia[0][0]
quantidade = str(frequencia[0][1])
dado = filme + ' é o nome do(s) filme(s) mais frequente(s) com uma frequência'\
    + ' total de ' + quantidade + ' repetições.'

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_4.txt', 'w') as arquivo:
    arquivo.write(dado)

# -----------------------------------------------------------------------------
# A lista dos Autores ordenada por pagamento. Do mais bem pago para o menos
# bem pago

# Ordena a matriz pela ordem descrescente da coluna "Gross" e armazena em uma
# variável uma lista contendo apenas o nome dos atores
filmes = sorted(atores, key=lambda filmes: filmes[5], reverse=True)
ator_pagamento = []
for ator in filmes:
    nome = ator[0]
    ator_pagamento.append(nome)

print(ator_pagamento)
