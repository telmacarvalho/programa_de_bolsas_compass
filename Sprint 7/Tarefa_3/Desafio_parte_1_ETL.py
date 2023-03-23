import boto3


movies = open('movies.csv', 'rb')
series = open('series.csv', 'rb')
teste = open('teste.csv', 'rb')

s3 = boto3.resource('s3')
s3.Bucket('my-bucket').put_object(Key='teste.csv', Body=data)
