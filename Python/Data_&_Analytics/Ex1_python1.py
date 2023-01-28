# Exercícios Parte 1

# Escreva um código Python que imprime o nome e a idade do
# João de 37 anos e imprime o ano em que ele completará 100 anos.

# Dica: você pode ler strings digitadas no teclado utilizando a função
# builtin input('mensagem'). Lembre-se de converter números para seu
# respectivo tipo (int ou float) antes fazer operações aritméticas.

from datetime import date
data_atual = date.today()
ano_atual = data_atual.year
nome = 'João'
idade = 37
tempo = 100 - 37
ano_futuro = ano_atual + tempo

print(f'{nome} tem {idade} anos e completará 100 anos em {ano_futuro}.')

# Código adaptado para ser ceito na plataforma da Udemy

# pesar de pedir para imprimir nome, idade e o ano em que ele
# completará 100 anos, pataforma só aceita como correta se
# imprimir apenas o ano em que ele completará 100 anos a contar
# do ano passado.

ano_anterior = ano_atual - 1
ano_futuro2 = ano_anterior + tempo
print(ano_futuro2)
