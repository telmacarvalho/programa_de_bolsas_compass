# Desenvolvimento dos exercícios de laboratórios AWS da Sprint 6

## Etapa 1: Criar um bucket

As instruções a seguir fornecem uma visão geral de como criar seus buckets para hospedagem de conteúdo estático:

1. Faça login no AWS Management Console e abra o console do Amazon S3 em https://console.aws.amazon.com/s3/.

2. Selecione Create bucket (Criar bucket).

3. Insira o Bucket name (Nome do bucket) (por exemplo, example.com).\
![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_1/1.png)

4. Selecione a região onde você deseja criar o bucket. Escolha US East (N. Virginia) us-east-1.\
![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_1/1.png)


5. Para aceitar as configurações padrão e criar o bucket, escolha Create (Criar).\
![Print 2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_1/2.png)
![Peint 3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_1/3.png)

## Etapa 2: Habilitar hospedagem de site estático

Depois de criar um bucket, você pode habilitar a hospedagem de site estático nele. Os passos necessários são:


1. Faça login no AWS Management Console e abra o console do Amazon S3 em https://console.aws.amazon.com/s3/.

2. Na lista Buckets, escolha o nome do bucket para o qual você deseja habilitar a hospedagem de site estático.\
![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/1.png)

3. Escolha Properties (Propriedades).\
![Print 2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/2.png)

4. Em Static website hosting (Hospedagem estática de sites), escolha Edit (Editar).\
![Print 3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/3.png)

5. Escolha Use this bucket to host a website (Usar este bucket para hospedar um site).\
![Print 4](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/4.png)

6. Em Static website hosting (Hospedagem estática de sites), escolha Enable (Ativar).\
![Print 4](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/4.png)

7. Em Index Document (Documento de índice), insira o nome do arquivo do documento de índice, que geralmente é index.html.

    O nome do documento de índice diferencia letras maiúsculas de minúsculas e deve corresponder exatamente ao nome do arquivo do documento de índice HTML do qual você planeja fazer upload para o bucket do S3. Quando você configura um bucket para hospedagem de site, deve especificar um documento de índice. O Amazon S3 retorna esse documento de índice quando as solicitações são feitas para o domínio raiz ou alguma subpasta.\
![Print 5](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/5.png)

8. Para fornecer seu próprio documento de erros personalizado para erros da classe 4XX, em Error document (Documento de erros), insira o nome de arquivo do documento de erros personalizado.

    O nome do documento de erro diferencia letras maiúsculas de minúsculas e deve corresponder exatamente ao nome do arquivo do documento de erro HTML do qual você planeja fazer upload para o bucket do S3. Se você não especificar um documento de erro personalizado e ocorrer um erro, o Amazon S3 retornará um documento de erro HTML padrão.\
![Print 6](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/6.png)

9. (Opcional) Se você quiser especificar regras avançadas de redirecionamento em Redirection rules (Regras de redirecionamento), use JSON para descrevê-las.

    Por exemplo, você pode encaminhar solicitações condicionalmente de acordo com nomes de chave de objeto ou prefixos específicos na solicitação. Para obter mais informações, consulte Configurar regras de redirecionamento para usar redirecionamentos condicionais avançados.


10. Selecione Save changes.

    O Amazon S3 permite a hospedagem estática de sites para seu bucket. Na parte inferior da página, em Static website hosting (Hospedagem estática de sites), você verá o endpoint do site do seu bucket.\
![Print 7](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/7.png)


11. Em Static website hosting (Hospedagem de sites estáticos), copie o endpoint informado.

    O Endpoint é o endereço do site do Amazon S3 para o bucket.  Informe o endereço na barra de navegação de seu navegador para testar o resultado.\
![Print 7](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/7.png)\
![Print 8](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/8.png)


## Etapa 3: editar as configurações do Bloqueio de acesso público

Por padrão, o Amazon S3 bloqueia o acesso público à sua conta e aos seus buckets. Se quiser usar um bucket para hospedar um site estático, use estas etapas para editar as configurações de bloqueio de acesso público.

1. Abra o console do Amazon S3 em https://console.aws.amazon.com/s3/.

2. Escolha o nome do bucket configurado como um site estático.\
![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_3/1.png)

3. Escolha Permissions (Permissões).
![Print 2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_3/2.png)

4. Em Block public access (bucket settings) Bloqueio de acesso público (configurações de bucket), escolha Edit (Editar).\
![Print 3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_3/3.png)

5. Desmarque Block all public access (Bloquear todo acesso público) e escolha Save changes (Salvar alterações).\
![Print 4](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_3/4.png)\
![Print 5](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_3/5.png)\
![Print 6](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_3/6.png)


O Amazon S3 desativa as configurações do bloqueio de acesso público para seu bucket. Para criar um site público e estático, você também pode ter que editar as configurações de Bloqueio de acesso público para sua conta antes de adicionar uma política de bucket. Se as configurações da conta para bloquear acesso público estiverem ativadas no momento, você verá uma observação em Block public access (bucket settings) (Bloqueio de acesso público (configurações de bucket)).

