
# Extração

import re


class ExtractTransform:

    def extract(file):
        with open(file, 'r') as arquivo:
            conteudo = arquivo.readlines()
            resultado = []
            cabecalho = True

            # Transformação

            for linha in conteudo:
                if cabecalho:
                    # Pula cabeçalho
                    cabecalho = False
                else:
                    # Remove "\n"
                    linha = linha.strip()
                    # Separa os dados por vírgula, ignorando a mesma se estiver
                    # entre aspas duplas
                    split_regex = re.findall(r'(\".*?\"|[^\",]+)', linha)
                    resultado.append(split_regex)
            return resultado
