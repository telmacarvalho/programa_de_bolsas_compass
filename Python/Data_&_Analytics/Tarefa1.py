with open('actors.csv', 'r') as arquivo:
    conteudo = arquivo.read()
    conteudo = conteudo.split('\n')
    atores = []
    contador = 0
    for linha in conteudo:
        contador += 1
        if contador != 1 and contador != 6:
            atores.append(linha.split(','))
    print(atores)
