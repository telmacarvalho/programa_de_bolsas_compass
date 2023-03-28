import boto3
from datetime import date


def rawPath(file):
    names = file.split('.')
    today = date.today()
    date_path = today.strftime("%Y/%m/%d")
    path = 'Raw/Local/' + names[1].upper() + '/' + \
        names[0].capitalize() + '/' + date_path + '/' + file

    return path


s3 = boto3.client('s3')


def upload(file, bucket):
    with open(file, "rb") as f:
        s3.upload_fileobj(f, bucket,
                          rawPath(file))


upload('movies.csv', 'data-lake-da-telma')
upload('series.csv', 'data-lake-da-telma')
