/* módulos 
- Organização do código
- Compartilhamento de variáveis em escopo diferentes
- Explicita as dependências dos arquivos
*/

// ** Exportar: named exports

export function mostraIdade(pessoa) {
    return `a idade de ${pessoa.nome} é ${pessoa.idade}`;
}
export function mostraCidade(pessoa) {
    return `a idade de ${pessoa.nome} é ${pessoa.cidade}`;
}
export function mostraIdade(pessoa) {
    return `a idade de ${pessoa.nome} é ${pessoa.hobby}`;
}

// outra maneira

function mostraIdade2(pessoa) {
    return `a idade de ${pessoa.nome} é ${pessoa.idade}`;
}
function mostraCidade(pessoa) {
    return `a idade de ${pessoa.nome} é ${pessoa.cidade}`;

export {
    mostraIdade2,
    mostraCidade
}

/* Default exports 
- Só pde haver um por arquivo
- Será o retorno padrão do seu arquivo
*/

export default mostraHobby;


/* importar */
// named exports
import {funcao, variavel, classe} from '.arquivo.js';

// default exports
import valorDefault from './arquivo.js';

// trocando nome de imports
import {arquivo as Apelido} from './arquivo.js';

Apelido.method();

// importando todos os dados de um arquivo
import * as from INFOS './arquivo.js';

INFOS.metodoA();
console.log(INFOS.variavel);


// vinculando ao HTML
/* OBS: para rodar os modulos é necessário ter um servidor */
<script type="module" src="./main.js"></script>

/* Module Cheatsheet
- Módulos sempre estão em 'strict mode'
- Podem ser utilizadas as extensões '.js' e '.mjs'
- Para testes locais é necessário utilizar um servdor
- Ao importar, sempre lembre da extensão (.js, .mjs)
- Ao importar, sempre utilize './' como ponte de partida
*/
