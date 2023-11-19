# Inicie o controle de versão local para pastas (repositórios)
git init

# Mostrar status do repositório
git status

# Estágios e ciclos
- [untracked] Não rastreado: Novos arquivos não adicionados ao ciclo do repositório
- [trancked] Rastreado: Arquivos adicionados ao ciclo do repositório, comitados ou não
  - {unmodified, modified} (Não modificado, Modificado)
- Commit: Arquivos adicionados a um novo ciclo/mudança no repositório
  - {modified -> stage -> unmodified}

# Adicionar mudanças ao ciclo do repositório
git add <nome-do-arquivo> ou * .

# Criar um novo ciclo de mudanças na linha do tempo do repositório
git commit -m "mensagem[]"

# Mostrar configurações
git config --list

# Adicionar um repositório remoto
git remote add origin https://github.com/Usuário/repo.git

# Listar repositórios registrados
git remote -v

# Enviar repositório local para repositório remoto
git push origin master

# Se não funcionar
git branch -M main
git push -u origin main

# Puxar repositório remoto e juntar
git pull origin master

# Baixar repositório
git clone "link"

# Excluir .git do repositório local (apagar o repositório localmente)
rm -rf .git
