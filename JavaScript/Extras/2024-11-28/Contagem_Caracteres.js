// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: segundo exercício sobre dicionários.
// Autor(a): Pablo Valentin.
// Data atual: 28/11/2024

/*

    Enunciado:

    Implemente uma função que receba uma string e retorne um objeto onde as chaves são os caracteres, e os valores, o número 
    de vezes que aparecem na string. Ignore os espaços.

*/

console.log("------------------------------------------------------------------------------");
console.log("Contagem de Caracteres:");
console.log("------------------------------------------------------------------------------");

const texto = "rV Ux gP8 dfJw Wd E Bq2zR j LcHmF nZQkYo";

function Contabilizar_Caracteres(parametro = texto.toLowerCase())
{

    // RegExp (Remoção de espaços em branco.): /\s/g

    const caracteres = parametro.replace(/\s/g, "").split("");

    let objeto = {};

    caracteres.forEach(caractere => {

        (caractere in objeto) ? objeto[caractere] += 1 : objeto[caractere] = 1;

    });

    return objeto;

}

console.table(Object.entries(Contabilizar_Caracteres()));

console.log("------------------------------------------------------------------------------");