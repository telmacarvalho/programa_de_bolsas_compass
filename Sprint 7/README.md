# Desenvolvimento das atividades da Sprint 7

- [Tarefa 1: Python com Pandas e Numpy](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_1.ipynb)

- [Tarefa 2: Apache Spark - Contador de Palavras](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Sprint%207/Tarefa_2)

- [Laboratório AWS Glue](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Sprint%207/Lab_AWS_Glue)

- [Tarefa 3: Desafio Parte 1 - ETL](https://github.com/telmacarvalho/programa_de_bolsas_compass/tree/main/Sprint%207/Tarefa_3)

## Desenvolvimento detalhado de cada atividade

### Tarefa 1: Python com Pandas e Numpy
[Jupyter notebook](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_1.ipynb)

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

**Prints do resultado do passo 2:**

![Print1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/prints/1_pyspark_container.png)

![Print2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/prints/2_abrindo_jupyter_notebook.png)

![Print3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/prints/3_abrindo_jupyter_notebook.png)

![Print4](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_2/prints/4_pyspark_jupyter_notebook.png)

### Laboratório AWS Glue

Obs: devido a erro no momento de gerar o jupyter dentro do Glue, não foi possível realizar toda a atividade

**Prints do último passo executado**

![Print1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Lab_AWS_Glue/prints/1_criando_notebook.png)

![Print2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Lab_AWS_Glue/prints/2_%20erro.png)

### Tarefa 3: Desafio Parte 1 - ETL

<details>
<summary>
<b>Instruções da tarefa</b>
</summary>
Ingestão Batch: a ingestão dos arquivos CSV em Bucket Amazon S3 RAW Zone. Nesta etapa do desafio deve ser construído um código Python que será executado dentro de um container Docker para carregar os dados locais dos arquivos para a nuvem. Nesse caso utilizaremos, principalmente, as lib boto3 como parte do processo de ingestão via batch para geração de arquivo (CSV).

**Perguntas dessa tarefa**
1. Implementar código Python:

    - ler os 2 arquivos (filmes e series) no formato CSV inteiros, ou seja, sem filtrar os dados

    - utilizar a lib boto3 para carregar os dados para a AWS

    - acessar a AWS e grava no S3, no bucket definido com RAW Zone

      - no momento da gravação dos dados deve-se considerar o padrão: ```<nome do bucket>\<camada de armazenamento>\<origem do dado>\<formato do dado>\<especificação do dado>\<data de processamento separada por ano\mes\dia>\<arquivo>```

        Por exemplo:

                   S3:\\data-lake-do-fulano\Raw\Local\CSV\Movies\2022\05\02\movies.csv

                   S3:\\data-lake-do-fulano\Raw\Local\CSV\Series\2022\05\02\series.csv

2. Criar container Docker com um volume para armazenar os arquivos CSV e executar processo Python implementado

3. Executar localmente o container docker para realizar a carga dos dados ao S3
</details>

[Desafio](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_3/Desafio_parte_1_ETL.py)

[Dockerfile](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_3/Dockerfile)

**Prints do resultado do desafio**

![Print1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_3/prints/movies_s3.png)

![Print2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%207/Tarefa_3/prints/series_s3.png)