// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: sexto exercício sobre dicionários.
// Autor(a): Pablo Valentin.
// Data atual: 28/11/2024

/*

    Enunciado:

    Use um Map para criar um contador de frequência de letras em uma string, diferenciando letras maiúsculas e minúsculas.

*/

console.log("------------------------------------------------------------------------------");
console.log("Frequência de Letras (Contagem):");
console.log("------------------------------------------------------------------------------");

const texto = "Eu gOstO de LeR liVros na bAnCa, pOrém às veZes pReCiSo dE pAuSaS.";

function Contabilizar_Frequencia_Letras(parametro = texto)
{

    // RegExp (Remoção de espaços em branco.): /\s/g

    // RegExp (Remoção de vírgulas.): /,/g

    // RegExp (Remoção de pontos finais.): /\./g

    const letras = parametro.replace(/\s/g, "").replace(/,/g, "").replace(/\./g, "").split("");

    let objeto = new Map();

    letras.forEach(letra => {

        (objeto.get(letra) === undefined) ? objeto.set(letra, 1) : objeto.set(letra, objeto.get(letra) + 1);

    });

    return objeto;

}

console.table(Contabilizar_Frequencia_Letras().entries());

console.log("------------------------------------------------------------------------------");