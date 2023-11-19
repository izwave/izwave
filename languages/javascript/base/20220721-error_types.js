/* Tipos de erros */

/* ECMAscript error
- Mensagem
- Nome
- Linha
- Call stack

let sum = a + 2

*/ 

/* DOMException
Erro relacionado com o document objeto model (HTML)
*/

/* Throw 
 retorna um erro no console ao inves de um 'return convencional' 
*/

function setStr(string) {
    if (!string) throw "string invalida!";
    return `minha string ${string}`;
}
//console.log(setStr());

/* Try catch 
Pegar um erro e trata-lo
*/
function tratando(string) {
    try {
        setStr(string);   
    }
    catch(e) {
        console.log(e)
    }
}

tratando();

/* Finally */

function tratando2(string) {
    try {
        setStr(string);   
    }
    catch(e) {
        console.log(e)
    }
    finally {
        console.log(`a string enviada foi ${string}`);
    }
}

tratando2('oiee');


/* objeto error */

// new Error(mensage, filename, linenumber);
const meuErro = new Error('mensagem inválida');
throw meuErro;