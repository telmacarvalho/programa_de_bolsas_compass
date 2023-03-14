# Desenvolvimento das etapas do exercício Lab AWS Lambda da Sprint 6

<details>
<summary>
<h2>Etapa 1: Criar a função do Lambda</h2>
</summary>

1. No console do AWS Lambda, selecione Criar uma função. Observação: o console só mostra esta página se não houver funções do Lambda criadas. Se já tiverem sido criadas funções, a opção será exibida a página Lambda > Funções.

2. Selecione Author from scratch (criar do zero)

3. Em Function name (nome da função), defina o nome da função. Em Runtime, escolha Python 3.7.

4. Para criar a função, selecione Create (Criar).

</details>

**Print do resultado da etapa 1:**

![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Lab_AWS_Lambda/1.png)

<details>
<summary>
<h2>Etapa 2: Construir o código</h2>
</summary>

A função será criada e você será redirecionado para o editor de funções do console. Por padrão, será criado o arquivo nomeado lambda_function.py com o código abaixo:
```
import json
 
def lambda_handler(event, context):
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
```
1. Substitua # TODO implement pelo código que acessa o S3 e utiliza a biblioteca Numpy e Pandas para realizar a operação. Abaixo o código:
```
import json
import pandas
import boto3
 
 
def lambda_handler(event, context):
    s3_client = boto3.client('s3')
 
    bucket_name = '<coloque aqui o nome do seu bucket>'
    s3_file_name = 'dados/nomes.csv'
    objeto = s3_client.get_object(Bucket=bucket_name, Key=s3_file_name)
    df=pandas.read_csv(objeto['Body'], sep=',')
    rows = len(df.axes[0])
 
    return {
        'statusCode': 200,
        'body': f"Este arquivo tem {rows} linhas"
    }
```
2. Agora clique em Deploy para que a alteração do código seja realizada

3. Realize o teste da Lambda clicando em Test e escolhendo um nome de teste

4. Ao executar, o erro abaixo deve ser exibido:
```
Response
{
  "errorMessage": "Unable to import module 'lambda_function': No module named 'pandas'",
  "errorType": "Runtime.ImportModuleError",
  "requestId": "bd3ea45f-167d-420a-a926-0b6bd9634abe",
  "stackTrace": []
}
```
Este erro ocorre pois o serviço AWS Lambda não possui a biblioteca pandas. Precisamos de uma layer para importar estas bibliotecas necessárias a nossa Lambda.

</details>

**Print do resultado da etapa 2:**

![Print 2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Lab_AWS_Lambda/2.png)

<details>
<summary>
<h2>Etapa 3: Criar uma Layer</h2>
</summary>

Afinal, o que são Layers (camadas)? De acordo com a documentação, as camadas do Lambda fornecem um modo conveniente de empacotar bibliotecas e outras dependências que você pode usar com suas funções Lambda. O uso de camadas reduz o tamanho dos arquivos de implantação carregados e acelera a implantação do código.

Uma camada  é um arquivo compactado (zip) que pode conter código ou dados adicionais. Uma camada pode conter bibliotecas, um tempo de execução personalizado, dados ou arquivos de configuração. As camadas promovem o compartilhamento de código e a separação de responsabilidades para que você possa ater-se à escrita da lógica de negócios.

Quando você inclui uma camada em uma função lambda, o conteúdo é extraído para o diretório /opt no ambiente de execução

Agora você sabe o que é uma camada lambda, a próxima pergunta seria como criar uma?

É possível criar camadas usando o console da Lambda, a API do **AWS Lambda**, **CloudFormation**, ou **AWS Serverless Application Model (AWS SAM)**. Aqui vamos usar o método do console da Lambda com comandos do prompt e arquivos no formato zip.

Usando esse método, estaremos instalando diretamente as bibliotecas *python* e suas dependências necessárias em pasta de um Conteiner Docker (sistema operacional Amazon Linux) e, em seguida, compactando-os para serem carregados na como camada à função Lambda.

Abaixo o passo a passo:

1. Crie uma pasta nova e nela crie um arquivo chamado Dockerfile. Vamos usar uma imagem de sistema operacional Linux específica da Amazon e instalar o python versão 3.7 e a ferramenta para fazer a compressão dos dados. O arquivo Dockerfile ficará assim:
```
FROM amazonlinux:2.0.20200602.0
RUN yum update -y
RUN yum install -y \
python3-pip \
zip \
RUN yum -y clean all
RUN python3.7 -m pip install --upgrade pip
```

