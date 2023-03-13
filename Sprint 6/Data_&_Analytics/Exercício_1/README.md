# Desenvolvimento dos exercícios de laboratórios AWS da Sprint 6

## Etapa 1: Criar um bucket

As instruções a seguir fornecem uma visão geral de como criar seus buckets para hospedagem de conteúdo estático:

1. Faça login no AWS Management Console e abra o console do Amazon S3 em https://console.aws.amazon.com/s3/.

2. Selecione Create bucket (Criar bucket).

3. Insira o Bucket name (Nome do bucket) (por exemplo, example.com).\
![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Exercicios/Exerc%C3%ADcio_1/Etapa_1/1.png)

4. Selecione a região onde você deseja criar o bucket. Escolha US East (N. Virginia) us-east-1.\
![Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Exercicios/Exerc%C3%ADcio_1/Etapa_1/1.png)


5. Para aceitar as configurações padrão e criar o bucket, escolha Create (Criar).\
![Print 2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Exercicios/Exerc%C3%ADcio_1/Etapa_1/2.png)
![Peint 3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Exercicios/Exerc%C3%ADcio_1/Etapa_1/3.png)

## Etapa 2: Habilitar hospedagem de site estático

Depois de criar um bucket, você pode habilitar a hospedagem de site estático nele. Os passos necessários são:


1. Faça login no AWS Management Console e abra o console do Amazon S3 em https://console.aws.amazon.com/s3/.

2. Na lista Buckets, escolha o nome do bucket para o qual você deseja habilitar a hospedagem de site estático.\
[Print 1](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/1.png)

3. Escolha Properties (Propriedades).\
[Print 2](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/2.png)

4. Em Static website hosting (Hospedagem estática de sites), escolha Edit (Editar).\
[Print 3](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/3.png)

5. Escolha Use this bucket to host a website (Usar este bucket para hospedar um site).\
[Print 4](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/4.png)

6. Em Static website hosting (Hospedagem estática de sites), escolha Enable (Ativar).\
[Print 4](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/4.png)

7. Em Index Document (Documento de índice), insira o nome do arquivo do documento de índice, que geralmente é index.html.

    O nome do documento de índice diferencia letras maiúsculas de minúsculas e deve corresponder exatamente ao nome do arquivo do documento de índice HTML do qual você planeja fazer upload para o bucket do S3. Quando você configura um bucket para hospedagem de site, deve especificar um documento de índice. O Amazon S3 retorna esse documento de índice quando as solicitações são feitas para o domínio raiz ou alguma subpasta.\
[Print 5](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/5.png)

8. Para fornecer seu próprio documento de erros personalizado para erros da classe 4XX, em Error document (Documento de erros), insira o nome de arquivo do documento de erros personalizado.

    O nome do documento de erro diferencia letras maiúsculas de minúsculas e deve corresponder exatamente ao nome do arquivo do documento de erro HTML do qual você planeja fazer upload para o bucket do S3. Se você não especificar um documento de erro personalizado e ocorrer um erro, o Amazon S3 retornará um documento de erro HTML padrão.\
[Print 6](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/6.png)

9. (Opcional) Se você quiser especificar regras avançadas de redirecionamento em Redirection rules (Regras de redirecionamento), use JSON para descrevê-las.

    Por exemplo, você pode encaminhar solicitações condicionalmente de acordo com nomes de chave de objeto ou prefixos específicos na solicitação. Para obter mais informações, consulte Configurar regras de redirecionamento para usar redirecionamentos condicionais avançados.


10. Selecione Save changes.

    O Amazon S3 permite a hospedagem estática de sites para seu bucket. Na parte inferior da página, em Static website hosting (Hospedagem estática de sites), você verá o endpoint do site do seu bucket.\
[Print 7](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/7.png)


11. Em Static website hosting (Hospedagem de sites estáticos), copie o endpoint informado.

    O Endpoint é o endereço do site do Amazon S3 para o bucket.  Informe o endereço na barra de navegação de seu navegador para testar o resultado.\
[Print 7](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/7.png)\
[Print 8](https://github.com/telmacarvalho/programa_de_bolsas_compass/blob/main/Sprint%206/Data_%26_Analytics/Exerc%C3%ADcio_1/Etapa_2/8.png)



