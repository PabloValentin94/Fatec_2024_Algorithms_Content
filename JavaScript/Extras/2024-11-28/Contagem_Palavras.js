// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: quinto exercício sobre dicionários.
// Autor(a): Pablo Valentin.
// Data atual: 28/11/2024

/*

    Enunciado:

    Crie uma função que receba uma frase e use um Map para contar quantas vezes cada palavra aparece.

*/

console.log("------------------------------------------------------------------------------");
console.log("Contagem de Palavras:");
console.log("------------------------------------------------------------------------------");

const texto = "O sol brilhava forte no céu, e o calor do sol fazia tudo parecer ainda mais quente, enquanto as " +
              "pessoas caminhavam pela rua quente, sentindo o calor do calor que parecia não ter fim. Alguns procuravam " +
              "sombra sob as árvores altas, que ofereciam uma sombra fresca e tranquila, mas logo o calor do dia as fazia " +
              "sair da sombra e voltar para o calor da rua, onde o sol continuava a brilhar com seu brilho forte e implacável.";

function Contabilizar_Palavras(parametro = texto.toLowerCase())
{

    // RegExp (Remoção de vírgulas.): /,/g

    // RegExp (Remoção de pontos finais.): /\./g

    const palavras = parametro.replace(/,/g, "").replace(/\./g, "").split(" ");

    let objeto = new Map();

    palavras.forEach(palavra => {

        (objeto.get(palavra) === undefined) ? objeto.set(palavra, 1) : objeto.set(palavra, objeto.get(palavra) + 1);

    });

    return objeto;

}

console.table(Contabilizar_Palavras().entries());

console.log("------------------------------------------------------------------------------");