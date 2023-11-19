let um = "um";
console.log(um);
console.log(typeof(um));
um = 1;
console.log(um);
console.log(typeof(um));


/*
    Tipos primitivos: strings
*/

let nome = "izaque";
let sobrenome = "Sousa";

console.log(`${nome} is ` + typeof(nome));
console.log(`${sobrenome} is ` + typeof(nome));

let nomeCompleto = nome.concat(' ', sobrenome);
console.log(nomeCompleto);

// string como objeto

//raramente usado (o conceito é o mesmo)
let novoNome = new String('Izaque de Sousa');
console.log(`${novoNome} is ` + typeof(novoNome));

// string é iterável
console.log(nome[0]);

let separar = nomeCompleto.split('');
console.log(`${separar} ` + typeof(separar));
let tem = nomeCompleto.includes('Sousa');
console.log(tem);


/*
    Tipos primitivos: numbers
*/

let myAge = 20;
let isPar = myAge % 2 ? "não" : "sim";
console.log('is par? ' + isPar);

let NumberPi = Math.PI;
console.log(NumberPi + ' ' + typeof(NumberPi)); 

/*
    Tipos primitivos: boleans
*/

let validar = 3 == 0;
console.log(validar);
maior = 3 > 0;
console.log(maior);


/*
    Tipos primitivos: arrays
*/


// array vazio
let array = []; // ou new Array();
console.log(array);


//adicionando
array.push(5,3,5);
console.log(array);

/*
    Objetos em JavaScript
    estrurua do tipo chave valor ->

    let person = {
        name : 'Jhon',
        age : 30
    }
*/

/// inicializando um objeto

let obj = {};
console.log(typeof(obj));
obj.name = 'izaque';
console.log(obj);
obj.age = 20;
console.log(obj);

let meuObje = Object.values(obj);
console.log('Values => ' + meuObje);
console.log('Keys => ' + Object.keys(obj));

// inicializando objeto com valores
let NewPerson = {
    name: 'Hold',
    age : 23,
    city : 'London'
}

console.log(NewPerson.name);
console.log(NewPerson['name']);

// adicioando nova chave
NewPerson['Country'] = "England";
console.log(NewPerson);


/*
    empty, null and undefined
*/

//empty
let SomeNumber = 0;
let SomeString = "";
let SomeObject = {};

console.log('SomeNumber => ' + typeof(SomeNumber));
console.log('SomeString => ' + typeof(SomeString));
console.log('SomeObject => ' + typeof(SomeObject));

// null

let nani = null;
console.log('Nani => ' + nani + ' ' + typeof(nani));

//undefined (não foi definido / declarado)
console.log('GatoSho => ' + typeof(GatoSho));