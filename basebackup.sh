#! /bin/bash

/etc/init.d/postgresql stop
echo "iniciando a exclusão dos arquivos"
rm -rf /var/lib/postgresql/data/*
echo "Finalizando a exclusão dos arquivos"

echo "iniciando o backup"
pg_basebackup -R -h master -U replicador -D /var/lib/postgresql/data -P
echo "Finalizado o backup"
