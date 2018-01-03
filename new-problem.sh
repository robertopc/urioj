# cria o novo arquivo do problema
# insere o cabecalho e muda as permissões do arquivo

if [ ${2} == "" ]; then
	dir=""
	cat=""
else
	dir="${2}/"
	cat="Category ${2}"
fi

echo """#!/usr/bin/python3
# https://www.urionlinejudge.com.br/judge/pt/problems/view/${1}
# Problem number ${1} ${cat}
""" > ${dir}${1}.py

chmod +x ${dir}${1}.py

