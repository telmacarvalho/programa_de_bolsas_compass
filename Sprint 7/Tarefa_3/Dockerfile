FROM python:3.9.16-alpine3.17

RUN pip install boto3

WORKDIR /tarefa_3

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

COPY Desafio_parte_1_ETL.py .
COPY movies.csv .
COPY series.csv .

CMD ["python3", "./Desafio_parte_1_ETL.py"]