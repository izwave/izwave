### Controle de sistema

# desligar o sistema
shutdown

# Desligar em 5 segundos
shutdown 5

# reiniciar o sistema
reboot

# mostrar a data atual
date


### Navegação e manipulação de diretórios

# mostrar sua posição atual
pwd

# voltar para pasta raiz do sistema operacional
cd /

# listar os arquivos e pastas
ls
ls /folder/

# voltar uma pasta
cd ..

# Mostrar o complemento de diretórios
# (tab clicado duas vezes)
cd /var/ backups/ cache/   crash/   lib/     local/   lock/    log/     mail/    opt/     run/     snap/    spool/   tmp/


## Filtragem e listagem de arquivos

# Filtrar arquivo e pastas da posição atual em uma lista
# [ctrl + c] para sair
ls | more 

# Filtrr arquivos que comecem com 'p'
ls p*
ls m?g*

# Pasta de usuário
cd /home/
cd /__username__/

# Voltar para raiz da pasta de usuário
cd ~