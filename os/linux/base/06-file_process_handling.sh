### Manipulação de arquivos e processos

-- gerenciamento de discos --
partições no linux. Os dicos são particionados e organizados começando com sd e depois uma letra do afalbeto

---

sda
sdb
sdc..

dentro de cada disco podem haver mais partições, sendo elas nomedas de forma numérica

---

sda
 L sda1
 L sda2
sdb
 L sdb1

listando os discos
#>lsblk
ou
#>fsdisk -l

-- manipulação de arquivos --
copiar arquivos
#>cp *.py /test
(copiar todos arquivos .py para a pasta test)

copiar arquivos e verificar se já existem
#>cp *.py /test -i

cópia recursiva (copiar todos arquivos, pasta subpatas e arquivos gerais)
#>cp *.py /test -r

copiar arquivos e visualizar o progresso
#>cp *.py /test -r -v

mover arquivo
#>mv file.txt /folder

mover arquivo e perguntar antes
#>mv file.txt /folder -i

mover arquivo e visualizar processo
#>mv file.txt /folder -v

renomear arquivo
#>mv file.txt rename_file.txt

visualizar processos no terminal
#>ps

visualizar processos de todos os usuários
#>ps aux

a = todos processos
u = todos os usuários
x = serviços/gui

encerrando um processo
#>kill 2393
#>kill <id>

encerrando um processo pelo nome
#>killall chrome
#>killall <name>

visualizar usuários logados no momento
#>w

visualizar usuários com PIN
#>who -a

derrubar usuário pelo PIN
#>kill 243
