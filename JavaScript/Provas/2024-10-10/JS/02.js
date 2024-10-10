// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: desenvolva uma fila de atendimento hospitalar.
// Autor(a): Pablo Valentin.
// Data atual: 10/10/2024

/*

    Implemente uma fila de atendimento de um hospital em JavaScript, sem usar 
    funções nativas de arrays. Nesta fila, pacientes com maior gravidade têm prioridade 
    sobre os pacientes menos graves, mesmo que tenham chegado depois.

*/

// Funcionamento de uma fila: FIFO (First In First Out).

// Classes.

class Paciente
{

    nome;

    gravidade;

    constructor(nome, gravidade)
    {

        this.nome = nome;

        this.gravidade = gravidade;

    }

}

class Fila_Atendimento
{

    pacientes;

    comprimento;

    constructor()
    {

        this.pacientes = [];

        this.comprimento = 0;

    }

    // Verifica se há algum item no array pacientes.

    Contar()
    {

        return this.comprimento === 0;

    }

    // Adiciona um item ao array (Da maior gravidade para a menor gravidade.).

    Adicionar(paciente)
    {

        this.pacientes[this.comprimento] = paciente;

        this.comprimento++;

        // Ordenando em ordem decrescente, com base na gravidade relatada.

        for(let i = 0; i < this.comprimento; i++)
        {

            for(let j = 0; j < this.comprimento; j++)
            {

                if(this.pacientes[i].gravidade >= this.pacientes[j].gravidade)
                {

                    let menor_gravidade = this.pacientes[i];

                    this.pacientes[i] = this.pacientes[j];

                    this.pacientes[j] = menor_gravidade;

                }

            }

        }

    }

    // Remove o primeiro item do array e retorna seu antigo valor.

    Atender()
    {

        if(this.Contar())
        {

            return "Não há nenhum atendimento pendente.";

        }

        else
        {

            let prioridade = this.pacientes[0];

            let nova_lista = [];

            if(this.comprimento > 1)
            {

                for(let i = 1; i < this.comprimento; i++)
                {

                    nova_lista[i - 1] = this.pacientes[i];

                }

            }

            this.pacientes = nova_lista;

            this.comprimento--;

            return `Paciente atendido: ${prioridade.nome}.\nGravidade relatada: ${prioridade.gravidade}.`;

        }

    }

    // Lista os itens do array, de acordo com a gravidade dos pacientes.

    Listar()
    {

        if(this.Contar())
        {

            console.log("Não há nenhum atendimento pendente.");

        }

        else
        {

            console.table(this.pacientes);

        }

    }

}

// Objeto.

let fila = new Fila_Atendimento();

// Testes.

console.log("-----------------------------------------------------------------");

console.log("Inserções:");

console.log("-----------------------------------------------------------------");

fila.Adicionar(new Paciente("Pablo Valentin", 1));

fila.Adicionar(new Paciente("Evandro Cláudio Valentin", 2));

fila.Adicionar(new Paciente("Vanessa Aparecida de Godoy Valentin", 3));

fila.Adicionar(new Paciente("Gabriel Felipe Valentin", 1));

fila.Adicionar(new Paciente("Tiagotas", 4));

fila.Listar();

console.log("-----------------------------------------------------------------");

console.log("Remoções:");

console.log("-----------------------------------------------------------------");

console.log(fila.Atender(), "\n");

console.log(fila.Atender(), "\n");

console.log(fila.Atender(), "\n");

console.log(fila.Atender(), "\n");

console.log(fila.Atender(), "\n");

fila.Listar();

console.log("-----------------------------------------------------------------");

console.log("Listagem Final:");

console.log("-----------------------------------------------------------------");

console.table(fila.pacientes);

console.log("-----------------------------------------------------------------");