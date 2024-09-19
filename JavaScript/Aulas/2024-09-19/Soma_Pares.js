// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: realize a soma de todos os números pares de um array.
// Autor(a): Pablo Valentin.
// Data atual: 19/09/2024

// Variáveis:

var numeros = [];

// Funções:

function Somar_Numeros_Pares(vetor)
{

    let soma = 0;

    vetor.forEach(numero => {

        if(numero % 2 === 0)
        {

            soma += numero;

        }

    });

    return soma.toString();

}

// Código:

for(let i = 1; i <= 100; i++)
{

    numeros.push(Math.floor(i));

}

console.log("----------------------------------------------------------------------");

console.log("Elementos do Array:\n");

console.table(numeros);

console.log("----------------------------------------------------------------------");

console.log(`Soma dos números pares do array: ${Somar_Numeros_Pares(numeros)}`);

console.log("----------------------------------------------------------------------");