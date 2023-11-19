// paradgma -> Imperativa -> Orientada a objetos

/* Pilares 
- Herança
- Poliformismo -> herda as caracteristas (abstrata) mas age de forma diferente (complexa)
- Encapsulamento -> propriedades e métodos de uma classe dizem respeito apenas ela
- Abstração -> Diminuir complexidade
*/

/* OOJS - Orientação a objetos */

// ** Protótipos

const object = {}
console.log(object.__proto__);

// * Classes
//Não existem classes no javascript nativamente. Todas as classes são objetos e a herança se dá por protótipos
// * Syntatic sugar



/* quando tiver getters e setters sempr usar this._yourVar (underline na frente) */
class Animal {
    // construtor
    constructor(type = 'animal') {
        this.type = type
    }

    // gets and setters
    get type() {
        return this._type;
    }

    set type(val) {
        this._type = val.toUpperCase();
    }

    makeSound() {
        console.log('make animal sound');
    }
}


let a = new Animal()
console.log(a.type);


class Cat extends Animal {
    constructor() {
        super('cat') // super
    }

    //método
    makeSound() {
        super.makeSound()
        console.log('Meow!');
    }
}

let b = new Cat()
console.log(b.type)