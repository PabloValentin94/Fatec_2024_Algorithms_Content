// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: terceiro exercício sobre dicionários.
// Autor(a): Pablo Valentin.
// Data atual: 28/11/2024

/*

    Enunciado:

    Crie um objeto para armazenar informações de produtos de uma loja. As chaves devem ser os códigos dos produtos, e os 
    valores, objetos contendo nome e preço. Itere sobre o dicionário e exiba os produtos com o preço acima de R$50,00.

*/

console.log("------------------------------------------------------------------------------");
console.log("Listagem de Produtos:");
console.log("------------------------------------------------------------------------------");

let objeto = {};

objeto[1] = {nome: "Camisa", preco: 50.00};

objeto[2] = {nome: "Calça", preco: 90.00};

objeto[3] = {nome: "Casaco", preco: 120.00};

objeto[4] = {nome: "Cueca", preco: 5.00};

objeto[5] = {nome: "Par de Meias", preco: 4.00};

objeto[6] = {nome: "Bermuda", preco: 15.00};

console.log("Todos os Produtos:\n");

console.table(Object.entries(objeto));

let objeto_filtrado = new Map();

for(let chave in objeto)
{

    if(objeto[chave].preco > 50.00)
    {

        objeto_filtrado[chave] = objeto[chave];

    }

}

objeto = {};

console.log("\nProdutos que atendem a condição:\n");

console.table(Object.entries(objeto_filtrado));

console.log("------------------------------------------------------------------------------");