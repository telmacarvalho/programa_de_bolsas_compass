# Exercício 24 Parte 1

# Crie uma classe Ordenadora que contenha um atributo listaBaguncada e que
# contenha os métodos ordenacaoCrescente e ordenacaoDecrescente.

# Instancie um objeto chamado crescente dessa classe Ordenadora que tenha como
# listaBaguncada a lista [3,4,2,1,5] e instancie um outro objeto, decrescente
# dessa mesma classe com uma outra listaBaguncada sendo [9,7,6,8].

# Para o primeiro objeto citado, use o método ordenacaoCrescente e para o
# segundo objeto, use o método

# ordenacaoDecrescente.


# Imprima o resultado da ordenação crescente e da ordenação decresce

# [1, 2, 3, 4, 5]
# [9, 8, 7, 6]

class Ordenadora:

    def __init__(self, listaBaguncada):
        self.listaBaguncada = listaBaguncada

    def ordenacaoCrescente(self):
        resultado = sorted(self.listaBaguncada)
        return resultado

    def ordenacaoDecrescente(self):
        resultado = sorted(self.listaBaguncada, reverse=True)
        return resultado


crescente = Ordenadora([3, 4, 2, 1, 5])
descrescente = Ordenadora([9, 7, 6, 8])

print(crescente.ordenacaoCrescente())
print(descrescente.ordenacaoDecrescente())
