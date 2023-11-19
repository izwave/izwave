# Script R - Análise e Operações Básicas
# Este script realiza operações de soma, multiplicação, instalação de pacotes e manipulação de diretório.

# Operação de soma
resultado <- 3 + 5

# Definir k antes de multiplicá-lo por 2
k <- 10  # Substitua 10 pelo valor desejado

# Operação de multiplicação por 2
k <- k * 2

# Instalar e carregar pacotes
install.packages("ggplot2")
library(ggplot2)

# Definir diretório de trabalho
setwd("C:/Users/Sunshine/Downloads/")

# Listar arquivos no diretório
arquivos <- dir()

# Remover todos os objetos no ambiente de trabalho
rm(list = ls(all = TRUE))

# Atribuir valor a g e exibi-lo usando print
g <- 3
print(g)

# Listar todos os objetos no ambiente de trabalho
lista_objetos <- ls(all = TRUE)
