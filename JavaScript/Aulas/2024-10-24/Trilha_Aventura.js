// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: encontra-se abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 24/10/2024

/*

    Você está ajudando um explorador a planejar sua trilha de aventura na floresta. Cada ponto da trilha (nó) contém um local 
    interessante, como uma cachoeira, uma caverna ou um mirante. O explorador quer começar a trilha em um ponto específico e 
    adicionar novos pontos durante a jornada. Sua missão é ajudá-lo a:

    A) Inserir pontos da trilha no início e no fim da lista de locais a serem visitados;

    B) Depois, o explorador decide remover um local que descobriu ser muito perigoso;

    C) Por fim, ele quer verificar se o mirante ainda faz parte da trilha.

    Implemente uma lista dinamicamente encadeada para representar a trilha e resolva essas tarefas.

*/

class Local
{

    nome; proximo;

    constructor(descricao)
    {

        this.nome = descricao;

    }

}

class Trilha
{

    ancora;

    constructor()
    {

        this.ancora = null;

    }

    Inserir_Local(indice_ordem_trilha)
    {

        

    }

    Remover_Local(nome)
    {

        if(this.ancora !== null)
        {

            let node_atual = this.ancora;

            while(node_atual !== null)
            {

                if(node_atual.nome === nome)
                {

                    //

                }

                else
                {

                    i++;

                }

            }

        }

    }

    Buscar_Local(nome)
    {



    }

    Listar_Locais()
    {

        

    }

}