// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: testa vetores/arrays em JavaScript.
// Autor(a): Pablo Valentin.
// Data atual: 22/08/2024

// Variáveis:

var nomes = [];

// Funções:

function Listar_Nomes()
{

    nomes.forEach(nome => { console.log("\n" + nome + "."); });

}

// Código:

const qnt_nomes = parseInt(prompt("Digite a quantidade de nomes que serão especificados a seguir:"), 10);

for(let i = 0; i < qnt_nomes; i++)
{

    nomes.push(prompt("Insira o " + (i + 1) + "º nome:"));
    
}

console.log("---------------------------------------------------------------");

console.log("Listagem dos nomes inseridos:");

Listar_Nomes();

console.log("---------------------------------------------------------------");