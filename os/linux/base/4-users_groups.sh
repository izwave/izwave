### Usuários e grupos 

adicionando um usuário com nome e pasta de usuário
#>useradd "joao" -m -c "João da Silva"

adicionando senha o usuário
#>passwd joao

adicionado um shell para o usuário
#>chsh -s /bin/bash joao

apagando um usuário e todos os seus dados
#>userdel -r -f joao

criando usuário com pasta e shell
#>useradd joao -m -c "João da Silva" -s /bin/bash

adicionando usuário com data de expiração
#>useradd guest -m -c "convidado" -e 31/12/2022
colocando senha
#>passwd guest
adicionado um shell para o usuário
#>usermod guest -s /bin/bash

colocando senha para expirar e ser trocada
#>passwd guest -e

visulizar todos os usurários criados
#>cat /etc/passwd

criando usuário com senha criptografada
#>useradd convidado1 -c "convidado 1" -s bin/bash -m -p $(openssl passwd -crypt Senha123)

shell scripts
#>nano criar_user.sh

----
#!/bin/bash

echo "criando usuários no sistema.."

useradd guest1 -c "convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest1 -e

useradd guest2 -c "convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest2 -e

useradd guest3 -c "convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest3 -e

useradd guest4 -c "convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest4 -e

echo "finalizando ..."
-------

liberando acesso para executar um shell script
#>chmod +x criar_user.sh

executando o shell script
#>./criar_user.sh

adicionando usuário a grupos de adminstrador
#>usermod -G adm,sudo guest1

criando grupos
#>groupadd GRP_TEST

deletando grupos
#>groupdel GRP_TEST

visualizando grupos
#>cat etc/groups

criando um usuário e adicionando a um grupo
#>useradd pedro1 -c "Pedro da Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_TEST

retirar usuário de um grupo e adicioná-lo a outro
#>usermod -G GRP_OII pedro1

retirando usuário de grupo específico
gpasswd -d izaque adm

alterando permissões de usuários e diretórios
#>mkdir secreta
#>chown pedro1:GRP_OII /secreta/

(usuário pedro1 é proprietário da pasta "secreta" enquanto os outros usuários do grupo podem acessar)


drwxr-xr-x

d|rwx|r-x|r-x |
 | dono | grupo | outros |


d = diretório (ou "-" arquivo)

-- permissões -

r = leitura (4)
w = gravação (2)
x = execução (1)
- = nenhuma (0)

permisão total = (4)+(2)+(1) = 7

alterando permissões gerais para uma pasta
#>chmod 750 /secreta/
#>chmod <numbers> <foder>

7 -> permissão total [dono]
5 -> permissão de leitura e execução [grupo]
0 -> permisão nula [outros]


criando um script shell e alterando a permissão
#>nano file.sh
#>chmod 770 file.sh

dando permissão de um arquivo diretamente para o dono
#>chmod +x file.sh


*
listar grupos criados
#>cat etc/group
listar usuários criados
#>cat etc/passwd