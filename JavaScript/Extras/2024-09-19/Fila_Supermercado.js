// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: simule uma fila de supermercado.
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

class Supermercado
{

    fila;

    constructor()
    {

        this.fila = [];

    }

    Adicionar_Cliente(cliente)
    {

        console.log("----------------------------------------------------------------------------------");

        this.fila.push(cliente);

        console.log(`Cliente adicionado: ${cliente}.`);

    }

    Atender_Cliente()
    {

        let saida = "Cliente atendido: ";

        console.log("----------------------------------------------------------------------------------");

        if(this.fila.length === 0)
        {

            saida = saida.concat("Não há clientes para serem atendidos.");

        }

        else
        {

            saida = saida.concat(this.fila.shift(), ".");

        }

        console.log(saida);

    }

}

// Objeto.

var fila_supermercado = new Supermercado();

// Exemplo.

fila_supermercado.Adicionar_Cliente("Pablo Valentin");

fila_supermercado.Adicionar_Cliente("Gabriel Felipe Valentin");

fila_supermercado.Adicionar_Cliente("Vanessa Aparecida de Godoy Valentin");

fila_supermercado.Adicionar_Cliente("Evandro Cláudio Valentin");

console.log("----------------------------------------------------------------------------------");

console.table(fila_supermercado.fila);

fila_supermercado.Atender_Cliente();

fila_supermercado.Atender_Cliente();

fila_supermercado.Atender_Cliente();

console.log("----------------------------------------------------------------------------------");

console.table(fila_supermercado.fila);

console.log("----------------------------------------------------------------------------------");