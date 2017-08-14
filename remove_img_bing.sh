#!/bin/sh
# Autor: José M. C. N.
# Data: 14/01/2017

# Vou Buscar o endereço da pasta do utilizador e armazeno na variavel HOME_FOLDER
HOME_FOLDER=$( echo $HOME )

# A variavel DIR contem o endereço onde estão localizadas as imagens
DIR="/Pictures/Bing/"

# Com este comando vou receber o resultado ordenado do ficheiro mais antigos
# ao ficheiro mais recentes
ls_ordena_file_newer_old="ls -rt"

# Com este comando vou receber o numero de ficheiro que existem numa determinada
# pasta

# A variavel FILE vai receber os nomes dos ficheiros, um a um, proveniente do
# comando ls -rt
for FILE in $( $ls_ordena_file_newer_old $HOME_FOLDER$DIR )
do
  # A variavel num_file recebe o numero de ficheiros que existem numa pasta
  num_file=$( ls -1 $HOME_FOLDER$DIR | wc -l )

  # Se o numero de ficheiros na respectiva pasta for menor ou igual a 3, quer
  # dizer que não podemos eliminar mais nenhum ficheiro e o ciclo é interrompido
  # caso contrario, eliminamos os respectivos ficheiros
  if [ $num_file -le "3" ];
  then
    break
  else
  	# Executo o comando rm para eliminar as imagens
    rm $HOME_FOLDER$DIR$FILE
  fi
done
