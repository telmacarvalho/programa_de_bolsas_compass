import re

teste = '"Robert Downey, Jr.",3947.30 ,53,74.50 , The Avengers,623.40\n Samuel L. Jackson,4772.80 ,69,69.20 ,The Avengers,623.40 '
exemplo = re.findall(r'(\".*?\"|[^\",]+)', teste)
teste1 = exemplo.replace(\"+/g, '')
print(exemplo)
