/* Promises, async/await */

// Assincrono

/* Não ta funcionando
const myPromise = new Promise((resolve, reject) => {
    window.setTimeout(() => {
        resolve('Resolvida');
    }, 2000);
});

await myPromise
    .then((result) => result + ' passando pelo then')
    .then((result) => result + ' e agora acabou!')
    .catch((err) => console.log(err.mesage));

*/

/* Consumindo API's */

/* JSON => JavaScript Object Notation

{
    "description" : "schema POST bank",
    "type" : "object",
    "properties" : {
    "id" : {
        "type" : "number",
        
    }
    }
}

*/

/* Method fetch */

fetch(url, option) {
    .then(Response => response.json())
    .then(json => console.log(json))
}
// retorna uma promise


/* Operações no banco (POST, GET, PUT, DELETE, etc) */

fetch('https://endereco-api.com/', {
    method: GET,
    cache: 'no-cache',
})

// retorna uma promise