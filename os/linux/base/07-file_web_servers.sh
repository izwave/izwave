### Servidores de arquivos e Web

--- servidores de arquivos --- 
-> centralizar os arquivos em um lugar só
https://www.samba.org/
#>apt search samba

instalando o samba
#>apt install samba -y

criando uma pasta para o servidor
#>cd /
#>mkdir disk2
#>cd disk2
#>mkdir publica
dando acesso total a pasta
#>chmod 777 publica

configurando a pasta servidor
#>nano /etc/samba/smb.conf
(abrindo o arquivo smdb.conf)

adicione no final do arquivo
-----

[publica]
path = /disk/publica
writeable = yes
guest ok = yes
guest only = yes

-----

reiniciando o serviço
#>systemctl restart smbd

deixando o serviço sempre ativo
#>systemctl enable smbd


Acessando o servidor através de uma máquina windows
1. Pegando o ip
#>ip a 
(pegando o inet que termina com /24) [192.168.100.34/24]

2. Acessando o diretório no caminh do windows
\\192.168.100.34\publica

-- servidor web --
Instalando o apache
#>apt search apache2
#>apt install apache2 -y

verificando se o servidor esta funcionando
#>ipa a 
(pegue o segundo da lista)
jogue o ip no navegador -> se estiver funcionandoaparecerá um site do apache.

acessando o arquivo do diretório do servidor
#>cd /var/www/html/

-- servidor de banco de dados --

peesquisando o mysql server
#>apt search mysql-server

instalando o mysql-server
#>apt install mysql-server-8.0 -y

acessando o mysql como usuário root
#>mysql -u root -p
mysql>show databases;