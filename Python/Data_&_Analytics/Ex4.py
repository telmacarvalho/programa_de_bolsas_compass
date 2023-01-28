# Exercícios 4 Parte 1

# Escreva um código Python que imprime todos os números primos
# de 0 até 100.

for numero in range(2, 101):
    for i in range(2, numero):
        if (numero % i) == 0:
            break
    else:
        print(numero)
