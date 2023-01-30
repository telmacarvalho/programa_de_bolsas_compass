# Exercício 21 Parte 1

# Implemente duas classes Pato e Pardal que herdem de uma classe Passaro a
# habilidade de voar e emitir som, porém, tanto Pato quanto Pardal devem
# emitir sons diferentes (de maneira escrita) no console.


# Imprima no console exatamente assim:

# Pato
# Voando...
# Pato emitindo som...
# Quack Quack
# Pardal
# Voando...
# Pardal emitindo som...
# Piu Piu

class Passaro:

    def __init__(self, nome):
        self.nome = nome

    def voar(self):
        return 'Voando...'

    def emitir_som(self):
        return f'{self.nome} emitindo som...'


class Pato(Passaro):
    def __init__(self, nome):
        super().__init__(nome)

    def emitir_som(self):
        return f'{super().emitir_som()}\nQuack Quack'


class Pardal(Passaro):
    def __init__(self, nome):
        super().__init__(nome)

    def emitir_som(self):
        return f'{super().emitir_som()}\nPiu Piu'


pato1 = Pato('Pato')
pardal1 = Pardal('Pardal')

print(pato1.nome)
print(pato1.voar())
print(pato1.emitir_som())

print(pardal1.nome)
print(pardal1.voar())
print(pardal1.emitir_som())
