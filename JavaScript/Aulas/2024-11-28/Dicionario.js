// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: entendendo o conceito de Dicionário.
// Autor(a): Pablo Valentin.
// Data atual: 28/11/2024

// Objeto Genérico.

console.log("------------------------------------------------------------------------------");
console.log("OBJETO GENÉRICO:");

let objeto_generico = {

    "sobrenome": "Valentin"

}; // Criando

objeto_generico.nome = "Pablo"; // Adicionando da 1ª forma.

objeto_generico["idade"] = 18; // Adicionando da 2ª forma.

delete objeto_generico["sobrenome"]; // Removendo

objeto_generico.nome = "Pablo Valentin"; // Sobrescrevendo o valor de uma chave.

console.log("------------------------------------------------------------------------------");
console.log("Objeto Genérico (Chave | Valor):\n");

for(let chave in objeto_generico)
{

    console.log(`${chave}: ${objeto_generico[chave]}.`); // Exibindo iteração da chave atual e seu valor.

}

console.log("------------------------------------------------------------------------------");

console.log("Chaves do Objeto:", Object.keys(objeto_generico));

console.log("Valores das Chaves do Objeto:", Object.values(objeto_generico));

console.log("------------------------------------------------------------------------------");

console.log("Pares Chave-Valor do Objeto:\n");

console.table(Object.entries(objeto_generico));

console.log("------------------------------------------------------------------------------");
console.log("Objeto Genérico (Chave | Valor):\n");

Object.entries(objeto_generico).forEach(([chave, valor]) => {

    console.log(`${chave}: ${valor}.`); // Exibindo iteração da chave atual e seu valor.

});

console.log("------------------------------------------------------------------------------");

console.log((("nome" in objeto_generico) ? "Chave existente." : "Chave não existente!").concat("\n"));

if(!("sobrenome" in objeto_generico))
{

    objeto_generico["sobrenome"] = "Valentin";

}

console.table(objeto_generico);

// Objeto Map.

console.log("------------------------------------------------------------------------------");
console.log("OBJETO MAP:");

let objeto_map = new Map();

objeto_map.set("nome", "Pablo"); // Adicionando.
objeto_map.set("idade", 18);

console.log("------------------------------------------------------------------------------");

console.log("Valor da Chave:", objeto_map.get("nome")); // Obtendo valor.

console.log("------------------------------------------------------------------------------");

console.log(objeto_map.has("nome")); // Verificando existência.

console.log("------------------------------------------------------------------------------");

objeto_map.delete("idade");

console.log(objeto_map.has("idade"));

console.log("------------------------------------------------------------------------------");
console.log("Objeto Map (Chave | Valor):\n");

objeto_map = new Map([

    ["nome", "Pablo"],
    ["sobrenome", "Valentin"]

]);

for(let [chave, valor] of objeto_map)
{

    console.log(`${chave}: ${valor}.`); // Exibindo iteração da chave atual e seu valor.

}

console.log("------------------------------------------------------------------------------");
console.log("OBSERVAÇÃO:");
console.log("------------------------------------------------------------------------------");

objeto_generico = { nome: "Pablo", 18: "idade" }; // Todas as chaves são convertidas em strings.

objeto_map = new Map([

    ["nome", "Pablo"],
    [18, "idade"]

]); // Em objetos MAP, as chaves podem ser de vários tipos (string, int, function, object, etc.).

console.log("Objeto Genérico (Chave | Valor):\n");

console.table(Object.entries(objeto_generico));

console.log("\nObjeto Map (Chave | Valor):\n");

console.table(objeto_map.entries());

console.log("------------------------------------------------------------------------------");