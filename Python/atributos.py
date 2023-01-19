"""
POO - Atributos

Atributos -> Representam as característicasdo objeto. Ou seja,
pelos atributos nós conseguimos representar computacionalmente
os estados de um objeto.

Em Python, dividimos os atributos em 3 grupos:
    - Atributos de Instância;
    - Atributos de Classe;
    - Atributos Dinâmicos;

# Atributos de instância: São atributos declarados dentro do
método cosntrutor.

# OBS: Método construtor: É um método especial utilizado para
a cosntrução do objeto.

Em Python, por conveção, ficou estabelecida que, todo atributo
de uma classe é publico. Ou seja, pode ser acessado em todo o
projeto.
Caso queiramos demonstrar que determinado atributo deve ser tratado
como privado, ou seja, que deve ser acessado/utulizado somente
dentro da própria classe onde está declarado, utiliza-se __ duplo
underscore no início do seu nome.

Isso é conhecido também como Name Nangling.

# OBS: Lembre-se que isso é apenas uma convenção, ou seja,
# a linguagem Python não vai impedir que façamos acesso aos
# aos atributos sinalizados como privados fora da classe.

# Exemplo

user = Acesso('user@gmail.com', '123456')

print(user.email)

# print(user.__senha)  # AtributeError

print(user._Acesso__senha)

# Temos acesso, mas não deveríamos fazer esse acesso.(Name Mangling)

user.mostra_senha()

user.mostra_email()

# O que significa atributos de instância?

Sigfnifica que, ao criarmos instâncias/objetos de uma
classe, todas as instâncias terão estes atributos.

user1 = Acesso('user1@gmail.com', '123456')
user2 = Acesso('user2@gmail.com', '654321')

user1.mostra_email()
user2.mostra_email()

Atributos de Classe

Atributos de classe, são atributos, claro, que são declarados
diretamente na classe, ou seja, fora do construtor. Geralmente,
já inicializamos um valor, e este valor é compartilhado entre
todas as instâncias da classe. Ou seja, ao invés de cada instância
da classe ter seus próprios valores como é o caso dos atributos de
instância, com os atributos de classe todas as instâncias terão
o mesmo valor para este atributo.

p1 = Produto('Playstation 4', 'Video Game', 2300)
p2 = Produto('Xbos S', 'Video game', 4500)

print(p1.valor)  # acesso pssível, mas incorreto de uma atributo de classe.
print(p2.valor)  # acesso pssível, mas incorreto de uma atributo de classe.

# OBS: Não precisamos criar uma instância de uma classe para
# fazer acesso a um atributo de classe.

print(Produto.imposto)  # Acesso correto de um atributo de classe

print(p1.id)
print(p2.id)
"""

# Classes com Atributo de Instância Público


class Lampada:

    def __init__(self, voltagem, cor):
        self.voltagem = voltagem
        self.cor = cor
        self.ligada = False


class ContaCorrente:

    def __init__(self, numero, limite, saldo):
        self.numero = numero
        self.limite = limite
        self.saldo = saldo


# class Produto:

#     def __init__(self, nome, descricao, valor):
#         self.nome = nome
#         self.descricao = descricao
#         self.valor = valor


class Usuario:

    def __init__(self, nome, email, senha):
        self.nome = nome
        self.email = email
        self.senha = senha


# Atributos Públicos e Atributos Privados


class Acesso:
    def __init__(self, email, senha):
        self.email = email
        self.__senha = senha

    def mostra_senha(self):
        print(self.__senha)

    def mostra_email(self):
        print(self.email)


# Refatorar a classe Produto

class Produto:

    # Atributo de classe
    imposto = 1.05  # 0.05% de imposto
    contador = 0

    def __init__(self, nome, descricao, valor):
        self.id = Produto.contador + 1
        self.nome = nome
        self.descricao = descricao
        self.valor = (valor * Produto.imposto)
        Produto.contador = self.id

# Atributos Dinâmicos -> Um atributo de instância que pode
# ser criado em tempo de execução.

# OBS: O atributo dinâmico será exclusivo da instância que o criou.


p1 = Produto('Playstation 4', 'Video Game', 2300)
p2 = Produto('Xbos S', 'Video game', 4500)

# Criando um atributo dinâmico em tempo de execução

p2.peso = '5kg'  # Note que na classe produto não existe o atributo peso.

print(
    f'Produto: {p2.nome}, Descrição: {p2.descricao}, Valor: {p2.valor}, Peso: {p2.peso}')

# print(f'Produto: {p1.nome}, Descrição: {p1.descricao}, Valor: {p1.valor}, Peso: {p1.peso}')

# Deletando atributos

print(p1.__dict__)
print(p2.__dict__)

# print(Produto.__dict__)

del p2.peso
del p2.valor
del p2.descricao

print(p1.__dict__)
print(p2.__dict__)
