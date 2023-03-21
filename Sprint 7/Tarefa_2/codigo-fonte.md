```
$ pyspark

>>> from pyspark.sql.functions import *

>>> text = spark.read.text("texto.md")

>>> text = text.filter(col('value') != '')

>>> text = text.withColumn('count', size(split(col('value'), '\s+')))

>>> text = text.select(sum('count'))

>>> result = text.collect()[0][0]
```
