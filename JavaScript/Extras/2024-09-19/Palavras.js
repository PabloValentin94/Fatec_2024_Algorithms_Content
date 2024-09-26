// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: obtenha um array de palavras e filtre apenas aquelas que começarem com a letra A (Maiúscula ou minúscula).
// Autor(a): Pablo Valentin.
// Data atual: 19/09/2024

/*

    Funções de Array:

    unshift: adiciona um novo elemento, que precede o primeiro do array.

    shift: remove o primeiro elemento do array.

    push: adiciona um novo elemento, que procede o último do array.

    pop: remove o último elemento do array.

*/

// Variáveis e constantes.

const palavras = [
    
    "sustentabilidade","agressividade","indiscriminadamente",
    "nasci","milha","controlar","editora","espuma","incompreensível",
    "coerção","califa","pancada","amortecimento","insulina","fortuna",
    "galinheiro","ermitão","explodiu","córneo","desrespeitar",
    "automação","contestado","forçadamente","administrar","pulverização",
    "porosidade","entrançado","flexibilizar","zoologia","perímetro",
    "arrogante","afixar","acalorar","absorvível","acanho","arsenical","alavancar",
    "aprendi","adivinho","acionar","abiose","pontilhada","cheiro","cerrar",
    "gloriar","cerimonioso","assustadora","bodas","peneira","imperturbavelmente",
    "pré-datado","cujas","estria","massagem","turbocompressor","adicional","heroica",
    "fronteiriço","capado","irreflexão"

];

// Funções.

function Filtrar(lista)
{

    let palavras_validas = [];

    lista.forEach(item => {

        if(item[0].toUpperCase() === "A" && !palavras_validas.includes(item))
        {

            palavras_validas.push(item);

        }

    });

    return palavras_validas;

}

// Exemplo.

console.table(Filtrar(palavras));