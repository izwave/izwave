<?php
// Título: Explorando Operadores Relacionais e Unários em PHP

// Definindo variáveis para exemplo
$a = 10;
$b = 5;

// Operadores Relacionais

// Maior
$maior = ($a > $b) ? $a : $b; 
echo "Maior: " . $maior . "<br>";

// Menor
$menor = ($a < $b) ? $a : $b;
echo "Menor: " . $menor . "<br>";

// Maior ou Igual
$maiorIgual = ($a >= $b) ? $a : $b;
echo "Maior ou Igual: " . $maiorIgual . "<br>";

// Menor ou Igual
$menorIgual = ($a <= $b) ? $a : $b;
echo "Menor ou Igual: " . $menorIgual . "<br>";

// Diferente
$diferente = ($a <> $b) ? $a : $b;
echo "Diferente: " . $diferente . "<br>";

// Diferente (outra forma)
$diferenteAlt = ($a != $b) ? $a : $b;
echo "Diferente (alternativa): " . $diferenteAlt . "<br>";

// Igual
$igual = ($a == $b) ? $a : $b;
echo "Igual: " . $igual . "<br>";

// Idêntico
$identico = ($a === $b) ? $a : $b;
echo "Idêntico: " . $identico . "<br>";

// Operadores Unários

// Expressão ? Verdadeiro : Falso
$maiorUnario = ($a > $b) ? $a : $b;
echo "Usando Operador Unário: " . $maiorUnario . "<br>";
?>
