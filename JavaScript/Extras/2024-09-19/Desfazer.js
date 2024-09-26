// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: crie uma pilha onde seja possível adicionar e remover ações.
// Autor(a): Pablo Valentin.
// Data atual: 19/09/2024

// Funcionamento de uma pilha: LIFO (Last In First Out).

/*

    Funções de Array:

    unshift: adiciona um novo elemento, que precede o primeiro do array.

    shift: remove o primeiro elemento do array.

    push: adiciona um novo elemento, que procede o último do array.

    pop: remove o último elemento do array.

*/

// Classe.

class Area_Transferencia
{

    pilha;

    constructor()
    {

        this.pilha = [];

    }

    Adicionar_Acao(acao)
    {

        console.log("----------------------------------------------------------------------------------");

        this.pilha.push(acao);

        console.log(`Ação adicionada: ${acao}.`);

    }

    Remover_Acao()
    {

        let saida = "Ação removida: ";

        console.log("----------------------------------------------------------------------------------");

        if(this.pilha.length === 0)
        {

            saida = saida.concat("Não há nenhuma ação no histórico para ser desfeita.");

        }

        else
        {

            saida = saida.concat(this.pilha.pop(), ".");

        }

        console.log(saida);

    }

}

// Objeto.

var historico_acoes = new Area_Transferencia();

// Exemplo.

historico_acoes.Adicionar_Acao("Ligar Computador");

historico_acoes.Adicionar_Acao("Ligar Monitor");

historico_acoes.Adicionar_Acao("Mexer Mouse");

historico_acoes.Adicionar_Acao("Digitar no Teclado");

console.log("----------------------------------------------------------------------------------");

console.table(historico_acoes.pilha);

historico_acoes.Remover_Acao();

historico_acoes.Remover_Acao();

historico_acoes.Adicionar_Acao("Olhar para o Monitor");

console.log("----------------------------------------------------------------------------------");

console.table(historico_acoes.pilha);

console.log("----------------------------------------------------------------------------------");