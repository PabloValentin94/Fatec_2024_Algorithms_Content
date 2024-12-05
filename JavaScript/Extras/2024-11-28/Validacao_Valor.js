// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: quarto exercício sobre dicionários.
// Autor(a): Pablo Valentin.
// Data atual: 28/11/2024

/*

    Enunciado:

    Crie uma função que receba um dicionário e remova todas as chaves cujo valor seja null ou undefined.

*/

console.log("------------------------------------------------------------------------------");
console.log("Validação de Valores de um Objeto:");
console.log("------------------------------------------------------------------------------");

let objeto = {

    nome: "Pablo",
    nome_meio: null,
    sobrenome: "Valentin",
    idade: 18,
    cnh: null,
    tipo_sanguineo: undefined

};

console.log("Antes da Validação:\n");

console.table(Object.entries(objeto));

for(let chave in objeto)
{

    if(objeto[chave] === null || objeto[chave] === undefined)
    {

        delete objeto[chave];

    }

}

console.log("\nApós a Validação:\n");

console.table(Object.entries(objeto));

console.log("------------------------------------------------------------------------------");