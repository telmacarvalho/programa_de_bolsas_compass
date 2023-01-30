# Exercício 23 Parte 1

# Crie uma classe  Calculo  que contenha um método que aceita dois parâmetros,
# X e Y, e retorne a soma dos dois. Nessa mesma classe, implemente um método
# de subtração, que aceita dois parâmetros, X e Y, e retorne a subtração dos
# dois (resultados negativos são permitidos).


# Utilize os Calculo abaixo para testar seu exercício:

# x = 4
# y = 5
# imprima:

# Somando: 4+5 = 9
# Subtraindo: 4-5 = -1

class Calculo:

    def soma(self, x, y):
        resultado = x + y
        return f'Somando:{x}+{y} = {resultado}'

    def subtracao(self, x, y):
        resultado = x - y
        return f'Subtraindo:{x}-{y} = {resultado}'


x = 4
y = 5

calculo = Calculo()
print(calculo.soma(x, y))
print(calculo.subtracao(x, y))
