# Desenvolvimento das atividades da Sprint 4

* [Exemplos](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Docker/Exemplos)

Contém exemplos realizados no decorrer do curso de Docker para Desenvolvedores (com Docker Swarm e Kubernetes) - seções 1 a 9, 11 - via Udemy.

* [Tarefa_containers](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Docker/Tarefa_Containers)

Contém os exercícios de Containers da seção 3 de Data & Analytics - PB - AWS 4/10 da Udemy:


<details>
<summary>
<b>Exercício 1</b>
</summary>

Construa uma imagem a partir de um arquivo de instruções (Dockerfile) que execute o código carguru.py. Após, execute um container a partir da imagem criada.

</details>

[Repositório](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Docker/Tarefa_Containers/Ex_1)

<details>
<summary>
<b>Exercício 2</b>
</summary>

É possível reutilizar containers? Em caso positivo, apresente o comando necessário para reiniciar um dos conteiners em seu ambiente Docker. Não sendo possível reutilizar, justifique sua resposta.

</details>


<details>
<summary>
</>Resposta</>
</summary>

É possível reutilizar containers através do comando:\
 ```docker start -i <ex_1>```

</details><br /> 

<details>
<summary>
<b>Exercício 3</b>
</summary>

Agora vamos exercitar a criação de um container que permita receber inputs durante sua execução. Seguem as instruções.

-- Criar novo script Python que implementa o algoritmo a seguir:

1. Receber uma string via input

2. Gerar o hash  da string por meio do algoritmo SHA-1

3. Imprimir o hash em tela, utilizando o método hexdigest

4. Retornar ao passo 1

-- Criar uma imagem Docker chamada mascarar-dados que execute o script Python criado anteriormente

--  Iniciar um container a partir da imagem, enviando algumas palavras para mascaramento

-- Registrar o conteúdo do script Python, arquivo Dockerfile e comando de inicialização do container neste espaço.

</details>


[Repositório](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Docker/Tarefa_Containers/Ex_3)
