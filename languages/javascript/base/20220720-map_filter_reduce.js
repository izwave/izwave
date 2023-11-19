/* map, filter and reduce */

const myArray = [1,2,3,4,5];

const getArray = myArray.map((item) => item * 2);
console.log(`myArray: ${myArray} map => ${getArray}`);

let getArrayEach = myArray.forEach((item) => item * 2);
console.log(`myArray: ${myArray} forEach => ${getArrayEach}`);


// ** filter

const frutas = ['maça fuji', 'maça verde', 'laranja', 'abacaxi'];
const getFrutras = frutas.filter((frutas) => frutas.includes('maça'));
console.log(getFrutras);

// ** Reduce
// Percorrre o array e executa uma funçã em cada um de seus itens
//não entendi

