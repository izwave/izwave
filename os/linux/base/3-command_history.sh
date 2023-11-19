### Histórico de comandos e execução:

listar histórico de comandos usados pelo usuário
#>history

(vai listar os últimos 1000 comandos do usuário root)

listar os últimos 30 comandos usados pelo usuário
#>history 30

executando comando pelo índice de histórico
#>history 10

--------------------
   26  nano leiame.txt
   27  python
   28  python3
   29  vi filename.py
   30  ls -l
   31  python3 filename.py
   32  cat filename.py
   33  history
   34  history 30
   35  history 10
------

#>!30
(vai executar "ls -l")

executando o último comando utilizado
#>!!
(vai executar "ls -l")

procurando e executando um comando
#>!?dat?

(vai executar "date")

histórico de comando em determinada pasta
#>history | grep "Textos"

----------------
   17  mdkir Textos
   18  mkdir Textos
   19  cd Textos/
   42  ls Textos/
   43  history | grep "Textos"


histórico de comando geral
#>history | grep "ls"

manipulando uma variável de ambiente para exibir a data do comando "history"
#>export HISTTIMEFORMAT="%c "
#>history

limpando o histórico de comandos
#>history -c

desativando o histórico de comando para não registrar comandos
#>set +o history
reativando
#>set -o history

configurando a quantidade de comandos por usuário
~$>cd home/izaque
veja os arquivos ocultos
~$>ls -a
abra o arquivo .bashrc
~$>cat .bashrc

---
...
HISTSIZE=1000
...

(altere o HISTSIZE=1000 para quantidade desejada de histórico de comandos)

configurando para armazenar o histórico de comandos em uma arquivo
~$>history -w
na pasta de usuário
~$>ls -a
.. .bash_history ..
(.bash_history arquivo com o histórico de comandos)