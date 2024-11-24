// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: entendendo o conceito de Lista Duplamente Encadeada.
// Autor(a): Pablo Valentin.
// Data atual: 31/10/2024

// Classes.

console.log("------------------------------------------------------------------------------");
console.log("CONSIDERE COM MAIOR IMPORTÂNCIA O SEGUNDO VALOR DE CADA BENCHMARK PARA \nUMA ANÁLISE MAIS PRECISA.");
console.log("------------------------------------------------------------------------------");

console.time("Tempo de Execução - Criação da(s) classe(s)");

class Node
{

    previous; value; next;

    constructor(value)
    {

        this.previous = null;

        this.value = value;

        this.next = null;

    }

}

class List
{

    head; tail; length;

    constructor()
    {

        this.head = null;

        this.tail = null;

        this.length = 0;

    }

    // Adiciona um nó ao final da lista.

    Append(value)
    {

        const node = new Node(value);

        if(this.head === null)
        {

            this.head = node;

            this.tail = node;

        }

        else
        {

            let old_tail = this.tail;

            this.tail = node;

            this.tail.previous = old_tail;

            this.tail.previous.next = this.tail;

        }

        this.length++;

    }

    // Adiciona um nó ao início da lista.

    Prepend(value)
    {

        const node = new Node(value);

        if(this.head === null)
        {

            this.head = node;

            this.tail = node;

        }

        else
        {

            let old_head = this.head;

            this.head = node;

            this.head.next = old_head;

            this.head.next.previous = this.head;

        }

        this.length++;

    }

    // Adiciona um nó na posição especificada.

    Append_At(value, index)
    {

        if(index >= 0 && index <= this.length)
        {

            if(index === 0)
            {

                this.Prepend(value);

            }

            else if(index === this.length)
            {

                this.Append(value);

            }

            else
            {

                let i = 0;

                let actual_node = this.head;

                while(actual_node !== null)
                {

                    if(i === index)
                    {

                        const old_next = actual_node;

                        const old_previous = actual_node.previous;

                        actual_node = new Node(value);

                        actual_node.next = old_next;

                        actual_node.next.previous = actual_node;

                        actual_node.previous = old_previous;

                        actual_node.previous.next = actual_node;

                        this.length++;

                        break;

                    }

                    else
                    {

                        i++;

                        actual_node = actual_node.next;

                    }

                }

            }

        }

        else
        {

            //console.log("------------------------------------------------------------------------------");

            //console.log("Índice inválido! Tente novamente.");

        }

    }

    // Remove o último nó da lista.

    Remove_Last()
    {

        if(this.tail !== null)
        {

            let new_tail = this.tail.previous;

            if(new_tail !== null)
            {

                new_tail.next = null;

            }

            delete this.tail;

            this.tail = new_tail;

            this.length--;

        }

    }

    // Remove o primeiro nó da lista.

    Remove_First()
    {

        if(this.head !== null)
        {

            let new_head = this.head.next;

            if(new_head !== null)
            {

                new_head.previous = null;

            }

            delete this.head;

            this.head = new_head;

            this.length--;

        }

    }

    // Remove um nó na posição especificada.

    Remove_At(index)
    {

        if(index >= 0 && index < this.length)
        {

            if(index === 0)
            {

                this.Remove_First();

            }

            else if(index === this.length - 1)
            {

                this.Remove_Last();

            }

            else
            {

                let i = 0;

                let actual_node = this.head;

                while(actual_node !== null)
                {

                    if(i === index)
                    {

                        let erased_node = actual_node;

                        actual_node.previous.next = erased_node.next;

                        actual_node.next.previous = erased_node.previous;

                        // O "delete" não funciona no caso abaixo.

                        erased_node = null;

                        this.length--;

                        break;

                    }

                    else
                    {

                        i++;

                        actual_node = actual_node.next;

                    }
                    
                }

            }

        }

        else
        {

            //console.log("------------------------------------------------------------------------------");

            //console.log("Índice inválido! Tente novamente.");

        }

    }

