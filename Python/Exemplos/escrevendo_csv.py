"""
Escrevendo em aqruivos CSV

reader() (leitor), writer() (escritor)

writerow() -> Escreve uma linha

Flag w cria um novo arquivo ou reescreve com os dados.
Flag a adiciona os dados em um arquivo já existente e precisa
retirar o código que cria o cabeçalho.

# writer() -> Gera um objeto para que possamos escrever em um
# arquivo CSV. Utilizamos o método writerow() para escrever
# cada linha. Este método recebe uma lista.


from csv import writer

with open('filmes.csv', 'a') as arquivo:
    escritor_csv = writer(arquivo)
    filme = None
    escritor_csv.writerow(['Título', 'Gênero', 'Duração'])
    while filme != 'sair':
        filme = input('Informe o nome do filme: ')
        if filme != 'sair':
            genero = input('Informe o gênero: ')
            duracao = input('Informe a duração (em minutos): ')
            escritor_csv.writerow([filme, genero, duracao])


"""
# DictWriter

# OBS: As chaves do dicionário devem ser as mesmas utlizadas
# no cabeçalho.

from csv import DictWriter

with open('filmes2.csv', 'w') as arquivo:
    cabecalhos = ['Título', 'Gênero', 'Duração']
    escritor_csv = DictWriter(arquivo, fieldnames=cabecalhos)
    escritor_csv.writeheader()
    filme = None
    while filme != 'sair':
        filme = input('Informe o nome do filme: ')
        if filme != 'sair':
            genero = input('Informe o gênero: ')
            duracao = input('Informe a duração (em minutos): ')
            escritor_csv.writerow(
                {"Título": filme, "Gênero": genero, "Duração": duracao})
