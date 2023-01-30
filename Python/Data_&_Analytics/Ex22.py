# Exercício 22 Parte 1

# Crie uma classe Pessoa que tenha um atributo privado nome e um atributo
# público id.  Na sequência, adicione uma função que atribua um valor a nome
# e uma função que retorne o valor de nome.

# Importante: Para atributos privados utilizamos “__” Ex: __atributo


# Para testar seu código use:


# pessoa = Pessoa(0)
# pessoa.nome = 'Fulano De Tal'
# print(pessoa.nome)

class Pessoa:
    def __init__(self, id):
        self.id = id

    def set_nome(self, nome):
        self.__nome = nome

    def get_nome(self):
        return self.__nome


pessoa = Pessoa(0)
pessoa.nome = 'Fulano De Tal'
print(pessoa.nome)
