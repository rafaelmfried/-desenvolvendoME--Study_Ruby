#!/bin/bash

# Itera sobre todos os arquivos na pasta atual
for file in exercice*.rb; do
    # Extrai o número do exercício do nome do arquivo
    exercise_number=$(echo "$file" | sed 's/exercice\([0-9]\{1,2\}\).rb/\1/')

    # Formata o número do exercício com dois dígitos, adicionando um zero à esquerda, se necessário
    formatted_number=$(printf "%02d" $exercise_number)

    # Renomeia o arquivo se o número do exercício for encontrado
    if [ ! -z "$exercise_number" ]; then
        mv "$file" exercice#${formatted_number}.rb
        echo "Renamed $file to exercice#${formatted_number}.rb"
    fi
done
