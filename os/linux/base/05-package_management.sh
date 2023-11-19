### Gerenciamento de pacotes

apt-get (mais baixo nível)
#>apt-get --help

apt (mais moderno)
#>apt --help

lista os pacotes
#>apt list

mostra os pacotes instalados na máquina
#>apt list --installed

verificar quais pacotes podem ser atualizados
#>apt list --upgradeable

pesquisar pacotes
#>apt search apache

instalando um pacote
#>apt install net-tools
#executando comando para visualizar ip da máquina com net-tools
#>ifconfig

baixando um repositório do github
#>cd /
#>mkdir Downloads
#>cd Downloads
#>wget https://github.com/Abhay2342/Network-Scanner/archive/refs/heads/master.zip

descompactar arquivos .zip
#>apt install unzip
#>unzip file.zip
#>unzip file.zip -d /pasta/

descompactar arquivos .rar
#>apt install unrar
#>unzip file.rar

remover um pacote
#>apt remove net-tools
#>apt remove net-tools -y 
(-y remove sem perguntar)


editar e atualizar repositório de pacotes
#>apt edit-sources

baixas os componeste para atualizar o sistema
#>apt update
atualizar o sistema definitivamente
#>apt upgrade

instalando programas executaveis (.deb) [debian, ubuntu] ou (.rpm) [redhat]
#>apt install ./google-chrome.deb