## Criação e manipulação de arquivos

criar um arquivo txt
~$>touch arquivo1.txt
~$>touch arquivo2.txt
~$>touch arquivo3.txt

filtar arquivos em sequência (do 1 até o 3)
~$>ls arquivo[1-3]*

filtrar arquivo1 e (arquivo2
~$>ls arquivo[1,3]*

filtrar arquivos negando
~$>ls arquivos[^1-3]*


procurando arquivos por filtro
~$>find -name arq*

criando diretórios
~$>mkdir Documentos
~$>mkdir Doumentos Photos Musics

removendo diretórios
~$>rmdir __dirname__

removendo arquivos
~$>rm filename

Forçar apagar todos arquivos e pastas dentro diretórios
~$> rm -rf __foldername__

pedindo ajuda em um comando
~$>ls --help
~$>mkdir --help

listando os arquivos e vendo pelo tipo e permissões
~$>ls -l

pedindo ajuda mas formal com man
~$>man ls
~$>man <command_name~$>

verificar quais usuários podem ser admins (usurário admin/sudo)
~$>cat /etc/group
(cat exige o conteúdo de um arquivo)

executando um comando como administrador
~$>sudo mkdir 'Aula'
~$>sudo touch file.txt
~$>sudo <command_name~$>

verificar os grupos de usuários e privilégios de comandos
~$>cat /etc/sudoers

acessando usuário root (inserindo senha na primeira vez)
~$>sudo passd root

mudando para usuário root
~$>su

usuário root (note que o cifrão ~$ sumiu e agora existe apenas hashtag)
#>cd /
#>cd ls -l
#>cd mkdir PastaTest

saindo do usuário root (root pode acessar qualquer outro usuário sem senha)
#>su izaque
#>su _username_

acessando usuário root via SSH usando SSHD
~$>cat /etc/ssh/sshd_config
(exibe o sshd_config)

--
# Authentication:

#LoginGraceTime 2m
#PermitRootLogin prohibit-password
#StrictModes yes
#MaxAuthTries 6
#MaxSessions 10

---
(#PermitRootLogin prohibit-password esta comentada com hashatg na frente, ou seja, comentada)

usando o nano para abrir o arquivo e editar as informações
~$>sudo nano /etc/ssh/sshd_config
~$>nano <filename>

(PermitRootLogin yes)


visualizando o status de um serviço no sistema
~$>systemctl status sshd
~$>systemctl restart sshd

[não funcionou para mim. try: liberar acesso root]

criando um arquivo de texto e abrindo com editor vi
#>mkdir Textos
#>mkdir cd /Textos
#>mkdir vi leiame.txt

-- vi -- (atalhos)
i -> entrar no modo de edição
esc -> sair do modo de edição
: -> abrir o menu
:wq -> salvar e sair

abrindo o arquivo
#>cat leiame.txt
