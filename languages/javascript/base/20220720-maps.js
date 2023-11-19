/* map 
chave : valor
*/

const myMap = new Map();

// method.set(key: any, value: any)
myMap.set('apple', 'fruit');

// method.get
let get = myMap.get('apple');
console.log(get);

// method.delete
myMap.delete('apple');
get = myMap.get('apple');
console.log(get);

/* map vs object
- maps podem ter chave de qualquer tipo;
- maps possuem a propriedade lenght;
- maps são fáceis de iterar;
- utilizado quando o valor das chaves são desconhecidos;
- os valores tem o mesmo tipo.
*/


/* set
 - são estruturas que armazenam valores únicos (coleão)
*/

const mySet = new Set();

// method.add
mySet.add(1);
mySet.add(5);
mySet.add(11);

// check value exists
// method.has
let existe = mySet.has(5);
console.log(existe);

// method.delete
mySet.delete(5);
existe = mySet.has(5);
console.log(existe);
// map.size