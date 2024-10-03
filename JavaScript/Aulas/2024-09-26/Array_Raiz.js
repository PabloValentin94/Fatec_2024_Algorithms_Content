// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: adicione e remova elementos de um array sem utilizar funções nativas.
// Autor(a): Pablo Valentin.
// Data atual: 26/09/2024

// Classe.

class Array_Raiz
{

    lista;

    comprimento;

    constructor()
    {

        this.lista = [];

        this.comprimento = 0;

    }

    Adicionar_Elemento(elemento)
    {

        this.lista[this.comprimento] = elemento;

        this.comprimento++;

    }

    Remover_Elemento()
    {

        if(this.comprimento > 0)
        {

            if(this.comprimento === 1)
            {

                this.lista = [];

                this.comprimento = 0;

            }

            else
            {

                let nova_lista = [];

                for(let i = 0; i < this.comprimento - 1; i++)
                {
        
                    nova_lista[i] = this.lista[i];
        
                }
        
                this.lista = nova_lista;

                this.comprimento--;

            }

        }

    }

    Retornar_Elemento(elemento)
    {

        let retorno = null;

        let indice = 0;

        for(let i = 0; i < this.comprimento; i++)
        {

            if(this.lista[i] === elemento)
            {

                retorno = this.lista[i];

                indice = i;

                break;

            }

        }

        return (retorno === null) ? `O elemento ${elemento} não existe no Array.` : `O elemento ${retorno} foi encontrado na posição ${indice} do Array.`;

    }

    Retornar_Comprimento()
    {

        return this.comprimento;

    }

    Resetar()
    {

        this.lista = [];

        this.comprimento = 0;

    }

}

// Objeto.

var array = new Array_Raiz();

// Exemplo.

console.log("------------------------------------------------------------------");

console.log("Estado inicial do Array:\n");

console.table(array.lista);

console.log("------------------------------------------------------------------");

array.Adicionar_Elemento("Teste01");

array.Adicionar_Elemento("Teste02");

array.Adicionar_Elemento("Teste03");

array.Adicionar_Elemento("Teste04");

console.log("Estado do Array após algumas inserções:\n");

console.table(array.lista);

console.log("------------------------------------------------------------------");

array.Remover_Elemento();

array.Remover_Elemento();

console.log("Estado do Array após algumas remoções:\n");

console.table(array.lista);

console.log("------------------------------------------------------------------");

console.log("Pesquisando elementos do Array:\n");

console.log(array.Retornar_Elemento("Teste01"), "\n");

console.log(array.Retornar_Elemento("Teste03"));

console.log("------------------------------------------------------------------");

console.log("Comprimento atual do Array:", array.Retornar_Comprimento());

console.log("------------------------------------------------------------------");

array.Resetar();

console.log("Resetando o Array:\n");

console.table(array.lista);

console.log("------------------------------------------------------------------");