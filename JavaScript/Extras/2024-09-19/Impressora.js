// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: simule uma fila de documentos de uma impressora.
// Autor(a): Pablo Valentin.
// Data atual: 19/09/2024

// Funcionamento de uma fila: FIFO (First In First Out).

/*

    Funções de Array:

    unshift: adiciona um novo elemento, que precede o primeiro do array.

    shift: remove o primeiro elemento do array.

    push: adiciona um novo elemento, que procede o último do array.

    pop: remove o último elemento do array.

*/

// Classe.

class Impressora
{

    fila;

    constructor()
    {

        this.fila = [];

    }

    Adicionar_Documento(documento)
    {

        console.log("----------------------------------------------------------------------------------");

        this.fila.push(documento);

        console.log(`Documento adicionado: ${documento}.`);

    }

    Imprimir_Documento()
    {

        let saida = "Documento impresso: ";

        console.log("----------------------------------------------------------------------------------");

        if(this.fila.length === 0)
        {

            saida = saida.concat("Não há o que imprimir.");

        }

        else
        {

            saida = saida.concat(this.fila.shift(), ".");

        }

        console.log(saida);

    }

}

// Objeto.

var impressora = new Impressora();

// Exemplo.

impressora.Adicionar_Documento("Relatório do Setor Financeiro");

impressora.Adicionar_Documento("Relatório do Setor Administrativo");

impressora.Adicionar_Documento("Relatório do Setor Contábil");

impressora.Adicionar_Documento("Relatório do Setor Logístico");

console.log("----------------------------------------------------------------------------------");

console.table(impressora.fila);

impressora.Imprimir_Documento();

impressora.Imprimir_Documento();

console.log("----------------------------------------------------------------------------------");

console.table(impressora.fila);

console.log("----------------------------------------------------------------------------------");