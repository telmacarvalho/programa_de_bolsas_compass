# Desenvolvimento das atividades da Sprint 7

- [Tarefa 1: Python com Pandas e Numpy](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_1.ipynb)

- [Tarefa 2: Apache Spark - Contador de Palavras](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Sprint%207/Tarefa_2)

- [Laboratório AWS Glue](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Sprint%207/Lab_AWS_Glue)

- [Tarefa 3: Desafio Parte 1 - ETL](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Sprint%207/Tarefa_3)

## Desenvolvimento detalhado das atividades da Sprint 7

### Tarefa 1: Python com Pandas e Numpy
[Jupyter Notebook](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_1.ipynb)

### Tarefa 2: Apache Spark - Contador de Palavras

<details>
<summary>
<b>Passo 1</b>
</summary>
Siga os passos a seguir para executar o Spark utilizando uma imagem Docker:

1. Instalar o Docker (https://docs.docker.com/desktop/install/windows-install)

2. Instalar o Visual Studio Code (https://code.visualstudio.com/Download)

3. Instalar as extensões  abaixo no Visual Studio Code:

    - Python (ms-python.python), disponível em https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

    - Remote - Containers (ms-vscode-remote.remote-containers), disponível em https://marketplace.visualstudio.com/items?itemName=ms-python.python



4. Criar no seu diretório de trabalho (uma pasta onde você terá o código-fonte) um arquivo chamado Dockerfile e inserir o seguinte conteúdo:

```FROM jupyter/all-spark-notebook```

5. No menu View do Visual Studio Code, clicar em Command Pallete (ou Ctrl + Shift + P) e executar o comando Remote-Containers: Add Development Container Configuration Files...

6. Selecionar a opção From 'Dockerfile'

7. Clicar em Reopen in Container no pop-up que aparece no canto inferior direito do VS Code.

</details>

[Dockerfile](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/Dockerfile)

[Devcontainer](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Sprint%207/Tarefa_2/.devcontainer)

<details>
<summary>
<b>Passo 2</b>
</summary>

Usando o Spark Shell, faça um programa que conte as palavras de um arquivo README.md (que você mesmo pode criar). Caso opte por um arquivo existente, podes utilizar o disponível neste endereço: https://github.com/apache/spark/blob/master/README.md

</details>

[Código-fonte](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/codigo-fonte.md)

[Arquivo README](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/README.md)

[Jupyter notebook](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/pyspark-notebook.ipynb)

**Prints do resultado da etapa 1:**

![Print1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/prints/1_pyspark_container.png)

![Print2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/prints/2_abrindo_jupyter_notebook.png)

![Print3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/prints/3_abrindo_jupyter_notebook.png)

![Print4](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/prints/4_pyspark_jupyter_notebook.png)