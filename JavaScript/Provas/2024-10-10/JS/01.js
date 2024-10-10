// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: corrija os possíveis erros existentes na pilha.
// Autor(a): Pablo Valentin.
// Data atual: 10/10/2024

// Funcionamento de uma pilha: LIFO (Last In First Out).

// Classe.

class Pilha
{

    // Garantindo que os atributos realmente existam.

    itens;

    comprimento; // Tendo um maior controle da quantidade de itens do array.

    constructor()
    {

        this.itens = [];

        this.comprimento = 0;

    }

    // Adiciona um item ao final do array.

    push(elemento)
    {

        this.itens[this.comprimento] = elemento;

        this.comprimento++;

    }

    // Remove o último item do array e retorna seu antigo valor.

    pop()
    {

        // Usando o comparador "Idêntico" para garantir que os valores comparados sempre serão inteiros.

        if(this.comprimento === 0)
        {

            return "Pilha vazia.";

        }

        else
        {

            let topo = this.itens[this.comprimento - 1];

            /*

                O delete não garantia que o elemento fosse realmente excluído, então
                o melhor caminho é sobrescrever o array de itens com um novo array.

            */

            let nova_lista = [];

            for(let i = 0; i < this.comprimento - 1; i++)
            {

                nova_lista[i] = this.itens[i];

            }

            this.itens = nova_lista;

            this.comprimento--;

            return topo;
            
        }

    }

    // Retorna o item no topo da pilha, sem removê-lo.

    peek()
    {

        // Garantindo que só será retornado um valor do array caso ele possua ao menos um item.

        if(this.comprimento === 0)
        {

            return "Pilha vazia.";

        }

        else
        {

            return this.itens[this.comprimento - 1];

        }

    }

}

// Objeto.

let pilha = new Pilha();

// Testes.

console.log("-----------------------------------------------------------------");

console.log("Inserções:");

console.log("-----------------------------------------------------------------");

pilha.push(1);

pilha.push(2);

console.table(pilha.itens);

console.log("-----------------------------------------------------------------");

console.log("Remoções:");

console.log("-----------------------------------------------------------------");

console.log(`Item removido: ${pilha.pop()}\n`);

console.log(`Item removido: ${pilha.pop()}\n`);

console.log(`Item removido: ${pilha.pop()}\n`);

console.table(pilha.itens);

console.log("-----------------------------------------------------------------");

console.table(pilha.itens);

console.log(`\nÚltimo item da pilha: ${pilha.peek()}\n`);

pilha.push(3);

console.table(pilha.itens);

console.log(`\nÚltimo item da pilha: ${pilha.peek()}`);

console.log("-----------------------------------------------------------------");