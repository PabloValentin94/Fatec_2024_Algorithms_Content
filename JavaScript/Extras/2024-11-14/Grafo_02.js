// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: exercício 02 de reposição (Grafos).
// Autor(a): Pablo Valentin.
// Data atual: 21/11/2024

// Classe.

class Grafo
{

    adjacencias;

    constructor()
    {

        this.adjacencias = {};

    }

    Adicionar_Vertice(vertice)
    {

        if(!Object.hasOwn(this.adjacencias, vertice))
        {

            this.adjacencias[vertice] = [];

        }

    }

    Remover_Vertice(vertice)
    {

        if(Object.hasOwn(this.adjacencias, vertice))
        {

            while(this.adjacencias[vertice].length > 0)
            {

                const adjacencia_analisada = this.adjacencias[vertice].pop();

                this.Remover_Aresta(vertice, adjacencia_analisada[0]);

            }

            delete this.adjacencias[vertice];

        }

    }

    Adicionar_Aresta(vertice_01, vertice_02, peso)
    {

        this.Adicionar_Vertice(vertice_01);

        this.Adicionar_Vertice(vertice_02);

        this.adjacencias[vertice_01].push([vertice_02, peso]);

        this.adjacencias[vertice_02].push([vertice_01, peso]);

    }

    Remover_Aresta(vertice_01, vertice_02)
    {

        if(Object.hasOwn(this.adjacencias, vertice_01) && Object.hasOwn(this.adjacencias, vertice_02))
        {

            this.adjacencias[vertice_01] = this.adjacencias[vertice_01].filter((aresta) => { return aresta[0] !== vertice_02 });

            this.adjacencias[vertice_02] = this.adjacencias[vertice_02].filter((aresta) => { return aresta[0] !== vertice_01 });

        }

    }

    Exibir_Adjacencias()
    {

        console.log("----------------------------------------------------------------------------------");
        console.log("Vértices e suas ligações (Arestas):");

        for(let vertice in this.adjacencias)
        {

            console.log(`\nArestas do vértice ${vertice}:\n`);

            if(this.adjacencias[vertice].length > 0)
            {

                for(let i = 0; i < this.adjacencias[vertice].length; i++)
                {
    
                    console.log(`    Aresta: (${vertice}, ${this.adjacencias[vertice][i][0]}). | Peso: ${this.adjacencias[vertice][i][1]}.`);
    
                }

            }

            else
            {

                console.log(`    Não há nenhuma aresta ligada ao vértice ${vertice}.`);

            }

        }

    }

}

// Objeto.

var grafo = new Grafo();

// Testes.

grafo.Adicionar_Vertice(1);

grafo.Adicionar_Vertice(2);

grafo.Adicionar_Vertice(3);

grafo.Adicionar_Vertice(4);

grafo.Adicionar_Aresta(1, 2, 10);

grafo.Adicionar_Aresta(1, 3, 2);

grafo.Adicionar_Aresta(2, 4, 5);

grafo.Exibir_Adjacencias();

grafo.Remover_Vertice(4);

grafo.Remover_Aresta(3, 1);

grafo.Exibir_Adjacencias();

console.log("----------------------------------------------------------------------------------");