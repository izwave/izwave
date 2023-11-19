import random

respostas = ['Austrália','Micronésia','Fiji']
pais = 2 # VOU USAR SÓ MICRONÉSIA AQUI

lenght = len(respostas[pais])
dica = ""


#test @ignore
print('\n@debug int (size) =', lenght)
print('@debug str (resposta) =', respostas[pais], '\n')

#0 Dica em espaços

while lenght:
	dica = dica + '_ '
	lenght = lenght - 1

print(dica)

#1 Dica em letras (aleatório)
continuar = input('\nPressione qualquer teclaa para lhe dar mais dicas\n')

#pega o tamanho da string do pais
lenght = len(respostas[pais])

#pegando um random entre 0 e o máximo
letra = random.randint(0, lenght)

# Multplicando por 2 pra pegar espaço (_)
space = (letra * 2)

# substituindo a posição por letra do pais
dica = dica[:space] + respostas[pais][letra] + dica[space+1:]
print(dica)