    // Encontra um nó específico.

    Find(value)
    {

        //console.log("------------------------------------------------------------------------------");

        let delive = "";

        if(this.length > 0)
        {

            let i = 0;

            let actual_node = this.head;

            while(actual_node !== null)
            {

                if(actual_node.value === value)
                {

                    delive = `O primeiro nó com o valor correspondente a "${actual_node.value}" foi encontrado na posição ${i}.`;

                    break;

                }

                else
                {

                    i++;

                    actual_node = actual_node.next;

                }

            }

            if(delive === "")
            {

                delive = "Não há um nó com o valor informado.";

            }

        }

        else
        {

            delive = "Não nenhum nó inserido na lista! Ação não permitida.";

        }

        //console.log(delive);

    }

    // Percorre a lista do início ao fim.

    Direct_Cross()
    {

        //console.log("------------------------------------------------------------------------------");

        let actual_node = this.head;

        let output = "Ordem direta: ";

        while(actual_node !== null)
        {

            output += `${actual_node.value}`.concat((actual_node.next === null) ? "." : " -> ");

            actual_node = actual_node.next;

        }

        //console.log(output);

    }

    // Percorre a lista do fim ao início.

    Reverse_Cross()
    {

        //console.log("------------------------------------------------------------------------------");

        let actual_node = this.tail;

        let output = "Ordem reversa: ";

        while(actual_node !== null)
        {

            output += `${actual_node.value}`.concat((actual_node.previous === null) ? "." : " -> ");

            actual_node = actual_node.previous;

        }

        //console.log(output);

    }

    Print()
    {

        //console.log("------------------------------------------------------------------------------");

        let actual_node = this.head;

        let output = "Nodes:\n\n";

        while(actual_node !== null)
        {

            output += `${(actual_node.previous === null) ? null : actual_node.previous.value} | ${actual_node.value} | ${(actual_node.next === null) ? null : actual_node.next.value}.`;

            output += (actual_node.next === null) ? "" : "\n\n";

            actual_node = actual_node.next;

        }

        //console.log(output);

    }

}

console.timeEnd("Tempo de Execução - Criação da(s) classe(s)");

// Objeto.

console.log("------------------------------------------------------------------------------");

console.time("Tempo de Execução - Criação do objeto principal");

var nodes = new List();

console.timeEnd("Tempo de Execução - Criação do objeto principal");

// Testes.

console.log("------------------------------------------------------------------------------");

console.time("Tempo de Execução - Testes");

// Adições ao final.

nodes.Append(10);

nodes.Append(20);

nodes.Append(30);

nodes.Print();

// Adições ao início.

nodes.Prepend(40);

nodes.Prepend(50);

nodes.Print();

// Remoções do final.

nodes.Remove_Last();

nodes.Remove_Last();

nodes.Print();

// Remoções do início.

nodes.Remove_First();

nodes.Remove_First();

nodes.Print();

// Exibição nos dois sentidos.

nodes.Append(10);

nodes.Append(20);

nodes.Append(30);

nodes.Prepend(40);

nodes.Prepend(50);

nodes.Direct_Cross();

nodes.Reverse_Cross();

nodes.Print();

// Adição de um nó em uma posição específica.

nodes.Append_At(80, 4);

nodes.Print();

// Remoção de um nó específico.

nodes.Remove_At(1);

nodes.Print();

// Pesquisando nós.

nodes.Remove_Last();

nodes.Remove_Last();

nodes.Remove_Last();

nodes.Remove_Last();

nodes.Remove_Last();

nodes.Remove_Last();

nodes.Print();

nodes.Find(0);

nodes.Find(10);

nodes.Find(80);

console.timeEnd("Tempo de Execução - Testes");

console.log("------------------------------------------------------------------------------");