2. Vamos usar o arquivo construído acima para criar a imagem do Docker:
```
docker build -t amazonlinuxpython37 .
```

3. Agora, execute o comando abaixo na imagem do Docker para acessarmos o shell do container. O parâmetro -it é para sinalizar que queremos abrir imediatamente um shell:
```
docker run -it amazonlinuxpython37 bash
```

4. Então você verá o prompt de comando dizer bash-4.2# ou algo parecido. Agora precisamos criar a pasta que receberá as bibliotecas necessárias para a layer que criaremos. !!Importante!!: as bibliotecas devem estar dentro de uma pasta chamada python.
```
bash-4.2# cd ~
bash-4.2# mkdir layer_dir
bash-4.2# cd layer_dir/
bash-4.2# mkdir python
bash-4.2# cd python/
bash-4.2# pwd
```
No final você estará com a estrutura de diretórios assim: /root/layer_dir/python

5. Com a pasta criada, agora vamos baixar as bibliotecas e suas dependências para esta pasta python criada
```
bash-4.2# pip3 install pandas -t .
```
6. Se você navegar para a pasta python, deverá ver as bibliotecas instaladas. Agora, de volta ao layer_dir, vamos compactar o diretório python

7. Compacte todos esses arquivos em um arquivo chamado minha-camada-pandas.zip. Certifique-se que você está no diretório /root/layer_dir
```
bash-4.2# cd ..
bash-4.2# zip -r minha-camada-pandas.zip .
```

8. Copiar o zip do Container para a máquina local. Para tal, abra outra janela de terminal do seu SO e navegue até o diretório onde seu Dockerfile está. Inicialmente vamos descobrir o ID do Container Docker que está executando.
```
docker container ls
```

Com o ID do container listado, vamos copiar o arquivo para máquina local. Substitua  <id do container> pelo ID do container listado
```
docker cp <id do container>:/root/layer_dir/minha-camada-pandas.zip ./
```

9. De acordo com a AWS, se a camada possuir mais do que 10 MB, o ideal é fazer via S3. Então faça upload do arquivo minha-camada-pandas.zip para um bucket S3.

10. Agora temos a parte final onde carregamos o arquivo zip na Lambda para criar a camada. Retorne para o serviço AWS Lambda e no painel lateral, selecione Camadas

11. Clique no botão Criar uma camada

12. Dê o nome de PandasLayer, escolha a opção Fazer upload de um arquivo do Amazon S3. Em outra aba retorne ao S3, localize o arquivo minha-camada-pandas.zip que você carregou para o S3 anteriormente e copie a URL de objeto que está no S3, por exemplo: https://programa-bolsas-compass.s3.amazonaws.com/libs/minha-camada-pandas.zip. Retornando para a aba de criação da camada, cole a URL em Link do URL do Amazon S3

13. Escolha x86_64 em Arquiteturas compatíveis, em Tempos de execução compatíveis escolha Python 3.7

14. Clique em Criar

</details>

**Print do resultado da etapa 3:**

![Print 3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Lab_AWS_Lambda/3.png)

**Repositório da etapa 3:**

[Dockerfile](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Lab_AWS_Lambda/Dockerfile)\
[Arquivo zip](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Lab_AWS_Lambda/minha-camada-pandas.zip)

<details>
<summary>
<h2>Etapa 4: Utilizando a Layer</h2>
</summary>

1. No menu, escolha Função e localize a função Lambda criada na Etapa 1

2. Localize o ícone Layers e clique nele ou vá até o rodapé da Lambda até a seção nomeada de Camadas

3. Clique em Adicionar uma camada

4. Escolha Custom Layers (Camadas personalizadas), localize a camada e a versão criada na etapa anterior.

5. Clique em Adicionar

6. Agora execute novamente o código criado com o Test definido anteriormente. Deve ser retornado algo assim no Response:
```
{
  "statusCode": 200,
  "body": "Este arquivo tem 1825433 linhas"
}
```
*Dica*: Provavelmente será necessário aumentar o tempo limite e o tamanho da memória da Lambda.

</details>

**Print do resultado da etapa 4:**

![Print 3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Lab_AWS_Lambda/4.png)
