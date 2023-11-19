/* DOM
Document Object Model

O DOM HTML é um padrão de como acessar e modificar os elementos HTMl de uma página

*/

/*

DOM VS BOM

Windown -> document -> history -> location -> screen -> navigator
 */

/* Selecionando os elementos de uma página */


const pegar = document.getElementsById('titulo');
//<h1 id="titulo">Minha página</h1>


const pegar2 = document.getElementsByTagName('li');
/*
[
    <li>Projeto 1</li>,
    <li>Projeto 2</li>,
    <li>Projeto 3</li>
]    
*/

//adicionar e deletar

// Cria um novo elemento HTML
document.createElement(element);

// Remove um element
document.removeChild(element);

// Adiciona um elemento
document.appendChild(element);

// Substitui um elemento
document.replaceChild(element);


/* Tipos e eventos

-- Eventos de Mouse --

mouseOver - passa o mouse em um elemento
mouseOut - Tira o mouse de um elemento
click - Clica sobre o elemento
dbclick - Clique duplo sobre o elemento

-- Eventos de atualização --

change - 
load - 

*/


const botao = document.getElementsById("meuBotao");
botao.addEventListener("Click", outrafuncao);