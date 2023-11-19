
// mostra o valor máximo de cada tipo de dado

fun main() {
    println(Int.MAX_VALUE)
    println(Double.MAX_VALUE)
    println(Float.MAX_VALUE)
    println(Byte.MAX_VALUE)
}


// Declarações

// mutável, CamelCase
var 

// imutável, CamelCase
val

// Valor imutável, SNAKE_CASE
const val


// poderá ser alterado
var currentAge = 22
var currentAge:Int?

// não poderá ser alterado depois
val currentAge = 22
val currentAge:Int?

// constantes
const val MIN_AGE = 16
const val MAX_AGE = 68


fun main() {
    val currentAge = 20
    currentAge = 30 // vai dar erro
    println(currentAge)
}


fun main() {
    val currentAge:Int // declaramos o tipo
    currentAge = 30 // não poderá ser alterado durante a execução
    println(currentAge)
}


const val MAX_AGE = 68 // variável global (não pode ser usada localmente/dentro de funções)
fun main() {
    val currentAge:Int
    currentAge = 90
    println(currentAge > MAX_AGE) // true
}

// quando inicializar uma variável nula, utilizar (?)
var month:Int? = null

---

/**
 * You can edit, run, and share this code. 
 * play.kotlinlang.org 
 */
const val MAX_AGE = 68
fun main() {
    // cria uma lista estática
    val bingo = listOf(8,6,34,2,13)
    // seleciona um número aleatório em um raio de 1 a 34 
    var number = (1..34).random()
    
    // mostra o número escolhido aleatorioamente
    println(number)
    
    // verifica se o número existe na lista estática
    println(number in bingo)
}


// Indexiçação de strings
val s = "Olá mundo!"

Primeiro char
println(s[0]) // O
println(s.first)  // O

Último char
print(s[s.lenght - 1]) // !
print(s.last) // !

// Concatenação
val name = "Ana"
val s = "Olá"

println(s + name) //OláAna
println("${s}, ${name}!") // OLá, Ana!
println("Bem-vind(a) $name!") // Bem-vindo(a) Ana!

// Strings Emppty Vs Blank

val s = ""

println(s.isEmpty()) // true (vazia)
println(s.isBlanck) // true (em branco)
println(s)

val s = "    "

println(s.isEmpty()) // false (vazia)
println(s.isBlanck) // true (em branco)


/*
    * Funções
    

    fun funname(args:type):returntype {
    
    }

    (funções void não tem retorno)
*/

private fun getFullName(name1:String, name2:String):String {
    val fullname = "$name1 $name2"
    return fullname
}
private fun getFullName(name1:String, name2:String):String {
    return "$name1 $name2"
}
private fun getFullName(name1:String, name2:String) = "$name1 $name2"

//Chamando a função

fun main() {
    print(getFullName("Pedro","João"))
}

private fun getFullName(name1:String, name2:String) = "$name1 $name2"


//Funções de ordem superior

/*generalização de funçoes
val x = calculate(12,4,::sum)
val y = calculate(12,4){a,b -> a*b}
*/

// Funções Single-line
private fun getFullName(name1:String, name2:String) = "$name1 $name2"


/* 
    Funções extensões
        $a.randomChange(char:String)
        this = $a

    var texto = "OIEEEEE"
    texto.randomChange(".")

    println(texto) 
    "OIE.EEE"
*/
fun String.randomChange(char:String) = 
    this[(0..this.lenght-1).random()].toUpperCase()

//Controle

if (exp) {

} else if (exp) {

} else {

}

//Swich case [WHEN]

when {
    case1 -> {}
    case2 -> {}
    case3 -> {}
    else -> {}
}

// Operador ternário

var a:Int? = null
var number = a ?: 0

// Atribuauição

val MinValue = if (a > b) {
        println("a [$a] é o maior valor")
    } else if (a < b) {
        println("b [$b] é o maior valor")
    } else {
        println("Os valores são iguais")
    }

when {
    a > b -> {}
    a != b && a != c-> {}
    a == b -> {}
}

when(year) {
    -4000..475 -> //antiguidade
    476..1452 -> //Medieval
    1453..1789 -> // Moderna
    currentYear -> //Ano atual
}

// Elvis Operator (Operador ternário)

val a:Int = null
val c:Int? = 9
var number = a?: b?: 0


// Loops

// while
while (condicao) {

}

// do-while
do {
    //
}while(condicao)


// for each
for (i in 0..20 step 2) {
    //step (intervalo) opcional [default = 1]
    println(i) //números pares de 0 a 20
}

for (i in 0 until 20 step 2) {
    println(i) //números pares de 0 a 18
}

for (i in 20 downTo 0 step 2) {
    println(i) //números pares de 20 a 0 (reverso)
}

//loop em string

fun main() {
    val rarray = "Moscow"
    rarray.forEach{
        a -> println(a)
    }
}