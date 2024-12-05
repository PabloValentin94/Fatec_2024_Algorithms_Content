// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: revisão de lista duplamente encadeada.
// Autor(a): Pablo Valentin.
// Data atual: 04/12/2024

// Classes.

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

class Lista
{

    head; tail; length;

    constructor()
    {

        this.head = null;

        this.tail = this.head;

        this.length = 0;

    }

    Append(value)
    {

        let new_node = new Node(value);

        if(this.length === 0)
        {

            this.head = new_node;

            this.tail = this.head;

        }

        else
        {

            this.tail.next = new_node;

            new_node.previous = this.tail

            this.tail = new_node;

        }

        this.length++;

    }

    Prepend(value)
    {

        let new_node = new Node(value);

        if(this.length === 0)
        {

            this.head = new_node;

            this.tail = new_node;

        }

        else
        {

            this.head.previous = new_node;

            new_node.next = this.head;

            this.head = new_node;

        }

        this.length++;

    }

    Remove_First()
    {

        if(this.length > 0)
        {

            if(this.length === 1)
            {

                this.head = null;

                this.tail = this.head;

            }

            else
            {

                this.head = this.head.next;

                this.head.previous = null;

            }

            this.length--;

        }

    }

    Remove_Last()
    {

        if(this.length > 0)
        {

            if(this.length === 1)
            {

                this.head = null;

                this.tail = this.head;

            }

            else
            {

                this.tail = this.tail.previous;

                this.tail.next = null;

            }

            this.length--;

        }

    }

    Traverse()
    {

        let output = "Listagem Traverse (Esquerda à Direita):\n\n", analised_node = this.head;

        if(this.length > 0)
        {

            while(analised_node !== null)
            {

                output = output.concat(`${analised_node.value} -> `);

                analised_node = analised_node.next;

            }

            output = output.concat("null.");

        }

        else
        {

            output = output.concat("Nenhum Node encontrado!");

        }

        console.log(output);

    }

    Traverse_Reverse()
    {

        let output = "Listagem Traverse Reverso (Direita à Esqueda):\n\n", analised_node = this.tail;

        if(this.length > 0)
        {

            while(analised_node !== null)
            {

                output = output.concat(`${analised_node.value} -> `);

                analised_node = analised_node.previous;

            }

            output = output.concat("null.");

        }

        else
        {

            output = output.concat("Nenhum Node encontrado!");

        }

        console.log(output);

    }

}

// Objeto.

var lista = new Lista();

// Testes.

console.log("------------------------------------------------------------------------------");

lista.Traverse();

console.log("------------------------------------------------------------------------------");

lista.Append(10);
lista.Append(20);
lista.Append(30);

lista.Traverse();

console.log("------------------------------------------------------------------------------");

lista.Prepend(60);
lista.Prepend(50);
lista.Prepend(40);

lista.Traverse();

console.log("------------------------------------------------------------------------------");

lista.Remove_First();

lista.Remove_Last();

lista.Traverse();

console.log("------------------------------------------------------------------------------");