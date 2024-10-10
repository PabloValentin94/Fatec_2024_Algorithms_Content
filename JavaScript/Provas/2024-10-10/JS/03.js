// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: corrija os possíveis erros existentes na fila.
// Autor(a): Pablo Valentin.
// Data atual: 10/10/2024

// Funcionamento de uma fila: FIFO (First In First Out).

// Classe.

class Fila
{

    // Garantindo que os atributos realmente existam.

    itens;

    comprimento;

    constructor()
    {

        this.itens = [] // O atributo itens deve ser um array, não um objeto.

        this.comprimento = 0;

    }

    // Verifica se há algum item no array itens.

    isEmpty()
    {

        return this.comprimento === 0;

    }

    // Adiciona um item ao final do array.

    enqueue(elemento)
    {

        this.itens[this.comprimento] = elemento;

        this.comprimento++;

    }

    // Remove o primeiro item do array e retorna seu antigo valor.

    dequeue()
    {

        if(this.isEmpty())
        {

            return "Fila vazia.";

        }

        else
        {

            let primeiro = this.itens[0];

            /*

                O delete não garantia que o elemento fosse realmente excluído, então
                o melhor caminho é sobrescrever o array de itens com um novo array.

            */

            let nova_lista = [];

            // Se o array itens só contém um elemento, nem é preciso percorrê-lo.

            if(this.comprimento > 1)
            {

                // Percorrendo o array itens, ignorando o primeiro elemento, que será removido.

                for(let i = 1; i < this.comprimento; i++)
                {

                    nova_lista[i - 1] = this.itens[i];

                }
                
            }

            this.itens = nova_lista;

            this.comprimento--;

            return primeiro;
            
        }

    }

    /*

        O método peek retorna o último item de uma pilha, mas, como
        estamos manipulando uma fila, utilizamos o método front, que
        retorna o primeiro.

    */

    front()
    {

        // Garantindo que só será retornado um valor do array caso ele possua ao menos um item.

        if(this.comprimento === 0)
        {

            return "Fila vazia.";

        }

        else
        {

            return this.itens[0];

        }

    }

}

// Objeto.

let fila = new Fila();

// Testes.

console.log("-----------------------------------------------------------------");

console.log("Inserções:");

console.log("-----------------------------------------------------------------");

fila.enqueue(1);

fila.enqueue(2);

console.table(fila.itens);

console.log("-----------------------------------------------------------------");

console.log("Remoções:");

console.log("-----------------------------------------------------------------");

console.log(`Item removido: ${fila.dequeue()}\n`);

console.log(`Item removido: ${fila.dequeue()}\n`);

console.log(`Item removido: ${fila.dequeue()}\n`);

console.table(fila.itens);

console.log("-----------------------------------------------------------------");

console.table(fila.itens);

console.log(`\nÚltimo item da fila: ${fila.front()}\n`);

fila.enqueue(3);

console.table(fila.itens);

console.log(`\nÚltimo item da fila: ${fila.front()}`);

console.log("-----------------------------------------------------------------");