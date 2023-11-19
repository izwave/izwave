/* if/else and switch */

function numNegativo(num) {
    const eNegativo = num < 0;

    if (eNegativo) {
        return true;
    }
    return false;
}

console.log('5 negativo? ' + numNegativo(5));
console.log('-1 negativo? ' + numNegativo(-1));

// Switch 
function getAnimal(id) {
    switch(id) {
        case 1:
            return "Cão";
        case 2:
            return "Gato";
        case 3:
            return "Pássaro";
        default:
            return "Peixe";
    }
}

console.log(getAnimal(1));
console.log(getAnimal(2));
console.log(getAnimal(3));
console.log(getAnimal("1"));

//for and while

function double(arr) {
    let mul = []
    for(let i = 0; i < arr.length; i++) {
        mul.push(arr[i]*2);
    }
    return mul;
}

console.log('double func [1,2,3,4,5] => ' + double([1,2,3,4,5]));

// for...in

const obj1 = {
    name : "izaque",
    age : 20,
    city : "São Paulo"
}

function getKeys(obj) {
    for(keys in obj) {
        console.log(`keys of obj: ${keys}`);
    }
}
function getValues(obj) {
    for(keys in obj) {
        console.log('values of obj: ' + obj[keys]);
    }
}

getKeys(obj1);
getValues(obj1);

// for of

function ofWords(palavra) {
    for (letras of palavra) {
        console.log(letras);
    }
}

ofWords('Abacaxi');


// while

/* This <contexto>
*/

// this como método de um objeto
const pessoa = {
    firtName: "izaque",
    lastName: "lima",
    id: 1,
    fullName : function() {
        return this.firtName + " " + this.lastName;
    },
    getId: function() {
        return this.id;
    }

};

console.log(pessoa);
// chamando a funcao dentro do objeto com this
console.log(pessoa.fullName());


// ** Call
const persona = {
    name : "miguel"
};
const animal = {
    name : "murphy"
};

function getSomething() {
    console.log(this.name);
}

getSomething.call(persona);

// ** Apply

getSomething.apply(persona);
console.log(persona);

// ** Bind

//clona a estrutura da função onde é chamado e aplica o valor do objeto passado como parametro
const retornaNames = function() {
    return this.name;
}

let bruno = retornaNames.bind({name : "bruno"});
console.log(bruno);


/* Arrow functions */

const helloWorld1 = function() {
    return "Hello World!";
}
const helloWorld2 = () => {
    return "Hello World!";
}
const helloWorld3 = () => "Hello World!";


const ArrowSoma = (a, b) => a + b;
const ArrowExample = (a) => a;

console.log('ArrowSoma(1,2) => ' + ArrowSoma(1,2));
console.log('ArrowExample(false) => ' + ArrowExample(false));

/* Restricoes Arrow Functions
X - Não faz hoisting
X - 'this' sempre será objeto global
X - Não existe objeto arguments
X - Construtor new Objeto não pode ser usado.
*/