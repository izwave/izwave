
//Cria uma array lista contendo textos (frutas)
var lista = ["maça", "pera", "laranja"]


// Mostra o tipo de objeto
console.log(lista)

/* Métodos de array JavaScript */

// Cria um dicionário (estilo JSON)
var dict = {nome:"maça", cor:"vermelha"}
console.log(dict)

//Mostra o valor de uma chave
console.log(dict.nome) //maça


// Criando uma lista de dicionários
var list_dict = [{nome:"maça", cor:"vermelha"},{nome:"Banana", cor:"amarela"}]
console.log(list_dict[1].nome) // banana

/* 
var idade = 19

if (idade > 18) {
	alert("Maior de idade")
}
*/

/*
//prompt é uma input

var idade = prompt("Qual é sua idade?")
if (idade => 18) {
	alert("Maior de idade")
}
else {
	alert("menor de idade")
}
*/

/*
// Laço de repetição while

var count = 0;
while(count <5) {
	alert(count);
	count ++;
}
*/

/* laço de repetição for
var count
for (count = 0; count < 5; count++) {
	alert("loop for iterable: " + count + "/4")
}
*/

// pegando a data atual
/*
var date = new Date()
alert(date);

// pegando o mês

alert(date.getMonth() + 1) // começa sempre do 0
alert(date.getDay()) // pega o dia
alert(date.getMinutes())//pega os minutos

*/
/*
var lista  = [nome:"rosa" , "cravo" , "tulipa", "margarida"]
console.log(lista[2]);*/

function butao(){
	//pega obj elemento pelo ID
	var elemento = document.getElementById("agradecimento");
	//inserindo um texto ou elemento dentro do obj h3
	elemento.innerHTML = "<b>obrigado por cliclar</br>Linha2</b>"
}

function redirecionar(){
	//encaminha para um site em outra aba
	//window.open("https://globallabs.academy/");
	//encaminha para um site na mesma aba
	window.location.href = "https://globallabs.academy/";
}

function passar(elemento){
	// elemento recebe 'this' obj do proprio elemento

	//var elemento = document.getElementById("mouseonn");
	elemento.innerHTML = "obrigado por passar o mouse";
}

function trocar(elemento){
	//var elemento = document.getElementById("mouseonn");
	elemento.innerHTML = "Passe o mouse aqui";
}

function load(){
	alert("pagina carregada")
}

function onchagefunc(elemento) {
	console.log(elemento.value)
}