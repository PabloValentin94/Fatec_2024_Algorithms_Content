// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: entendendo o conceito de Grafo.
// Autor(a): Pablo Valentin.
// Data atual: 21/11/2024

// Classe.

class Grafo
{

    adjacencia;

    constructor()
    {

        this.adjacencia = {};

    }

    Adicionar_Vertice(vertice)
    {

        if(!Object.hasOwn(this.adjacencia, vertice))
        {

            this.adjacencia[vertice] = [];

        }
        
    }

    Remover_Vertice(vertice)
    {

        if(Object.hasOwn(this.adjacencia, vertice))
        {

            while(this.adjacencia[vertice].length > 0)
            {

                const adjacencia = this.adjacencia[vertice].pop();

                this.Remover_Aresta(vertice, adjacencia);

            }

            delete this.adjacencia[vertice];

        }
        
    }

    Adicionar_Aresta(vertice_01, vertice_02)
    {

        this.Adicionar_Vertice(vertice_01);

        this.Adicionar_Vertice(vertice_02);

        this.adjacencia[vertice_01].push(vertice_02);

        this.adjacencia[vertice_02].push(vertice_01);
        
    }

    Remover_Aresta(vertice_01, vertice_02)
    {

        if(Object.hasOwn(this.adjacencia, vertice_01) && Object.hasOwn(this.adjacencia, vertice_02))
        {

            this.adjacencia[vertice_01] = this.adjacencia[vertice_01].filter(vertice => { return vertice !== vertice_02 });

            this.adjacencia[vertice_02] = this.adjacencia[vertice_02].filter(vertice => { return vertice !== vertice_01 });

        }
        
    }

    Imprimir()
    {

        console.log("------------------------------------------------------------------------------");
        console.log("Vértices e suas ligações (Arestas):\n");

        for(let vertice in this.adjacencia)
        {

            console.log(`${ vertice } -> ${ (this.adjacencia[vertice].join() !== "") ? this.adjacencia[vertice].join(", ") : "Nenhuma ligação" }.`);

        }

    }

}

// Objeto.

var grafo = new Grafo();

// Testes.

grafo.Adicionar_Vertice("A");

grafo.Adicionar_Aresta("A", "B");

grafo.Adicionar_Aresta("C", "B");

grafo.Adicionar_Aresta("B", "D");

grafo.Adicionar_Aresta("A", "E");

grafo.Imprimir();

grafo.Remover_Aresta("B", "D");

grafo.Remover_Vertice("B");

grafo.Remover_Vertice("D");

grafo.Remover_Vertice("D");

grafo.Imprimir();

console.log("------------------------------------------------------------------------------");