## Etapa 4: Adicionar política de bucket que torna o conteúdo do bucket publicamente disponível

Depois de editar as configurações do bloqueio de acesso público do S3, é possível adicionar uma política de bucket para conceder acesso público de somente leitura ao bucket. Ao conceder um acesso público de leitura, qualquer pessoa na Internet poderá acessar seu bucket.

1. Em Buckets, escolha o nome do seu bucket.

2. Escolha Permissions (Permissões).\
![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_4/1.png)

3. Em Bucket Policy (Política de bucket), escolha Edit (Editar).\
![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_4/1.png)

4. Para conceder acesso público de leitura ao site, copie a política de bucket a seguir e cole-a no Bucket policy editor (Editor de política de bucket).

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::Bucket-Name/*"
            ]
        }
    ]
} 
```
No JSON acima, substitua, na seção Resource, o valor de Bucket-Name para o nome do seu bucket.

Na política de bucket do exemplo anterior, Bucket-Name é um espaço reservado para o nome do bucket. Para usar essa política de bucket com seu próprio bucket, você deve atualizar esse nome para corresponder ao nome do seu bucket.\
![Print 2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_4/2.png)\
![Print 3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_4/3.png)\

6. Selecione Save changes.

Uma mensagem é exibida indicando que a política de bucket foi adicionada com sucesso.\
![Print 4](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_4/4.png)

Se você vir um erro que diz Policy has invalid resource, confirme se o nome do bucket na política de bucket corresponde ao nome do seu bucket. Se você receber uma mensagem de erro e não puder salvar a política do bucket, verifique suas configurações de acesso público para confirmar que você permite acesso público ao bucket.

## Etapa 5: Configurar um documento de índice

Quando você habilita a hospedagem de sites estáticos para seu bucket, deve informar o nome do documento de índice (por exemplo, index.html). Naturalmente, o arquivo informado deverá estar presente no bucket para que a configuração tenha efeito.

Vamos aos passo para configuração do documento de índice:

1. Criar um arquivo local (sua máquina) com o nome index.html . O conteúdo do arquivo deverá ser (atente-se para o atributo href do link, pois ele deverá apontar para o arquivo CSV):
```
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Home Page do meu WebSite - Tutorial de S3</title>
</head>
<body>
  <h1>Bem-vindo ao meu website</h1>
  <p>Agora hospedado em Amazon S3!</p>
  <a href="nome do arquivo CSV a ser baixado">Download CSV File</a> 
</body>
</html>
```
![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_5/1.png)

2. Salvar as alterações.

    O nome do documento de índice deve corresponder exatamente ao nome do documento de índice que você inseriu na caixa de diálogo Hospedagem de site estático. O nome do documento de índice diferencia maiúsculas de minúsculas. Por exemplo, se você informou index.html na configuração do bucket, seu documento de índice também deverá ser index.html (e não Index.html, por exemplo).


3. Faça login no AWS Management Console e abra o console do Amazon S3 em https://console.aws.amazon.com/s3/.
![Print 2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_5/2.png)

4. Na lista Buckets, selecione o nome do bucket que você configurou hospedagem de conteúdo estático.
![Print 3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_5/3.png)

5. Para fazer upload do documento de índice para o bucket, siga um destes procedimentos:

    - Arraste e solte o arquivo de índice na listagem de buckets do console.\
    ![Print 4](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_5/5.png)\
    ![Print 5](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_5/5.png)

    - Escolha Upload (Fazer upload) e siga as instruções para escolher e fazer upload do arquivo de índice.\


6. Crie uma pasta chamada dados e, após, faça upload do conteúdo do site (arquivo CSV) para ela.\
![Print 6](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_5/6.png)\
![Print 7](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_5/7.png)\
![Print 8](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_5/8.png)

## Etapa 6: configurar documento de erros

Depois de habilitar a hospedagem de sites estáticos para seu bucket, faça upload para o bucket de um arquivo HTML para notificação de erros.  Veja quais são os passos:

1. Crie um documento de erro com o nome 404.html.\
![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_6/1.png)


2. Salve o arquivo localmente.

    O nome do documento de erros diferencia maiúsculas e minúsculas e deve corresponder exatamente ao nome que você insere ao habilitar a hospedagem estática do site. Por exemplo, se você inserir 404.html como o nome do Error document (Documento de erro) na caixa de diálogo Static website hosting (Hospedagem de site estático), o nome de arquivo do documento de erro também deve ser 404.html.

3. Faça login no AWS Management Console e abra o console do Amazon S3 em https://console.aws.amazon.com/s3/

4. Na lista Buckets, selecione o nome do bucket que você configurou hospedagem de conteúdo estático.

5. Para fazer upload do documento de erros para o bucket, siga um destes procedimentos:

    - Arraste e solte o arquivo de índice na listagem de buckets do console.\
    ![Print 2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_6/2.png)\
    ![Print 3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_6/3.png)

    - Escolha Upload (Fazer upload) e siga as instruções para escolher e fazer upload do arquivo de índice.

