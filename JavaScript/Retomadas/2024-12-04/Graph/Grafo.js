// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: revisão de grafo.
// Autor(a): Pablo Valentin.
// Data atual: 04/12/2024

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

                let adjacencia_analisada = this.adjacencias[vertice].pop();

                this.Remover_Aresta(vertice, adjacencia_analisada);

            }
            
            delete this.adjacencias[vertice];

        }

    }

    Adicionar_Aresta(vertice_01, vertice_02)
    {

        this.Adicionar_Vertice(vertice_01);

        this.Adicionar_Vertice(vertice_02);

        this.adjacencias[vertice_01].push(vertice_02);

        this.adjacencias[vertice_02].push(vertice_01);

    }

    Remover_Aresta(vertice_01, vertice_02)
    {

        if(Object.hasOwn(this.adjacencias, vertice_01) && Object.hasOwn(this.adjacencias, vertice_02))
        {

            this.adjacencias[vertice_01] = this.adjacencias[vertice_01].filter((vertice) => { return vertice !== vertice_02 });

            this.adjacencias[vertice_02] = this.adjacencias[vertice_02].filter((vertice) => { return vertice !== vertice_01 });

        }

    }

    Exibir()
    {

        console.log("----------------------------------------------------------------------------------");
        console.log("Vértices e suas ligações (Arestas):\n");

        for(let vertice in this.adjacencias)
        {

            console.log(`${vertice} -> ${(this.adjacencias[vertice].join() !== "") ? this.adjacencias[vertice].join(", ") : "Nenhuma ligação"}.`);

        }

    }

}

// Objeto.

var grafo = new Grafo();

// Testes.

grafo.Adicionar_Vertice("A");

grafo.Adicionar_Vertice("B");

grafo.Adicionar_Vertice("C");

grafo.Adicionar_Vertice("D");

grafo.Adicionar_Aresta("A", "B");

grafo.Adicionar_Aresta("A", "C");

grafo.Adicionar_Aresta("D", "B");

grafo.Adicionar_Aresta("E", "F");

grafo.Remover_Vertice("F");

grafo.Remover_Aresta("A", "B");

grafo.Exibir();

console.log("----------------------------------------------------------------------------------");