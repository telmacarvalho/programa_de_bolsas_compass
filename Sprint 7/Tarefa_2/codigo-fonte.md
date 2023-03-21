```
$ pyspark

>>> from pyspark.sql.functions import *
```

Armazena o texto em forma de data frame
```
>>> text = spark.read.text("README.md")
```

Filtra o data frame pela coluna value, eliminando as quebras de linhas
```
>>> text = text.filter(col('value') != '')
```

Divide a coluna value em listas, utlizando espaço como separador\
Na sequência, identifica o tamanho de cada lista e armazena essa quantidade na coluna count\
Transformando, assim, em um novo data frame

```
>>> text = text.withColumn('count', size(split(col('value'), '\s+')))
```

Soma a coluna count
```
>>> text = text.select(sum('count'))
```

Coleta e armazena resultado do data frame em uma variável
```
>>> result = text.collect()[0][0]
```