// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: sétimo exercício sobre dicionários.
// Autor(a): Pablo Valentin.
// Data atual: 28/11/2024

/*

    Enunciado:

    Implemente uma função que converta um object para um Map e outra que faça o caminho inverso, convertendo um Map para um object.

*/

console.log("------------------------------------------------------------------------------");
console.log("Conversões de Dicionários:");

let objeto = {

    nome: "Pablo",
    sobrenome: "Valentin",
    idade: 18

};

let map = new Map([

    ["cidade", "Jaú"],
    ["faculdade", "Fatec Jahu"],
    ["curso", "DSM"]

]);

function Converter_Para_Map(parametro)
{

    console.log("------------------------------------------------------------------------------");
    console.log("Objeto:\n");

    console.table(Object.entries(parametro));

    let novo_map = new Map();

    for(let chave in parametro)
    {

        novo_map.set(chave, parametro[chave]);

    }

    console.log("\nMap gerado a partir do Objeto:\n");

    console.table(novo_map.entries());

}

function Converter_Para_Objeto(parametro)
{

    console.log("------------------------------------------------------------------------------");
    console.log("Map:\n");

    console.table(parametro.entries());

    let novo_objeto = {};

    for(let [chave, valor] of parametro)
    {

        novo_objeto[chave] = valor;

    }

    console.log("\nObjeto gerado a partir do Map:\n");

    console.table(Object.entries(novo_objeto));

}

Converter_Para_Map(objeto);

Converter_Para_Objeto(map);

console.log("------------------------------------------------------------------------------");