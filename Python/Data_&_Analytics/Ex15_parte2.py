# Exercício 15 Parte 2

# Implemente a classe Lampada. A classe Lâmpada recebe um booleano no seu
# construtor, True se a lâmpada estiver ligada, False caso esteja desligada.
#
# A classe Lampada possuí os seguintes métodos:

# * liga(): muda o estado da lâmpada para ligada

# * desliga(): muda o estado da lâmpada para desligada

# * esta_ligada(): retorna verdadeiro se a lâmpada estiver ligada, falso caso
# contrário

# Para testar sua classe:

# 1- Ligue a Lampada

# 2- Imprima: A lâmpada está ligada? True

# 3- Desligue a Lampada

# 4- Imprima: A lâmpada ainda está ligada? False

class Lampada:

    def __init__(self, estado):
        self.estado = estado

    def liga(self):
        if self.estado == False:
            self.estado = True

    def desliga(self):
        if self.estado:
            self.estado = False

    def esta_ligada(self):
        return self.estado


lampada1 = Lampada(False)

lampada1.liga()

lampada = lampada1.esta_ligada()
print(f'A lâmpada está ligada? {lampada}')

lampada1.desliga()

lampada = lampada1.esta_ligada()
print(f'A lâmpada ainda está ligada? {lampada}')
