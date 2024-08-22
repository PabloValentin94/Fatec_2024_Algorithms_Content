// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: calcula uma média simples entre duas notas.
// Autor(a): Pablo Valentin.
// Data atual: 22/08/2024

// Variáveis:

var nota_01 = 0.00, nota_02 = 0.00, media = 0.00;

// Código:

console.log("------------------------------------------------------");
console.log("MÉDIA SIMPLES");
console.log("------------------------------------------------------");

nota_01 = parseFloat(prompt("Insira a primeira nota:"));

console.log("Primeira nota: " + nota_01.toFixed(2));

console.log("------------------------------------------------------");

nota_02 = parseFloat(prompt("Insira a segunda nota:"));

console.log("Segunda nota: " + nota_02.toFixed(2));

console.log("------------------------------------------------------");

media = (nota_01 + nota_02) / 2;

console.log("A média é: " + media.toFixed(2));

console.log("------------------------------------------------------");