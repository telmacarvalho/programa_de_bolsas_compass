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

# Ordena a matriz pela ordem descrescente da coluna 'Number of Movies'
filmes = sorted(atores, key=lambda filmes: filmes[2], reverse=True)

# Armazena em uma variável um texto informando o nome e quantidade de filmes
# da primeira linha, convertendo os valores para string e as concatenando
dado = filmes[0][0] + ' é o(a) ator/atriz com maior número de filmes' +\
    ' com um total de ' + str(filmes[0][2]) + ' filmes.'

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

# Ordena a matriz pela ordem descrescente da coluna 'Average per Movie'
media = sorted(atores, key=lambda filmes: filmes[3], reverse=True)

# Armazena em uma variável um texto informando o nome do ator da
# primeira linha do resultado anterior
dado = media[0][0] + ' é o (a) ator/atriz com a maior média por filme.'

# Armazena o resultado acima em um arquivo txt
with open('tarefa1_3.txt', 'w') as arquivo:
    arquivo.write(dado)

# -----------------------------------------------------------------------------
# 4- O nome do(s) filme(s) mais frequente(s) e sua respectiva frequência.

frequencia_filme = []
for linha in atores:
    if linha[4] not in frequencia_filme:
        frequencia_filme.append([linha[4], 1])
    else:
        print('TESTE')
        for i in frequencia_filme:
            if i[0] == i[4]:
                contador = i[1]+1
                frequencia_filme.append((i[0], contador))
                print(i[0])

print(frequencia_filme)
