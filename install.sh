#!/usr/bin/env bash

printf "\n\tInstalando servidor de DNS Unbound\n"

apt install -y wget htop dnsutils unbound

printf "\n\tBaixando arquivo base de configuração\n"

wget https://raw.githubusercontent.com/ResolvServices/unbound/main/resolv.conf -O /etc/unbound/unbound.conf.d/resolv.conf

printf "\n\tBaixando arquivo de bloqueio de sites\n"

wget https://raw.githubusercontent.com/ResolvServices/unbound/main/bloqueio.conf -O /etc/unbound/unbound.conf.d/bloqueio.conf

printf "\n\tBaixando arquivo de domínios locais\n"

wget https://raw.githubusercontent.com/ResolvServices/unbound/main/dominios.conf -O /etc/unbound/unbound.conf.d/bloqueio.conf

printf "\n\tInstalação finalizada\n\tFavor realizar os testes e modificações\n\n"
