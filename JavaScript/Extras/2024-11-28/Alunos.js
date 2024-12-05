// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: primeiro exercício sobre dicionários.
// Autor(a): Pablo Valentin.
// Data atual: 28/11/2024

/*

    Enunciado:

    Crie um objeto para armazenar informações de alunos, onde a chave é o número de matrícula e o valor é o nome do aluno. 
    Adicione pelo menos 3 alunos ao dicionário e exiba os nomes iterando sobre as chaves.

*/

let objeto = {};

objeto["001"] = "Tiagotas";

objeto["002"] = "Valentin";

objeto["007"] = "Vinícius";

console.log("------------------------------------------------------------------------------");
console.log("Listagem de Alunos:");
console.log("------------------------------------------------------------------------------");

for(let chave in objeto)
{

    console.log(`${chave}: ${objeto[chave]}.`);

}

console.log("");

console.table(Object.entries(objeto));

console.log("------------------------------------------------------------------------------");