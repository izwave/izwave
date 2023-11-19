/* Case type
*/

console.log('\n** Camel type\n');
console.log('Camel Case => someAwesomeVar');
console.log('Snake Case => some_awesome_var');
console.log('Kebab Case => some-awesome-var');
console.log('Pascal Case => SomeAwesomeVar');
console.log('UPPER CASE SNAKE CASE => SOME_AWESOME_VAR');

/* var vs let
*/

console.log('\n** var vs let\n');

var DayName = "Saturday";
console.log(`DayName as var => ${DayName}`);

if (DayName === "Saturday") {
    // o let vai reatribuir 'DayName' nesse escopo
    let DayName = "Sunday"; // hoisting
    console.log(`DayName as let => ${DayName} (escopo)`);
}

console.log(`DayName as var => ${DayName}`);

// OBS:  É perigoso usar o var, por conveção sempre use o let!


/* Constantes
    por convenção é sempre colocar em maisculas!
*/
console.log('\n** const \n');
const MY_NAME = "izaque";
console.log(`MY_NAME as const =>  + ${MY_NAME}`);
// OBS: você nunca poderá alterar depois da atribuição!

console.log('\n** var, let and const\n\n\t\t|var\t\t\t|const\t|let\t');
console.log('escopo\t\t|global ou local\t|bloco\t|bloco');
console.log('redeclarar\t|sim\t\t\t|não\t|não');
console.log('reatribuir\t|sim\t\t\t|não\t|sim');
console.log('hoisting\t|sim\t\t\t|não\t|não');