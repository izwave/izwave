/* Funcoes
*/

function name(params) {
    // intruções
    return ; // valor de retorno
}

// Função anônima
const soma = function(a, b) {
    return a + b;
}

console.log('const soma(1,2) = '+ soma(1,2));


// Função autoinvocável -> (IIFE)
(
    function() {
        let name = "Digital Inovation One";
        return name;
    }
)();


const soma3 = (
    function() {
        return a + b;
    }
)

// Callbacks

const calc = function(operacao, num1, num2) {
    return operacao(num1, num2);
}

const soma4 = function(num1, num2) {
    return num1 + num2;
}
const sub = function(num1, num2) {
    return num1 - num2;
}
const resultSoma = calc(soma4, 1, 2);
const resultSub = calc(sub, 1, 2);

console.log('Soma 1+2 => ' + resultSoma);
console.log('Sub 1-2 => ' + resultSub);

/* Parametros */

// objeto 'arguments' (quando n tem um numero definido de parametros)
function items() {
    const arg = arguments;
    const params = arguments.length;
    console.log(`A funcao tem ${params} argumentos`);
    console.log('Argumentos da função => ');
    console.log(arguments);
}

items('oi',2,1,1);


/* Arrays */


// ** Spread
function sum(x, y, z) {
    return x + y + z;
}
const numbers = [1, 2, 3];

//Passa / lida com cada elemento (usando '...' na frenta)
somaTotal = sum(...numbers);
console.log(`suma => ${somaTotal}`);


function checkTamanho(...args) {
    console.log(`essa funcao tem ${args.length} argumetos`);
}

checkTamanho(1,5);
checkTamanho(2,1,'oi',false);


// ** Object destructuring
const user = {
    id: 42,
    displayName: 'jdoe',
    fullName : {
        firstName: 'Jhon',
        lastName: 'Doe'
    }
};

function userId({id}) {
    return id;
}

function getFullName({fullName: {firstName: primeiro, lastName: segundo}}) {
    return `${primeiro} ${segundo}`
}

const user_id = userId(user);
console.log(`user id from user => ${user_id}`);
const user_name = getFullName(user);
console.log(`full user name from user => ${user_name}`);